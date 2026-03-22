package y3;

import android.graphics.Bitmap;
/* compiled from: CloseableStaticBitmap.java */
/* loaded from: classes3.dex */
public interface f extends d {
    static f G(Bitmap bitmap, o2.h<Bitmap> hVar, p pVar, int i10) {
        return f(bitmap, hVar, pVar, i10, 0);
    }

    static f J(o2.a<Bitmap> aVar, p pVar, int i10, int i11) {
        if (b.P()) {
            return new b(aVar, pVar, i10, i11);
        }
        return new i(aVar, pVar, i10, i11);
    }

    static f U(o2.a<Bitmap> aVar, p pVar, int i10) {
        return J(aVar, pVar, i10, 0);
    }

    static f f(Bitmap bitmap, o2.h<Bitmap> hVar, p pVar, int i10, int i11) {
        if (b.P()) {
            return new b(bitmap, hVar, pVar, i10, i11);
        }
        return new i(bitmap, hVar, pVar, i10, i11);
    }

    o2.a<Bitmap> E();

    int H();

    int q0();
}
