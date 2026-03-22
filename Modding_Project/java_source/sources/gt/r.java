package gt;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletableDeferred.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCompletableDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletableDeferred.kt\nkotlinx/coroutines/CompletableDeferredKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"})
/* loaded from: classes8.dex */
public final class r {
    @NotNull
    public static final <T> p<T> a(@Nullable kotlinx.coroutines.r rVar) {
        return new q(rVar);
    }

    public static /* synthetic */ p b(kotlinx.coroutines.r rVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            rVar = null;
        }
        return a(rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean c(@NotNull p<T> pVar, @NotNull Object obj) {
        Throwable g10 = Result.g(obj);
        if (g10 == null) {
            return pVar.i(obj);
        }
        return pVar.d(g10);
    }
}
