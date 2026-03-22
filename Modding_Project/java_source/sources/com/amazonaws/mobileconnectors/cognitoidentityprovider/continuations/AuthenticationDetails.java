package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class AuthenticationDetails {

    /* renamed from: a  reason: collision with root package name */
    private String f5582a = "PASSWORD_VERIFIER";

    /* renamed from: b  reason: collision with root package name */
    private final String f5583b;

    /* renamed from: c  reason: collision with root package name */
    private String f5584c;

    /* renamed from: d  reason: collision with root package name */
    private List<AttributeType> f5585d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f5586e;

    public AuthenticationDetails(String str, String str2, Map<String, String> map) {
        this.f5583b = str;
        this.f5584c = str2;
        g(map);
    }

    private void g(Map<String, String> map) {
        if (map != null) {
            this.f5585d = new ArrayList();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                AttributeType attributeType = new AttributeType();
                attributeType.e(entry.getKey());
                attributeType.f(entry.getValue());
                this.f5585d.add(attributeType);
            }
            return;
        }
        this.f5585d = null;
    }

    public Map<String, String> a() {
        return this.f5586e;
    }

    public String b() {
        return this.f5582a;
    }

    public String c() {
        return this.f5586e.get("CHALLENGE_NAME");
    }

    public String d() {
        return this.f5584c;
    }

    public String e() {
        return this.f5583b;
    }

    public List<AttributeType> f() {
        return this.f5585d;
    }
}
