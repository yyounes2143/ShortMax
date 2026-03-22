package d8;
/* compiled from: AutoValue_RolloutAssignment.java */
/* loaded from: classes5.dex */
final class b extends j {

    /* renamed from: b  reason: collision with root package name */
    private final String f50207b;

    /* renamed from: c  reason: collision with root package name */
    private final String f50208c;

    /* renamed from: d  reason: collision with root package name */
    private final String f50209d;

    /* renamed from: e  reason: collision with root package name */
    private final String f50210e;

    /* renamed from: f  reason: collision with root package name */
    private final long f50211f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2, String str3, String str4, long j10) {
        if (str != null) {
            this.f50207b = str;
            if (str2 != null) {
                this.f50208c = str2;
                if (str3 != null) {
                    this.f50209d = str3;
                    if (str4 != null) {
                        this.f50210e = str4;
                        this.f50211f = j10;
                        return;
                    }
                    throw new NullPointerException("Null variantId");
                }
                throw new NullPointerException("Null parameterValue");
            }
            throw new NullPointerException("Null parameterKey");
        }
        throw new NullPointerException("Null rolloutId");
    }

    @Override // d8.j
    public String c() {
        return this.f50208c;
    }

    @Override // d8.j
    public String d() {
        return this.f50209d;
    }

    @Override // d8.j
    public String e() {
        return this.f50207b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f50207b.equals(jVar.e()) && this.f50208c.equals(jVar.c()) && this.f50209d.equals(jVar.d()) && this.f50210e.equals(jVar.g()) && this.f50211f == jVar.f()) {
            return true;
        }
        return false;
    }

    @Override // d8.j
    public long f() {
        return this.f50211f;
    }

    @Override // d8.j
    public String g() {
        return this.f50210e;
    }

    public int hashCode() {
        long j10 = this.f50211f;
        return ((((((((this.f50207b.hashCode() ^ 1000003) * 1000003) ^ this.f50208c.hashCode()) * 1000003) ^ this.f50209d.hashCode()) * 1000003) ^ this.f50210e.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f50207b + ", parameterKey=" + this.f50208c + ", parameterValue=" + this.f50209d + ", variantId=" + this.f50210e + ", templateVersion=" + this.f50211f + "}";
    }
}
