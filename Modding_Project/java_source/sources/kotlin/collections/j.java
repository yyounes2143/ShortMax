package kotlin.collections;

import java.util.AbstractSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableSet;
/* compiled from: AbstractMutableSet.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class j<E> extends AbstractSet<E> implements Set<E>, KMutableSet {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean add(E e10);

    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
