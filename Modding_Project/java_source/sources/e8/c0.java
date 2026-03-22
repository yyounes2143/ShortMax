package e8;

import e8.g0;
/* compiled from: AutoValue_StaticSessionData_AppData.java */
/* loaded from: classes5.dex */
final class c0 extends g0.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f51039a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51040b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51041c;

    /* renamed from: d  reason: collision with root package name */
    private final String f51042d;

    /* renamed from: e  reason: collision with root package name */
    private final int f51043e;

    /* renamed from: f  reason: collision with root package name */
    private final z7.f f51044f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(String str, String str2, String str3, String str4, int i10, z7.f fVar) {
        if (str != null) {
            this.f51039a = str;
            if (str2 != null) {
                this.f51040b = str2;
                if (str3 != null) {
                    this.f51041c = str3;
                    if (str4 != null) {
                        this.f51042d = str4;
                        this.f51043e = i10;
                        if (fVar != null) {
                            this.f51044f = fVar;
                            return;
                        }
                        throw new NullPointerException("Null developmentPlatformProvider");
                    }
                    throw new NullPointerException("Null installUuid");
                }
                throw new NullPointerException("Null versionName");
            }
            throw new NullPointerException("Null versionCode");
        }
        throw new NullPointerException("Null appIdentifier");
    }

    @Override // e8.g0.a
    public String a() {
        return this.f51039a;
    }

    @Override // e8.g0.a
    public int c() {
        return this.f51043e;
    }

    @Override // e8.g0.a
    public z7.f d() {
        return this.f51044f;
    }

    @Override // e8.g0.a
    public String e() {
        return this.f51042d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.a)) {
            return false;
        }
        g0.a aVar = (g0.a) obj;
        if (this.f51039a.equals(aVar.a()) && this.f51040b.equals(aVar.f()) && this.f51041c.equals(aVar.g()) && this.f51042d.equals(aVar.e()) && this.f51043e == aVar.c() && this.f51044f.equals(aVar.d())) {
            return true;
        }
        return false;
    }

    @Override // e8.g0.a
    public String f() {
        return this.f51040b;
    }

    @Override // e8.g0.a
    public String g() {
        return this.f51041c;
    }

    public int hashCode() {
        return ((((((((((this.f51039a.hashCode() ^ 1000003) * 1000003) ^ this.f51040b.hashCode()) * 1000003) ^ this.f51041c.hashCode()) * 1000003) ^ this.f51042d.hashCode()) * 1000003) ^ this.f51043e) * 1000003) ^ this.f51044f.hashCode();
    }

    public String toString() {
        return "AppData{appIdentifier=" + this.f51039a + ", versionCode=" + this.f51040b + ", versionName=" + this.f51041c + ", installUuid=" + this.f51042d + ", deliveryMechanism=" + this.f51043e + ", developmentPlatformProvider=" + this.f51044f + "}";
    }
}
