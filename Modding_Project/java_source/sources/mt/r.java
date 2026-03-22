package mt;

import gt.j1;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MainDispatchers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatchersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"})
/* loaded from: classes8.dex */
public final class r {
    private static final s a(Throwable th2, String str) {
        if (th2 != null) {
            throw th2;
        }
        d();
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ s b(Throwable th2, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th2 = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th2, str);
    }

    public static final boolean c(@NotNull j1 j1Var) {
        return j1Var.m() instanceof s;
    }

    @NotNull
    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    @NotNull
    public static final j1 e(@NotNull p pVar, @NotNull List<? extends p> list) {
        try {
            return pVar.c(list);
        } catch (Throwable th2) {
            return a(th2, pVar.b());
        }
    }
}
