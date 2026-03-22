package m3;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import java.util.ArrayList;
import java.util.List;
import k2.h;
import y3.f;
import y3.k;
import y3.o;
/* compiled from: AnimatedImageFactoryImpl.java */
/* loaded from: classes3.dex */
public class e implements d {

    /* renamed from: e  reason: collision with root package name */
    static c f62454e = g("com.facebook.animated.gif.GifImage");

    /* renamed from: f  reason: collision with root package name */
    static c f62455f = g("com.facebook.animated.webp.WebPImage");

    /* renamed from: a  reason: collision with root package name */
    private final n3.b f62456a;

    /* renamed from: b  reason: collision with root package name */
    private final q3.d f62457b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f62458c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f62459d;

    public e(n3.b bVar, q3.d dVar, boolean z10) {
        this(bVar, dVar, z10, true);
    }

    @SuppressLint({"NewApi"})
    private o2.a<Bitmap> c(int i10, int i11, Bitmap.Config config) {
        o2.a<Bitmap> d10 = this.f62457b.d(i10, i11, config);
        d10.s().eraseColor(0);
        d10.s().setHasAlpha(true);
        return d10;
    }

    private o2.a<Bitmap> d(l3.b bVar, Bitmap.Config config, int i10) {
        o2.a<Bitmap> c10 = c(bVar.getWidth(), bVar.getHeight(), config);
        new AnimatedImageCompositor(this.f62456a.get(l3.d.b(bVar), null), this.f62458c, new a()).h(i10, c10.s());
        return c10;
    }

    private List<o2.a<Bitmap>> e(l3.b bVar, Bitmap.Config config) {
        l3.a aVar = this.f62456a.get(l3.d.b(bVar), null);
        ArrayList arrayList = new ArrayList(aVar.getFrameCount());
        AnimatedImageCompositor animatedImageCompositor = new AnimatedImageCompositor(aVar, this.f62458c, new b(arrayList));
        for (int i10 = 0; i10 < aVar.getFrameCount(); i10++) {
            o2.a<Bitmap> c10 = c(aVar.getWidth(), aVar.getHeight(), config);
            animatedImageCompositor.h(i10, c10.s());
            arrayList.add(c10);
        }
        return arrayList;
    }

    private y3.e f(String str, s3.d dVar, l3.b bVar, Bitmap.Config config) {
        List<o2.a<Bitmap>> list;
        int i10;
        o2.a<Bitmap> aVar;
        o2.a<Bitmap> aVar2 = null;
        try {
            if (dVar.f66269d) {
                i10 = bVar.getFrameCount() - 1;
            } else {
                i10 = 0;
            }
            if (dVar.f66272g) {
                f U = f.U(d(bVar, config, i10), o.f70637d, 0);
                o2.a.r(null);
                o2.a.q(null);
                return U;
            }
            if (dVar.f66271f) {
                list = e(bVar, config);
                try {
                    aVar = o2.a.p(list.get(i10));
                } catch (Throwable th2) {
                    th = th2;
                    o2.a.r(aVar2);
                    o2.a.q(list);
                    throw th;
                }
            } else {
                list = null;
                aVar = null;
            }
            try {
                if (dVar.f66268c && aVar == null) {
                    aVar = d(bVar, config, i10);
                }
                y3.c cVar = new y3.c(l3.d.f(bVar).k(aVar).j(i10).i(list).h(null).l(str).a(), this.f62459d);
                o2.a.r(aVar);
                o2.a.q(list);
                return cVar;
            } catch (Throwable th3) {
                th = th3;
                aVar2 = aVar;
                o2.a.r(aVar2);
                o2.a.q(list);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            list = null;
        }
    }

    private static c g(String str) {
        try {
            return (c) Class.forName(str).newInstance();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // m3.d
    public y3.e a(k kVar, s3.d dVar, Bitmap.Config config) {
        l3.b c10;
        if (f62455f != null) {
            o2.a<PooledByteBuffer> l10 = kVar.l();
            h.g(l10);
            try {
                PooledByteBuffer s10 = l10.s();
                if (s10.C() != null) {
                    c10 = f62455f.d(s10.C(), dVar);
                } else {
                    c10 = f62455f.c(s10.A(), s10.size(), dVar);
                }
                y3.e f10 = f(kVar.v(), dVar, c10, config);
                o2.a.r(l10);
                return f10;
            } catch (Throwable th2) {
                o2.a.r(l10);
                throw th2;
            }
        }
        throw new UnsupportedOperationException("To encode animated webp please add the dependency to the animated-webp module");
    }

    @Override // m3.d
    public y3.e b(k kVar, s3.d dVar, Bitmap.Config config) {
        l3.b c10;
        if (f62454e != null) {
            o2.a<PooledByteBuffer> l10 = kVar.l();
            h.g(l10);
            try {
                PooledByteBuffer s10 = l10.s();
                if (s10.C() != null) {
                    c10 = f62454e.d(s10.C(), dVar);
                } else {
                    c10 = f62454e.c(s10.A(), s10.size(), dVar);
                }
                y3.e f10 = f(kVar.v(), dVar, c10, config);
                o2.a.r(l10);
                return f10;
            } catch (Throwable th2) {
                o2.a.r(l10);
                throw th2;
            }
        }
        throw new UnsupportedOperationException("To encode animated gif please add the dependency to the animated-gif module");
    }

    public e(n3.b bVar, q3.d dVar, boolean z10, boolean z11) {
        this.f62456a = bVar;
        this.f62457b = dVar;
        this.f62458c = z10;
        this.f62459d = z11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes3.dex */
    public class a implements AnimatedImageCompositor.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public o2.a<Bitmap> getCachedBitmap(int i10) {
            return null;
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void onIntermediateResult(int i10, Bitmap bitmap) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes3.dex */
    public class b implements AnimatedImageCompositor.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f62461a;

        b(List list) {
            this.f62461a = list;
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public o2.a<Bitmap> getCachedBitmap(int i10) {
            return o2.a.p((o2.a) this.f62461a.get(i10));
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void onIntermediateResult(int i10, Bitmap bitmap) {
        }
    }
}
