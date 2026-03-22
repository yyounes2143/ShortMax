package com.startshorts.androidplayer.manager.attribution;

import com.startshorts.androidplayer.bean.eventbus.CampaignRefreshSuccessEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: CampaignPullUp.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignPullUp$allPullUp$1", f = "CampaignPullUp.kt", l = {45, 49}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCampaignPullUp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignPullUp.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1863#2,2:66\n*S KotlinDebug\n*F\n+ 1 CampaignPullUp.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1\n*L\n44#1:66,2\n*E\n"})
/* loaded from: classes6.dex */
final class CampaignPullUp$allPullUp$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41879h;

    /* renamed from: i  reason: collision with root package name */
    Object f41880i;

    /* renamed from: j  reason: collision with root package name */
    Object f41881j;

    /* renamed from: k  reason: collision with root package name */
    Object f41882k;

    /* renamed from: l  reason: collision with root package name */
    int f41883l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f41884m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f41885n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ boolean f41886o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ boolean f41887p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignPullUp$allPullUp$1(String str, String str2, boolean z10, boolean z11, rs.c<? super CampaignPullUp$allPullUp$1> cVar) {
        super(2, cVar);
        this.f41884m = str;
        this.f41885n = str2;
        this.f41886o = z10;
        this.f41887p = z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j() {
        AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
        au.c.d().l(new CampaignRefreshSuccessEvent());
        Logger.f41511a.e("CampaignNewTag", "reportActiveWeb success CampaignRefreshSuccessEvent");
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignPullUp$allPullUp$1(this.f41884m, this.f41885n, this.f41886o, this.f41887p, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignPullUp$allPullUp$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0125  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.CampaignPullUp$allPullUp$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
