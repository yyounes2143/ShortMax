package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,108:1\n83#2:109\n124#2,17:110\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n83#1:110,17\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1<T> implements kt.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ kt.b f61505a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function2 f61506b;

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", f = "Limit.kt", l = {120}, m = "collect")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        /* synthetic */ Object f61507h;

        /* renamed from: i  reason: collision with root package name */
        int f61508i;

        /* renamed from: k  reason: collision with root package name */
        Object f61510k;

        public AnonymousClass1(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f61507h = obj;
            this.f61508i |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(kt.b bVar, Function2 function2) {
        this.f61505a = bVar;
        this.f61506b = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    @Override // kt.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kt.c<? super T> r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f61508i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61508i = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f61507h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61508i
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r6 = r0.f61510k
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 r6 = (kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) r6
            kotlin.f.b(r7)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2d
            goto L5a
        L2d:
            r7 = move-exception
            goto L50
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            kt.b r7 = r5.f61505a
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 r2 = new kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1
            kotlin.jvm.functions.Function2 r4 = r5.f61506b
            r2.<init>(r4, r6)
            r0.f61510k = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4e
            r0.f61508i = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4e
            java.lang.Object r6 = r7.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4e
            if (r6 != r1) goto L5a
            return r1
        L4e:
            r7 = move-exception
            r6 = r2
        L50:
            lt.f.a(r7, r6)
            kotlin.coroutines.CoroutineContext r6 = r0.getContext()
            kotlinx.coroutines.t.k(r6)
        L5a:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.collect(kt.c, rs.c):java.lang.Object");
    }
}
