package com.amazonaws.auth;

import android.content.Context;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentity.model.NotAuthorizedException;
import com.amazonaws.util.VersionInfoUtils;
import java.util.Date;
import java.util.Map;
/* loaded from: classes2.dex */
public class CognitoCachingCredentialsProvider extends CognitoCredentialsProvider {

    /* renamed from: o  reason: collision with root package name */
    volatile boolean f4931o;

    /* renamed from: p  reason: collision with root package name */
    AWSKeyValueStore f4932p;

    /* renamed from: q  reason: collision with root package name */
    private String f4933q;

    /* renamed from: r  reason: collision with root package name */
    private final IdentityChangedListener f4934r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f4935s;

    /* renamed from: t  reason: collision with root package name */
    private String f4936t;

    /* renamed from: u  reason: collision with root package name */
    private static final String f4925u = CognitoCachingCredentialsProvider.class.getName() + DomExceptionUtils.SEPARATOR + VersionInfoUtils.c();

    /* renamed from: v  reason: collision with root package name */
    private static final Log f4926v = LogFactory.b(CognitoCachingCredentialsProvider.class);

    /* renamed from: w  reason: collision with root package name */
    private static final String f4927w = "com.amazonaws.android.auth";

    /* renamed from: x  reason: collision with root package name */
    private static final String f4928x = "identityId";

    /* renamed from: y  reason: collision with root package name */
    private static final String f4929y = "accessKey";

    /* renamed from: z  reason: collision with root package name */
    private static final String f4930z = "secretKey";
    private static final String A = "sessionToken";
    private static final String B = "expirationDate";

    public CognitoCachingCredentialsProvider(Context context, AWSCognitoIdentityProvider aWSCognitoIdentityProvider, Regions regions) {
        super(aWSCognitoIdentityProvider, regions);
        this.f4931o = false;
        this.f4934r = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str, String str2) {
                CognitoCachingCredentialsProvider.f4926v.h("Identity id is changed");
                CognitoCachingCredentialsProvider.this.E(str2);
                CognitoCachingCredentialsProvider.this.b();
            }
        };
        this.f4935s = true;
        if (context != null) {
            A(context);
            return;
        }
        throw new IllegalArgumentException("context can't be null");
    }

    private void A(Context context) {
        this.f4932p = new AWSKeyValueStore(context, f4927w, this.f4935s);
        x();
        this.f4933q = y();
        B();
        n(this.f4934r);
    }

    private void B() {
        Log log = f4926v;
        log.h("Loading credentials from SharedPreferences");
        String g10 = this.f4932p.g(C(B));
        if (g10 != null) {
            try {
                this.f4943e = new Date(Long.parseLong(g10));
                if (!z()) {
                    this.f4943e = null;
                    return;
                }
                String g11 = this.f4932p.g(C(f4929y));
                String g12 = this.f4932p.g(C(f4930z));
                String g13 = this.f4932p.g(C(A));
                if (g11 != null && g12 != null && g13 != null) {
                    this.f4942d = new BasicSessionCredentials(g11, g12, g13);
                    return;
                }
                log.h("No valid credentials found in SharedPreferences");
                this.f4943e = null;
                return;
            } catch (NumberFormatException unused) {
                this.f4943e = null;
                return;
            }
        }
        this.f4943e = null;
    }

    private String C(String str) {
        return f() + "." + str;
    }

    private void D(AWSSessionCredentials aWSSessionCredentials, long j10) {
        f4926v.h("Saving credentials to SharedPreferences");
        if (aWSSessionCredentials != null) {
            this.f4932p.o(C(f4929y), aWSSessionCredentials.a());
            this.f4932p.o(C(f4930z), aWSSessionCredentials.b());
            this.f4932p.o(C(A), aWSSessionCredentials.getSessionToken());
            this.f4932p.o(C(B), String.valueOf(j10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(String str) {
        f4926v.h("Saving identity id to SharedPreferences");
        this.f4933q = str;
        this.f4932p.o(C(f4928x), str);
    }

    private void x() {
        AWSKeyValueStore aWSKeyValueStore = this.f4932p;
        String str = f4928x;
        if (aWSKeyValueStore.b(str)) {
            f4926v.j("Identity id without namespace is detected. It will be saved under new namespace.");
            String g10 = this.f4932p.g(str);
            this.f4932p.a();
            this.f4932p.o(C(str), g10);
        }
    }

    private boolean z() {
        boolean b10 = this.f4932p.b(C(f4929y));
        boolean b11 = this.f4932p.b(C(f4930z));
        boolean b12 = this.f4932p.b(C(A));
        if (!b10 && !b11 && !b12) {
            return false;
        }
        f4926v.h("No valid credentials found in SharedPreferences");
        return true;
    }

    public void F(boolean z10) {
        this.f4935s = z10;
        this.f4932p.r(z10);
    }

    public void G(String str) {
        this.f4936t = str;
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public void b() {
        this.f4951m.writeLock().lock();
        try {
            super.b();
            f4926v.h("Clearing credentials from SharedPreferences");
            this.f4932p.p(C(f4929y));
            this.f4932p.p(C(f4930z));
            this.f4932p.p(C(A));
            this.f4932p.p(C(B));
        } finally {
            this.f4951m.writeLock().unlock();
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    /* renamed from: d */
    public AWSSessionCredentials getCredentials() {
        AWSSessionCredentials aWSSessionCredentials;
        this.f4951m.writeLock().lock();
        try {
            try {
                if (this.f4942d == null) {
                    B();
                }
                if (this.f4943e != null && !j()) {
                    aWSSessionCredentials = this.f4942d;
                } else {
                    f4926v.h("Making a network call to fetch credentials.");
                    super.d();
                    Date date = this.f4943e;
                    if (date != null) {
                        D(this.f4942d, date.getTime());
                    }
                    aWSSessionCredentials = this.f4942d;
                }
            } catch (NotAuthorizedException e10) {
                f4926v.b("Failure to get credentials", e10);
                if (g() != null) {
                    super.r(null);
                    super.d();
                    aWSSessionCredentials = this.f4942d;
                } else {
                    throw e10;
                }
            }
            this.f4951m.writeLock().unlock();
            return aWSSessionCredentials;
        } catch (Throwable th2) {
            this.f4951m.writeLock().unlock();
            throw th2;
        }
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public String e() {
        if (this.f4931o) {
            this.f4931o = false;
            m();
            String e10 = super.e();
            this.f4933q = e10;
            E(e10);
        }
        String y10 = y();
        this.f4933q = y10;
        if (y10 == null) {
            String e11 = super.e();
            this.f4933q = e11;
            E(e11);
        }
        return this.f4933q;
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    protected String i() {
        String str = this.f4936t;
        if (str != null) {
            return str;
        }
        return f4925u;
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public void m() {
        this.f4951m.writeLock().lock();
        try {
            super.m();
            Date date = this.f4943e;
            if (date != null) {
                D(this.f4942d, date.getTime());
            }
        } finally {
            this.f4951m.writeLock().unlock();
        }
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public void s(Map<String, String> map) {
        this.f4951m.writeLock().lock();
        try {
            super.s(map);
            this.f4931o = true;
            b();
        } finally {
            this.f4951m.writeLock().unlock();
        }
    }

    public String y() {
        String g10 = this.f4932p.g(C(f4928x));
        if (g10 != null && this.f4933q == null) {
            super.r(g10);
        }
        return g10;
    }
}
