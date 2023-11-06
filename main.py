import functions_framework
from dotenv import load_dotenv

load_dotenv()


@functions_framework.http
def run(request=None):
    code = 'goes here'
    return "code complete"


if __name__ == '__main__':
    run()
