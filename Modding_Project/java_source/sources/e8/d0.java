package e8;

import e8.g0;
/* compiled from: AutoValue_StaticSessionData_DeviceData.java */
/* loaded from: classes5.dex */
final class d0 extends g0.b {

    /* renamed from: a  reason: collision with root package name */
    private final int f51051a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51052b;

    /* renamed from: c  reason: collision with root package name */
    private final int f51053c;

    /* renamed from: d  reason: collision with root package name */
    private final long f51054d;

    /* renamed from: e  reason: collision with root package name */
    private final long f51055e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f51056f;

    /* renamed from: g  reason: collision with root package name */
    private final int f51057g;

    /* renamed from: h  reason: collision with root package name */
    private final String f51058h;

    /* renamed from: i  reason: collision with root package name */
    private final String f51059i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f51051a = i10;
        if (str != null) {
            this.f51052b = str;
            this.f51053c = i11;
            this.f51054d = j10;
            this.f51055e = j11;
            this.f51056f = z10;
            this.f51057g = i12;
            if (str2 != null) {
                this.f51058h = str2;
                if (str3 != null) {
                    this.f51059i = str3;
                    return;
                }
                throw new NullPointerException("Null modelClass");
            }
            throw new NullPointerException("Null manufacturer");
        }
        throw new NullPointerException("Null model");
    }

    @Override // e8.g0.b
    public int a() {
        return this.f51051a;
    }

    @Override // e8.g0.b
    public int b() {
        return this.f51053c;
    }

    @Override // e8.g0.b
    public long d() {
        return this.f51055e;
    }

    @Override // e8.g0.b
    public boolean e() {
        return this.f51056f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.b)) {
            return false;
        }
        g0.b bVar = (g0.b) obj;
        if (this.f51051a == bVar.a() && this.f51052b.equals(bVar.g()) && this.f51053c == bVar.b() && this.f51054d == bVar.j() && this.f51055e == bVar.d() && this.f51056f == bVar.e() && this.f51057g == bVar.i() && this.f51058h.equals(bVar.f()) && this.f51059i.equals(bVar.h())) {
            return true;
        }
        return false;
    }

    @Override // e8.g0.b
    public String f() {
        return this.f51058h;
    }

    @Override // e8.g0.b
    public String g() {
        return this.f51052b;
    }

    @Override // e8.g0.b
    public String h() {
        return this.f51059i;
    }

    public int hashCode() {
        int i10;
        long j10 = this.f51054d;
        long j11 = this.f51055e;
        int hashCode = (((((((((this.f51051a ^ 1000003) * 1000003) ^ this.f51052b.hashCode()) * 1000003) ^ this.f51053c) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        if (this.f51056f) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return ((((((hashCode ^ i10) * 1000003) ^ this.f51057g) * 1000003) ^ this.f51058h.hashCode()) * 1000003) ^ this.f51059i.hashCode();
    }

    @Override // e8.g0.b
    public int i() {
        return this.f51057g;
    }

    @Override // e8.g0.b
    public long j() {
        return this.f51054d;
    }

    public String toString() {
        return "DeviceData{arch=" + this.f51051a + ", model=" + this.f51052b + ", availableProcessors=" + this.f51053c + ", totalRam=" + this.f51054d + ", diskSpace=" + this.f51055e + ", isEmulator=" + this.f51056f + ", state=" + this.f51057g + ", manufacturer=" + this.f51058h + ", modelClass=" + this.f51059i + "}";
    }
}
