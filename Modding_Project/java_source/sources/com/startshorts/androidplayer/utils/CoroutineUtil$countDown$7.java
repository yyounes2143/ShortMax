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
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$7", f = "CoroutineUtil.kt", l = {122}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$7 extends SuspendLambda implements n<c<? super Long>, Throwable, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48104h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f48105i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f48106j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineUtil.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$7$1", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.utils.CoroutineUtil$countDown$7$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f48107h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f48108i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f48108i = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f48108i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f48107h == 0) {
                f.b(obj);
                Function0<Unit> function0 = this.f48108i;
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
    public CoroutineUtil$countDown$7(Function0<Unit> function0, rs.c<? super CoroutineUtil$countDown$7> cVar) {
        super(3, cVar);
        this.f48106j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48104h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (((Throwable) this.f48105i) == null) {
                j1 m10 = q0.c().m();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48106j, null);
                this.f48104h = 1;
                if (e.g(m10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }

    @Override // at.n
    public final Object invoke(c<? super Long> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
        CoroutineUtil$countDown$7 coroutineUtil$countDown$7 = new CoroutineUtil$countDown$7(this.f48106j, cVar2);
        coroutineUtil$countDown$7.f48105i = th2;
        return coroutineUtil$countDown$7.invokeSuspend(Unit.f60915a);
    }
}
