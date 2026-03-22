package com.startshorts.androidplayer.manager.attribution;

import com.hades.aar.activity.IDActivity;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.PopularShorts;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import gt.g0;
import gt.j1;
import gt.q0;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignParser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$preInstallHandlePopularShorts$1", f = "CampaignParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIEW_WIDTH, 473}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignParser$preInstallHandlePopularShorts$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41862h;

    /* renamed from: i  reason: collision with root package name */
    int f41863i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ PopularShorts f41864j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CampaignParser.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$preInstallHandlePopularShorts$1$1", f = "CampaignParser.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.attribution.CampaignParser$preInstallHandlePopularShorts$1$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f41865h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ IDActivity f41866i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ PopularShorts f41867j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(IDActivity iDActivity, PopularShorts popularShorts, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f41866i = iDActivity;
            this.f41867j = popularShorts;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f41866i, this.f41867j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f41865h == 0) {
                kotlin.f.b(obj);
                ImmersionActivity.a aVar = ImmersionActivity.V0;
                IDActivity iDActivity = this.f41866i;
                ImmersionParams immersionParams = new ImmersionParams();
                PopularShorts popularShorts = this.f41867j;
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
    public CampaignParser$preInstallHandlePopularShorts$1(PopularShorts popularShorts, rs.c<? super CampaignParser$preInstallHandlePopularShorts$1> cVar) {
        super(2, cVar);
        this.f41864j = popularShorts;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignParser$preInstallHandlePopularShorts$1(this.f41864j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignParser$preInstallHandlePopularShorts$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IDActivity iDActivity;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41863i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            iDActivity = (IDActivity) this.f41862h;
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            if (this.f41864j == null) {
                return Unit.f60915a;
            }
            if (ud.b.f68412a.Z()) {
                return Unit.f60915a;
            }
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                iDActivity = d10.get();
            } else {
                iDActivity = null;
            }
            if (!(iDActivity instanceof MainActivity)) {
                Logger.f41511a.e("CampaignParser", "show ImmersionActivity failed -> TopActivity is not MainActivity");
                return Unit.f60915a;
            } else if (UpdateManager.f42992a.k()) {
                Logger.f41511a.e("CampaignParser", "show ImmersionActivity failed -> ForceShowingUpdateDialog is showing");
                return Unit.f60915a;
            } else if (!ud.a.f68411a.t()) {
                Logger.f41511a.e("CampaignParser", "show ImmersionActivity failed -> onForeground is false");
                return Unit.f60915a;
            } else {
                this.f41862h = iDActivity;
                this.f41863i = 1;
                if (DelayKt.b(500L, this) == f10) {
                    return f10;
                }
            }
        }
        if (AdManager.f41600a.O()) {
            Logger.f41511a.e("CampaignParser", "show ImmersionActivity failed -> FullScreenAd is showing");
            return Unit.f60915a;
        }
        ud.b bVar = ud.b.f68412a;
        if (bVar.Z()) {
            return Unit.f60915a;
        }
        bVar.j3(true);
        j1 c10 = q0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(iDActivity, this.f41864j, null);
        this.f41862h = null;
        this.f41863i = 2;
        if (gt.e.g(c10, anonymousClass1, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
