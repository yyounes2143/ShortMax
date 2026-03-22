package u3;

import android.graphics.Bitmap;
import y3.e;
/* compiled from: BaseBitmapDataSubscriber.java */
/* loaded from: classes3.dex */
public abstract class b extends com.facebook.datasource.a<o2.a<e>> {
    @Override // com.facebook.datasource.a
    public void f(com.facebook.datasource.b<o2.a<e>> bVar) {
        Bitmap bitmap;
        if (!bVar.e()) {
            return;
        }
        o2.a<e> result = bVar.getResult();
        if (result != null && (result.s() instanceof y3.d)) {
            bitmap = ((y3.d) result.s()).B0();
        } else {
            bitmap = null;
        }
        try {
            g(bitmap);
        } finally {
            o2.a.r(result);
        }
    }

    protected abstract void g(Bitmap bitmap);
}
