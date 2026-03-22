package com.startshorts.androidplayer.viewmodel.discover;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.viewmodel.discover.b;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel$loadModulesPage$1", f = "DiscoverViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverViewModel$loadModulesPage$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48471h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverModule f48472i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48473j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48474k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48475l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f48476m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ DiscoverViewModel f48477n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverViewModel$loadModulesPage$1(DiscoverModule discoverModule, String str, int i10, int i11, int i12, DiscoverViewModel discoverViewModel, rs.c<? super DiscoverViewModel$loadModulesPage$1> cVar) {
        super(2, cVar);
        this.f48472i = discoverModule;
        this.f48473j = str;
        this.f48474k = i10;
        this.f48475l = i11;
        this.f48476m = i12;
        this.f48477n = discoverViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverViewModel$loadModulesPage$1(this.f48472i, this.f48473j, this.f48474k, this.f48475l, this.f48476m, this.f48477n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverViewModel$loadModulesPage$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i10;
        Object p10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f48471h;
        if (i11 != 0) {
            if (i11 == 1) {
                kotlin.f.b(obj);
                p10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            String bannerId = this.f48472i.getBannerId();
            if (bannerId == null) {
                bannerId = "";
            }
            String str = this.f48473j;
            Integer recommendId = this.f48472i.getRecommendId();
            if (recommendId != null) {
                i10 = recommendId.intValue();
            } else {
                i10 = 0;
            }
            int i12 = this.f48474k;
            int i13 = this.f48475l;
            int i14 = this.f48476m;
            this.f48471h = 1;
            p10 = discoverRepo.p(bannerId, str, i10, i12, i13, i14, this);
            if (p10 == f10) {
                return f10;
            }
        }
        DiscoverViewModel discoverViewModel = this.f48477n;
        if (Result.j(p10)) {
            o.b(discoverViewModel.F(), new b.C0659b((DiscoverModule) p10));
        }
        DiscoverViewModel discoverViewModel2 = this.f48477n;
        Throwable g10 = Result.g(p10);
        if (g10 != null) {
            discoverViewModel2.x(discoverViewModel2.s(g10));
        }
        return Unit.f60915a;
    }
}
