package yr;

import java.util.Collections;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionsJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h {
    @NotNull
    public static final <T> Set<T> a(@NotNull Set<? extends T> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Set<T> unmodifiableSet = Collections.unmodifiableSet(set);
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(this)");
        return unmodifiableSet;
    }
}
