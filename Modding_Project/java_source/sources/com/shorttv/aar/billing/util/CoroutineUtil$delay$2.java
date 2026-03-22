package com.shorttv.aar.billing.util;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.r;
import kt.c;
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.shorttv.aar.billing.util.CoroutineUtil$delay$2", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class CoroutineUtil$delay$2 extends SuspendLambda implements n<c<? super Integer>, Throwable, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37034h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<r> f37035i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f37036j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$delay$2(Ref.ObjectRef<r> objectRef, Function0<Unit> function0, rs.c<? super CoroutineUtil$delay$2> cVar) {
        super(3, cVar);
        this.f37035i = objectRef;
        this.f37036j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        r rVar;
        Function0<Unit> function0;
        a.f();
        if (this.f37034h == 0) {
            f.b(obj);
            r rVar2 = this.f37035i.element;
            if (rVar2 != null && (rVar = rVar2) != null && !rVar.isCancelled() && (function0 = this.f37036j) != null) {
                function0.invoke();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public final Object invoke(c<? super Integer> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
        return new CoroutineUtil$delay$2(this.f37035i, this.f37036j, cVar2).invokeSuspend(Unit.f60915a);
    }
}
