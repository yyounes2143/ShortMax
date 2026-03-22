package ps;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Comparisons.kt */
@Metadata
/* loaded from: classes8.dex */
public class b {
    public static <T extends Comparable<?>> int a(@Nullable T t10, @Nullable T t11) {
        if (t10 == t11) {
            return 0;
        }
        if (t10 == null) {
            return -1;
        }
        if (t11 == null) {
            return 1;
        }
        return t10.compareTo(t11);
    }

    public static <T> int b(T t10, T t11, @NotNull Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (selectors.length > 0) {
            return c(t10, t11, selectors);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    private static final <T> int c(T t10, T t11, Function1<? super T, ? extends Comparable<?>>[] function1Arr) {
        for (Function1<? super T, ? extends Comparable<?>> function1 : function1Arr) {
            int a10 = a.a(function1.invoke(t10), function1.invoke(t11));
            if (a10 != 0) {
                return a10;
            }
        }
        return 0;
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> d() {
        e eVar = e.f64986a;
        Intrinsics.checkNotNull(eVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>");
        return eVar;
    }
}
