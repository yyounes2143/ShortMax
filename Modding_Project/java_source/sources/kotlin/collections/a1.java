package kotlin.collections;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sets.kt */
@Metadata
/* loaded from: classes8.dex */
public class a1 extends z0 {
    @NotNull
    public static <T> Set<T> f() {
        return EmptySet.f60926a;
    }

    @NotNull
    public static <T> HashSet<T> g(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (HashSet) s.q1(elements, new HashSet(p0.e(elements.length)));
    }

    @NotNull
    public static <T> Set<T> h(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (Set) s.q1(elements, new LinkedHashSet(p0.e(elements.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Set<T> i(@NotNull Set<? extends T> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        int size = set.size();
        if (size != 0) {
            if (size == 1) {
                return y0.d(set.iterator().next());
            }
            return set;
        }
        return y0.f();
    }

    @NotNull
    public static <T> Set<T> j(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return n.G1(elements);
    }
}
