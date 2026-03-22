package com.amazonaws.auth;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;
import com.amazonaws.services.cognitoidentity.model.Credentials;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.services.cognitoidentity.model.ResourceNotFoundException;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityRequest;
import com.tencent.mmkv.MMKV;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes2.dex */
public class CognitoCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: n  reason: collision with root package name */
    private static final Log f4938n = LogFactory.b(AWSCredentialsProviderChain.class);

    /* renamed from: a  reason: collision with root package name */
    private final String f4939a;

    /* renamed from: b  reason: collision with root package name */
    private AmazonCognitoIdentity f4940b;

    /* renamed from: c  reason: collision with root package name */
    private final AWSCognitoIdentityProvider f4941c;

    /* renamed from: d  reason: collision with root package name */
    protected AWSSessionCredentials f4942d;

    /* renamed from: e  reason: collision with root package name */
    protected Date f4943e;

    /* renamed from: f  reason: collision with root package name */
    protected String f4944f;

    /* renamed from: g  reason: collision with root package name */
    protected int f4945g;

    /* renamed from: h  reason: collision with root package name */
    protected int f4946h;

    /* renamed from: i  reason: collision with root package name */
    protected String f4947i;

    /* renamed from: j  reason: collision with root package name */
    protected String f4948j;

    /* renamed from: k  reason: collision with root package name */
    protected String f4949k;

    /* renamed from: l  reason: collision with root package name */
    protected final boolean f4950l;

    /* renamed from: m  reason: collision with root package name */
    protected final ReentrantReadWriteLock f4951m;

    public CognitoCredentialsProvider(AWSCognitoIdentityProvider aWSCognitoIdentityProvider, Regions regions) {
        this(aWSCognitoIdentityProvider, regions, new ClientConfiguration());
    }

    private void a(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        amazonWebServiceRequest.g().a(str);
    }

    private static AmazonCognitoIdentityClient c(ClientConfiguration clientConfiguration, Regions regions) {
        AmazonCognitoIdentityClient amazonCognitoIdentityClient = new AmazonCognitoIdentityClient(new AnonymousAWSCredentials(), clientConfiguration);
        amazonCognitoIdentityClient.a(Region.e(regions));
        return amazonCognitoIdentityClient;
    }

    private void k(String str) {
        Map<String, String> g10;
        GetCredentialsForIdentityResult o10;
        if (str != null && !str.isEmpty()) {
            g10 = new HashMap<>();
            g10.put(h(), str);
        } else {
            g10 = g();
        }
        try {
            o10 = this.f4940b.c(new GetCredentialsForIdentityRequest().v(e()).y(g10).u(this.f4949k));
        } catch (ResourceNotFoundException unused) {
            o10 = o();
        } catch (AmazonServiceException e10) {
            if (e10.b().equals("ValidationException")) {
                o10 = o();
            } else {
                throw e10;
            }
        }
        Credentials b10 = o10.b();
        this.f4942d = new BasicSessionCredentials(b10.b(), b10.e(), b10.f());
        t(b10.d());
        if (!o10.d().equals(e())) {
            r(o10.d());
        }
    }

    private void l(String str) {
        String str2;
        if (this.f4941c.e()) {
            str2 = this.f4948j;
        } else {
            str2 = this.f4947i;
        }
        a(new AssumeRoleWithWebIdentityRequest().D(str).B(str2).C("ProviderSession").A(Integer.valueOf(this.f4945g)), i());
        throw null;
    }

    private GetCredentialsForIdentityResult o() {
        Map<String, String> g10;
        String p10 = p();
        this.f4944f = p10;
        if (p10 != null && !p10.isEmpty()) {
            g10 = new HashMap<>();
            g10.put(h(), this.f4944f);
        } else {
            g10 = g();
        }
        return this.f4940b.c(new GetCredentialsForIdentityRequest().v(e()).y(g10).u(this.f4949k));
    }

    private String p() {
        r(null);
        String g10 = this.f4941c.g();
        this.f4944f = g10;
        return g10;
    }

    public void b() {
        this.f4951m.writeLock().lock();
        try {
            this.f4942d = null;
            this.f4943e = null;
        } finally {
            this.f4951m.writeLock().unlock();
        }
    }

    public AWSSessionCredentials d() {
        this.f4951m.writeLock().lock();
        try {
            if (j()) {
                u();
            }
            AWSSessionCredentials aWSSessionCredentials = this.f4942d;
            this.f4951m.writeLock().unlock();
            return aWSSessionCredentials;
        } catch (Throwable th2) {
            this.f4951m.writeLock().unlock();
            throw th2;
        }
    }

    public String e() {
        return this.f4941c.d();
    }

    public String f() {
        return this.f4941c.a();
    }

    public Map<String, String> g() {
        return this.f4941c.h();
    }

    protected String h() {
        if (Regions.CN_NORTH_1.getName().equals(this.f4939a)) {
            return "cognito-identity.cn-north-1.amazonaws.com.cn";
        }
        return "cognito-identity.amazonaws.com";
    }

    protected String i() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean j() {
        if (this.f4942d == null) {
            return true;
        }
        if (this.f4943e.getTime() - (System.currentTimeMillis() - (SDKGlobalConfiguration.a() * 1000)) < this.f4946h * 1000) {
            return true;
        }
        return false;
    }

    public void m() {
        this.f4951m.writeLock().lock();
        try {
            u();
        } finally {
            this.f4951m.writeLock().unlock();
        }
    }

    public void n(IdentityChangedListener identityChangedListener) {
        this.f4941c.b(identityChangedListener);
    }

    public void q(String str) {
        this.f4949k = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r(String str) {
        this.f4941c.c(str);
    }

    public void s(Map<String, String> map) {
        this.f4951m.writeLock().lock();
        try {
            this.f4941c.f(map);
            b();
        } finally {
            this.f4951m.writeLock().unlock();
        }
    }

    public void t(Date date) {
        this.f4951m.writeLock().lock();
        try {
            this.f4943e = date;
        } finally {
            this.f4951m.writeLock().unlock();
        }
    }

    protected void u() {
        try {
            this.f4944f = this.f4941c.g();
        } catch (ResourceNotFoundException unused) {
            this.f4944f = p();
        } catch (AmazonServiceException e10) {
            if (e10.b().equals("ValidationException")) {
                this.f4944f = p();
            } else {
                throw e10;
            }
        }
        if (this.f4950l) {
            k(this.f4944f);
        } else {
            l(this.f4944f);
        }
    }

    public CognitoCredentialsProvider(AWSCognitoIdentityProvider aWSCognitoIdentityProvider, Regions regions, ClientConfiguration clientConfiguration) {
        this(aWSCognitoIdentityProvider, c(clientConfiguration, regions));
    }

    public CognitoCredentialsProvider(AWSCognitoIdentityProvider aWSCognitoIdentityProvider, AmazonCognitoIdentityClient amazonCognitoIdentityClient) {
        this.f4940b = amazonCognitoIdentityClient;
        this.f4939a = amazonCognitoIdentityClient.z().getName();
        this.f4941c = aWSCognitoIdentityProvider;
        this.f4947i = null;
        this.f4948j = null;
        this.f4945g = MMKV.ExpireInHour;
        this.f4946h = 500;
        this.f4950l = true;
        this.f4951m = new ReentrantReadWriteLock(true);
    }
}
