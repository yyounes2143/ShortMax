package gt;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CancellableContinuation.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,498:1\n1#2:499\n*E\n"})
/* loaded from: classes8.dex */
public final class l {
    public static final void a(@NotNull i<?> iVar, @NotNull s0 s0Var) {
        c(iVar, new t0(s0Var));
    }

    @NotNull
    public static final <T> kotlinx.coroutines.e<T> b(@NotNull rs.c<? super T> cVar) {
        if (!(cVar instanceof mt.h)) {
            return new kotlinx.coroutines.e<>(cVar, 1);
        }
        kotlinx.coroutines.e<T> l10 = ((mt.h) cVar).l();
        if (l10 != null) {
            if (!l10.Q()) {
                l10 = null;
            }
            if (l10 != null) {
                return l10;
            }
        }
        return new kotlinx.coroutines.e<>(cVar, 2);
    }

    public static final <T> void c(@NotNull i<? super T> iVar, @NotNull kotlinx.coroutines.d dVar) {
        if (iVar instanceof kotlinx.coroutines.e) {
            ((kotlinx.coroutines.e) iVar).K(dVar);
            return;
        }
        throw new UnsupportedOperationException("third-party implementation of CancellableContinuation is not supported");
    }
}
