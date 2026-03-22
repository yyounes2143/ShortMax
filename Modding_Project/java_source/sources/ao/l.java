package ao;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import yo.r;
/* compiled from: DefaultExtractorsFactory.java */
/* loaded from: classes8.dex */
public final class l implements u {

    /* renamed from: s  reason: collision with root package name */
    private static final int[] f1863s = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* renamed from: t  reason: collision with root package name */
    private static final a f1864t = new a(new a.InterfaceC0072a() { // from class: ao.j
        @Override // ao.l.a.InterfaceC0072a
        public final Constructor a() {
            Constructor l10;
            l10 = l.l();
            return l10;
        }
    });

    /* renamed from: u  reason: collision with root package name */
    private static final a f1865u = new a(new a.InterfaceC0072a() { // from class: ao.k
        @Override // ao.l.a.InterfaceC0072a
        public final Constructor a() {
            Constructor m10;
            m10 = l.m();
            return m10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private boolean f1866b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1867c;

    /* renamed from: d  reason: collision with root package name */
    private int f1868d;

    /* renamed from: e  reason: collision with root package name */
    private int f1869e;

    /* renamed from: f  reason: collision with root package name */
    private int f1870f;

    /* renamed from: g  reason: collision with root package name */
    private int f1871g;

    /* renamed from: h  reason: collision with root package name */
    private int f1872h;

    /* renamed from: i  reason: collision with root package name */
    private int f1873i;

    /* renamed from: j  reason: collision with root package name */
    private int f1874j;

    /* renamed from: l  reason: collision with root package name */
    private int f1876l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private ImmutableList<io.bidmachine.media3.common.a> f1877m;

    /* renamed from: q  reason: collision with root package name */
    private int f1881q;

    /* renamed from: r  reason: collision with root package name */
    private int f1882r;

    /* renamed from: k  reason: collision with root package name */
    private int f1875k = 1;

    /* renamed from: n  reason: collision with root package name */
    private int f1878n = 112800;

    /* renamed from: p  reason: collision with root package name */
    private r.a f1880p = new yo.h();

    /* renamed from: o  reason: collision with root package name */
    private boolean f1879o = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultExtractorsFactory.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0072a f1883a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f1884b = new AtomicBoolean(false);
        @Nullable
        @GuardedBy("extensionLoaded")

        /* renamed from: c  reason: collision with root package name */
        private Constructor<? extends p> f1885c;

        /* compiled from: DefaultExtractorsFactory.java */
        /* renamed from: ao.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public interface InterfaceC0072a {
            @Nullable
            Constructor<? extends p> a() throws InvocationTargetException, IllegalAccessException, NoSuchMethodException, ClassNotFoundException;
        }

        public a(InterfaceC0072a interfaceC0072a) {
            this.f1883a = interfaceC0072a;
        }

        @Nullable
        private Constructor<? extends p> b() {
            synchronized (this.f1884b) {
                if (this.f1884b.get()) {
                    return this.f1885c;
                }
                try {
                    return this.f1883a.a();
                } catch (ClassNotFoundException unused) {
                    this.f1884b.set(true);
                    return this.f1885c;
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
        }

        @Nullable
        public p a(Object... objArr) {
            Constructor<? extends p> b10 = b();
            if (b10 == null) {
                return null;
            }
            try {
                return b10.newInstance(objArr);
            } catch (Exception e10) {
                throw new IllegalStateException("Unexpected error creating extractor", e10);
            }
        }
    }

    private void i(int i10, List<p> list) {
        int i11;
        int i12 = 2;
        int i13 = 0;
        switch (i10) {
            case 0:
                list.add(new ip.b());
                return;
            case 1:
                list.add(new ip.e());
                return;
            case 2:
                int i14 = this.f1868d | (this.f1866b ? 1 : 0);
                if (!this.f1867c) {
                    i12 = 0;
                }
                list.add(new ip.h(i12 | i14));
                return;
            case 3:
                int i15 = this.f1869e | (this.f1866b ? 1 : 0);
                if (!this.f1867c) {
                    i12 = 0;
                }
                list.add(new bo.b(i12 | i15));
                return;
            case 4:
                p a10 = f1864t.a(Integer.valueOf(this.f1870f));
                if (a10 != null) {
                    list.add(a10);
                    return;
                } else {
                    list.add(new go.d(this.f1870f));
                    return;
                }
            case 5:
                list.add(new io.bidmachine.media3.extractor.flv.b());
                return;
            case 6:
                r.a aVar = this.f1880p;
                int i16 = this.f1871g;
                if (this.f1879o) {
                    i12 = 0;
                }
                list.add(new to.e(aVar, i12 | i16));
                return;
            case 7:
                int i17 = this.f1874j | (this.f1866b ? 1 : 0);
                if (!this.f1867c) {
                    i12 = 0;
                }
                list.add(new uo.f(i12 | i17));
                return;
            case 8:
                r.a aVar2 = this.f1880p;
                int j10 = this.f1873i | vo.h.j(this.f1881q);
                if (this.f1879o) {
                    i11 = 0;
                } else {
                    i11 = 32;
                }
                list.add(new vo.h(aVar2, j10 | i11));
                r.a aVar3 = this.f1880p;
                int m10 = this.f1872h | vo.n.m(this.f1881q);
                if (!this.f1879o) {
                    i13 = 16;
                }
                list.add(new vo.n(aVar3, i13 | m10));
                return;
            case 9:
                list.add(new wo.d());
                return;
            case 10:
                list.add(new ip.c0());
                return;
            case 11:
                if (this.f1877m == null) {
                    this.f1877m = ImmutableList.A();
                }
                list.add(new ip.k0(this.f1875k, !this.f1879o ? 1 : 0, this.f1880p, new cn.h0(0L), new ip.j(this.f1876l, this.f1877m), this.f1878n));
                return;
            case 12:
                list.add(new jp.b());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new jo.a(this.f1882r));
                return;
            case 15:
                p a11 = f1865u.a(new Object[0]);
                if (a11 != null) {
                    list.add(a11);
                    return;
                }
                return;
            case 16:
                list.add(new co.b(!this.f1879o ? 1 : 0, this.f1880p));
                return;
            case 17:
                list.add(new xo.a());
                return;
            case 18:
                list.add(new kp.a());
                return;
            case 19:
                list.add(new fo.a());
                return;
            case 20:
                int i18 = this.f1872h;
                if ((i18 & 2) == 0 && (i18 & 4) == 0) {
                    list.add(new io.a());
                    return;
                }
                return;
            case 21:
                list.add(new eo.a());
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Constructor<? extends p> l() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        if (!Boolean.TRUE.equals(Class.forName("io.bidmachine.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return null;
        }
        return Class.forName("io.bidmachine.media3.decoder.flac.FlacExtractor").asSubclass(p.class).getConstructor(Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor<? extends p> m() throws ClassNotFoundException, NoSuchMethodException {
        return Class.forName("io.bidmachine.media3.decoder.midi.MidiExtractor").asSubclass(p.class).getConstructor(new Class[0]);
    }

    @Override // ao.u
    public synchronized p[] createExtractors() {
        return d(Uri.EMPTY, new HashMap());
    }

    @Override // ao.u
    public synchronized p[] d(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        try {
            int[] iArr = f1863s;
            arrayList = new ArrayList(iArr.length);
            int b10 = zm.m.b(map);
            if (b10 != -1) {
                i(b10, arrayList);
            }
            int c10 = zm.m.c(uri);
            if (c10 != -1 && c10 != b10) {
                i(c10, arrayList);
            }
            for (int i10 : iArr) {
                if (i10 != b10 && i10 != c10) {
                    i(i10, arrayList);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (p[]) arrayList.toArray(new p[arrayList.size()]);
    }

    @Override // ao.u
    /* renamed from: j */
    public synchronized l b(int i10) {
        this.f1881q = i10;
        return this;
    }

    @Override // ao.u
    @Deprecated
    /* renamed from: k */
    public synchronized l e(boolean z10) {
        this.f1879o = z10;
        return this;
    }

    public synchronized l n(int i10) {
        this.f1882r = i10;
        return this;
    }

    @Override // ao.u
    /* renamed from: o */
    public synchronized l a(r.a aVar) {
        this.f1880p = aVar;
        return this;
    }
}
