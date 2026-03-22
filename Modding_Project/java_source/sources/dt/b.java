package dt;

import java.lang.Comparable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Ranges.kt */
@Metadata
/* loaded from: classes8.dex */
public interface b<T extends Comparable<? super T>> extends c<T> {
    boolean a(@NotNull T t10, @NotNull T t11);

    boolean contains(@NotNull T t10);

    @Override // dt.c
    boolean isEmpty();
}
