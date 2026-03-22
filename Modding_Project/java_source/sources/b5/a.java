package b5;
/* compiled from: AutoValue_LogResponse.java */
/* loaded from: classes4.dex */
final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private final long f2262a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(long j10) {
        this.f2262a = j10;
    }

    @Override // b5.b
    public long c() {
        return this.f2262a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof b) && this.f2262a == ((b) obj).c()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f2262a;
        return ((int) (j10 ^ (j10 >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f2262a + "}";
    }
}
