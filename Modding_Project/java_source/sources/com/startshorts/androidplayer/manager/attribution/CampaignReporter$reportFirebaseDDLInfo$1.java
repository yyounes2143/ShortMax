package com.startshorts.androidplayer.manager.attribution;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignReporter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportFirebaseDDLInfo$1", f = "CampaignReporter.kt", l = {608, 608}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignReporter$reportFirebaseDDLInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41913h;

    /* renamed from: i  reason: collision with root package name */
    int f41914i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f41915j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignReporter$reportFirebaseDDLInfo$1(String str, rs.c<? super CampaignReporter$reportFirebaseDDLInfo$1> cVar) {
        super(2, cVar);
        this.f41915j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignReporter$reportFirebaseDDLInfo$1(this.f41915j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignReporter$reportFirebaseDDLInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f41914i
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L28
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.n()
            goto L54
        L18:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L20:
            java.lang.Object r1 = r7.f41913h
            com.startshorts.androidplayer.repo.campaign.CampaignRepo r1 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo) r1
            kotlin.f.b(r8)
            goto L3a
        L28:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.campaign.CampaignRepo r1 = com.startshorts.androidplayer.repo.campaign.CampaignRepo.f43678a
            com.startshorts.androidplayer.manager.attribution.CampaignReporter r8 = com.startshorts.androidplayer.manager.attribution.CampaignReporter.f41888a
            r7.f41913h = r1
            r7.f41914i = r3
            java.lang.Object r8 = com.startshorts.androidplayer.manager.attribution.CampaignReporter.g(r8, r7)
            if (r8 != r0) goto L3a
            return r0
        L3a:
            java.lang.String r8 = (java.lang.String) r8
            com.startshorts.androidplayer.utils.DeviceUtil r4 = com.startshorts.androidplayer.utils.DeviceUtil.f48146a
            long r4 = r4.q()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.String r5 = r7.f41915j
            r6 = 0
            r7.f41913h = r6
            r7.f41914i = r2
            java.lang.Object r8 = r1.N(r8, r4, r5, r7)
            if (r8 != r0) goto L54
            return r0
        L54:
            boolean r0 = kotlin.Result.j(r8)
            r1 = 0
            java.lang.String r2 = "CampaignNewTag"
            if (r0 == 0) goto L7b
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "reportFirebaseDDLInfo success -> "
            r4.append(r5)
            r4.append(r8)
            java.lang.String r4 = r4.toString()
            r0.e(r2, r4)
            com.startshorts.androidplayer.manager.attribution.CampaignReporter.m(r1)
            ud.b r0 = ud.b.f68412a
            r0.y3(r3)
        L7b:
            java.lang.Throwable r8 = kotlin.Result.g(r8)
            if (r8 == 0) goto L9e
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "reportFirebaseDDLInfo failed -> "
            r3.append(r4)
            java.lang.String r8 = r8.getMessage()
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            r0.e(r2, r8)
            com.startshorts.androidplayer.manager.attribution.CampaignReporter.m(r1)
        L9e:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportFirebaseDDLInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
