package y3;

import android.graphics.ColorSpace;
import com.facebook.common.memory.PooledByteBuffer;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Pair;
/* compiled from: EncodedImage.java */
/* loaded from: classes3.dex */
public class k implements Closeable {

    /* renamed from: n  reason: collision with root package name */
    private static boolean f70618n;

    /* renamed from: a  reason: collision with root package name */
    private final o2.a<PooledByteBuffer> f70619a;

    /* renamed from: b  reason: collision with root package name */
    private final k2.k<FileInputStream> f70620b;

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.imageformat.c f70621c;

    /* renamed from: d  reason: collision with root package name */
    private int f70622d;

    /* renamed from: e  reason: collision with root package name */
    private int f70623e;

    /* renamed from: f  reason: collision with root package name */
    private int f70624f;

    /* renamed from: g  reason: collision with root package name */
    private int f70625g;

    /* renamed from: h  reason: collision with root package name */
    private int f70626h;

    /* renamed from: i  reason: collision with root package name */
    private int f70627i;

    /* renamed from: j  reason: collision with root package name */
    private s3.b f70628j;

    /* renamed from: k  reason: collision with root package name */
    private ColorSpace f70629k;

    /* renamed from: l  reason: collision with root package name */
    private String f70630l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f70631m;

    public k(o2.a<PooledByteBuffer> aVar) {
        this.f70621c = com.facebook.imageformat.c.f15620d;
        this.f70622d = -1;
        this.f70623e = 0;
        this.f70624f = -1;
        this.f70625g = -1;
        this.f70626h = 1;
        this.f70627i = -1;
        k2.h.b(Boolean.valueOf(o2.a.v(aVar)));
        this.f70619a = aVar.clone();
        this.f70620b = null;
    }

    public static boolean P(k kVar) {
        if (kVar.f70622d >= 0 && kVar.f70624f >= 0 && kVar.f70625g >= 0) {
            return true;
        }
        return false;
    }

    public static boolean T(k kVar) {
        if (kVar != null && kVar.R()) {
            return true;
        }
        return false;
    }

    private void Y() {
        if (this.f70624f < 0 || this.f70625g < 0) {
            W();
        }
    }

