package e8;

import e8.g0;
/* compiled from: AutoValue_StaticSessionData_OsData.java */
/* loaded from: classes5.dex */
final class e0 extends g0.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f51064a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51065b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f51066c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(String str, String str2, boolean z10) {
        if (str != null) {
            this.f51064a = str;
            if (str2 != null) {
                this.f51065b = str2;
                this.f51066c = z10;
                return;
            }
            throw new NullPointerException("Null osCodeName");
        }
        throw new NullPointerException("Null osRelease");
    }

    @Override // e8.g0.c
    public boolean b() {
        return this.f51066c;
    }

    @Override // e8.g0.c
    public String c() {
        return this.f51065b;
    }

    @Override // e8.g0.c
    public String d() {
        return this.f51064a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.c)) {
            return false;
        }
        g0.c cVar = (g0.c) obj;
        if (this.f51064a.equals(cVar.d()) && this.f51065b.equals(cVar.c()) && this.f51066c == cVar.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (((this.f51064a.hashCode() ^ 1000003) * 1000003) ^ this.f51065b.hashCode()) * 1000003;
        if (this.f51066c) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "OsData{osRelease=" + this.f51064a + ", osCodeName=" + this.f51065b + ", isRooted=" + this.f51066c + "}";
    }
}
