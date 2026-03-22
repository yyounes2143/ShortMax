package yr;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringValues.kt */
@Metadata
/* loaded from: classes8.dex */
public interface q {
    @Nullable
    List<String> a(@NotNull String str);

    @NotNull
    Set<Map.Entry<String, List<String>>> b();

    boolean c();

    void clear();

    boolean contains(@NotNull String str);

    void d(@NotNull String str, @NotNull Iterable<String> iterable);

    void e(@NotNull p pVar);

    void f(@NotNull String str, @NotNull String str2);

    boolean isEmpty();

    @NotNull
    Set<String> names();
}
