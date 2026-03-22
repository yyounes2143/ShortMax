package androidx.collection;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.j;
/* JADX INFO: Add missing generic type declarations: [K] */
/* compiled from: ScatterMap.kt */
@Metadata
/* loaded from: classes.dex */
public final class MutableKeys$iterator$1<K> implements Iterator<K>, KMutableIterator {
    private int current = -1;
    private final Iterator<Integer> iterator;
    final /* synthetic */ MutableKeys<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableKeys$iterator$1(MutableKeys<K, V> mutableKeys) {
        this.this$0 = mutableKeys;
        this.iterator = j.a(new MutableKeys$iterator$1$iterator$1(mutableKeys, null));
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
    public K next() {
        MutableScatterMap mutableScatterMap;
        this.current = this.iterator.next().intValue();
        mutableScatterMap = ((MutableKeys) this.this$0).parent;
        return (K) mutableScatterMap.keys[this.current];
    }

    @Override // java.util.Iterator
    public void remove() {
        MutableScatterMap mutableScatterMap;
        if (this.current >= 0) {
            mutableScatterMap = ((MutableKeys) this.this$0).parent;
            mutableScatterMap.removeValueAt(this.current);
            this.current = -1;
        }
    }

    public final void setCurrent(int i10) {
        this.current = i10;
    }
}