    private com.facebook.imageutils.f Z() {
        InputStream inputStream;
        try {
            inputStream = r();
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
        try {
            com.facebook.imageutils.f e10 = com.facebook.imageutils.d.e(inputStream);
            this.f70629k = e10.a();
            Pair<Integer, Integer> b10 = e10.b();
            if (b10 != null) {
                this.f70624f = b10.b().intValue();
                this.f70625g = b10.d().intValue();
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return e10;
        } catch (Throwable th3) {
            th = th3;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private Pair<Integer, Integer> a0() {
        InputStream r10 = r();
        if (r10 == null) {
            return null;
        }
        Pair<Integer, Integer> f10 = com.facebook.imageutils.j.f(r10);
        if (f10 != null) {
            this.f70624f = f10.b().intValue();
            this.f70625g = f10.d().intValue();
        }
        return f10;
    }

    public static k g(k kVar) {
        if (kVar != null) {
            return kVar.d();
        }
        return null;
    }

    public static void i(k kVar) {
        if (kVar != null) {
            kVar.close();
        }
    }

    private void x() {
        Pair<Integer, Integer> b10;
        com.facebook.imageformat.c d10 = com.facebook.imageformat.e.d(r());
        this.f70621c = d10;
        if (com.facebook.imageformat.b.b(d10)) {
            b10 = a0();
        } else {
            b10 = Z().b();
        }
        if (d10 == com.facebook.imageformat.b.f15604b && this.f70622d == -1) {
            if (b10 != null) {
                int b11 = com.facebook.imageutils.g.b(r());
                this.f70623e = b11;
                this.f70622d = com.facebook.imageutils.g.a(b11);
            }
        } else if (d10 == com.facebook.imageformat.b.f15614l && this.f70622d == -1) {
            int a10 = com.facebook.imageutils.e.a(r());
            this.f70623e = a10;
            this.f70622d = com.facebook.imageutils.g.a(a10);
        } else if (this.f70622d == -1) {
            this.f70622d = 0;
        }
    }

    public boolean F(int i10) {
        com.facebook.imageformat.c cVar = this.f70621c;
        if ((cVar != com.facebook.imageformat.b.f15604b && cVar != com.facebook.imageformat.b.f15615m) || this.f70620b != null) {
            return true;
        }
        k2.h.g(this.f70619a);
        PooledByteBuffer s10 = this.f70619a.s();
        if (i10 < 2) {
            return false;
        }
        if (s10.D(i10 - 2) == -1 && s10.D(i10 - 1) == -39) {
            return true;
        }
        return false;
    }

    public int H() {
        Y();
        return this.f70623e;
    }

    public synchronized boolean R() {
        boolean z10;
        if (!o2.a.v(this.f70619a)) {
            if (this.f70620b == null) {
                z10 = false;
            }
        }
        z10 = true;
        return z10;
    }

    public void W() {
        if (!f70618n) {
            x();
        } else if (this.f70631m) {
        } else {
            x();
            this.f70631m = true;
        }
    }

    public void b0(s3.b bVar) {
        this.f70628j = bVar;
    }

    public void c0(int i10) {
        this.f70623e = i10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        o2.a.r(this.f70619a);
    }

    public k d() {
        k kVar;
        k2.k<FileInputStream> kVar2 = this.f70620b;
        if (kVar2 != null) {
            kVar = new k(kVar2, this.f70627i);
        } else {
            o2.a p10 = o2.a.p(this.f70619a);
            if (p10 == null) {
                kVar = null;
            } else {
                try {
                    kVar = new k(p10);
                } finally {
                    o2.a.r(p10);
                }
            }
        }
        if (kVar != null) {
            kVar.k(this);
        }
        return kVar;
    }

    public void d0(int i10) {
        this.f70625g = i10;
    }

    public void e0(com.facebook.imageformat.c cVar) {
        this.f70621c = cVar;
    }

    public void f0(int i10) {
        this.f70622d = i10;
    }

    public void g0(int i10) {
        this.f70626h = i10;
    }

    public int getHeight() {
        Y();
        return this.f70625g;
    }

    public int getWidth() {
        Y();
        return this.f70624f;
    }

    public void h0(String str) {
        this.f70630l = str;
    }

    public void i0(int i10) {
        this.f70624f = i10;
    }

    public void k(k kVar) {
        this.f70621c = kVar.q();
        this.f70624f = kVar.getWidth();
        this.f70625g = kVar.getHeight();
        this.f70622d = kVar.q0();
        this.f70623e = kVar.H();
        this.f70626h = kVar.t();
        this.f70627i = kVar.u();
        this.f70628j = kVar.m();
        this.f70629k = kVar.o();
        this.f70631m = kVar.w();
    }

    public o2.a<PooledByteBuffer> l() {
        return o2.a.p(this.f70619a);
    }

    public s3.b m() {
        return this.f70628j;
    }

    public ColorSpace o() {
        Y();
        return this.f70629k;
    }

    public String p(int i10) {
        o2.a<PooledByteBuffer> l10 = l();
        if (l10 == null) {
            return "";
        }
        int min = Math.min(u(), i10);
        byte[] bArr = new byte[min];
        try {
            PooledByteBuffer s10 = l10.s();
            if (s10 == null) {
                return "";
            }
            s10.B(0, bArr, 0, min);
            l10.close();
            StringBuilder sb2 = new StringBuilder(min * 2);
            for (int i11 = 0; i11 < min; i11++) {
                sb2.append(String.format("%02X", Byte.valueOf(bArr[i11])));
            }
            return sb2.toString();
        } finally {
            l10.close();
        }
    }

    public com.facebook.imageformat.c q() {
        Y();
        return this.f70621c;
    }

    public int q0() {
        Y();
        return this.f70622d;
    }

    public InputStream r() {
        k2.k<FileInputStream> kVar = this.f70620b;
        if (kVar != null) {
            return kVar.get();
        }
        o2.a p10 = o2.a.p(this.f70619a);
        if (p10 != null) {
            try {
                return new n2.h((PooledByteBuffer) p10.s());
            } finally {
                o2.a.r(p10);
            }
        }
        return null;
    }

    public InputStream s() {
        return (InputStream) k2.h.g(r());
    }

    public int t() {
        return this.f70626h;
    }

    public int u() {
        o2.a<PooledByteBuffer> aVar = this.f70619a;
        if (aVar != null && aVar.s() != null) {
            return this.f70619a.s().size();
        }
        return this.f70627i;
    }

    public String v() {
        return this.f70630l;
    }

    protected boolean w() {
        return this.f70631m;
    }

    public k(k2.k<FileInputStream> kVar) {
        this.f70621c = com.facebook.imageformat.c.f15620d;
        this.f70622d = -1;
        this.f70623e = 0;
        this.f70624f = -1;
        this.f70625g = -1;
        this.f70626h = 1;
        this.f70627i = -1;
        k2.h.g(kVar);
        this.f70619a = null;
        this.f70620b = kVar;
    }

    public k(k2.k<FileInputStream> kVar, int i10) {
        this(kVar);
        this.f70627i = i10;
    }
}
