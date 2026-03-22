package com.bytedance.sdk.component.ZYk.oJ.ZYk;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class cFZ extends ex {
    final transient byte[][] cFZ;

    /* renamed from: so  reason: collision with root package name */
    final transient int[] f12607so;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cFZ(oJ oJVar, int i10) {
        super(null);
        jFA.oJ(oJVar.ZYk, 0L, i10);
        Pfn pfn = oJVar.oJ;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = pfn.tB;
            int i15 = pfn.ZYk;
            if (i14 != i15) {
                i12 += i14 - i15;
                i13++;
                pfn = pfn.f12606ba;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.cFZ = new byte[i13];
        this.f12607so = new int[i13 * 2];
        Pfn pfn2 = oJVar.oJ;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.cFZ;
            bArr[i16] = pfn2.oJ;
            int i17 = pfn2.tB;
            int i18 = pfn2.ZYk;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.f12607so;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            pfn2.ex = true;
            i16++;
            pfn2 = pfn2.f12606ba;
        }
    }

    private ex Pfn() {
        return new ex(ex());
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public String ZYk() {
        return Pfn().ZYk();
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ex) {
            ex exVar = (ex) obj;
            if (exVar.tB() == tB() && oJ(0, exVar, 0, tB())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public byte[] ex() {
        int[] iArr = this.f12607so;
        byte[][] bArr = this.cFZ;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.f12607so;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.cFZ[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public int hashCode() {
        int i10 = this.Pfn;
        if (i10 != 0) {
            return i10;
        }
        int length = this.cFZ.length;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i11 < length) {
            byte[] bArr = this.cFZ[i11];
            int[] iArr = this.f12607so;
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
        this.Pfn = i12;
        return i12;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public String oJ() {
        return Pfn().oJ();
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public int tB() {
        return this.f12607so[this.cFZ.length - 1];
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public String toString() {
        return Pfn().toString();
    }

    private int ZYk(int i10) {
        int binarySearch = Arrays.binarySearch(this.f12607so, 0, this.cFZ.length, i10 + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public ex oJ(int i10, int i11) {
        return Pfn().oJ(i10, i11);
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public byte oJ(int i10) {
        jFA.oJ(this.f12607so[this.cFZ.length - 1], i10, 1L);
        int ZYk = ZYk(i10);
        int i11 = ZYk == 0 ? 0 : this.f12607so[ZYk - 1];
        int[] iArr = this.f12607so;
        byte[][] bArr = this.cFZ;
        return bArr[ZYk][(i10 - i11) + iArr[bArr.length + ZYk]];
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public boolean oJ(int i10, ex exVar, int i11, int i12) {
        if (i10 < 0 || i10 > tB() - i12) {
            return false;
        }
        int ZYk = ZYk(i10);
        while (i12 > 0) {
            int i13 = ZYk == 0 ? 0 : this.f12607so[ZYk - 1];
            int min = Math.min(i12, ((this.f12607so[ZYk] - i13) + i13) - i10);
            int[] iArr = this.f12607so;
            byte[][] bArr = this.cFZ;
            if (!exVar.oJ(i11, bArr[ZYk], (i10 - i13) + iArr[bArr.length + ZYk], min)) {
                return false;
            }
            i10 += min;
            i11 += min;
            i12 -= min;
            ZYk++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk.ex
    public boolean oJ(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > tB() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int ZYk = ZYk(i10);
        while (i12 > 0) {
            int i13 = ZYk == 0 ? 0 : this.f12607so[ZYk - 1];
            int min = Math.min(i12, ((this.f12607so[ZYk] - i13) + i13) - i10);
            int[] iArr = this.f12607so;
            byte[][] bArr2 = this.cFZ;
            if (!jFA.oJ(bArr2[ZYk], (i10 - i13) + iArr[bArr2.length + ZYk], bArr, i11, min)) {
                return false;
            }
            i10 += min;
            i11 += min;
            i12 -= min;
            ZYk++;
        }
        return true;
    }
}
