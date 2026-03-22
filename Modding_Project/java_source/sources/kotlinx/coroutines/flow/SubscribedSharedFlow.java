package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SubscribedSharedFlow<T> implements kt.f<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kt.f<T> f61688a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function2<kt.c<? super T>, rs.c<? super Unit>, Object> f61689b;

    /* JADX WARN: Multi-variable type inference failed */
    public SubscribedSharedFlow(@NotNull kt.f<? extends T> fVar, @NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        this.f61688a = fVar;
        this.f61689b = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kt.f, kt.b
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(@org.jetbrains.annotations.NotNull kt.c<? super T> r6, @org.jetbrains.annotations.NotNull rs.c<?> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1 r0 = (kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1) r0
            int r1 = r0.f61692j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61692j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1 r0 = new kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f61690h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61692j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L2d:
            kotlin.f.b(r7)
            goto L46
        L31:
            kotlin.f.b(r7)
            kt.f<T> r7 = r5.f61688a
            kotlinx.coroutines.flow.SubscribedFlowCollector r2 = new kotlinx.coroutines.flow.SubscribedFlowCollector
            kotlin.jvm.functions.Function2<kt.c<? super T>, rs.c<? super kotlin.Unit>, java.lang.Object> r4 = r5.f61689b
            r2.<init>(r6, r4)
            r0.f61692j = r3
            java.lang.Object r6 = r7.collect(r2, r0)
            if (r6 != r1) goto L46
            return r1
        L46:
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedSharedFlow.collect(kt.c, rs.c):java.lang.Object");
    }
}
