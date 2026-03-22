package com.amazonaws.auth;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class AWSAbstractCognitoIdentityProvider implements AWSCognitoIdentityProvider {

    /* renamed from: a  reason: collision with root package name */
    protected final AmazonCognitoIdentity f4891a;

    /* renamed from: b  reason: collision with root package name */
    protected String f4892b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4893c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4894d;

    /* renamed from: e  reason: collision with root package name */
    protected String f4895e;

    /* renamed from: g  reason: collision with root package name */
    protected Map<String, String> f4897g = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    protected List<IdentityChangedListener> f4896f = new ArrayList();

    public AWSAbstractCognitoIdentityProvider(String str, String str2, AmazonCognitoIdentity amazonCognitoIdentity) {
        this.f4893c = str;
        this.f4894d = str2;
        this.f4891a = amazonCognitoIdentity;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public String a() {
        return this.f4894d;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void b(IdentityChangedListener identityChangedListener) {
        this.f4896f.add(identityChangedListener);
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void c(String str) {
        String str2 = this.f4892b;
        if (str2 != null && str2.equals(str)) {
            return;
        }
        String str3 = this.f4892b;
        this.f4892b = str;
        for (IdentityChangedListener identityChangedListener : this.f4896f) {
            identityChangedListener.a(str3, this.f4892b);
        }
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public String d() {
        if (this.f4892b == null) {
            GetIdRequest y10 = new GetIdRequest().u(j()).v(a()).y(this.f4897g);
            i(y10, k());
            GetIdResult j10 = this.f4891a.j(y10);
            if (j10.b() != null) {
                c(j10.b());
            }
        }
        return this.f4892b;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public boolean e() {
        Map<String, String> map = this.f4897g;
        if (map != null && map.size() > 0) {
            return true;
        }
        return false;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void f(Map<String, String> map) {
        this.f4897g = map;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public Map<String, String> h() {
        return this.f4897g;
    }

    protected void i(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        amazonWebServiceRequest.g().a(str);
    }

    public String j() {
        return this.f4893c;
    }

    protected abstract String k();

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(String str) {
        this.f4892b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(String str) {
        this.f4895e = str;
    }
}
