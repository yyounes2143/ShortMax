package com.startshorts.androidplayer.ui.activity.immersion;

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
/* compiled from: ImmersionActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$addPreloadStrategyResources$1", f = "ImmersionActivity.kt", l = {2815}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionActivity$addPreloadStrategyResources$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45290h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionActivity f45291i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<BaseEpisode> f45292j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$addPreloadStrategyResources$1$1", f = "ImmersionActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$addPreloadStrategyResources$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45293h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45294i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ List<StrategySource> f45295j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ImmersionActivity immersionActivity, List<StrategySource> list, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f45294i = immersionActivity;
            this.f45295j = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f45294i, this.f45295j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f45293h == 0) {
                f.b(obj);
                ((PlayerViewModel) this.f45294i.f45278v.getValue()).M(new b.a(this.f45295j));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionActivity$addPreloadStrategyResources$1(ImmersionActivity immersionActivity, List<BaseEpisode> list, c<? super ImmersionActivity$addPreloadStrategyResources$1> cVar) {
        super(2, cVar);
        this.f45291i = immersionActivity;
        this.f45292j = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ImmersionActivity$addPreloadStrategyResources$1(this.f45291i, this.f45292j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ImmersionActivity$addPreloadStrategyResources$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List o52;
        Object f10 = a.f();
        int i10 = this.f45290h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            o52 = this.f45291i.o5(this.f45292j);
            if (!o52.isEmpty()) {
                j1 c10 = q0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f45291i, o52, null);
                this.f45290h = 1;
                if (e.g(c10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
