package com.startshorts.androidplayer.utils;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kt.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$1", f = "CoroutineUtil.kt", l = {79, 80}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$1 extends SuspendLambda implements Function2<c<? super Integer>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48076h;

    /* renamed from: i  reason: collision with root package name */
    int f48077i;

    /* renamed from: j  reason: collision with root package name */
    private /* synthetic */ Object f48078j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48079k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$countDown$1(int i10, rs.c<? super CoroutineUtil$countDown$1> cVar) {
        super(2, cVar);
        this.f48079k = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        CoroutineUtil$countDown$1 coroutineUtil$countDown$1 = new CoroutineUtil$countDown$1(this.f48079k, cVar);
        coroutineUtil$countDown$1.f48078j = obj;
        return coroutineUtil$countDown$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0048 -> B:20:0x0059). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0056 -> B:20:0x0059). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f48077i
            r2 = -1
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2b
            if (r1 == r4) goto L21
            if (r1 != r3) goto L19
            int r1 = r8.f48076h
            java.lang.Object r5 = r8.f48078j
            kt.c r5 = (kt.c) r5
            kotlin.f.b(r9)
            goto L59
        L19:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L21:
            int r1 = r8.f48076h
            java.lang.Object r5 = r8.f48078j
            kt.c r5 = (kt.c) r5
            kotlin.f.b(r9)
            goto L48
        L2b:
            kotlin.f.b(r9)
            java.lang.Object r9 = r8.f48078j
            kt.c r9 = (kt.c) r9
            int r1 = r8.f48079k
        L34:
            if (r2 >= r1) goto L5c
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.a.d(r1)
            r8.f48078j = r9
            r8.f48076h = r1
            r8.f48077i = r4
            java.lang.Object r5 = r9.emit(r5, r8)
            if (r5 != r0) goto L47
            return r0
        L47:
            r5 = r9
        L48:
            if (r1 == 0) goto L59
            r8.f48078j = r5
            r8.f48076h = r1
            r8.f48077i = r3
            r6 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r6, r8)
            if (r9 != r0) goto L59
            return r0
        L59:
            r9 = r5
            int r1 = r1 + r2
            goto L34
        L5c:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.CoroutineUtil$countDown$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(c<? super Integer> cVar, rs.c<? super Unit> cVar2) {
        return ((CoroutineUtil$countDown$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
