package com.amazonaws.auth;

import java.util.Map;
/* loaded from: classes2.dex */
public interface AWSCognitoIdentityProvider extends AWSIdentityProvider {
    String a();

    void b(IdentityChangedListener identityChangedListener);

    void c(String str);

    String d();

    boolean e();

    void f(Map<String, String> map);

    Map<String, String> h();
}
