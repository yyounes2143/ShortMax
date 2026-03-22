package com.startshorts.androidplayer.service.miniwindow;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.b;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionMiniWindow.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow$addPreloadStrategyResources$1", f = "ImmersionMiniWindow.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ENABLE_DECODE_MULTI_SEI}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionMiniWindow$addPreloadStrategyResources$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44799h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionMiniWindow f44800i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<BaseEpisode> f44801j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionMiniWindow.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow$addPreloadStrategyResources$1$1", f = "ImmersionMiniWindow.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow$addPreloadStrategyResources$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f44802h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ImmersionMiniWindow f44803i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ List<StrategySource> f44804j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ImmersionMiniWindow immersionMiniWindow, List<StrategySource> list, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f44803i = immersionMiniWindow;
            this.f44804j = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f44803i, this.f44804j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PlayerViewModel playerViewModel;
            a.f();
            if (this.f44802h == 0) {
                f.b(obj);
                playerViewModel = this.f44803i.f44790r;
                if (playerViewModel != null) {
                    playerViewModel.M(new b.a(this.f44804j));
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionMiniWindow$addPreloadStrategyResources$1(ImmersionMiniWindow immersionMiniWindow, List<BaseEpisode> list, c<? super ImmersionMiniWindow$addPreloadStrategyResources$1> cVar) {
        super(2, cVar);
        this.f44800i = immersionMiniWindow;
        this.f44801j = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ImmersionMiniWindow$addPreloadStrategyResources$1(this.f44800i, this.f44801j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ImmersionMiniWindow$addPreloadStrategyResources$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List l02;
        Object f10 = a.f();
        int i10 = this.f44799h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            l02 = this.f44800i.l0(this.f44801j);
            if (!l02.isEmpty()) {
                j1 c10 = q0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f44800i, l02, null);
                this.f44799h = 1;
                if (e.g(c10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
