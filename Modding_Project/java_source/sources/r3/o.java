package r3;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: DefaultCacheKeyFactory.java */
/* loaded from: classes3.dex */
public class o implements j {

    /* renamed from: a  reason: collision with root package name */
    private static o f65530a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f65531b = false;

    protected o() {
    }

    public static synchronized o f() {
        o oVar;
        synchronized (o.class) {
            try {
                if (f65530a == null) {
                    f65530a = new o();
                }
                oVar = f65530a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return oVar;
    }

    @Override // r3.j
    public f2.a a(ImageRequest imageRequest, Object obj) {
        f2.a aVar;
        String str;
        e4.b m10 = imageRequest.m();
        if (m10 != null) {
            f2.a b10 = m10.b();
            str = m10.getClass().getName();
            aVar = b10;
        } else {
            aVar = null;
            str = null;
        }
        b bVar = new b(e(imageRequest.w()).toString(), imageRequest.s(), imageRequest.u(), imageRequest.i(), aVar, str);
        if (f65531b) {
            bVar.a(null);
        } else {
            bVar.a(obj);
        }
        return bVar;
    }

    @Override // r3.j
    public f2.a b(ImageRequest imageRequest, Object obj) {
        return d(imageRequest, imageRequest.w(), obj);
    }

    @Override // r3.j
    public f2.a c(ImageRequest imageRequest, Object obj) {
        b bVar = new b(e(imageRequest.w()).toString(), imageRequest.s(), imageRequest.u(), imageRequest.i(), null, null);
        if (f65531b) {
            bVar.a(null);
        } else {
            bVar.a(obj);
        }
        return bVar;
    }

    @Override // r3.j
    public f2.a d(ImageRequest imageRequest, Uri uri, Object obj) {
        return new f2.e(e(uri).toString());
    }

    protected Uri e(Uri uri) {
        return uri;
    }
}
