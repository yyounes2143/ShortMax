package com.mbridge.msdk.thrid.okhttp;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* compiled from: ConnectionSpec.java */
/* loaded from: classes6.dex */
public final class i {

    /* renamed from: e  reason: collision with root package name */
    private static final f[] f29585e;

    /* renamed from: f  reason: collision with root package name */
    private static final f[] f29586f;

    /* renamed from: g  reason: collision with root package name */
    public static final i f29587g;

    /* renamed from: h  reason: collision with root package name */
    public static final i f29588h;

    /* renamed from: i  reason: collision with root package name */
    public static final i f29589i;

    /* renamed from: j  reason: collision with root package name */
    public static final i f29590j;

    /* renamed from: a  reason: collision with root package name */
    final boolean f29591a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f29592b;

    /* renamed from: c  reason: collision with root package name */
    final String[] f29593c;

    /* renamed from: d  reason: collision with root package name */
    final String[] f29594d;

    static {
        f fVar = f.f29546n1;
        f fVar2 = f.f29549o1;
        f fVar3 = f.f29552p1;
        f fVar4 = f.f29555q1;
        f fVar5 = f.f29558r1;
        f fVar6 = f.Z0;
        f fVar7 = f.f29516d1;
        f fVar8 = f.f29507a1;
        f fVar9 = f.f29519e1;
        f fVar10 = f.f29537k1;
        f fVar11 = f.f29534j1;
        f[] fVarArr = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11};
        f29585e = fVarArr;
        f[] fVarArr2 = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11, f.K0, f.L0, f.f29530i0, f.f29533j0, f.G, f.K, f.f29535k};
        f29586f = fVarArr2;
        a a10 = new a(true).a(fVarArr);
        b0 b0Var = b0.TLS_1_3;
        b0 b0Var2 = b0.TLS_1_2;
        f29587g = a10.a(b0Var, b0Var2).a(true).a();
        a a11 = new a(true).a(fVarArr2);
        b0 b0Var3 = b0.TLS_1_1;
        b0 b0Var4 = b0.TLS_1_0;
        f29588h = a11.a(b0Var, b0Var2, b0Var3, b0Var4).a(true).a();
        f29589i = new a(true).a(fVarArr2).a(b0Var4).a(true).a();
        f29590j = new a(false).a();
    }

    i(a aVar) {
        this.f29591a = aVar.f29595a;
        this.f29593c = aVar.f29596b;
        this.f29594d = aVar.f29597c;
        this.f29592b = aVar.f29598d;
    }

    public List<f> a() {
        String[] strArr = this.f29593c;
        if (strArr != null) {
            return f.a(strArr);
        }
        return null;
    }

    public boolean b() {
        return this.f29591a;
    }

    public boolean c() {
        return this.f29592b;
    }

    public List<b0> d() {
        String[] strArr = this.f29594d;
        if (strArr != null) {
            return b0.a(strArr);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        i iVar = (i) obj;
        boolean z10 = this.f29591a;
        if (z10 != iVar.f29591a) {
            return false;
        }
        if (z10 && (!Arrays.equals(this.f29593c, iVar.f29593c) || !Arrays.equals(this.f29594d, iVar.f29594d) || this.f29592b != iVar.f29592b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (this.f29591a) {
            return ((((Arrays.hashCode(this.f29593c) + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + Arrays.hashCode(this.f29594d)) * 31) + (!this.f29592b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        String str;
        if (!this.f29591a) {
            return "ConnectionSpec()";
        }
        String str2 = "[all enabled]";
        if (this.f29593c == null) {
            str = "[all enabled]";
        } else {
            str = a().toString();
        }
        if (this.f29594d != null) {
            str2 = d().toString();
        }
        return "ConnectionSpec(cipherSuites=" + str + ", tlsVersions=" + str2 + ", supportsTlsExtensions=" + this.f29592b + ")";
    }

    /* compiled from: ConnectionSpec.java */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f29595a;

        /* renamed from: b  reason: collision with root package name */
        String[] f29596b;

        /* renamed from: c  reason: collision with root package name */
        String[] f29597c;

        /* renamed from: d  reason: collision with root package name */
        boolean f29598d;

        a(boolean z10) {
            this.f29595a = z10;
        }

        public a a(f... fVarArr) {
            if (this.f29595a) {
                String[] strArr = new String[fVarArr.length];
                for (int i10 = 0; i10 < fVarArr.length; i10++) {
                    strArr[i10] = fVarArr[i10].f29575a;
                }
                return a(strArr);
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a b(String... strArr) {
            if (this.f29595a) {
                if (strArr.length != 0) {
                    this.f29597c = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a(i iVar) {
            this.f29595a = iVar.f29591a;
            this.f29596b = iVar.f29593c;
            this.f29597c = iVar.f29594d;
            this.f29598d = iVar.f29592b;
        }

        public a a(String... strArr) {
            if (this.f29595a) {
                if (strArr.length != 0) {
                    this.f29596b = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a a(b0... b0VarArr) {
            if (this.f29595a) {
                String[] strArr = new String[b0VarArr.length];
                for (int i10 = 0; i10 < b0VarArr.length; i10++) {
                    strArr[i10] = b0VarArr[i10].f29474a;
                }
                return b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a a(boolean z10) {
            if (this.f29595a) {
                this.f29598d = z10;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public i a() {
            return new i(this);
        }
    }

    private i b(SSLSocket sSLSocket, boolean z10) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.f29593c != null) {
            enabledCipherSuites = com.mbridge.msdk.thrid.okhttp.internal.c.a(f.f29508b, sSLSocket.getEnabledCipherSuites(), this.f29593c);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f29594d != null) {
            enabledProtocols = com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.f29617q, sSLSocket.getEnabledProtocols(), this.f29594d);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(f.f29508b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z10 && a10 != -1) {
            enabledCipherSuites = com.mbridge.msdk.thrid.okhttp.internal.c.a(enabledCipherSuites, supportedCipherSuites[a10]);
        }
        return new a(this).a(enabledCipherSuites).b(enabledProtocols).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(SSLSocket sSLSocket, boolean z10) {
        i b10 = b(sSLSocket, z10);
        String[] strArr = b10.f29594d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = b10.f29593c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean a(SSLSocket sSLSocket) {
        if (this.f29591a) {
            String[] strArr = this.f29594d;
            if (strArr == null || com.mbridge.msdk.thrid.okhttp.internal.c.b(com.mbridge.msdk.thrid.okhttp.internal.c.f29617q, strArr, sSLSocket.getEnabledProtocols())) {
                String[] strArr2 = this.f29593c;
                return strArr2 == null || com.mbridge.msdk.thrid.okhttp.internal.c.b(f.f29508b, strArr2, sSLSocket.getEnabledCipherSuites());
            }
            return false;
        }
        return false;
    }
}
