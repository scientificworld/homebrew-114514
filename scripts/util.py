from pathlib import Path
import time
import re

def update_util(name, **kwargs):
    with open(Path("templates") / (name + ".rb"), "r") as file:
        content = file.read()
    for key, value in kwargs.items():
        content = content.replace("#{{" + key + "}}", value)
    with open(name + ".rb", "w") as file:
        file.write(content)

def retry_util(func):
    for _ in range(3):
        try:
            return func()
        except Exception:
            time.sleep(5)
    raise RuntimeError("Reached maximum number of retries")

def acquire_util(name, key):
    with open(name + ".rb", "r") as file:
        content = file.read()
    result = re.search(rf'{key}\s+"(.*)"', content)
    if result:
        return result.groups()[0]
    else:
        return None
