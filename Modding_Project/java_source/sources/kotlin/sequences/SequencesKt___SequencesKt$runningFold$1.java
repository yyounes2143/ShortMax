package kotlin.sequences;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: _Sequences.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFold$1", f = "_Sequences.kt", l = {2311, 2315}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class SequencesKt___SequencesKt$runningFold$1<R> extends RestrictedSuspendLambda implements Function2<i<? super R>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f61095h;

    /* renamed from: i  reason: collision with root package name */
    Object f61096i;

    /* renamed from: j  reason: collision with root package name */
    int f61097j;

    /* renamed from: k  reason: collision with root package name */
    private /* synthetic */ Object f61098k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ R f61099l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Sequence<T> f61100m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ Function2<R, T, R> f61101n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SequencesKt___SequencesKt$runningFold$1(R r10, Sequence<? extends T> sequence, Function2<? super R, ? super T, ? extends R> function2, rs.c<? super SequencesKt___SequencesKt$runningFold$1> cVar) {
        super(2, cVar);
        this.f61099l = r10;
        this.f61100m = sequence;
        this.f61101n = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        SequencesKt___SequencesKt$runningFold$1 sequencesKt___SequencesKt$runningFold$1 = new SequencesKt___SequencesKt$runningFold$1(this.f61099l, this.f61100m, this.f61101n, cVar);
        sequencesKt___SequencesKt$runningFold$1.f61098k = obj;
        return sequencesKt___SequencesKt$runningFold$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((i) ((i) obj), cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0068 -> B:7:0x001b). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f61097j
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2d
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            java.lang.Object r1 = r6.f61096i
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r3 = r6.f61095h
            java.lang.Object r4 = r6.f61098k
            kotlin.sequences.i r4 = (kotlin.sequences.i) r4
            kotlin.f.b(r7)
        L1b:
            r7 = r3
            goto L4c
        L1d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L25:
            java.lang.Object r1 = r6.f61098k
            kotlin.sequences.i r1 = (kotlin.sequences.i) r1
            kotlin.f.b(r7)
            goto L42
        L2d:
            kotlin.f.b(r7)
            java.lang.Object r7 = r6.f61098k
            r1 = r7
            kotlin.sequences.i r1 = (kotlin.sequences.i) r1
            R r7 = r6.f61099l
            r6.f61098k = r1
            r6.f61097j = r3
            java.lang.Object r7 = r1.a(r7, r6)
            if (r7 != r0) goto L42
            return r0
        L42:
            R r7 = r6.f61099l
            kotlin.sequences.Sequence<T> r3 = r6.f61100m
            java.util.Iterator r3 = r3.iterator()
            r4 = r1
            r1 = r3
        L4c:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L6b
            java.lang.Object r3 = r1.next()
            kotlin.jvm.functions.Function2<R, T, R> r5 = r6.f61101n
            java.lang.Object r3 = r5.invoke(r7, r3)
            r6.f61098k = r4
            r6.f61095h = r3
            r6.f61096i = r1
            r6.f61097j = r2
            java.lang.Object r7 = r4.a(r3, r6)
            if (r7 != r0) goto L1b
            return r0
        L6b:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt___SequencesKt$runningFold$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invoke(i<? super R> iVar, rs.c<? super Unit> cVar) {
        return ((SequencesKt___SequencesKt$runningFold$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
