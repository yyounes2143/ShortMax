package com.startshorts.androidplayer.utils;

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
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$fixed$2", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$fixed$2 extends SuspendLambda implements Function2<Integer, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48130h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ int f48131i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<Integer, Unit> f48132j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineUtil$fixed$2(Function1<? super Integer, Unit> function1, c<? super CoroutineUtil$fixed$2> cVar) {
        super(2, cVar);
        this.f48132j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        CoroutineUtil$fixed$2 coroutineUtil$fixed$2 = new CoroutineUtil$fixed$2(this.f48132j, cVar);
        coroutineUtil$fixed$2.f48131i = ((Number) obj).intValue();
        return coroutineUtil$fixed$2;
    }

    public final Object invoke(int i10, c<? super Unit> cVar) {
        return ((CoroutineUtil$fixed$2) create(Integer.valueOf(i10), cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48130h == 0) {
            f.b(obj);
            int i10 = this.f48131i;
            Function1<Integer, Unit> function1 = this.f48132j;
            if (function1 != null) {
                function1.invoke(kotlin.coroutines.jvm.internal.a.d(i10));
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Integer num, c<? super Unit> cVar) {
        return invoke(num.intValue(), cVar);
    }
}
