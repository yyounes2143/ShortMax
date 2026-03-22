package com.startshorts.androidplayer.manager.attribution.provider;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GADeeplinkProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$startPolling$1", f = "GADeeplinkProvider.kt", l = {110}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class GADeeplinkProvider$startPolling$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42037h;

    /* renamed from: i  reason: collision with root package name */
    int f42038i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ GADeeplinkProvider f42039j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GADeeplinkProvider$startPolling$1(GADeeplinkProvider gADeeplinkProvider, rs.c<? super GADeeplinkProvider$startPolling$1> cVar) {
        super(2, cVar);
        this.f42039j = gADeeplinkProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new GADeeplinkProvider$startPolling$1(this.f42039j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((GADeeplinkProvider$startPolling$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Incorrect condition in loop: B:10:0x0024 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f42038i
            r2 = 1
            if (r1 == 0) goto L1a
            if (r1 != r2) goto L12
            int r1 = r7.f42037h
            kotlin.f.b(r8)
            r8 = r1
            goto L1e
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            kotlin.f.b(r8)
            r8 = 0
        L1e:
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r1 = r7.f42039j
            boolean r1 = com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.q(r1)
            if (r1 == 0) goto La6
            r1 = 4
            if (r8 >= r1) goto La6
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r3 = r7.f42039j
            android.content.SharedPreferences r3 = com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.r(r3)
            r4 = 0
            if (r3 == 0) goto L38
            java.lang.String r5 = "deeplink"
            java.lang.String r4 = r3.getString(r5, r4)
        L38:
            int r8 = r8 + 1
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r3 = r7.f42039j
            int r3 = com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.s(r3)
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r5 = r7.f42039j
            int r3 = r3 + r2
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.w(r5, r3)
            com.startshorts.androidplayer.log.Logger r3 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "polling #"
            r5.append(r6)
            r5.append(r8)
            java.lang.String r6 = "/4 deeplink("
            r5.append(r6)
            r5.append(r4)
            r6 = 41
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "CampaignNewTag"
            r3.e(r6, r5)
            if (r4 == 0) goto L81
            int r3 = r4.length()
            if (r3 != 0) goto L74
            goto L81
        L74:
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r8 = r7.f42039j
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.u(r8, r4)
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r8 = r7.f42039j
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.v(r8)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L81:
            if (r8 < r1) goto L8f
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r3 = r7.f42039j
            java.lang.String r4 = "Timeout:deeplink is null"
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.t(r3, r4)
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r3 = r7.f42039j
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.v(r3)
        L8f:
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r3 = r7.f42039j
            boolean r3 = com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.q(r3)
            if (r3 == 0) goto L1e
            if (r8 >= r1) goto L1e
            r7.f42037h = r8
            r7.f42038i = r2
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.b(r3, r7)
            if (r1 != r0) goto L1e
            return r0
        La6:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$startPolling$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
