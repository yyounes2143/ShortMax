package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListImplementation.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class ListImplementation {
    public static final int $stable = 0;
    @NotNull
    public static final ListImplementation INSTANCE = new ListImplementation();

    private ListImplementation() {
    }

    public static final void checkElementIndex$runtime(int i10, int i11) {
        if (i10 >= 0 && i10 < i11) {
            return;
        }
        throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
    }

    public static final void checkPositionIndex$runtime(int i10, int i11) {
        if (i10 >= 0 && i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
    }

    public static final void checkRangeIndexes$runtime(int i10, int i11, int i12) {
        if (i10 >= 0 && i11 <= i12) {
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
    }

    public static final boolean orderedEquals$runtime(@NotNull Collection<?> collection, @NotNull Collection<?> collection2) {
        if (collection.size() != collection2.size()) {
            return false;
        }
        Iterator<?> it = collection2.iterator();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!Intrinsics.areEqual(it2.next(), it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final int orderedHashCode$runtime(@NotNull Collection<?> collection) {
        int i10;
        int i11 = 1;
        for (Object obj : collection) {
            int i12 = i11 * 31;
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 = i12 + i10;
        }
        return i11;
    }
}
