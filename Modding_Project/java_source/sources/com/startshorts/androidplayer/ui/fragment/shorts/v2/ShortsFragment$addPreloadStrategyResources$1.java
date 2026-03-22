package com.startshorts.androidplayer.ui.fragment.shorts.v2;

import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
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
/* compiled from: ShortsFragment.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment$addPreloadStrategyResources$1", f = "ShortsFragment.kt", l = {2269}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ShortsFragment$addPreloadStrategyResources$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46822h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortsFragment f46823i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<ShortsEpisode> f46824j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ShortsFragment.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment$addPreloadStrategyResources$1$1", f = "ShortsFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment$addPreloadStrategyResources$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46825h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ShortsFragment f46826i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ List<StrategySource> f46827j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShortsFragment shortsFragment, List<StrategySource> list, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46826i = shortsFragment;
            this.f46827j = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f46826i, this.f46827j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f46825h == 0) {
                f.b(obj);
                ((PlayerViewModel) this.f46826i.R.getValue()).M(new b.a(this.f46827j));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsFragment$addPreloadStrategyResources$1(ShortsFragment shortsFragment, List<ShortsEpisode> list, c<? super ShortsFragment$addPreloadStrategyResources$1> cVar) {
        super(2, cVar);
        this.f46823i = shortsFragment;
        this.f46824j = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortsFragment$addPreloadStrategyResources$1(this.f46823i, this.f46824j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortsFragment$addPreloadStrategyResources$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List W1;
        Object f10 = a.f();
        int i10 = this.f46822h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            W1 = this.f46823i.W1(this.f46824j);
            if (!W1.isEmpty()) {
                j1 c10 = q0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f46823i, W1, null);
                this.f46822h = 1;
                if (e.g(c10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
