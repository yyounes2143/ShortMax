package com.startshorts.androidplayer.manager.attribution;

import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.PopularShorts;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignParser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$handlePopularShorts$1", f = "CampaignParser.kt", l = {321, 338, 354}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignParser$handlePopularShorts$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41852h;

    /* renamed from: i  reason: collision with root package name */
    int f41853i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ PopularShorts f41854j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CampaignParser.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$handlePopularShorts$1$1", f = "CampaignParser.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.attribution.CampaignParser$handlePopularShorts$1$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f41855h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ IDActivity f41856i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ PopularShorts f41857j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(IDActivity iDActivity, PopularShorts popularShorts, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f41856i = iDActivity;
            this.f41857j = popularShorts;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f41856i, this.f41857j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f41855h == 0) {
                kotlin.f.b(obj);
                ImmersionActivity.a aVar = ImmersionActivity.V0;
                IDActivity iDActivity = this.f41856i;
                ImmersionParams immersionParams = new ImmersionParams();
                PopularShorts popularShorts = this.f41857j;
                immersionParams.setFrom("backup_drama");
                immersionParams.setType(3);
                ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
                immersionShortsInfo.setShortsId(popularShorts.getId());
                immersionShortsInfo.setShortPlayCode(popularShorts.getShortPlayCode());
                immersionShortsInfo.setShortsName(popularShorts.getShortPlayName());
                immersionParams.setShortsInfo(immersionShortsInfo);
                Unit unit = Unit.f60915a;
                aVar.a(iDActivity, immersionParams);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignParser$handlePopularShorts$1(PopularShorts popularShorts, rs.c<? super CampaignParser$handlePopularShorts$1> cVar) {
        super(2, cVar);
        this.f41854j = popularShorts;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignParser$handlePopularShorts$1(this.f41854j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignParser$handlePopularShorts$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.CampaignParser$handlePopularShorts$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
