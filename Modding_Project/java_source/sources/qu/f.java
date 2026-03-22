package qu;

import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: RxJavaPlugins.java */
/* loaded from: classes8.dex */
public class f {

    /* renamed from: f  reason: collision with root package name */
    private static final f f65432f = new f();

    /* renamed from: g  reason: collision with root package name */
    static final qu.b f65433g = new a();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<qu.b> f65434a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<d> f65435b = new AtomicReference<>();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<h> f65436c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<qu.a> f65437d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<g> f65438e = new AtomicReference<>();

    /* compiled from: RxJavaPlugins.java */
    /* loaded from: classes8.dex */
    static class a extends qu.b {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxJavaPlugins.java */
    /* loaded from: classes8.dex */
    public class b extends qu.a {
        b() {
        }
    }

    f() {
    }

    @Deprecated
    public static f c() {
        return f65432f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
        r2 = "rxjava.plugin." + r7.substring(0, r7.length() - 6).substring(14) + ".impl";
        r1 = r10.getProperty(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0087, code lost:
        if (r1 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a8, code lost:
        throw new java.lang.IllegalStateException("Implementing class declaration for " + r0 + " missing: " + r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.Object e(java.lang.Class<?> r9, java.util.Properties r10) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: qu.f.e(java.lang.Class, java.util.Properties):java.lang.Object");
    }

    static Properties h() {
        try {
            return System.getProperties();
        } catch (SecurityException unused) {
            return new Properties();
        }
    }

    public qu.a a() {
        if (this.f65437d.get() == null) {
            Object e10 = e(qu.a.class, h());
            if (e10 == null) {
                androidx.compose.animation.core.a.a(this.f65437d, null, new b());
            } else {
                androidx.compose.animation.core.a.a(this.f65437d, null, (qu.a) e10);
            }
        }
        return this.f65437d.get();
    }

    public qu.b b() {
        if (this.f65434a.get() == null) {
            Object e10 = e(qu.b.class, h());
            if (e10 == null) {
                androidx.compose.animation.core.a.a(this.f65434a, null, f65433g);
            } else {
                androidx.compose.animation.core.a.a(this.f65434a, null, (qu.b) e10);
            }
        }
        return this.f65434a.get();
    }

    public d d() {
        if (this.f65435b.get() == null) {
            Object e10 = e(d.class, h());
            if (e10 == null) {
                androidx.compose.animation.core.a.a(this.f65435b, null, e.f());
            } else {
                androidx.compose.animation.core.a.a(this.f65435b, null, (d) e10);
            }
        }
        return this.f65435b.get();
    }

    public g f() {
        if (this.f65438e.get() == null) {
            Object e10 = e(g.class, h());
            if (e10 == null) {
                androidx.compose.animation.core.a.a(this.f65438e, null, g.a());
            } else {
                androidx.compose.animation.core.a.a(this.f65438e, null, (g) e10);
            }
        }
        return this.f65438e.get();
    }

    public h g() {
        if (this.f65436c.get() == null) {
            Object e10 = e(h.class, h());
            if (e10 == null) {
                androidx.compose.animation.core.a.a(this.f65436c, null, i.f());
            } else {
                androidx.compose.animation.core.a.a(this.f65436c, null, (h) e10);
            }
        }
        return this.f65436c.get();
    }
}
