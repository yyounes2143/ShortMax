package com.startshorts.androidplayer.ui.fragment.shorts.v2;

import com.ss.ttvideoengine.strategy.source.StrategySource;
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
@d(c = "com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment$updatePreloadStrategyResources$1", f = "ShortsFragment.kt", l = {2260}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ShortsFragment$updatePreloadStrategyResources$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46851h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortsFragment f46852i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ShortsFragment.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment$updatePreloadStrategyResources$1$1", f = "ShortsFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment$updatePreloadStrategyResources$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46853h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ShortsFragment f46854i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ List<StrategySource> f46855j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShortsFragment shortsFragment, List<StrategySource> list, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46854i = shortsFragment;
            this.f46855j = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f46854i, this.f46855j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f46853h == 0) {
                f.b(obj);
                ((PlayerViewModel) this.f46854i.R.getValue()).M(new b.j(this.f46855j));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsFragment$updatePreloadStrategyResources$1(ShortsFragment shortsFragment, c<? super ShortsFragment$updatePreloadStrategyResources$1> cVar) {
        super(2, cVar);
        this.f46852i = shortsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortsFragment$updatePreloadStrategyResources$1(this.f46852i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortsFragment$updatePreloadStrategyResources$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List h22;
        List W1;
        Object f10 = a.f();
        int i10 = this.f46851h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            h22 = this.f46852i.h2();
            if (h22 != null) {
                W1 = this.f46852i.W1(h22);
                if (!W1.isEmpty()) {
                    j1 c10 = q0.c();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f46852i, W1, null);
                    this.f46851h = 1;
                    if (e.g(c10, anonymousClass1, this) == f10) {
                        return f10;
                    }
                }
            } else {
                return Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }
}
