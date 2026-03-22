package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Context.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/CancellableFlowImpl$collect$2\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,288:1\n375#2:289\n*S KotlinDebug\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/CancellableFlowImpl$collect$2\n*L\n277#1:289\n*E\n"})
/* loaded from: classes8.dex */
public final class CancellableFlowImpl$collect$2<T> implements kt.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61406a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public CancellableFlowImpl$collect$2(kt.c<? super T> cVar) {
        this.f61406a = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kt.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r5, rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.CancellableFlowImpl$collect$2$emit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.CancellableFlowImpl$collect$2$emit$1 r0 = (kotlinx.coroutines.flow.CancellableFlowImpl$collect$2$emit$1) r0
            int r1 = r0.f61409j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61409j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.CancellableFlowImpl$collect$2$emit$1 r0 = new kotlinx.coroutines.flow.CancellableFlowImpl$collect$2$emit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f61407h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61409j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L46
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r6)
            kotlin.coroutines.CoroutineContext r6 = r0.getContext()
            kotlinx.coroutines.t.k(r6)
            kt.c<T> r6 = r4.f61406a
            r0.f61409j = r3
            java.lang.Object r5 = r6.emit(r5, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.CancellableFlowImpl$collect$2.emit(java.lang.Object, rs.c):java.lang.Object");
    }
}
