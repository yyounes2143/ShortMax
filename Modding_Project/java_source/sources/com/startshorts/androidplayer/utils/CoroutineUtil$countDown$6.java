package com.startshorts.androidplayer.utils;

import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$6", f = "CoroutineUtil.kt", l = {118}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$6 extends SuspendLambda implements Function2<Long, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48098h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ long f48099i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<Long, Unit> f48100j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineUtil.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$6$1", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.utils.CoroutineUtil$countDown$6$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f48101h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function1<Long, Unit> f48102i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ long f48103j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super Long, Unit> function1, long j10, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f48102i = function1;
            this.f48103j = j10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f48102i, this.f48103j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f48101h == 0) {
                f.b(obj);
                Function1<Long, Unit> function1 = this.f48102i;
                if (function1 != null) {
                    function1.invoke(kotlin.coroutines.jvm.internal.a.e(this.f48103j));
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineUtil$countDown$6(Function1<? super Long, Unit> function1, c<? super CoroutineUtil$countDown$6> cVar) {
        super(2, cVar);
        this.f48100j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        CoroutineUtil$countDown$6 coroutineUtil$countDown$6 = new CoroutineUtil$countDown$6(this.f48100j, cVar);
        coroutineUtil$countDown$6.f48099i = ((Number) obj).longValue();
        return coroutineUtil$countDown$6;
    }

    public final Object i(long j10, c<? super Unit> cVar) {
        return ((CoroutineUtil$countDown$6) create(Long.valueOf(j10), cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Long l10, c<? super Unit> cVar) {
        return i(l10.longValue(), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48098h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            long j10 = this.f48099i;
            j1 m10 = q0.c().m();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48100j, j10, null);
            this.f48098h = 1;
            if (e.g(m10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
