package com.service;

import com.entity.Test;

public interface TestService {
    Test findId(int id);
    Test login(Test test);
}
