package io.bidmachine.analytics.internal;

import java.lang.reflect.Method;
import kotlin.Result;
/* loaded from: classes7.dex */
public final class K {

    /* renamed from: a  reason: collision with root package name */
    private Object f53973a;

    /* renamed from: b  reason: collision with root package name */
    private final String f53974b;

    /* renamed from: c  reason: collision with root package name */
    private final String f53975c;

    /* renamed from: d  reason: collision with root package name */
    private final String f53976d;

    /* renamed from: e  reason: collision with root package name */
    private final String f53977e;

    public K() {
        Result.a aVar = Result.f60901b;
        this.f53973a = Result.d(kotlin.f.a(new NullPointerException()));
        this.f53974b = "amF2YS5sYW5nLlByb2Nlc3NCdWlsZGVy";
        this.f53975c = "c3RhcnQ=";
        this.f53976d = "Z2V0SW5wdXRTdHJlYW0=";
        this.f53977e = "ZGVzdHJveQ==";
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream a(java.util.List r4) {
        /*
            r3 = this;
            r0 = 0
            kotlin.Result$a r1 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = r3.f53974b     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = io.bidmachine.analytics.internal.s0.a(r1)     // Catch: java.lang.Throwable -> L36
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L36
            java.lang.Class<java.util.List> r2 = java.util.List.class
            java.lang.Class[] r2 = new java.lang.Class[]{r2}     // Catch: java.lang.Throwable -> L36
            java.lang.reflect.Constructor r2 = r1.getConstructor(r2)     // Catch: java.lang.Throwable -> L36
            java.util.List r4 = kotlin.collections.CollectionsKt.d1(r4)     // Catch: java.lang.Throwable -> L36
            java.lang.Object[] r4 = new java.lang.Object[]{r4}     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = r2.newInstance(r4)     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = r3.f53975c     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = io.bidmachine.analytics.internal.s0.a(r2)     // Catch: java.lang.Throwable -> L36
            java.lang.reflect.Method r1 = r1.getMethod(r2, r0)     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = r1.invoke(r4, r0)     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = kotlin.Result.d(r4)     // Catch: java.lang.Throwable -> L36
            goto L41
        L36:
            r4 = move-exception
            kotlin.Result$a r1 = kotlin.Result.f60901b
            java.lang.Object r4 = kotlin.f.a(r4)
            java.lang.Object r4 = kotlin.Result.d(r4)
        L41:
            r3.f53973a = r4
            boolean r1 = kotlin.Result.j(r4)
            if (r1 == 0) goto L70
            if (r4 == 0) goto L62
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = r3.f53976d     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = io.bidmachine.analytics.internal.s0.a(r2)     // Catch: java.lang.Throwable -> L60
            java.lang.reflect.Method r1 = r1.getMethod(r2, r0)     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L62
            java.lang.Object r4 = r1.invoke(r4, r0)     // Catch: java.lang.Throwable -> L60
            goto L63
        L60:
            r4 = move-exception
            goto L6a
        L62:
            r4 = r0
        L63:
            java.io.InputStream r4 = (java.io.InputStream) r4     // Catch: java.lang.Throwable -> L60
            java.lang.Object r4 = kotlin.Result.d(r4)     // Catch: java.lang.Throwable -> L60
            goto L74
        L6a:
            kotlin.Result$a r1 = kotlin.Result.f60901b
            java.lang.Object r4 = kotlin.f.a(r4)
        L70:
            java.lang.Object r4 = kotlin.Result.d(r4)
        L74:
            boolean r1 = kotlin.Result.i(r4)
            if (r1 == 0) goto L7b
            goto L7c
        L7b:
            r0 = r4
        L7c:
            java.io.InputStream r0 = (java.io.InputStream) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.K.a(java.util.List):java.io.InputStream");
    }

    public final void a() {
        Object obj = this.f53973a;
        if (Result.j(obj)) {
            Object obj2 = null;
            if (obj != null) {
                try {
                    Method method = obj.getClass().getMethod(s0.a(this.f53977e), null);
                    if (method != null) {
                        obj2 = method.invoke(obj, null);
                    }
                } catch (Throwable th2) {
                    Result.a aVar = Result.f60901b;
                    obj = kotlin.f.a(th2);
                }
            }
            Result.d(obj2);
            return;
        }
        Result.d(obj);
    }
}
