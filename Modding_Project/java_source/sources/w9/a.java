package w9;

import java.lang.reflect.Array;
/* compiled from: BarcodeMatrix.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final b[] f69800a;

    /* renamed from: b  reason: collision with root package name */
    private int f69801b;

    /* renamed from: c  reason: collision with root package name */
    private final int f69802c;

    /* renamed from: d  reason: collision with root package name */
    private final int f69803d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i10, int i11) {
        b[] bVarArr = new b[i10];
        this.f69800a = bVarArr;
        int length = bVarArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            this.f69800a[i12] = new b(((i11 + 4) * 17) + 1);
        }
        this.f69803d = i11 * 17;
        this.f69802c = i10;
        this.f69801b = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a() {
        return this.f69800a[this.f69801b];
    }

    public byte[][] b(int i10, int i11) {
        byte[][] bArr = (byte[][]) Array.newInstance(Byte.TYPE, this.f69802c * i11, this.f69803d * i10);
        int i12 = this.f69802c * i11;
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[(i12 - i13) - 1] = this.f69800a[i13 / i11].b(i10);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f69801b++;
    }
}
