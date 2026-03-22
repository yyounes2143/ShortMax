package com.startshorts.androidplayer.manager.attribution.pullup;

import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GPInstallReferrerPullUp.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.pullup.GPInstallReferrerPullUp$handleQueryResult$1", f = "GPInstallReferrerPullUp.kt", l = {76, 81}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class GPInstallReferrerPullUp$handleQueryResult$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42087h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ GPInstallReferrerPullUp f42088i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f42089j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f42090k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f42091l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GPInstallReferrerPullUp$handleQueryResult$1(GPInstallReferrerPullUp gPInstallReferrerPullUp, String str, String str2, String str3, rs.c<? super GPInstallReferrerPullUp$handleQueryResult$1> cVar) {
        super(2, cVar);
        this.f42088i = gPInstallReferrerPullUp;
        this.f42089j = str;
        this.f42090k = str2;
        this.f42091l = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new GPInstallReferrerPullUp$handleQueryResult$1(this.f42088i, this.f42089j, this.f42090k, this.f42091l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((GPInstallReferrerPullUp$handleQueryResult$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object i10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f42087h;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    f.b(obj);
                    Logger.f41511a.e("CampaignNewTag", "GPInstallReferrer handleQuerySuccess end");
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            j1 c10 = q0.c();
            GPInstallReferrerPullUp$handleQueryResult$1$clipboardInfo$1 gPInstallReferrerPullUp$handleQueryResult$1$clipboardInfo$1 = new GPInstallReferrerPullUp$handleQueryResult$1$clipboardInfo$1(null);
            this.f42087h = 1;
            obj = gt.e.g(c10, gPInstallReferrerPullUp$handleQueryResult$1$clipboardInfo$1, this);
            if (obj == f10) {
                return f10;
            }
        }
        String str = (String) obj;
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "GPInstallReferrer PullUp handleQueryResult-> clipBoardInfo(" + str + ')');
        logger.e("CampaignNewTag", "GPInstallReferrer handleQuerySuccess start");
        GPInstallReferrerPullUp gPInstallReferrerPullUp = this.f42088i;
        String str2 = this.f42089j;
        String str3 = this.f42090k;
        String str4 = this.f42091l;
        this.f42087h = 2;
        i10 = gPInstallReferrerPullUp.i(str2, str3, str, str4, this);
        if (i10 == f10) {
            return f10;
        }
        Logger.f41511a.e("CampaignNewTag", "GPInstallReferrer handleQuerySuccess end");
        return Unit.f60915a;
    }
}
