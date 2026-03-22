package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.d;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImmutableList.kt */
@Metadata
/* loaded from: classes.dex */
public interface ImmutableList<E> extends List<E>, ImmutableCollection<E>, KMappedMarker {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImmutableList.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class SubList<E> extends d<E> implements ImmutableList<E> {
        private int _size;
        private final int fromIndex;
        @NotNull
        private final ImmutableList<E> source;
        private final int toIndex;

        /* JADX WARN: Multi-variable type inference failed */
        public SubList(@NotNull ImmutableList<? extends E> immutableList, int i10, int i11) {
            this.source = immutableList;
            this.fromIndex = i10;
            this.toIndex = i11;
            ListImplementation.checkRangeIndexes$runtime(i10, i11, immutableList.size());
            this._size = i11 - i10;
        }

        @Override // kotlin.collections.d, java.util.List
        public E get(int i10) {
            ListImplementation.checkElementIndex$runtime(i10, this._size);
            return this.source.get(this.fromIndex + i10);
        }

        @Override // kotlin.collections.d, kotlin.collections.b
        public int getSize() {
            return this._size;
        }

        @Override // kotlin.collections.d, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList
        @NotNull
        public ImmutableList<E> subList(int i10, int i11) {
            ListImplementation.checkRangeIndexes$runtime(i10, i11, this._size);
            ImmutableList<E> immutableList = this.source;
            int i12 = this.fromIndex;
            return new SubList(immutableList, i10 + i12, i12 + i11);
        }
    }

    @Override // java.util.List
    @NotNull
    default ImmutableList<E> subList(int i10, int i11) {
        return new SubList(this, i10, i11);
    }
}
