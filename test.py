from tkinter import Tk, messagebox

from dotenv import load_dotenv
import os


def main() -> None:
    load_dotenv()
    test_value = os.getenv("TEST", "")

    root = Tk()
    root.withdraw()
    messagebox.showinfo("テスト", f"環境変数のテスト：{test_value}")
    root.destroy()


if __name__ == "__main__":
    main()
