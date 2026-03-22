package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Emitters.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,218:1\n105#2:219\n105#2:220\n105#2:221\n105#2:222\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n46#1:219\n72#1:220\n142#1:221\n177#1:222\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__EmittersKt {
    public static final void b(@NotNull kt.c<?> cVar) {
        if (!(cVar instanceof kt.j)) {
            return;
        }
        throw ((kt.j) cVar).f62041a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object c(kt.c<? super T> r4, at.n<? super kt.c<? super T>, ? super java.lang.Throwable, ? super rs.c<? super kotlin.Unit>, ? extends java.lang.Object> r5, java.lang.Throwable r6, rs.c<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1) r0
            int r1 = r0.f61482j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61482j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f61481i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61482j
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r4 = r0.f61480h
            r6 = r4
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            kotlin.f.b(r7)     // Catch: java.lang.Throwable -> L2e
            goto L46
        L2e:
            r4 = move-exception
            goto L49
        L30:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L38:
            kotlin.f.b(r7)
            r0.f61480h = r6     // Catch: java.lang.Throwable -> L2e
            r0.f61482j = r3     // Catch: java.lang.Throwable -> L2e
            java.lang.Object r4 = r5.invoke(r4, r6, r0)     // Catch: java.lang.Throwable -> L2e
            if (r4 != r1) goto L46
            return r1
        L46:
            kotlin.Unit r4 = kotlin.Unit.f60915a
            return r4
        L49:
            if (r6 == 0) goto L50
            if (r6 == r4) goto L50
            ms.d.a(r4, r6)
        L50:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt.c(kt.c, at.n, java.lang.Throwable, rs.c):java.lang.Object");
    }

    @NotNull
    public static final <T> kt.b<T> d(@NotNull kt.b<? extends T> bVar, @NotNull at.n<? super kt.c<? super T>, ? super Throwable, ? super rs.c<? super Unit>, ? extends Object> nVar) {
        return new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(bVar, nVar);
    }

    @NotNull
    public static final <T> kt.b<T> e(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(function2, bVar);
    }
}
