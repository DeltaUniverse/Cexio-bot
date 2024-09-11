import random


def generate_random_user_agent(device_type="android", browser_type="chrome"):
    chrome_versions = list(range(110, 127))
    firefox_versions = list(range(90, 100))

    if browser_type == "chrome":
        major_version = random.choice(chrome_versions)
        minor_version = random.randint(0, 9)
        build_version = random.randint(1000, 9999)
        patch_version = random.randint(0, 99)
        browser_version = (
            f"{major_version}.{minor_version}.{build_version}.{patch_version}"
        )
    elif browser_type == "firefox":
        major_version = random.choice(firefox_versions)
        minor_version = random.randint(0, 9)
        browser_version = f"{major_version}.{minor_version}"

    else:
        raise ValueError("Invalid browser type. Supported types: 'chrome', 'firefox'")

    if device_type == "android":
        android_versions = ["10.0", "11.0", "12.0", "13.0"]
        android_device = random.choice(
            [
                "SM-G960F",
                "Pixel 5",
                "SM-A505F",
                "Pixel 4a",
                "Pixel 6 Pro",
                "SM-N975F",
                "OnePlus 8",
                "Xiaomi Mi 9",
                "Huawei P40",
                "Sony Xperia 1",
                "Nokia 8.3",
            ]
        )
        android_version = random.choice(android_versions)
        if browser_type == "chrome":
            return (
                f"Mozilla/5.0 (Linux; Android {android_version}; {android_device}) AppleWebKit/537.36 "
                f"(KHTML, like Gecko) Chrome/{browser_version} Mobile Safari/537.36"
            )
        elif browser_type == "firefox":
            return (
                f"Mozilla/5.0 (Android {android_version}; Mobile; rv:{major_version}.0) "
                f"Gecko/{major_version}.0 Firefox/{major_version}.0"
            )

    elif device_type == "ios":
        ios_versions = ["13.0", "14.0", "15.0", "16.0"]
        ios_version = random.choice(ios_versions)
        if browser_type == "chrome":
            return (
                f"Mozilla/5.0 (iPhone; CPU iPhone OS {ios_version.replace('.', '_')} like Mac OS X) "
                f"AppleWebKit/537.36 (KHTML, like Gecko) CriOS/{browser_version} Mobile/15E148 Safari/604.1"
            )
        elif browser_type == "firefox":
            return (
                f"Mozilla/5.0 (iPhone; CPU iPhone OS {ios_version.replace('.', '_')} like Mac OS X) "
                f"AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/{browser_version}.0 Mobile/15E148 Safari/605.1.15"
            )

    elif device_type == "windows":
        windows_versions = ["10.0", "11.0"]
        windows_version = random.choice(windows_versions)
        if browser_type == "chrome":
            return (
                f"Mozilla/5.0 (Windows NT {windows_version}; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) "
                f"Chrome/{browser_version} Safari/537.36"
            )
        elif browser_type == "firefox":
            return (
                f"Mozilla/5.0 (Windows NT {windows_version}; Win64; x64; rv:{major_version}.0) "
                f"Gecko/{major_version}.0 Firefox/{major_version}.0"
            )

    elif device_type == "ubuntu":
        ubuntu_versions = ["20.04", "21.04", "22.04"]
        ubuntu_version = random.choice(ubuntu_versions)
        if browser_type == "chrome":
            return (
                f"Mozilla/5.0 (X11; Ubuntu {ubuntu_version}; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
                f"Chrome/{browser_version} Safari/537.36"
            )
        elif browser_type == "firefox":
            return (
                f"Mozilla/5.0 (X11; Ubuntu {ubuntu_version}; Linux x86_64; rv:{major_version}.0) "
                f"Gecko/{major_version}.0 Firefox/{major_version}.0"
            )

    else:
        raise ValueError(
            "Invalid device type. Supported types: 'android', 'ios', 'windows', 'ubuntu'"
        )
