package com.startshorts.androidplayer.ui.activity.immersion;

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
/* compiled from: ImmersionActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$updatePreloadStrategyResources$1", f = "ImmersionActivity.kt", l = {2806}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionActivity$updatePreloadStrategyResources$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45374h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionActivity f45375i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionActivity.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$updatePreloadStrategyResources$1$1", f = "ImmersionActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$updatePreloadStrategyResources$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45376h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ImmersionActivity f45377i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ List<StrategySource> f45378j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ImmersionActivity immersionActivity, List<StrategySource> list, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f45377i = immersionActivity;
            this.f45378j = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f45377i, this.f45378j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f45376h == 0) {
                f.b(obj);
                ((PlayerViewModel) this.f45377i.f45278v.getValue()).M(new b.j(this.f45378j));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionActivity$updatePreloadStrategyResources$1(ImmersionActivity immersionActivity, c<? super ImmersionActivity$updatePreloadStrategyResources$1> cVar) {
        super(2, cVar);
        this.f45375i = immersionActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ImmersionActivity$updatePreloadStrategyResources$1(this.f45375i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ImmersionActivity$updatePreloadStrategyResources$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List o52;
        Object f10 = a.f();
        int i10 = this.f45374h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            List I5 = this.f45375i.I5();
            if (I5 != null) {
                o52 = this.f45375i.o5(I5);
                if (!o52.isEmpty()) {
                    j1 c10 = q0.c();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f45375i, o52, null);
                    this.f45374h = 1;
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
