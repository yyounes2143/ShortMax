package ns;

import java.util.Map;
import java.util.Map.Entry;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MapBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a<E extends Map.Entry<? extends K, ? extends V>, K, V> extends j<E> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((a<E, K, V>) ((Map.Entry) obj));
        }
        return false;
    }

    public abstract boolean containsEntry(@NotNull Map.Entry<? extends K, ? extends V> entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return remove((Map.Entry) obj);
        }
        return false;
    }

    public final boolean contains(@NotNull E element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return containsEntry(element);
    }

    public /* bridge */ boolean remove(Map.Entry<?, ?> entry) {
        return super.remove((Object) entry);
    }
}
