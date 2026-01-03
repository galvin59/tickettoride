---
description: Write integration tests for Supabase Auth login and protected routes
---

1. Create a new test class `SupabaseAuthIntegrationTests` in the IntegrationTests project
2. Add necessary using statements for testing Supabase Auth functionality
3. Implement a test for successful login with valid Supabase credentials
4. Implement a test for failed login with invalid credentials
5. Implement a test for accessing a protected endpoint with a valid JWT token
6. Implement a test for accessing a protected endpoint without a JWT token (should return 401)
7. Implement a test for accessing a protected endpoint with an expired JWT token (should return 401)
8. Configure the test environment to use Supabase test credentials
9. Run the new integration tests to verify Supabase Auth functionality
