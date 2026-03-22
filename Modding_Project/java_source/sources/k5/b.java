package k5;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_PersistedEvent.java */
/* loaded from: classes4.dex */
public final class b extends k {

    /* renamed from: a  reason: collision with root package name */
    private final long f60603a;

    /* renamed from: b  reason: collision with root package name */
    private final c5.p f60604b;

    /* renamed from: c  reason: collision with root package name */
    private final c5.i f60605c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j10, c5.p pVar, c5.i iVar) {
        this.f60603a = j10;
        if (pVar != null) {
            this.f60604b = pVar;
            if (iVar != null) {
                this.f60605c = iVar;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // k5.k
    public c5.i b() {
        return this.f60605c;
    }

    @Override // k5.k
    public long c() {
        return this.f60603a;
    }

    @Override // k5.k
    public c5.p d() {
        return this.f60604b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f60603a == kVar.c() && this.f60604b.equals(kVar.d()) && this.f60605c.equals(kVar.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f60603a;
        return ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f60604b.hashCode()) * 1000003) ^ this.f60605c.hashCode();
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f60603a + ", transportContext=" + this.f60604b + ", event=" + this.f60605c + "}";
    }
}
