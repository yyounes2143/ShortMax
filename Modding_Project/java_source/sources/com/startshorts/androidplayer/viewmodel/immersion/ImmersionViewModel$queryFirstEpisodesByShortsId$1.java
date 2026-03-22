package com.startshorts.androidplayer.viewmodel.immersion;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryFirstEpisodesByShortsId$1", f = "ImmersionViewModel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryFirstEpisodesByShortsId$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48637h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48638i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48639j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryFirstEpisodesByShortsId$1(ImmersionViewModel immersionViewModel, int i10, rs.c<? super ImmersionViewModel$queryFirstEpisodesByShortsId$1> cVar) {
        super(2, cVar);
        this.f48638i = immersionViewModel;
        this.f48639j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryFirstEpisodesByShortsId$1(this.f48638i, this.f48639j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryFirstEpisodesByShortsId$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean O;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48637h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ImmersionViewModel immersionViewModel = this.f48638i;
            immersionViewModel.v("queryFirstEpisodesByShortsId -> shortsId(" + this.f48639j + ')');
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            ud.a.f68411a.C0(uuid);
            this.f48638i.Y(this.f48639j, uuid, "app/forYou/firstDramaForShortPlayId");
            Logger logger = Logger.f41511a;
            logger.h("HttpLoggingInterceptor", "queryFirstShortIdTraceID -> " + uuid);
            ImmersionViewModel immersionViewModel2 = this.f48638i;
            int i11 = this.f48639j;
            O = immersionViewModel2.O();
            this.f48637h = 1;
            if (ImmersionViewModel.h0(immersionViewModel2, null, i11, false, null, false, O, this, 29, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
