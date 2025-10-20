from locust import HttpUser, task, between
import random

class PetClinicUser(HttpUser):
    wait_time = between(0.5, 1.5)

    @task(40)
    def list_owners(self):
        self.client.get("/api/customer/owners")

    @task(30)
    def get_owner(self):
        owner_id = random.randint(1, 50)
        self.client.get(f"/api/customer/owners/{owner_id}")

    @task(20)
    def list_vets(self):
        self.client.get("/api/vet/vets")

    @task(10)
    def create_owner(self):
        i = random.randint(10000, 99999)
        payload = {
            "firstName": f"Load{i}",
            "lastName": f"Test{i}",
            "address": f"Street {i}",
            "city": "City",
            "telephone": f"9{100000000 + i}"
        }
        self.client.post("/api/customer/owners", json=payload, headers={"Content-Type": "application/json"})
