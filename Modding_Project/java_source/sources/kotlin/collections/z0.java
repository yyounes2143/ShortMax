package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SetsJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public class z0 {
    @NotNull
    public static <E> Set<E> a(@NotNull Set<E> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((SetBuilder) builder).d();
    }

    @NotNull
    public static <E> Set<E> b() {
        return new SetBuilder();
    }

    @NotNull
    public static <E> Set<E> c(int i10) {
        return new SetBuilder(i10);
    }

    @NotNull
    public static <T> Set<T> d(T t10) {
        Set<T> singleton = Collections.singleton(t10);
        Intrinsics.checkNotNullExpressionValue(singleton, "singleton(...)");
        return singleton;
    }

    @NotNull
    public static <T> TreeSet<T> e(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (TreeSet) s.q1(elements, new TreeSet());
    }
}
