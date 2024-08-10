import subprocess
import ctypes
import sys
import time


def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False


def is_eth_connected():
    # 获取以太网网卡状态
    result = subprocess.run(
        ["netsh", "interface", "show", "interface", "以太网"],
        capture_output=True,
        text=True,
    )
    output = result.stdout

    # 解析输出以获取网卡状态
    lines = output.split("\n")
    for line in lines:
        if "连接状态" in line:
            status = line.split(":")[1].strip()
            break

    print("当前以太网网卡状态:", status)
    return status == "已连接"


def toggle_eth():
    if is_eth_connected():
        subprocess.run(
            ["netsh", "interface", "set", "interface", "以太网", "admin=disable"]
        )
        print("正在禁用以太网网卡...")
    else:
        subprocess.run(
            ["netsh", "interface", "set", "interface", "以太网", "admin=enable"]
        )
        print("正在启用以太网网卡...")


if __name__ == "__main__":
    if not is_admin():
        ctypes.windll.shell32.ShellExecuteW(
            None, "runas", sys.executable, __file__, None, 1
        )
        sys.exit(1)

    toggle_eth()
    print("Done")
    time.sleep(3)
