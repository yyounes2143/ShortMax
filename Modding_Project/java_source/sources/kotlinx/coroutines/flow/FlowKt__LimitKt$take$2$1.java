package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata
/* loaded from: classes8.dex */
public final class FlowKt__LimitKt$take$2$1<T> implements kt.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f61537a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f61538b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61539c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Object f61540d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$take$2$1(Ref.IntRef intRef, int i10, kt.c<? super T> cVar, Object obj) {
        this.f61537a = intRef;
        this.f61538b = i10;
        this.f61539c = cVar;
        this.f61540d = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    @Override // kt.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1$emit$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1$emit$1) r0
            int r1 = r0.f61543j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61543j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1$emit$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f61541h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61543j
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L61
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            kotlin.f.b(r7)
            goto L51
        L38:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$IntRef r7 = r5.f61537a
            int r2 = r7.element
            int r2 = r2 + r4
            r7.element = r2
            int r7 = r5.f61538b
            if (r2 >= r7) goto L54
            kt.c<T> r7 = r5.f61539c
            r0.f61543j = r4
            java.lang.Object r6 = r7.emit(r6, r0)
            if (r6 != r1) goto L51
            return r1
        L51:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L54:
            kt.c<T> r7 = r5.f61539c
            java.lang.Object r2 = r5.f61540d
            r0.f61543j = r3
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt__LimitKt.a(r7, r6, r2, r0)
            if (r6 != r1) goto L61
            return r1
        L61:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1.emit(java.lang.Object, rs.c):java.lang.Object");
    }
}
