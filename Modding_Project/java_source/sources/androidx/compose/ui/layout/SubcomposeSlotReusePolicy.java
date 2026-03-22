package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubcomposeLayout.kt */
@Metadata
/* loaded from: classes.dex */
public interface SubcomposeSlotReusePolicy {

    /* compiled from: SubcomposeLayout.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class SlotIdsSet implements Collection<Object>, KMappedMarker {
        public static final int $stable = 8;
        @NotNull
        private final Set<Object> set;

        public SlotIdsSet() {
            this(null, 1, null);
        }

        @Override // java.util.Collection
        /* renamed from: add$ui_release */
        public final boolean add(@Nullable Object obj) {
            return this.set.add(obj);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public final void clear() {
            this.set.clear();
        }

        @Override // java.util.Collection
        public boolean contains(@Nullable Object obj) {
            return this.set.contains(obj);
        }

        @Override // java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return this.set.containsAll(elements);
        }

        public int getSize() {
            return this.set.size();
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.set.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<Object> iterator() {
            return this.set.iterator();
        }

        @Override // java.util.Collection
        public final boolean remove(@Nullable Object obj) {
            return this.set.remove(obj);
        }

        @Override // java.util.Collection
        public final boolean removeAll(@NotNull Collection<? extends Object> slotIds) {
            Intrinsics.checkNotNullParameter(slotIds, "slotIds");
            return this.set.remove(slotIds);
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super Object> predicate) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public final boolean retainAll(@NotNull Collection<? extends Object> slotIds) {
            Intrinsics.checkNotNullParameter(slotIds, "slotIds");
            return this.set.retainAll(slotIds);
        }

        @Override // java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        public SlotIdsSet(@NotNull Set<Object> set) {
            Intrinsics.checkNotNullParameter(set, "set");
            this.set = set;
        }

        public final boolean removeAll(@NotNull Function1<Object, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return CollectionsKt.K(this.set, predicate);
        }

        public final boolean retainAll(@NotNull Function1<Object, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return CollectionsKt.T(this.set, predicate);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return (T[]) CollectionToArray.toArray(this, array);
        }

        public /* synthetic */ SlotIdsSet(Set set, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? new LinkedHashSet() : set);
        }
    }

    boolean areCompatible(@Nullable Object obj, @Nullable Object obj2);

    void getSlotsToRetain(@NotNull SlotIdsSet slotIdsSet);
}
