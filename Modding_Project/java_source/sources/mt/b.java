package mt;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConcurrentLinkedList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,265:1\n42#1,8:280\n103#2,7:266\n103#2,7:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n70#1:280,8\n23#1:266,7\n81#1:273,7\n*E\n"})
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a */
    private static final a0 f62656a = new a0("CLOSED");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [mt.c] */
    @NotNull
    public static final <N extends c<N>> N b(@NotNull N n10) {
        while (true) {
            Object g10 = n10.g();
            if (g10 == f62656a) {
                return n10;
            }
            ?? r02 = (c) g10;
            if (r02 == 0) {
                if (n10.m()) {
                    return n10;
                }
            } else {
                n10 = r02;
            }
        }
    }

    @NotNull
    public static final <S extends x<S>> Object c(@NotNull S s10, long j10, @NotNull Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s10.f62709c < j10 || s10.k()) {
                Object g10 = s10.g();
                if (g10 == f62656a) {
                    return y.a(f62656a);
                }
                S s11 = (S) ((c) g10);
                if (s11 == null) {
                    s11 = function2.invoke(Long.valueOf(s10.f62709c + 1), s10);
                    if (s10.o(s11)) {
                        if (s10.k()) {
                            s10.n();
                        }
                    }
                }
                s10 = s11;
            } else {
                return y.a(s10);
            }
        }
    }
}
