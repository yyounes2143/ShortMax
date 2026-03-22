package y3;

import android.graphics.Bitmap;
/* compiled from: DefaultCloseableStaticBitmap.java */
/* loaded from: classes3.dex */
class i extends b {
    /* JADX INFO: Access modifiers changed from: protected */
    public i(o2.a<Bitmap> aVar, p pVar, int i10, int i11) {
        super(aVar, pVar, i10, i11);
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        l2.a.z("DefaultCloseableStaticBitmap", "finalize: %s %x still open.", getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(this)));
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(Bitmap bitmap, o2.h<Bitmap> hVar, p pVar, int i10, int i11) {
        super(bitmap, hVar, pVar, i10, i11);
    }
}
