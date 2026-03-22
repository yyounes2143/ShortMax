package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Share.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,429:1\n375#2:430\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n420#1:430\n*E\n"})
/* loaded from: classes8.dex */
public final class SubscribedFlowCollector<T> implements kt.c<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kt.c<T> f61681a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function2<kt.c<? super T>, rs.c<? super Unit>, Object> f61682b;

    /* JADX WARN: Multi-variable type inference failed */
    public SubscribedFlowCollector(@NotNull kt.c<? super T> cVar, @NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        this.f61681a = cVar;
        this.f61682b = function2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007c  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1 r0 = (kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1) r0
            int r1 = r0.f61687l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61687l = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1 r0 = new kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f61685j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61687l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L79
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L34:
            java.lang.Object r2 = r0.f61684i
            kotlinx.coroutines.flow.internal.SafeCollector r2 = (kotlinx.coroutines.flow.internal.SafeCollector) r2
            java.lang.Object r4 = r0.f61683h
            kotlinx.coroutines.flow.SubscribedFlowCollector r4 = (kotlinx.coroutines.flow.SubscribedFlowCollector) r4
            kotlin.f.b(r7)     // Catch: java.lang.Throwable -> L40
            goto L60
        L40:
            r7 = move-exception
            goto L7f
        L42:
            kotlin.f.b(r7)
            kotlinx.coroutines.flow.internal.SafeCollector r2 = new kotlinx.coroutines.flow.internal.SafeCollector
            kt.c<T> r7 = r6.f61681a
            kotlin.coroutines.CoroutineContext r5 = r0.getContext()
            r2.<init>(r7, r5)
            kotlin.jvm.functions.Function2<kt.c<? super T>, rs.c<? super kotlin.Unit>, java.lang.Object> r7 = r6.f61682b     // Catch: java.lang.Throwable -> L40
            r0.f61683h = r6     // Catch: java.lang.Throwable -> L40
            r0.f61684i = r2     // Catch: java.lang.Throwable -> L40
            r0.f61687l = r4     // Catch: java.lang.Throwable -> L40
            java.lang.Object r7 = r7.invoke(r2, r0)     // Catch: java.lang.Throwable -> L40
            if (r7 != r1) goto L5f
            return r1
        L5f:
            r4 = r6
        L60:
            r2.releaseIntercepted()
            kt.c<T> r7 = r4.f61681a
            boolean r2 = r7 instanceof kotlinx.coroutines.flow.SubscribedFlowCollector
            if (r2 == 0) goto L7c
            kotlinx.coroutines.flow.SubscribedFlowCollector r7 = (kotlinx.coroutines.flow.SubscribedFlowCollector) r7
            r2 = 0
            r0.f61683h = r2
            r0.f61684i = r2
            r0.f61687l = r3
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L79
            return r1
        L79:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L7c:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L7f:
            r2.releaseIntercepted()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedFlowCollector.a(rs.c):java.lang.Object");
    }

    @Override // kt.c
    @Nullable
    public Object emit(T t10, @NotNull rs.c<? super Unit> cVar) {
        return this.f61681a.emit(t10, cVar);
    }
}
