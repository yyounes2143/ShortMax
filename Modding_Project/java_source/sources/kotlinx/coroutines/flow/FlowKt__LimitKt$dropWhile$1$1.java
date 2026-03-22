package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
/* compiled from: Limit.kt */
@Metadata
/* loaded from: classes8.dex */
final class FlowKt__LimitKt$dropWhile$1$1<T> implements kt.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f61526a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61527b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function2<T, rs.c<? super Boolean>, Object> f61528c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$dropWhile$1$1(Ref.BooleanRef booleanRef, kt.c<? super T> cVar, Function2<? super T, ? super rs.c<? super Boolean>, ? extends Object> function2) {
        this.f61526a = booleanRef;
        this.f61527b = cVar;
        this.f61528c = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008b  */
    @Override // kt.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r7, rs.c<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1) r0
            int r1 = r0.f61533l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61533l = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f61531j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61533l
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L45
            if (r2 == r5) goto L41
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            goto L88
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            java.lang.Object r7 = r0.f61530i
            java.lang.Object r2 = r0.f61529h
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1 r2 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1) r2
            kotlin.f.b(r8)
            goto L6c
        L41:
            kotlin.f.b(r8)
            goto L59
        L45:
            kotlin.f.b(r8)
            kotlin.jvm.internal.Ref$BooleanRef r8 = r6.f61526a
            boolean r8 = r8.element
            if (r8 == 0) goto L5c
            kt.c<T> r8 = r6.f61527b
            r0.f61533l = r5
            java.lang.Object r7 = r8.emit(r7, r0)
            if (r7 != r1) goto L59
            return r1
        L59:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L5c:
            kotlin.jvm.functions.Function2<T, rs.c<? super java.lang.Boolean>, java.lang.Object> r8 = r6.f61528c
            r0.f61529h = r6
            r0.f61530i = r7
            r0.f61533l = r4
            java.lang.Object r8 = r8.invoke(r7, r0)
            if (r8 != r1) goto L6b
            return r1
        L6b:
            r2 = r6
        L6c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L8b
            kotlin.jvm.internal.Ref$BooleanRef r8 = r2.f61526a
            r8.element = r5
            kt.c<T> r8 = r2.f61527b
            r2 = 0
            r0.f61529h = r2
            r0.f61530i = r2
            r0.f61533l = r3
            java.lang.Object r7 = r8.emit(r7, r0)
            if (r7 != r1) goto L88
            return r1
        L88:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L8b:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1.emit(java.lang.Object, rs.c):java.lang.Object");
    }
}
