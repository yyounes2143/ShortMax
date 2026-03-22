package androidx.compose.runtime.external.kotlinx.collections.immutable.adapters;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReadOnlyCollectionAdapters.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ImmutableSetAdapter<E> extends ImmutableCollectionAdapter<E> implements ImmutableSet<E> {
    public static final int $stable = 8;

    public ImmutableSetAdapter(@NotNull Set<? extends E> set) {
        super(set);
    }
}
