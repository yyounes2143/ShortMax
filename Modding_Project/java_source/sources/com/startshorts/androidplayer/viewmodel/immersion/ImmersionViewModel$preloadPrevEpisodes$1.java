package com.startshorts.androidplayer.viewmodel.immersion;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$preloadPrevEpisodes$1", f = "ImmersionViewModel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_SET_VOICE}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$preloadPrevEpisodes$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48559h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48560i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48561j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48562k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ boolean f48563l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$preloadPrevEpisodes$1(ImmersionViewModel immersionViewModel, int i10, int i11, boolean z10, rs.c<? super ImmersionViewModel$preloadPrevEpisodes$1> cVar) {
        super(2, cVar);
        this.f48560i = immersionViewModel;
        this.f48561j = i10;
        this.f48562k = i11;
        this.f48563l = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$preloadPrevEpisodes$1(this.f48560i, this.f48561j, this.f48562k, this.f48563l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$preloadPrevEpisodes$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ImmersionViewModel$preloadPrevEpisodes$1 immersionViewModel$preloadPrevEpisodes$1;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48559h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                immersionViewModel$preloadPrevEpisodes$1 = this;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ImmersionViewModel immersionViewModel = this.f48560i;
            int i11 = this.f48561j;
            int i12 = this.f48562k;
            boolean z10 = this.f48563l;
            this.f48559h = 1;
            if (ImmersionViewModel.m0(immersionViewModel, null, true, -1, i11, 12, 0, i12, false, null, z10, false, false, this, 3457, null) == f10) {
                return f10;
            }
            immersionViewModel$preloadPrevEpisodes$1 = this;
        }
        o.b(immersionViewModel$preloadPrevEpisodes$1.f48560i.Q(), d.f.f48748a);
        return Unit.f60915a;
    }
}
