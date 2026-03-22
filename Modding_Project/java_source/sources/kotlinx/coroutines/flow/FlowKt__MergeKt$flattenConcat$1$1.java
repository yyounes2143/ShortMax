package kotlinx.coroutines.flow;

import kotlin.Metadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Merge.kt */
@Metadata
/* loaded from: classes8.dex */
public final class FlowKt__MergeKt$flattenConcat$1$1<T> implements kt.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61558a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__MergeKt$flattenConcat$1$1(kt.c<? super T> cVar) {
        this.f61558a = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kt.c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(kt.b<? extends T> r5, rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1) r0
            int r1 = r0.f61561j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61561j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f61559h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61561j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r6)
            kt.c<T> r6 = r4.f61558a
            r0.f61561j = r3
            java.lang.Object r5 = kotlinx.coroutines.flow.c.u(r6, r5, r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1.emit(kt.b, rs.c):java.lang.Object");
    }
}
