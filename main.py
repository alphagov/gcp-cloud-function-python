import functions_framework
from dotenv import load_dotenv

load_dotenv()


@functions_framework.http
def run(request=None):
    code = 'to run'
    return code


if __name__ == '__main__':
    run()
