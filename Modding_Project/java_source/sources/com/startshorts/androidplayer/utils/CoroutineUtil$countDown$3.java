package com.startshorts.androidplayer.utils;

import at.n;
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
import kt.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$3", f = "CoroutineUtil.kt", l = {92}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$3 extends SuspendLambda implements n<c<? super Integer>, Throwable, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48086h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f48087i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f48088j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineUtil.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$3$1", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.utils.CoroutineUtil$countDown$3$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f48089h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f48090i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f48090i = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f48090i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f48089h == 0) {
                f.b(obj);
                Function0<Unit> function0 = this.f48090i;
                if (function0 != null) {
                    function0.invoke();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$countDown$3(Function0<Unit> function0, rs.c<? super CoroutineUtil$countDown$3> cVar) {
        super(3, cVar);
        this.f48088j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48086h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (((Throwable) this.f48087i) == null) {
                j1 m10 = q0.c().m();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48088j, null);
                this.f48086h = 1;
                if (e.g(m10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }

    @Override // at.n
    public final Object invoke(c<? super Integer> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
        CoroutineUtil$countDown$3 coroutineUtil$countDown$3 = new CoroutineUtil$countDown$3(this.f48088j, cVar2);
        coroutineUtil$countDown$3.f48087i = th2;
        return coroutineUtil$countDown$3.invokeSuspend(Unit.f60915a);
    }
}
