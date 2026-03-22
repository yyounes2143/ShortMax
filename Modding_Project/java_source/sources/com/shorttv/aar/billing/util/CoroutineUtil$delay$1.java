package com.shorttv.aar.billing.util;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import kt.c;
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.shorttv.aar.billing.util.CoroutineUtil$delay$1", f = "CoroutineUtil.kt", l = {68, 69}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class CoroutineUtil$delay$1 extends SuspendLambda implements Function2<c<? super Integer>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37031h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f37032i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ long f37033j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$delay$1(long j10, rs.c<? super CoroutineUtil$delay$1> cVar) {
        super(2, cVar);
        this.f37033j = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        CoroutineUtil$delay$1 coroutineUtil$delay$1 = new CoroutineUtil$delay$1(this.f37033j, cVar);
        coroutineUtil$delay$1.f37032i = obj;
        return coroutineUtil$delay$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f37031h;
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
            Integer d10 = kotlin.coroutines.jvm.internal.a.d(0);
            this.f37031h = 1;
            if (((c) this.f37032i).emit(d10, this) == f10) {
                return f10;
            }
        }
        long j10 = this.f37033j;
        this.f37031h = 2;
        if (DelayKt.b(j10, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(c<? super Integer> cVar, rs.c<? super Unit> cVar2) {
        return ((CoroutineUtil$delay$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
