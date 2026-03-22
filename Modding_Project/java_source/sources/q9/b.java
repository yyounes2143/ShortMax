package q9;

import java.util.Arrays;
/* compiled from: BitMatrix.java */
/* loaded from: classes5.dex */
public final class b implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private final int f65236a;

    /* renamed from: b  reason: collision with root package name */
    private final int f65237b;

    /* renamed from: c  reason: collision with root package name */
    private final int f65238c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f65239d;

    public b(int i10) {
        this(i10, i10);
    }

    private String a(String str, String str2, String str3) {
        String str4;
        StringBuilder sb2 = new StringBuilder(this.f65237b * (this.f65236a + 1));
        for (int i10 = 0; i10 < this.f65237b; i10++) {
            for (int i11 = 0; i11 < this.f65236a; i11++) {
                if (e(i11, i10)) {
                    str4 = str;
                } else {
                    str4 = str2;
                }
                sb2.append(str4);
            }
            sb2.append(str3);
        }
        return sb2.toString();
    }

    public void b() {
        int length = this.f65239d.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f65239d[i10] = 0;
        }
    }

    /* renamed from: c */
    public b clone() {
        return new b(this.f65236a, this.f65237b, this.f65238c, (int[]) this.f65239d.clone());
    }

    public boolean e(int i10, int i11) {
        if (((this.f65239d[(i11 * this.f65238c) + (i10 / 32)] >>> (i10 & 31)) & 1) != 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f65236a != bVar.f65236a || this.f65237b != bVar.f65237b || this.f65238c != bVar.f65238c || !Arrays.equals(this.f65239d, bVar.f65239d)) {
            return false;
        }
        return true;
    }

    public int f() {
        return this.f65237b;
    }

    public int g() {
        return this.f65236a;
    }

    public void h(int i10, int i11) {
        int i12 = (i11 * this.f65238c) + (i10 / 32);
        int[] iArr = this.f65239d;
        iArr[i12] = (1 << (i10 & 31)) | iArr[i12];
    }

    public int hashCode() {
        int i10 = this.f65236a;
        return (((((((i10 * 31) + i10) * 31) + this.f65237b) * 31) + this.f65238c) * 31) + Arrays.hashCode(this.f65239d);
    }

    public void i(int i10, int i11, int i12, int i13) {
        if (i11 >= 0 && i10 >= 0) {
            if (i13 > 0 && i12 > 0) {
                int i14 = i12 + i10;
                int i15 = i13 + i11;
                if (i15 <= this.f65237b && i14 <= this.f65236a) {
                    while (i11 < i15) {
                        int i16 = this.f65238c * i11;
                        for (int i17 = i10; i17 < i14; i17++) {
                            int[] iArr = this.f65239d;
                            int i18 = (i17 / 32) + i16;
                            iArr[i18] = iArr[i18] | (1 << (i17 & 31));
                        }
                        i11++;
                    }
                    return;
                }
                throw new IllegalArgumentException("The region must fit inside the matrix");
            }
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        throw new IllegalArgumentException("Left and top must be nonnegative");
    }

    public String j(String str, String str2) {
        return a(str, str2, "\n");
    }

    public String toString() {
        return j("X ", "  ");
    }

    public b(int i10, int i11) {
        if (i10 > 0 && i11 > 0) {
            this.f65236a = i10;
            this.f65237b = i11;
            int i12 = (i10 + 31) / 32;
            this.f65238c = i12;
            this.f65239d = new int[i12 * i11];
            return;
        }
        throw new IllegalArgumentException("Both dimensions must be greater than 0");
    }

    private b(int i10, int i11, int i12, int[] iArr) {
        this.f65236a = i10;
        this.f65237b = i11;
        this.f65238c = i12;
        this.f65239d = iArr;
    }
}
