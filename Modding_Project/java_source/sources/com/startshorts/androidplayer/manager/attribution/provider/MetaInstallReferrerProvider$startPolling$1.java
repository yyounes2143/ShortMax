package com.startshorts.androidplayer.manager.attribution.provider;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetaInstallReferrerProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider$startPolling$1", f = "MetaInstallReferrerProvider.kt", l = {75}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class MetaInstallReferrerProvider$startPolling$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42049h;

    /* renamed from: i  reason: collision with root package name */
    int f42050i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ MetaInstallReferrerProvider f42051j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetaInstallReferrerProvider$startPolling$1(MetaInstallReferrerProvider metaInstallReferrerProvider, rs.c<? super MetaInstallReferrerProvider$startPolling$1> cVar) {
        super(2, cVar);
        this.f42051j = metaInstallReferrerProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MetaInstallReferrerProvider$startPolling$1(this.f42051j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MetaInstallReferrerProvider$startPolling$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            int r1 = r7.f42050i
            r2 = 1
            if (r1 == 0) goto L1a
            if (r1 != r2) goto L12
            int r1 = r7.f42049h
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
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r1 = r7.f42051j
            boolean r1 = com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.p(r1)
            if (r1 == 0) goto La7
            r1 = 4
            if (r8 >= r1) goto La7
            gk.a r3 = gk.a.f52405a
            com.startshorts.androidplayer.bean.campaign.MetaInstallReferrer r3 = r3.d()
            int r8 = r8 + 1
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r4 = r7.f42051j
            int r4 = com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.q(r4)
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r5 = r7.f42051j
            int r4 = r4 + r2
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.t(r5, r4)
            com.startshorts.androidplayer.log.Logger r4 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "polling #"
            r5.append(r6)
            r5.append(r8)
            java.lang.String r6 = "/4 referrer("
            r5.append(r6)
            r5.append(r3)
            r6 = 41
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "CampaignNewTag"
            r4.e(r6, r5)
            if (r3 != 0) goto L89
            if (r8 < r1) goto L72
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r3 = r7.f42051j
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.u(r3)
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r3 = r7.f42051j
            java.lang.String r4 = "Timeout:referrer is null"
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.r(r3, r4)
        L72:
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r3 = r7.f42051j
            boolean r3 = com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.p(r3)
            if (r3 == 0) goto L1e
            if (r8 >= r1) goto L1e
            r7.f42049h = r8
            r7.f42050i = r2
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.b(r3, r7)
            if (r1 != r0) goto L1e
            return r0
        L89:
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r8 = r7.f42051j
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.u(r8)
            com.startshorts.androidplayer.manager.attribution.CampaignReporter r8 = com.startshorts.androidplayer.manager.attribution.CampaignReporter.f41888a
            java.lang.String r0 = r3.getInstallReferrer()
            int r1 = r3.isCT()
            r8.F(r0, r1)
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider r8 = r7.f42051j
            java.lang.String r0 = r3.getInstallReferrer()
            com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider.s(r8, r0)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        La7:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider$startPolling$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
