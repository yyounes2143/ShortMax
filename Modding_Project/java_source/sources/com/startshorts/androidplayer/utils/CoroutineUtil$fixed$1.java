package com.startshorts.androidplayer.utils;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$fixed$1", f = "CoroutineUtil.kt", l = {166, 167}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCoroutineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,212:1\n375#2:213\n*S KotlinDebug\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1\n*L\n165#1:213\n*E\n"})
/* loaded from: classes7.dex */
public final class CoroutineUtil$fixed$1 extends SuspendLambda implements Function2<c<? super Integer>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48126h;

    /* renamed from: i  reason: collision with root package name */
    int f48127i;

    /* renamed from: j  reason: collision with root package name */
    private /* synthetic */ Object f48128j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ long f48129k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$fixed$1(long j10, rs.c<? super CoroutineUtil$fixed$1> cVar) {
        super(2, cVar);
        this.f48129k = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        CoroutineUtil$fixed$1 coroutineUtil$fixed$1 = new CoroutineUtil$fixed$1(this.f48129k, cVar);
        coroutineUtil$fixed$1.f48128j = obj;
        return coroutineUtil$fixed$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0061 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x005f -> B:7:0x0017). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f48127i
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2b
            if (r1 == r3) goto L21
            if (r1 != r2) goto L19
            int r1 = r6.f48126h
            java.lang.Object r4 = r6.f48128j
            kt.c r4 = (kt.c) r4
            kotlin.f.b(r7)
        L17:
            r7 = r4
            goto L62
        L19:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L21:
            int r1 = r6.f48126h
            java.lang.Object r4 = r6.f48128j
            kt.c r4 = (kt.c) r4
            kotlin.f.b(r7)
            goto L51
        L2b:
            kotlin.f.b(r7)
            java.lang.Object r7 = r6.f48128j
            kt.c r7 = (kt.c) r7
            r1 = 2147483647(0x7fffffff, float:NaN)
        L35:
            kotlin.coroutines.CoroutineContext r4 = r6.getContext()
            boolean r4 = kotlinx.coroutines.t.p(r4)
            if (r4 == 0) goto L65
            if (r1 < 0) goto L65
            long r4 = r6.f48129k
            r6.f48128j = r7
            r6.f48126h = r1
            r6.f48127i = r3
            java.lang.Object r4 = kotlinx.coroutines.DelayKt.b(r4, r6)
            if (r4 != r0) goto L50
            return r0
        L50:
            r4 = r7
        L51:
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.a.d(r1)
            r6.f48128j = r4
            r6.f48126h = r1
            r6.f48127i = r2
            java.lang.Object r7 = r4.emit(r7, r6)
            if (r7 != r0) goto L17
            return r0
        L62:
            int r1 = r1 + (-1)
            goto L35
        L65:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.CoroutineUtil$fixed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(c<? super Integer> cVar, rs.c<? super Unit> cVar2) {
        return ((CoroutineUtil$fixed$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
