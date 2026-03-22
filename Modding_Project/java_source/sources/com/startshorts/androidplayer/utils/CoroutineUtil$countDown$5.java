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
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$5", f = "CoroutineUtil.kt", l = {110, 111, 114}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$5 extends SuspendLambda implements Function2<c<? super Long>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    long f48093h;

    /* renamed from: i  reason: collision with root package name */
    int f48094i;

    /* renamed from: j  reason: collision with root package name */
    private /* synthetic */ Object f48095j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ long f48096k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ long f48097l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$countDown$5(long j10, long j11, rs.c<? super CoroutineUtil$countDown$5> cVar) {
        super(2, cVar);
        this.f48096k = j10;
        this.f48097l = j11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        CoroutineUtil$countDown$5 coroutineUtil$countDown$5 = new CoroutineUtil$countDown$5(this.f48096k, this.f48097l, cVar);
        coroutineUtil$countDown$5.f48095j = obj;
        return coroutineUtil$countDown$5;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x005f -> B:11:0x0026). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r9.f48094i
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L32
            if (r1 == r4) goto L28
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            kotlin.f.b(r10)
            goto L76
        L15:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1d:
            long r5 = r9.f48093h
            java.lang.Object r1 = r9.f48095j
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r10)
        L26:
            r10 = r1
            goto L62
        L28:
            long r5 = r9.f48093h
            java.lang.Object r1 = r9.f48095j
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r10)
            goto L53
        L32:
            kotlin.f.b(r10)
            java.lang.Object r10 = r9.f48095j
            kt.c r10 = (kt.c) r10
            long r5 = r9.f48096k
        L3b:
            r7 = 0
            int r1 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r1 <= 0) goto L66
            java.lang.Long r1 = kotlin.coroutines.jvm.internal.a.e(r5)
            r9.f48095j = r10
            r9.f48093h = r5
            r9.f48094i = r4
            java.lang.Object r1 = r10.emit(r1, r9)
            if (r1 != r0) goto L52
            return r0
        L52:
            r1 = r10
        L53:
            long r7 = r9.f48097l
            r9.f48095j = r1
            r9.f48093h = r5
            r9.f48094i = r3
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.b(r7, r9)
            if (r10 != r0) goto L26
            return r0
        L62:
            long r7 = r9.f48097l
            long r5 = r5 - r7
            goto L3b
        L66:
            java.lang.Long r1 = kotlin.coroutines.jvm.internal.a.e(r7)
            r3 = 0
            r9.f48095j = r3
            r9.f48094i = r2
            java.lang.Object r10 = r10.emit(r1, r9)
            if (r10 != r0) goto L76
            return r0
        L76:
            kotlin.Unit r10 = kotlin.Unit.f60915a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.CoroutineUtil$countDown$5.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(c<? super Long> cVar, rs.c<? super Unit> cVar2) {
        return ((CoroutineUtil$countDown$5) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
