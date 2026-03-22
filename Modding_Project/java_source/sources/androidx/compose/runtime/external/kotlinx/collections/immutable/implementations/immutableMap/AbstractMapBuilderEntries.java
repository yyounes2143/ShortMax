package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import java.util.Map.Entry;
import kotlin.Metadata;
import kotlin.collections.j;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapBuilderContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class AbstractMapBuilderEntries<E extends Map.Entry<? extends K, ? extends V>, K, V> extends j<E> {
    public static final int $stable = 8;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((AbstractMapBuilderEntries<E, K, V>) ((Map.Entry) obj));
        }
        return false;
    }

    public abstract boolean containsEntry(@NotNull Map.Entry<? extends K, ? extends V> entry);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return remove((AbstractMapBuilderEntries<E, K, V>) ((Map.Entry) obj));
        }
        return false;
    }

    public abstract boolean removeEntry(@NotNull Map.Entry<? extends K, ? extends V> entry);

    public final boolean contains(@NotNull E e10) {
        if ((e10 != null ? e10 : null) == null) {
            return false;
        }
        return containsEntry(e10);
    }

    public final boolean remove(@NotNull E e10) {
        if ((e10 != null ? e10 : null) == null) {
            return false;
        }
        return removeEntry(e10);
    }
}
