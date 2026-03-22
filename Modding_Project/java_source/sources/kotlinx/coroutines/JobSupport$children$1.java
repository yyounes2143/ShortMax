package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: JobSupport.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {1003, 1005}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1583:1\n273#2,6:1584\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n1005#1:1584,6\n*E\n"})
/* loaded from: classes8.dex */
final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<kotlin.sequences.i<? super r>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f61293h;

    /* renamed from: i  reason: collision with root package name */
    Object f61294i;

    /* renamed from: j  reason: collision with root package name */
    int f61295j;

    /* renamed from: k  reason: collision with root package name */
    private /* synthetic */ Object f61296k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ JobSupport f61297l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(JobSupport jobSupport, rs.c<? super JobSupport$children$1> cVar) {
        super(2, cVar);
        this.f61297l = jobSupport;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.f61297l, cVar);
        jobSupport$children$1.f61296k = obj;
        return jobSupport$children$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006b -> B:27:0x0081). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007e -> B:27:0x0081). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f61295j
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2a
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1e
            java.lang.Object r1 = r6.f61294i
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            java.lang.Object r3 = r6.f61293h
            mt.m r3 = (mt.m) r3
            java.lang.Object r4 = r6.f61296k
            kotlin.sequences.i r4 = (kotlin.sequences.i) r4
            kotlin.f.b(r7)
            goto L81
        L1e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L26:
            kotlin.f.b(r7)
            goto L86
        L2a:
            kotlin.f.b(r7)
            java.lang.Object r7 = r6.f61296k
            kotlin.sequences.i r7 = (kotlin.sequences.i) r7
            kotlinx.coroutines.JobSupport r1 = r6.f61297l
            java.lang.Object r1 = r1.e0()
            boolean r4 = r1 instanceof kotlinx.coroutines.g
            if (r4 == 0) goto L48
            kotlinx.coroutines.g r1 = (kotlinx.coroutines.g) r1
            gt.o r1 = r1.f61811e
            r6.f61295j = r3
            java.lang.Object r7 = r7.a(r1, r6)
            if (r7 != r0) goto L86
            return r0
        L48:
            boolean r3 = r1 instanceof gt.f1
            if (r3 == 0) goto L86
            gt.f1 r1 = (gt.f1) r1
            gt.k1 r1 = r1.b()
            if (r1 == 0) goto L86
            java.lang.Object r3 = r1.j()
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r4)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r4 = r7
            r5 = r3
            r3 = r1
            r1 = r5
        L63:
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r7 != 0) goto L86
            boolean r7 = r1 instanceof kotlinx.coroutines.g
            if (r7 == 0) goto L81
            r7 = r1
            kotlinx.coroutines.g r7 = (kotlinx.coroutines.g) r7
            gt.o r7 = r7.f61811e
            r6.f61296k = r4
            r6.f61293h = r3
            r6.f61294i = r1
            r6.f61295j = r2
            java.lang.Object r7 = r4.a(r7, r6)
            if (r7 != r0) goto L81
            return r0
        L81:
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = r1.k()
            goto L63
        L86:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlin.sequences.i<? super r> iVar, rs.c<? super Unit> cVar) {
        return ((JobSupport$children$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
