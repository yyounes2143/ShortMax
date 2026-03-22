package y3;
/* compiled from: ImmutableQualityInfo.java */
/* loaded from: classes3.dex */
public class o implements p {

    /* renamed from: d  reason: collision with root package name */
    public static final p f70637d = d(Integer.MAX_VALUE, true, true);

    /* renamed from: a  reason: collision with root package name */
    int f70638a;

    /* renamed from: b  reason: collision with root package name */
    boolean f70639b;

    /* renamed from: c  reason: collision with root package name */
    boolean f70640c;

    private o(int i10, boolean z10, boolean z11) {
        this.f70638a = i10;
        this.f70639b = z10;
        this.f70640c = z11;
    }

    public static p d(int i10, boolean z10, boolean z11) {
        return new o(i10, z10, z11);
    }

    @Override // y3.p
    public boolean a() {
        return this.f70640c;
    }

    @Override // y3.p
    public boolean b() {
        return this.f70639b;
    }

    @Override // y3.p
    public int c() {
        return this.f70638a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f70638a == oVar.f70638a && this.f70639b == oVar.f70639b && this.f70640c == oVar.f70640c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = this.f70638a;
        int i12 = 0;
        if (this.f70639b) {
            i10 = 4194304;
        } else {
            i10 = 0;
        }
        int i13 = i11 ^ i10;
        if (this.f70640c) {
            i12 = 8388608;
        }
        return i13 ^ i12;
    }
}
