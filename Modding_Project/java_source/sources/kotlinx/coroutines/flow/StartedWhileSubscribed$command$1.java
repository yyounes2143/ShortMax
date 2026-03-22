package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
/* compiled from: SharingStarted.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", l = {174, 176, 178, 179, 181}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements at.n<kt.c<? super SharingCommand>, Integer, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61665h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61666i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ int f61667j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ StartedWhileSubscribed f61668k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, rs.c<? super StartedWhileSubscribed$command$1> cVar) {
        super(3, cVar);
        this.f61668k = startedWhileSubscribed;
    }

    public final Object i(kt.c<? super SharingCommand> cVar, int i10, rs.c<? super Unit> cVar2) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.f61668k, cVar2);
        startedWhileSubscribed$command$1.f61666i = cVar;
        startedWhileSubscribed$command$1.f61667j = i10;
        return startedWhileSubscribed$command$1.invokeSuspend(Unit.f60915a);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(kt.c<? super SharingCommand> cVar, Integer num, rs.c<? super Unit> cVar2) {
        return i(cVar, num.intValue(), cVar2);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009b A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r9.f61665h
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L3c
            if (r1 == r6) goto L38
            if (r1 == r5) goto L30
            if (r1 == r4) goto L28
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            goto L38
        L18:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L20:
            java.lang.Object r1 = r9.f61666i
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r10)
            goto L8e
        L28:
            java.lang.Object r1 = r9.f61666i
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r10)
            goto L7d
        L30:
            java.lang.Object r1 = r9.f61666i
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r10)
            goto L64
        L38:
            kotlin.f.b(r10)
            goto L9c
        L3c:
            kotlin.f.b(r10)
            java.lang.Object r10 = r9.f61666i
            r1 = r10
            kt.c r1 = (kt.c) r1
            int r10 = r9.f61667j
            if (r10 <= 0) goto L53
            kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.START
            r9.f61665h = r6
            java.lang.Object r10 = r1.emit(r10, r9)
            if (r10 != r0) goto L9c
            return r0
        L53:
            kotlinx.coroutines.flow.StartedWhileSubscribed r10 = r9.f61668k
            long r6 = kotlinx.coroutines.flow.StartedWhileSubscribed.c(r10)
            r9.f61666i = r1
            r9.f61665h = r5
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.b(r6, r9)
            if (r10 != r0) goto L64
            return r0
        L64:
            kotlinx.coroutines.flow.StartedWhileSubscribed r10 = r9.f61668k
            long r5 = kotlinx.coroutines.flow.StartedWhileSubscribed.b(r10)
            r7 = 0
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 <= 0) goto L8e
            kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.STOP
            r9.f61666i = r1
            r9.f61665h = r4
            java.lang.Object r10 = r1.emit(r10, r9)
            if (r10 != r0) goto L7d
            return r0
        L7d:
            kotlinx.coroutines.flow.StartedWhileSubscribed r10 = r9.f61668k
            long r4 = kotlinx.coroutines.flow.StartedWhileSubscribed.b(r10)
            r9.f61666i = r1
            r9.f61665h = r3
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.b(r4, r9)
            if (r10 != r0) goto L8e
            return r0
        L8e:
            kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            r3 = 0
            r9.f61666i = r3
            r9.f61665h = r2
            java.lang.Object r10 = r1.emit(r10, r9)
            if (r10 != r0) goto L9c
            return r0
        L9c:
            kotlin.Unit r10 = kotlin.Unit.f60915a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
