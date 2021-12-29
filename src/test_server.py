from fastapi.testclient import TestClient

from server import app


client = TestClient(app)


def test_fail_get():
    response = client.get("/")
    assert response.status_code == 405


def test_success_post():
    response = client.post("/", json={"msg": "Hello World"})
    print(response)
    assert response.status_code == 200
    assert response.json() == {"msg": "Hello World"}
