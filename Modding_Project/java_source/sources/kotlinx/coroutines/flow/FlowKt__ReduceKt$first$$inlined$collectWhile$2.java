package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Limit.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,131:1\n103#2,6:132\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__ReduceKt$first$$inlined$collectWhile$2<T> implements kt.c<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function2 f61566a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef f61567b;

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2", f = "Reduce.kt", l = {132}, m = "emit")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        Object f61568h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ Object f61569i;

        /* renamed from: j  reason: collision with root package name */
        int f61570j;

        /* renamed from: l  reason: collision with root package name */
        Object f61572l;

        public AnonymousClass1(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f61569i = obj;
            this.f61570j |= Integer.MIN_VALUE;
            return FlowKt__ReduceKt$first$$inlined$collectWhile$2.this.emit(null, this);
        }
    }

    public FlowKt__ReduceKt$first$$inlined$collectWhile$2(Function2 function2, Ref.ObjectRef objectRef) {
        this.f61566a = function2;
        this.f61567b = objectRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    @Override // kt.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(T r5, rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2.AnonymousClass1) r0
            int r1 = r0.f61570j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61570j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f61569i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61570j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r5 = r0.f61572l
            java.lang.Object r0 = r0.f61568h
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2) r0
            kotlin.f.b(r6)
            goto L52
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            kotlin.jvm.functions.Function2 r6 = r4.f61566a
            r0.f61568h = r4
            r0.f61572l = r5
            r0.f61570j = r3
            r2 = 6
            kotlin.jvm.internal.InlineMarker.mark(r2)
            java.lang.Object r6 = r6.invoke(r5, r0)
            r0 = 7
            kotlin.jvm.internal.InlineMarker.mark(r0)
            if (r6 != r1) goto L51
            return r1
        L51:
            r0 = r4
        L52:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 != 0) goto L5d
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        L5d:
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.f61567b
            r6.element = r5
            kotlinx.coroutines.flow.internal.AbortFlowException r5 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2.emit(java.lang.Object, rs.c):java.lang.Object");
    }
}
