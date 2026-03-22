package r9;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GenericGFPoly.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final a f65705a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f65706b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, int[] iArr) {
        if (iArr.length != 0) {
            this.f65705a = aVar;
            int length = iArr.length;
            int i10 = 1;
            if (length > 1 && iArr[0] == 0) {
                while (i10 < length && iArr[i10] == 0) {
                    i10++;
                }
                if (i10 == length) {
                    this.f65706b = new int[]{0};
                    return;
                }
                int[] iArr2 = new int[length - i10];
                this.f65706b = iArr2;
                System.arraycopy(iArr, i10, iArr2, 0, iArr2.length);
                return;
            }
            this.f65706b = iArr;
            return;
        }
        throw new IllegalArgumentException();
    }

    b a(b bVar) {
        if (this.f65705a.equals(bVar.f65705a)) {
            if (f()) {
                return bVar;
            }
            if (bVar.f()) {
                return this;
            }
            int[] iArr = this.f65706b;
            int[] iArr2 = bVar.f65706b;
            if (iArr.length <= iArr2.length) {
                iArr = iArr2;
                iArr2 = iArr;
            }
            int[] iArr3 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr3, 0, length);
            for (int i10 = length; i10 < iArr.length; i10++) {
                iArr3[i10] = a.a(iArr2[i10 - length], iArr[i10]);
            }
            return new b(this.f65705a, iArr3);
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b[] b(b bVar) {
        if (this.f65705a.equals(bVar.f65705a)) {
            if (!bVar.f()) {
                b e10 = this.f65705a.e();
                int f10 = this.f65705a.f(bVar.c(bVar.e()));
                b bVar2 = this;
                while (bVar2.e() >= bVar.e() && !bVar2.f()) {
                    int e11 = bVar2.e() - bVar.e();
                    int h10 = this.f65705a.h(bVar2.c(bVar2.e()), f10);
                    b h11 = bVar.h(e11, h10);
                    e10 = e10.a(this.f65705a.b(e11, h10));
                    bVar2 = bVar2.a(h11);
                }
                return new b[]{e10, bVar2};
            }
            throw new IllegalArgumentException("Divide by 0");
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    int c(int i10) {
        int[] iArr = this.f65706b;
        return iArr[(iArr.length - 1) - i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] d() {
        return this.f65706b;
    }

    int e() {
        return this.f65706b.length - 1;
    }

    boolean f() {
        if (this.f65706b[0] != 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b g(b bVar) {
        if (this.f65705a.equals(bVar.f65705a)) {
            if (!f() && !bVar.f()) {
                int[] iArr = this.f65706b;
                int length = iArr.length;
                int[] iArr2 = bVar.f65706b;
                int length2 = iArr2.length;
                int[] iArr3 = new int[(length + length2) - 1];
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = iArr[i10];
                    for (int i12 = 0; i12 < length2; i12++) {
                        int i13 = i10 + i12;
                        iArr3[i13] = a.a(iArr3[i13], this.f65705a.h(i11, iArr2[i12]));
                    }
                }
                return new b(this.f65705a, iArr3);
            }
            return this.f65705a.e();
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b h(int i10, int i11) {
        if (i10 >= 0) {
            if (i11 == 0) {
                return this.f65705a.e();
            }
            int length = this.f65706b.length;
            int[] iArr = new int[i10 + length];
            for (int i12 = 0; i12 < length; i12++) {
                iArr[i12] = this.f65705a.h(this.f65706b[i12], i11);
            }
            return new b(this.f65705a, iArr);
        }
        throw new IllegalArgumentException();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(e() * 8);
        for (int e10 = e(); e10 >= 0; e10--) {
            int c10 = c(e10);
            if (c10 != 0) {
                if (c10 < 0) {
                    sb2.append(" - ");
                    c10 = -c10;
                } else if (sb2.length() > 0) {
                    sb2.append(" + ");
                }
                if (e10 == 0 || c10 != 1) {
                    int g10 = this.f65705a.g(c10);
                    if (g10 == 0) {
                        sb2.append('1');
                    } else if (g10 == 1) {
                        sb2.append('a');
                    } else {
                        sb2.append("a^");
                        sb2.append(g10);
                    }
                }
                if (e10 != 0) {
                    if (e10 == 1) {
                        sb2.append('x');
                    } else {
                        sb2.append("x^");
                        sb2.append(e10);
                    }
                }
            }
        }
        return sb2.toString();
    }
}
