package com.startshorts.androidplayer.manager.configure;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppConfigureManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$refreshAdConfigure$1", f = "AppConfigureManager.kt", l = {146, 147, 148}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AppConfigureManager$refreshAdConfigure$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42208h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppConfigureManager$refreshAdConfigure$1(c<? super AppConfigureManager$refreshAdConfigure$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppConfigureManager$refreshAdConfigure$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AppConfigureManager$refreshAdConfigure$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0048 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r5.f42208h
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L25
            if (r1 == r4) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            kotlin.f.b(r6)
            goto L49
        L15:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1d:
            kotlin.f.b(r6)
            goto L3e
        L21:
            kotlin.f.b(r6)
            goto L33
        L25:
            kotlin.f.b(r6)
            oe.e r6 = oe.e.f63182a
            r5.f42208h = r4
            java.lang.Object r6 = r6.f(r5)
            if (r6 != r0) goto L33
            return r0
        L33:
            com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser r6 = com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.f42279a
            r5.f42208h = r3
            java.lang.Object r6 = r6.h(r5)
            if (r6 != r0) goto L3e
            return r0
        L3e:
            com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure r6 = com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure.f42267a
            r5.f42208h = r2
            java.lang.Object r6 = r6.h(r5)
            if (r6 != r0) goto L49
            return r0
        L49:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.AppConfigureManager$refreshAdConfigure$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
