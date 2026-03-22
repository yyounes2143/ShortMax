package kotlin.collections;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractIterator.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class c<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: a  reason: collision with root package name */
    private int f60991a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private T f60992b;

    private final boolean d() {
        this.f60991a = 3;
        a();
        if (this.f60991a == 1) {
            return true;
        }
        return false;
    }

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        this.f60991a = 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(T t10) {
        this.f60992b = t10;
        this.f60991a = 1;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i10 = this.f60991a;
        if (i10 != 0) {
            if (i10 == 1) {
                return true;
            }
            if (i10 == 2) {
                return false;
            }
            throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
        }
        return d();
    }

    @Override // java.util.Iterator
    public T next() {
        int i10 = this.f60991a;
        if (i10 == 1) {
            this.f60991a = 0;
            return this.f60992b;
        } else if (i10 != 2 && d()) {
            this.f60991a = 0;
            return this.f60992b;
        } else {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
