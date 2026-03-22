package hb;
/* loaded from: classes5.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f52784a;

    /* renamed from: b  reason: collision with root package name */
    private int f52785b = 0;

    public x(int i10) {
        this.f52784a = null;
        this.f52784a = new byte[i10];
    }

    public void a(byte[] bArr, int i10) {
        if (i10 <= 0) {
            return;
        }
        byte[] bArr2 = this.f52784a;
        int length = bArr2.length;
        int i11 = this.f52785b;
        if (length - i11 >= i10) {
            System.arraycopy(bArr, 0, bArr2, i11, i10);
        } else {
            byte[] bArr3 = new byte[(bArr2.length + i10) << 1];
            System.arraycopy(bArr2, 0, bArr3, 0, i11);
            System.arraycopy(bArr, 0, bArr3, this.f52785b, i10);
            this.f52784a = bArr3;
        }
        this.f52785b += i10;
    }

    public byte[] b() {
        int i10 = this.f52785b;
        if (i10 <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f52784a, 0, bArr, 0, i10);
        return bArr;
    }

    public int c() {
        return this.f52785b;
    }
}
