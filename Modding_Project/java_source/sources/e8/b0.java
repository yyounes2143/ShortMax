package e8;

import e8.g0;
/* compiled from: AutoValue_StaticSessionData.java */
/* loaded from: classes5.dex */
final class b0 extends g0 {

    /* renamed from: a  reason: collision with root package name */
    private final g0.a f51017a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.c f51018b;

    /* renamed from: c  reason: collision with root package name */
    private final g0.b f51019c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(g0.a aVar, g0.c cVar, g0.b bVar) {
        if (aVar != null) {
            this.f51017a = aVar;
            if (cVar != null) {
                this.f51018b = cVar;
                if (bVar != null) {
                    this.f51019c = bVar;
                    return;
                }
                throw new NullPointerException("Null deviceData");
            }
            throw new NullPointerException("Null osData");
        }
        throw new NullPointerException("Null appData");
    }

    @Override // e8.g0
    public g0.a a() {
        return this.f51017a;
    }

    @Override // e8.g0
    public g0.b c() {
        return this.f51019c;
    }

    @Override // e8.g0
    public g0.c d() {
        return this.f51018b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        if (this.f51017a.equals(g0Var.a()) && this.f51018b.equals(g0Var.d()) && this.f51019c.equals(g0Var.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f51017a.hashCode() ^ 1000003) * 1000003) ^ this.f51018b.hashCode()) * 1000003) ^ this.f51019c.hashCode();
    }

    public String toString() {
        return "StaticSessionData{appData=" + this.f51017a + ", osData=" + this.f51018b + ", deviceData=" + this.f51019c + "}";
    }
}
