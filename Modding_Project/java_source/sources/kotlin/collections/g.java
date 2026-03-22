package kotlin.collections;

import java.util.AbstractCollection;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableCollection;
/* compiled from: AbstractMutableCollection.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class g<E> extends AbstractCollection<E> implements Collection<E>, KMutableCollection {
    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean add(E e10);

    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }
}
