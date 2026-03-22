package kk;

import android.content.Context;
import androidx.annotation.Nullable;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import t3.r;
import t3.s;
import t3.v;
/* compiled from: CustomFresco.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f60741a = a.class;

    /* renamed from: b  reason: collision with root package name */
    private static v2.e f60742b = null;

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f60743c = false;

    private a() {
    }

    public static r a() {
        return b().j();
    }

    public static v b() {
        return v.l();
    }

    public static void c(Context context, @Nullable s sVar) {
        d(context, sVar, null);
    }

    public static void d(Context context, @Nullable s sVar, @Nullable v2.b bVar) {
        e(context, sVar, bVar, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (f4.b.d() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
        f4.b.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
        if (f4.b.d() == false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(android.content.Context r2, @androidx.annotation.Nullable t3.s r3, @androidx.annotation.Nullable v2.b r4, boolean r5) {
        /*
            boolean r0 = f4.b.d()
            if (r0 == 0) goto Lb
            java.lang.String r0 = "Fresco#initialize"
            f4.b.a(r0)
        Lb:
            boolean r0 = kk.a.f60743c
            if (r0 == 0) goto L17
            java.lang.Class<?> r0 = kk.a.f60741a
            java.lang.String r1 = "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"
            l2.a.v(r0, r1)
            goto L1a
        L17:
            r0 = 1
            kk.a.f60743c = r0
        L1a:
            t3.w.b(r5)
            boolean r5 = w4.a.c()
            if (r5 != 0) goto L6d
            boolean r5 = f4.b.d()
            if (r5 == 0) goto L2e
            java.lang.String r5 = "Fresco.initialize->SoLoader.init"
            f4.b.a(r5)
        L2e:
            java.lang.String r5 = "com.facebook.imagepipeline.nativecode.NativeCodeInitializer"
            java.lang.Class r5 = java.lang.Class.forName(r5)     // Catch: java.lang.Throwable -> L52 java.lang.Throwable -> L54
            java.lang.String r0 = "init"
            java.lang.Class<android.content.Context> r1 = android.content.Context.class
            java.lang.Class[] r1 = new java.lang.Class[]{r1}     // Catch: java.lang.Throwable -> L52 java.lang.Throwable -> L54
            java.lang.reflect.Method r5 = r5.getMethod(r0, r1)     // Catch: java.lang.Throwable -> L52 java.lang.Throwable -> L54
            java.lang.Object[] r0 = new java.lang.Object[]{r2}     // Catch: java.lang.Throwable -> L52 java.lang.Throwable -> L54
            r1 = 0
            r5.invoke(r1, r0)     // Catch: java.lang.Throwable -> L52 java.lang.Throwable -> L54
            boolean r5 = f4.b.d()
            if (r5 == 0) goto L6d
        L4e:
            f4.b.b()
            goto L6d
        L52:
            r2 = move-exception
            goto L63
        L54:
            w4.c r5 = new w4.c     // Catch: java.lang.Throwable -> L52
            r5.<init>()     // Catch: java.lang.Throwable -> L52
            w4.a.b(r5)     // Catch: java.lang.Throwable -> L52
            boolean r5 = f4.b.d()
            if (r5 == 0) goto L6d
            goto L4e
        L63:
            boolean r3 = f4.b.d()
            if (r3 == 0) goto L6c
            f4.b.b()
        L6c:
            throw r2
        L6d:
            android.content.Context r2 = r2.getApplicationContext()
            if (r3 != 0) goto L77
            t3.v.s(r2)
            goto L7a
        L77:
            t3.v.t(r3)
        L7a:
            f(r2, r4)
            boolean r2 = f4.b.d()
            if (r2 == 0) goto L86
            f4.b.b()
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kk.a.e(android.content.Context, t3.s, v2.b, boolean):void");
    }

    private static void f(Context context, @Nullable v2.b bVar) {
        if (f4.b.d()) {
            f4.b.a("Fresco.initializeDrawee");
        }
        v2.e eVar = new v2.e(context, bVar);
        f60742b = eVar;
        CustomFrescoView.o(eVar);
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    public static v2.d g() {
        return f60742b.get();
    }
}
