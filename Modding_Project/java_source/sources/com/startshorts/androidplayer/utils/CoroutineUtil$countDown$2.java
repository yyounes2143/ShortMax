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
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$2", f = "CoroutineUtil.kt", l = {85}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$2 extends SuspendLambda implements Function2<Integer, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48080h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ int f48081i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<Integer, Unit> f48082j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineUtil.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$2$1", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.utils.CoroutineUtil$countDown$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f48083h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function1<Integer, Unit> f48084i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f48085j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super Integer, Unit> function1, int i10, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f48084i = function1;
            this.f48085j = i10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f48084i, this.f48085j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f48083h == 0) {
                f.b(obj);
                Function1<Integer, Unit> function1 = this.f48084i;
                if (function1 != null) {
                    function1.invoke(kotlin.coroutines.jvm.internal.a.d(this.f48085j));
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineUtil$countDown$2(Function1<? super Integer, Unit> function1, c<? super CoroutineUtil$countDown$2> cVar) {
        super(2, cVar);
        this.f48082j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        CoroutineUtil$countDown$2 coroutineUtil$countDown$2 = new CoroutineUtil$countDown$2(this.f48082j, cVar);
        coroutineUtil$countDown$2.f48081i = ((Number) obj).intValue();
        return coroutineUtil$countDown$2;
    }

    public final Object invoke(int i10, c<? super Unit> cVar) {
        return ((CoroutineUtil$countDown$2) create(Integer.valueOf(i10), cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48080h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            int i11 = this.f48081i;
            j1 m10 = q0.c().m();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48082j, i11, null);
            this.f48080h = 1;
            if (e.g(m10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Integer num, c<? super Unit> cVar) {
        return invoke(num.intValue(), cVar);
    }
}
