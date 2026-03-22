package com.startshorts.androidplayer.utils;

import com.startshorts.androidplayer.log.Logger;
import gt.e;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$delay$3", f = "CoroutineUtil.kt", l = {147, 148}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$delay$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48113h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f48114i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CoroutineContext f48115j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f48116k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineUtil.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$delay$3$1", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.utils.CoroutineUtil$delay$3$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f48117h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f48118i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f48118i = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f48118i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f48117h == 0) {
                f.b(obj);
                Function0<Unit> function0 = this.f48118i;
                if (function0 != null) {
                    function0.invoke();
                    return Unit.f60915a;
                }
                return null;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$delay$3(long j10, CoroutineContext coroutineContext, Function0<Unit> function0, c<? super CoroutineUtil$delay$3> cVar) {
        super(2, cVar);
        this.f48114i = j10;
        this.f48115j = coroutineContext;
        this.f48116k = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CoroutineUtil$delay$3(this.f48114i, this.f48115j, this.f48116k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CoroutineUtil$delay$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48113h;
        try {
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("CoroutineUtil", "delay exception -> " + e10);
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    Unit unit = (Unit) obj;
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            long j10 = this.f48114i;
            this.f48113h = 1;
            if (DelayKt.b(j10, this) == f10) {
                return f10;
            }
        }
        CoroutineContext coroutineContext = this.f48115j;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48116k, null);
        this.f48113h = 2;
        obj = e.g(coroutineContext, anonymousClass1, this);
        if (obj == f10) {
            return f10;
        }
        Unit unit2 = (Unit) obj;
        return Unit.f60915a;
    }
}
