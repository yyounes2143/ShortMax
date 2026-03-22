package androidx.core.view;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewGroup.kt */
@Metadata
/* loaded from: classes.dex */
public final class TreeIterator<T> implements Iterator<T>, KMappedMarker {
    @NotNull
    private final Function1<T, Iterator<T>> getChildIterator;
    @NotNull
    private Iterator<? extends T> iterator;
    @NotNull
    private final List<Iterator<T>> stack = new ArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    public TreeIterator(@NotNull Iterator<? extends T> it, @NotNull Function1<? super T, ? extends Iterator<? extends T>> function1) {
        this.getChildIterator = function1;
        this.iterator = it;
    }

    private final void prepareNextIterator(T t10) {
        Iterator it = (Iterator<T>) this.getChildIterator.invoke(t10);
        if (it != null && it.hasNext()) {
            this.stack.add(this.iterator);
            this.iterator = it;
            return;
        }
        while (!this.iterator.hasNext() && !this.stack.isEmpty()) {
            this.iterator = (Iterator) CollectionsKt.C0(this.stack);
            CollectionsKt.R(this.stack);
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public T next() {
        T next = this.iterator.next();
        prepareNextIterator(next);
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
