package com.startshorts.androidplayer.ui.view.act;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.ui.view.act.ActAppOpenView;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActAppOpenView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.act.ActAppOpenView$showActInOpenScreen$1", f = "ActAppOpenView.kt", l = {160, 161}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ActAppOpenView$showActInOpenScreen$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46989h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActResource f46990i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ActAppOpenView f46991j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f46992k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActAppOpenView.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.view.act.ActAppOpenView$showActInOpenScreen$1$1", f = "ActAppOpenView.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.view.act.ActAppOpenView$showActInOpenScreen$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46993h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ boolean f46994i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ ActAppOpenView f46995j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f46996k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, ActAppOpenView actAppOpenView, Function0<Unit> function0, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46994i = z10;
            this.f46995j = actAppOpenView;
            this.f46996k = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f46994i, this.f46995j, this.f46996k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f46993h == 0) {
                f.b(obj);
                if (this.f46994i) {
                    this.f46995j.O();
                } else {
                    this.f46996k.invoke();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActAppOpenView$showActInOpenScreen$1(ActResource actResource, ActAppOpenView actAppOpenView, Function0<Unit> function0, rs.c<? super ActAppOpenView$showActInOpenScreen$1> cVar) {
        super(2, cVar);
        this.f46990i = actResource;
        this.f46991j = actAppOpenView;
        this.f46992k = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ActAppOpenView$showActInOpenScreen$1(this.f46990i, this.f46991j, this.f46992k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ActAppOpenView$showActInOpenScreen$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f46989h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            ActAppOpenView.Companion companion = ActAppOpenView.f46961j;
            ActResource actResource = this.f46990i;
            this.f46989h = 1;
            obj = companion.b(actResource, this);
            if (obj == f10) {
                return f10;
            }
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        j1 c10 = q0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(booleanValue, this.f46991j, this.f46992k, null);
        this.f46989h = 2;
        if (e.g(c10, anonymousClass1, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
