package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TrieIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TrieIterator<E> extends AbstractListIterator<E> {
    public static final int $stable = 8;
    private int height;
    private boolean isInRightEdge;
    @NotNull
    private Object[] path;

    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public TrieIterator(@NotNull Object[] objArr, int i10, int i11, int i12) {
        super(i10, i11);
        ?? r52;
        this.height = i12;
        Object[] objArr2 = new Object[i12];
        this.path = objArr2;
        if (i10 == i11) {
            r52 = 1;
        } else {
            r52 = 0;
        }
        this.isInRightEdge = r52;
        objArr2[0] = objArr;
        fillPath(i10 - r52, 1);
    }

    private final E elementAtCurrentIndex() {
        Object obj = this.path[this.height - 1];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.TrieIterator>");
        return (E) ((Object[]) obj)[getIndex() & 31];
    }

    private final void fillPath(int i10, int i11) {
        int i12 = (this.height - i11) * 5;
        while (i11 < this.height) {
            Object[] objArr = this.path;
            Object[] objArr2 = objArr[i11 - 1];
            Intrinsics.checkNotNull(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr[i11] = objArr2[UtilsKt.indexSegment(i10, i12)];
            i12 -= 5;
            i11++;
        }
    }

    private final void fillPathIfNeeded(int i10) {
        int i11 = 0;
        while (UtilsKt.indexSegment(getIndex(), i11) == i10) {
            i11 += 5;
        }
        if (i11 > 0) {
            fillPath(getIndex(), ((this.height - 1) - (i11 / 5)) + 1);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public E next() {
        if (hasNext()) {
            E elementAtCurrentIndex = elementAtCurrentIndex();
            setIndex(getIndex() + 1);
            if (getIndex() == getSize()) {
                this.isInRightEdge = true;
                return elementAtCurrentIndex;
            }
            fillPathIfNeeded(0);
            return elementAtCurrentIndex;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public E previous() {
        if (hasPrevious()) {
            setIndex(getIndex() - 1);
            if (this.isInRightEdge) {
                this.isInRightEdge = false;
                return elementAtCurrentIndex();
            }
            fillPathIfNeeded(31);
            return elementAtCurrentIndex();
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final void reset$runtime(@NotNull Object[] objArr, int i10, int i11, int i12) {
        setIndex(i10);
        setSize(i11);
        this.height = i12;
        if (this.path.length < i12) {
            this.path = new Object[i12];
        }
        ?? r02 = 0;
        this.path[0] = objArr;
        if (i10 == i11) {
            r02 = 1;
        }
        this.isInRightEdge = r02;
        fillPath(i10 - r02, 1);
    }
}
