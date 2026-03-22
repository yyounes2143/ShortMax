package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Distinct.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DistinctFlowImpl$collect$2<T> implements kt.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ DistinctFlowImpl<T> f61413a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f61414b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61415c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public DistinctFlowImpl$collect$2(DistinctFlowImpl<T> distinctFlowImpl, Ref.ObjectRef<Object> objectRef, kt.c<? super T> cVar) {
        this.f61413a = distinctFlowImpl;
        this.f61414b = objectRef;
        this.f61415c = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kt.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = (kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1) r0
            int r1 = r0.f61418j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61418j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = new kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f61416h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61418j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)
            goto L67
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r7)
            kotlinx.coroutines.flow.DistinctFlowImpl<T> r7 = r5.f61413a
            kotlin.jvm.functions.Function1<T, java.lang.Object> r7 = r7.f61411b
            java.lang.Object r7 = r7.invoke(r6)
            kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r2 = r5.f61414b
            T r2 = r2.element
            mt.a0 r4 = lt.i.f62309a
            if (r2 == r4) goto L58
            kotlinx.coroutines.flow.DistinctFlowImpl<T> r4 = r5.f61413a
            kotlin.jvm.functions.Function2<java.lang.Object, java.lang.Object, java.lang.Boolean> r4 = r4.f61412c
            java.lang.Object r2 = r4.invoke(r2, r7)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L55
            goto L58
        L55:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L58:
            kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r2 = r5.f61414b
            r2.element = r7
            kt.c<T> r7 = r5.f61415c
            r0.f61418j = r3
            java.lang.Object r6 = r7.emit(r6, r0)
            if (r6 != r1) goto L67
            return r1
        L67:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.DistinctFlowImpl$collect$2.emit(java.lang.Object, rs.c):java.lang.Object");
    }
}
