package kotlinx.coroutines.flow;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,429:1\n1#2:430\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__ShareKt {
    @NotNull
    public static final <T> kt.f<T> a(@NotNull kt.d<T> dVar) {
        return new i(dVar, null);
    }

    @NotNull
    public static final <T> kt.i<T> b(@NotNull kt.e<T> eVar) {
        return new j(eVar, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        if (r3 == 0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final <T> kotlinx.coroutines.flow.l<T> c(kt.b<? extends T> r7, int r8) {
        /*
            jt.d$a r0 = jt.d.E8
            int r0 = r0.a()
            int r0 = kotlin.ranges.e.e(r8, r0)
            int r0 = r0 - r8
            boolean r1 = r7 instanceof kotlinx.coroutines.flow.internal.ChannelFlow
            if (r1 == 0) goto L3c
            r1 = r7
            kotlinx.coroutines.flow.internal.ChannelFlow r1 = (kotlinx.coroutines.flow.internal.ChannelFlow) r1
            kt.b r2 = r1.j()
            if (r2 == 0) goto L3c
            kotlinx.coroutines.flow.l r7 = new kotlinx.coroutines.flow.l
            int r3 = r1.f61704b
            r4 = -3
            if (r3 == r4) goto L26
            r4 = -2
            if (r3 == r4) goto L26
            if (r3 == 0) goto L26
            r0 = r3
            goto L34
        L26:
            kotlinx.coroutines.channels.BufferOverflow r4 = r1.f61705c
            kotlinx.coroutines.channels.BufferOverflow r5 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            r6 = 0
            if (r4 != r5) goto L31
            if (r3 != 0) goto L34
        L2f:
            r0 = r6
            goto L34
        L31:
            if (r8 != 0) goto L2f
            r0 = 1
        L34:
            kotlinx.coroutines.channels.BufferOverflow r8 = r1.f61705c
            kotlin.coroutines.CoroutineContext r1 = r1.f61703a
            r7.<init>(r2, r0, r8, r1)
            return r7
        L3c:
            kotlinx.coroutines.flow.l r8 = new kotlinx.coroutines.flow.l
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.f61040a
            r8.<init>(r7, r0, r1, r2)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt.c(kt.b, int):kotlinx.coroutines.flow.l");
    }

    private static final <T> r d(g0 g0Var, CoroutineContext coroutineContext, kt.b<? extends T> bVar, kt.d<T> dVar, m mVar, T t10) {
        CoroutineStart coroutineStart;
        if (Intrinsics.areEqual(mVar, m.f61804a.c())) {
            coroutineStart = CoroutineStart.DEFAULT;
        } else {
            coroutineStart = CoroutineStart.UNDISPATCHED;
        }
        return gt.e.c(g0Var, coroutineContext, coroutineStart, new FlowKt__ShareKt$launchSharing$1(mVar, bVar, dVar, t10, null));
    }

    @NotNull
    public static final <T> kt.f<T> e(@NotNull kt.f<? extends T> fVar, @NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return new SubscribedSharedFlow(fVar, function2);
    }

    @NotNull
    public static final <T> kt.f<T> f(@NotNull kt.b<? extends T> bVar, @NotNull g0 g0Var, @NotNull m mVar, int i10) {
        l c10 = c(bVar, i10);
        kt.d a10 = kt.g.a(i10, c10.f61801b, c10.f61802c);
        return new i(a10, d(g0Var, c10.f61803d, c10.f61800a, a10, mVar, kt.g.f62038a));
    }

    @NotNull
    public static final <T> kt.i<T> g(@NotNull kt.b<? extends T> bVar, @NotNull g0 g0Var, @NotNull m mVar, T t10) {
        l c10 = c(bVar, 1);
        kt.e a10 = o.a(t10);
        return new j(a10, d(g0Var, c10.f61803d, c10.f61800a, a10, mVar, t10));
    }
}
