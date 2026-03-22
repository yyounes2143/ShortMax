package androidx.collection;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.j;
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: ScatterSet.kt */
@Metadata
/* loaded from: classes.dex */
public final class MutableSetWrapper$iterator$1<E> implements Iterator<E>, KMutableIterator {
    private int current = -1;
    private final Iterator<E> iterator;
    final /* synthetic */ MutableSetWrapper<E> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableSetWrapper$iterator$1(MutableSetWrapper<E> mutableSetWrapper) {
        this.this$0 = mutableSetWrapper;
        this.iterator = j.a(new MutableSetWrapper$iterator$1$iterator$1(mutableSetWrapper, this, null));
    }

    public final int getCurrent() {
        return this.current;
    }

    public final Iterator<E> getIterator() {
        return this.iterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public E next() {
        return this.iterator.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        MutableScatterSet mutableScatterSet;
        if (this.current != -1) {
            mutableScatterSet = ((MutableSetWrapper) this.this$0).parent;
            mutableScatterSet.removeElementAt(this.current);
            this.current = -1;
        }
    }

    public final void setCurrent(int i10) {
        this.current = i10;
    }
}
