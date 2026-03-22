package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotStateMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n360#1,4:417\n1#2:421\n1#2:422\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableIterator\n*L\n341#1:417,4\n341#1:421\n*E\n"})
/* loaded from: classes.dex */
abstract class StateMapMutableIterator<K, V> {
    @Nullable
    private Map.Entry<? extends K, ? extends V> current;
    @NotNull
    private final Iterator<Map.Entry<K, V>> iterator;
    @NotNull
    private final SnapshotStateMap<K, V> map;
    private int modification;
    @Nullable
    private Map.Entry<? extends K, ? extends V> next;

    /* JADX WARN: Multi-variable type inference failed */
    public StateMapMutableIterator(@NotNull SnapshotStateMap<K, V> snapshotStateMap, @NotNull Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
        this.map = snapshotStateMap;
        this.iterator = it;
        this.modification = snapshotStateMap.getModification$runtime();
        advance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void advance() {
        Map.Entry<K, V> entry;
        this.current = this.next;
        if (this.iterator.hasNext()) {
            entry = this.iterator.next();
        } else {
            entry = null;
        }
        this.next = entry;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Map.Entry<K, V> getCurrent() {
        return (Map.Entry<? extends K, ? extends V>) this.current;
    }

    @NotNull
    public final Iterator<Map.Entry<K, V>> getIterator() {
        return this.iterator;
    }

    @NotNull
    public final SnapshotStateMap<K, V> getMap() {
        return this.map;
    }

    protected final int getModification() {
        return this.modification;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Map.Entry<K, V> getNext() {
        return (Map.Entry<? extends K, ? extends V>) this.next;
    }

    public final boolean hasNext() {
        if (this.next != null) {
            return true;
        }
        return false;
    }

    protected final <T> T modify(@NotNull Function0<? extends T> function0) {
        if (getMap().getModification$runtime() == this.modification) {
            T invoke = function0.invoke();
            this.modification = getMap().getModification$runtime();
            return invoke;
        }
        throw new ConcurrentModificationException();
    }

    public final void remove() {
        if (getMap().getModification$runtime() == this.modification) {
            Map.Entry<? extends K, ? extends V> entry = this.current;
            if (entry != null) {
                this.map.remove(entry.getKey());
                this.current = null;
                Unit unit = Unit.f60915a;
                this.modification = getMap().getModification$runtime();
                return;
            }
            throw new IllegalStateException();
        }
        throw new ConcurrentModificationException();
    }

    protected final void setCurrent(@Nullable Map.Entry<? extends K, ? extends V> entry) {
        this.current = entry;
    }

    protected final void setModification(int i10) {
        this.modification = i10;
    }

    protected final void setNext(@Nullable Map.Entry<? extends K, ? extends V> entry) {
        this.next = entry;
    }
}
