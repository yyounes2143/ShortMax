package w3;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import com.facebook.imagepipeline.decoder.DecodeException;
import java.io.InputStream;
import java.util.Map;
import k2.h;
import k2.k;
import k2.l;
import y3.o;
import y3.p;
/* compiled from: DefaultImageDecoder.java */
/* loaded from: classes3.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final b f69615a;

    /* renamed from: b  reason: collision with root package name */
    private final b f69616b;

    /* renamed from: c  reason: collision with root package name */
    private final b f69617c;

    /* renamed from: d  reason: collision with root package name */
    private final c4.d f69618d;

    /* renamed from: e  reason: collision with root package name */
    private final k<Boolean> f69619e;

    /* renamed from: f  reason: collision with root package name */
    private final b f69620f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<com.facebook.imageformat.c, b> f69621g;

    /* compiled from: DefaultImageDecoder.java */
    /* renamed from: w3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0957a implements b {
        C0957a() {
        }

        @Override // w3.b
        public y3.e decode(y3.k kVar, int i10, p pVar, s3.d dVar) {
            ColorSpace colorSpace;
            com.facebook.imageformat.c q10 = kVar.q();
            if (((Boolean) a.this.f69619e.get()).booleanValue()) {
                colorSpace = dVar.f66276k;
                if (colorSpace == null) {
                    colorSpace = kVar.o();
                }
            } else {
                colorSpace = dVar.f66276k;
            }
            ColorSpace colorSpace2 = colorSpace;
            if (q10 == com.facebook.imageformat.b.f15604b) {
                return a.this.e(kVar, i10, pVar, dVar, colorSpace2);
            }
            if (q10 == com.facebook.imageformat.b.f15606d) {
                return a.this.d(kVar, i10, pVar, dVar);
            }
            if (q10 == com.facebook.imageformat.b.f15613k) {
                return a.this.c(kVar, i10, pVar, dVar);
            }
            if (q10 == com.facebook.imageformat.b.f15616n) {
                return a.this.g(kVar, i10, pVar, dVar);
            }
            if (q10 != com.facebook.imageformat.c.f15620d) {
                return a.this.f(kVar, dVar);
            }
            throw new DecodeException("unknown image format", kVar);
        }
    }

    public a(b bVar, b bVar2, b bVar3, c4.d dVar) {
        this(bVar, bVar2, bVar3, dVar, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y3.e g(y3.k kVar, int i10, p pVar, s3.d dVar) {
        b bVar = this.f69617c;
        if (bVar != null) {
            return bVar.decode(kVar, i10, pVar, dVar);
        }
        return null;
    }

    public y3.e c(y3.k kVar, int i10, p pVar, s3.d dVar) {
        b bVar;
        if (!dVar.f66272g && (bVar = this.f69616b) != null) {
            return bVar.decode(kVar, i10, pVar, dVar);
        }
        return f(kVar, dVar);
    }

    public y3.e d(y3.k kVar, int i10, p pVar, s3.d dVar) {
        b bVar;
        if (kVar.getWidth() != -1 && kVar.getHeight() != -1) {
            if (!dVar.f66272g && (bVar = this.f69615a) != null) {
                return bVar.decode(kVar, i10, pVar, dVar);
            }
            return f(kVar, dVar);
        }
        throw new DecodeException("image width or height is incorrect", kVar);
    }

    @Override // w3.b
    public y3.e decode(y3.k kVar, int i10, p pVar, s3.d dVar) {
        InputStream r10;
        b bVar;
        b bVar2 = dVar.f66275j;
        if (bVar2 != null) {
            return bVar2.decode(kVar, i10, pVar, dVar);
        }
        com.facebook.imageformat.c q10 = kVar.q();
        if ((q10 == null || q10 == com.facebook.imageformat.c.f15620d) && (r10 = kVar.r()) != null) {
            q10 = com.facebook.imageformat.e.d(r10);
            kVar.e0(q10);
        }
        Map<com.facebook.imageformat.c, b> map = this.f69621g;
        if (map != null && (bVar = map.get(q10)) != null) {
            return bVar.decode(kVar, i10, pVar, dVar);
        }
        return this.f69620f.decode(kVar, i10, pVar, dVar);
    }

    public y3.f e(y3.k kVar, int i10, p pVar, s3.d dVar, ColorSpace colorSpace) {
        o2.a<Bitmap> b10 = this.f69618d.b(kVar, dVar.f66273h, null, i10, colorSpace);
        try {
            h4.b.a(null, b10);
            h.g(b10);
            y3.f J = y3.f.J(b10, pVar, kVar.q0(), kVar.H());
            J.putExtra("is_rounded", false);
            return J;
        } finally {
            o2.a.r(b10);
        }
    }

    public y3.f f(y3.k kVar, s3.d dVar) {
        o2.a<Bitmap> a10 = this.f69618d.a(kVar, dVar.f66273h, null, dVar.f66276k);
        try {
            h4.b.a(null, a10);
            h.g(a10);
            y3.f J = y3.f.J(a10, o.f70637d, kVar.q0(), kVar.H());
            J.putExtra("is_rounded", false);
            return J;
        } finally {
            o2.a.r(a10);
        }
    }

    public a(b bVar, b bVar2, b bVar3, c4.d dVar, Map<com.facebook.imageformat.c, b> map) {
        this(bVar, bVar2, bVar3, dVar, map, l.f60584b);
    }

    public a(b bVar, b bVar2, b bVar3, c4.d dVar, Map<com.facebook.imageformat.c, b> map, k<Boolean> kVar) {
        this.f69620f = new C0957a();
        this.f69615a = bVar;
        this.f69616b = bVar2;
        this.f69617c = bVar3;
        this.f69618d = dVar;
        this.f69621g = map;
        this.f69619e = kVar;
    }
}
