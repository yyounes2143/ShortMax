package u8;

import java.util.List;
/* compiled from: AutoValue_HeartBeatResult.java */
/* loaded from: classes5.dex */
final class a extends o {

    /* renamed from: a  reason: collision with root package name */
    private final String f67872a;

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f67873b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, List<String> list) {
        if (str != null) {
            this.f67872a = str;
            if (list != null) {
                this.f67873b = list;
                return;
            }
            throw new NullPointerException("Null usedDates");
        }
        throw new NullPointerException("Null userAgent");
    }

    @Override // u8.o
    public List<String> b() {
        return this.f67873b;
    }

    @Override // u8.o
    public String c() {
        return this.f67872a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f67872a.equals(oVar.c()) && this.f67873b.equals(oVar.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f67872a.hashCode() ^ 1000003) * 1000003) ^ this.f67873b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f67872a + ", usedDates=" + this.f67873b + "}";
    }
}
