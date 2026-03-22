package e9;
/* compiled from: AutoValue_LibraryVersion.java */
/* loaded from: classes5.dex */
final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f51266a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51267b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        if (str != null) {
            this.f51266a = str;
            if (str2 != null) {
                this.f51267b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }

    @Override // e9.f
    public String b() {
        return this.f51266a;
    }

    @Override // e9.f
    public String c() {
        return this.f51267b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f51266a.equals(fVar.b()) && this.f51267b.equals(fVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f51266a.hashCode() ^ 1000003) * 1000003) ^ this.f51267b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f51266a + ", version=" + this.f51267b + "}";
    }
}
