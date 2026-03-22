package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMutableList;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImmutableList.kt */
@Metadata
/* loaded from: classes.dex */
public interface PersistentList<E> extends ImmutableList<E>, PersistentCollection<E> {

    /* compiled from: ImmutableList.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface Builder<E> extends List<E>, PersistentCollection.Builder<E>, KMutableList {
        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
        @NotNull
        PersistentList<E> build();
    }

    @Override // java.util.List
    @NotNull
    PersistentList<E> add(int i10, E e10);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    PersistentList<E> add(E e10);

    @Override // java.util.List
    @NotNull
    PersistentList<E> addAll(int i10, @NotNull Collection<? extends E> collection);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    PersistentList<E> addAll(@NotNull Collection<? extends E> collection);

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    Builder<E> builder();

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    PersistentList<E> clear();

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    PersistentList<E> remove(E e10);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    PersistentList<E> removeAll(@NotNull Collection<? extends E> collection);

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    PersistentList<E> removeAll(@NotNull Function1<? super E, Boolean> function1);

    @NotNull
    PersistentList<E> removeAt(int i10);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    PersistentList<E> retainAll(@NotNull Collection<? extends E> collection);

    @Override // java.util.List
    @NotNull
    PersistentList<E> set(int i10, E e10);
}
