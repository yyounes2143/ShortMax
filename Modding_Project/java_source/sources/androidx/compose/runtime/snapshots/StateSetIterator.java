package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotStateSet.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/StateSetIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n243#1,2:254\n1#2:256\n1#2:257\n*S KotlinDebug\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/StateSetIterator\n*L\n226#1:254,2\n226#1:256\n*E\n"})
/* loaded from: classes.dex */
public final class StateSetIterator<T> implements Iterator<T>, KMutableIterator {
    public static final int $stable = 8;
    @Nullable
    private T current;
    @NotNull
    private final Iterator<T> iterator;
    private int modification;
    @Nullable
    private T next;
    @NotNull
    private final SnapshotStateSet<T> set;

    /* JADX WARN: Multi-variable type inference failed */
    public StateSetIterator(@NotNull SnapshotStateSet<T> snapshotStateSet, @NotNull Iterator<? extends T> it) {
        this.set = snapshotStateSet;
        this.iterator = it;
        this.modification = SnapshotStateSetKt.getModification(snapshotStateSet);
        advance();
    }

    private final void advance() {
        T t10;
        this.current = this.next;
        if (this.iterator.hasNext()) {
            t10 = this.iterator.next();
        } else {
            t10 = null;
        }
        this.next = t10;
    }

    private final <T> T modify(Function0<? extends T> function0) {
        validateModification();
        T invoke = function0.invoke();
        this.modification = SnapshotStateSetKt.getModification(this.set);
        return invoke;
    }

    private final void validateModification() {
        if (SnapshotStateSetKt.getModification(this.set) == this.modification) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Nullable
    public final T getCurrent() {
        return this.current;
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    public final int getModification() {
        return this.modification;
    }

    @Nullable
    public final T getNext() {
        return this.next;
    }

    @NotNull
    public final SnapshotStateSet<T> getSet() {
        return this.set;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.next != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public T next() {
        validateModification();
        advance();
        T t10 = this.current;
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public void remove() {
        validateModification();
        T t10 = this.current;
        if (t10 != null) {
            this.set.remove(t10);
            this.current = null;
            Unit unit = Unit.f60915a;
            this.modification = SnapshotStateSetKt.getModification(this.set);
            return;
        }
        throw new IllegalStateException();
    }

    public final void setCurrent(@Nullable T t10) {
        this.current = t10;
    }

    public final void setModification(int i10) {
        this.modification = i10;
    }

    public final void setNext(@Nullable T t10) {
        this.next = t10;
    }

    public static /* synthetic */ void getNext$annotations() {
    }
}
