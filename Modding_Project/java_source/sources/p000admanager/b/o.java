package p000admanager.b;

import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.o  reason: invalid package */
/* loaded from: classes.dex */
public final class o extends SuspendLambda implements Function2 {
    public o(c cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new o(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new o((c) obj2).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007c, code lost:
        if (r10.isCompleted() != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x007e, code lost:
        r10 = ca.g.f3404b;
        r10.i(kotlin.Unit.f60915a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0089, code lost:
        return kotlin.Unit.f60915a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0042, code lost:
        if (r10.isCompleted() == false) goto L9;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.String r0 = "ms"
            java.lang.String r1 = "setCCPA for meta end, cost="
            java.lang.String r2 = "CCPAManager"
            java.lang.String r3 = "setCCPAWithCache catch exception -> "
            kotlin.coroutines.intrinsics.a.f()
            kotlin.f.b(r10)
            long r4 = java.lang.System.currentTimeMillis()
            ga.a r10 = ga.a.f52235a     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            java.lang.String r6 = "setCCPA for meta"
            r10.d(r2, r6)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            java.lang.String r6 = "LDU"
            java.lang.String[] r6 = new java.lang.String[]{r6}     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            r7 = 0
            com.facebook.ads.AdSettings.setDataProcessingOptions(r6, r7, r7)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
            long r6 = java.lang.System.currentTimeMillis()
            long r6 = r6 - r4
            r3.append(r6)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r10.d(r2, r0)
            gt.p r10 = ca.g.a()
            boolean r10 = r10.isCompleted()
            if (r10 != 0) goto L87
            goto L7e
        L45:
            r10 = move-exception
            goto L8a
        L47:
            r10 = move-exception
            ga.a r6 = ga.a.f52235a     // Catch: java.lang.Throwable -> L45
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L45
            r7.<init>(r3)     // Catch: java.lang.Throwable -> L45
            java.lang.String r10 = r10.getMessage()     // Catch: java.lang.Throwable -> L45
            r7.append(r10)     // Catch: java.lang.Throwable -> L45
            java.lang.String r10 = r7.toString()     // Catch: java.lang.Throwable -> L45
            r6.c(r2, r10)     // Catch: java.lang.Throwable -> L45
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r1)
            long r7 = java.lang.System.currentTimeMillis()
            long r7 = r7 - r4
            r10.append(r7)
            r10.append(r0)
            java.lang.String r10 = r10.toString()
            r6.d(r2, r10)
            gt.p r10 = ca.g.a()
            boolean r10 = r10.isCompleted()
            if (r10 != 0) goto L87
        L7e:
            gt.p r10 = ca.g.a()
            kotlin.Unit r0 = kotlin.Unit.f60915a
            r10.i(r0)
        L87:
            kotlin.Unit r10 = kotlin.Unit.f60915a
            return r10
        L8a:
            ga.a r3 = ga.a.f52235a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r1)
            long r7 = java.lang.System.currentTimeMillis()
            long r7 = r7 - r4
            r6.append(r7)
            r6.append(r0)
            java.lang.String r0 = r6.toString()
            r3.d(r2, r0)
            gt.p r0 = ca.g.a()
            boolean r0 = r0.isCompleted()
            if (r0 != 0) goto Lb6
            gt.p r0 = ca.g.a()
            kotlin.Unit r1 = kotlin.Unit.f60915a
            r0.i(r1)
        Lb6:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p000admanager.b.o.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
