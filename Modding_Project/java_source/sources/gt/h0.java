package gt;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DebugStrings.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDebugStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugStrings.kt\nkotlinx/coroutines/DebugStringsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"})
/* loaded from: classes8.dex */
public final class h0 {
    @NotNull
    public static final String a(@NotNull Object obj) {
        return obj.getClass().getSimpleName();
    }

    @NotNull
    public static final String b(@NotNull Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    @NotNull
    public static final String c(@NotNull rs.c<?> cVar) {
        String d10;
        if (cVar instanceof mt.h) {
            return ((mt.h) cVar).toString();
        }
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(cVar + '@' + b(cVar));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.g(d10) != null) {
            d10 = cVar.getClass().getName() + '@' + b(cVar);
        }
        return (String) d10;
    }
}
