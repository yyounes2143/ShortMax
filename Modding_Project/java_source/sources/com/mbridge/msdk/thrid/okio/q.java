package com.mbridge.msdk.thrid.okio;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentedByteString.java */
/* loaded from: classes6.dex */
public final class q extends f {

    /* renamed from: f  reason: collision with root package name */
    final transient byte[][] f30173f;

    /* renamed from: g  reason: collision with root package name */
    final transient int[] f30174g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(c cVar, int i10) {
        super(null);
        u.a(cVar.f30132b, 0L, i10);
        o oVar = cVar.f30131a;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = oVar.f30166c;
            int i15 = oVar.f30165b;
            if (i14 != i15) {
                i12 += i14 - i15;
                i13++;
                oVar = oVar.f30169f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.f30173f = new byte[i13];
        this.f30174g = new int[i13 * 2];
        o oVar2 = cVar.f30131a;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.f30173f;
            bArr[i16] = oVar2.f30164a;
            int i17 = oVar2.f30166c;
            int i18 = oVar2.f30165b;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.f30174g;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            oVar2.f30167d = true;
            i16++;
            oVar2 = oVar2.f30169f;
        }
    }

    private f i() {
        return new f(g());
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String a() {
        return i().a();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String b() {
        return i().b();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f c() {
        return i().c();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f d() {
        return i().d();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public int e() {
        return this.f30174g[this.f30173f.length - 1];
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.e() == e() && a(0, fVar, 0, e())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f f() {
        return i().f();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public byte[] g() {
        int[] iArr = this.f30174g;
        byte[][] bArr = this.f30173f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.f30174g;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.f30173f[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String h() {
        return i().h();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public int hashCode() {
        int i10 = this.f30137b;
        if (i10 != 0) {
            return i10;
        }
        int length = this.f30173f.length;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i11 < length) {
            byte[] bArr = this.f30173f[i11];
            int[] iArr = this.f30174g;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = (i15 - i13) + i14;
            while (i14 < i16) {
                i12 = (i12 * 31) + bArr[i14];
                i14++;
            }
            i11++;
            i13 = i15;
        }
        this.f30137b = i12;
        return i12;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String toString() {
        return i().toString();
    }

    private int b(int i10) {
        int binarySearch = Arrays.binarySearch(this.f30174g, 0, this.f30173f.length, i10 + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f a(int i10, int i11) {
        return i().a(i10, i11);
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public byte a(int i10) {
        u.a(this.f30174g[this.f30173f.length - 1], i10, 1L);
        int b10 = b(i10);
        int i11 = b10 == 0 ? 0 : this.f30174g[b10 - 1];
        int[] iArr = this.f30174g;
        byte[][] bArr = this.f30173f;
        return bArr[b10][(i10 - i11) + iArr[bArr.length + b10]];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mbridge.msdk.thrid.okio.f
    public void a(c cVar) {
        int length = this.f30173f.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f30174g;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            o oVar = new o(this.f30173f[i10], i12, (i12 + i13) - i11, true, false);
            o oVar2 = cVar.f30131a;
            if (oVar2 == null) {
                oVar.f30170g = oVar;
                oVar.f30169f = oVar;
                cVar.f30131a = oVar;
            } else {
                oVar2.f30170g.a(oVar);
            }
            i10++;
            i11 = i13;
        }
        cVar.f30132b += i11;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public boolean a(int i10, f fVar, int i11, int i12) {
        if (i10 < 0 || i10 > e() - i12) {
            return false;
        }
        int b10 = b(i10);
        while (i12 > 0) {
            int i13 = b10 == 0 ? 0 : this.f30174g[b10 - 1];
            int min = Math.min(i12, ((this.f30174g[b10] - i13) + i13) - i10);
            int[] iArr = this.f30174g;
            byte[][] bArr = this.f30173f;
            if (!fVar.a(i11, bArr[b10], (i10 - i13) + iArr[bArr.length + b10], min)) {
                return false;
            }
            i10 += min;
            i11 += min;
            i12 -= min;
            b10++;
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public boolean a(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > e() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int b10 = b(i10);
        while (i12 > 0) {
            int i13 = b10 == 0 ? 0 : this.f30174g[b10 - 1];
            int min = Math.min(i12, ((this.f30174g[b10] - i13) + i13) - i10);
            int[] iArr = this.f30174g;
            byte[][] bArr2 = this.f30173f;
            if (!u.a(bArr2[b10], (i10 - i13) + iArr[bArr2.length + b10], bArr, i11, min)) {
                return false;
            }
            i10 += min;
            i11 += min;
            i12 -= min;
            b10++;
        }
        return true;
    }
}
