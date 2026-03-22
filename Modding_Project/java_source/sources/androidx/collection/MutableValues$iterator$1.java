package androidx.collection;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.j;
/* JADX INFO: Add missing generic type declarations: [V] */
/* compiled from: ScatterMap.kt */
@Metadata
/* loaded from: classes.dex */
public final class MutableValues$iterator$1<V> implements Iterator<V>, KMutableIterator {
    private int current = -1;
    private final Iterator<Integer> iterator;
    final /* synthetic */ MutableValues<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableValues$iterator$1(MutableValues<K, V> mutableValues) {
        this.this$0 = mutableValues;
        this.iterator = j.a(new MutableValues$iterator$1$iterator$1(mutableValues, null));
    }

    public final int getCurrent() {
        return this.current;
    }

    public final Iterator<Integer> getIterator() {
        return this.iterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public V next() {
        MutableScatterMap mutableScatterMap;
        this.current = this.iterator.next().intValue();
        mutableScatterMap = ((MutableValues) this.this$0).parent;
        return (V) mutableScatterMap.values[this.current];
    }

    @Override // java.util.Iterator
    public void remove() {
        MutableScatterMap mutableScatterMap;
        if (this.current >= 0) {
            mutableScatterMap = ((MutableValues) this.this$0).parent;
            mutableScatterMap.removeValueAt(this.current);
            this.current = -1;
        }
    }

    public final void setCurrent(int i10) {
        this.current = i10;
    }
}
