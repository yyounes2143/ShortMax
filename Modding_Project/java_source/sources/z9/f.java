package z9;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
/* compiled from: QRCode.java */
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private Mode f71537a;

    /* renamed from: b  reason: collision with root package name */
    private ErrorCorrectionLevel f71538b;

    /* renamed from: c  reason: collision with root package name */
    private y9.a f71539c;

    /* renamed from: d  reason: collision with root package name */
    private int f71540d = -1;

    /* renamed from: e  reason: collision with root package name */
    private b f71541e;

    public static boolean b(int i10) {
        if (i10 >= 0 && i10 < 8) {
            return true;
        }
        return false;
    }

    public b a() {
        return this.f71541e;
    }

    public void c(ErrorCorrectionLevel errorCorrectionLevel) {
        this.f71538b = errorCorrectionLevel;
    }

    public void d(int i10) {
        this.f71540d = i10;
    }

    public void e(b bVar) {
        this.f71541e = bVar;
    }

    public void f(Mode mode) {
        this.f71537a = mode;
    }

    public void g(y9.a aVar) {
        this.f71539c = aVar;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(200);
        sb2.append("<<\n");
        sb2.append(" mode: ");
        sb2.append(this.f71537a);
        sb2.append("\n ecLevel: ");
        sb2.append(this.f71538b);
        sb2.append("\n version: ");
        sb2.append(this.f71539c);
        sb2.append("\n maskPattern: ");
        sb2.append(this.f71540d);
        if (this.f71541e == null) {
            sb2.append("\n matrix: null\n");
        } else {
            sb2.append("\n matrix:\n");
            sb2.append(this.f71541e);
        }
        sb2.append(">>\n");
        return sb2.toString();
    }
}
