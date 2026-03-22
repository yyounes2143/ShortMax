package kotlin.collections;

import java.util.AbstractList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableList;
/* compiled from: AbstractMutableList.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class h<E> extends AbstractList<E> implements List<E>, KMutableList {
    @Override // java.util.AbstractList, java.util.List
    public abstract void add(int i10, E e10);

    public abstract int getSize();

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i10) {
        return removeAt(i10);
    }

    public abstract E removeAt(int i10);

    @Override // java.util.AbstractList, java.util.List
    public abstract E set(int i10, E e10);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }
}
