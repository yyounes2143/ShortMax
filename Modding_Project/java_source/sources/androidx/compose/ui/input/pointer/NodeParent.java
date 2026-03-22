package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HitPathTracker.kt */
@Metadata
/* loaded from: classes.dex */
public class NodeParent {
    @NotNull
    private final MutableVector<Node> children = new MutableVector<>(new Node[16], 0);

    public boolean buildCache(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull LayoutCoordinates parentCoordinates, @NotNull InternalPointerEvent internalPointerEvent, boolean z10) {
        Intrinsics.checkNotNullParameter(changes, "changes");
        Intrinsics.checkNotNullParameter(parentCoordinates, "parentCoordinates");
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        MutableVector<Node> mutableVector = this.children;
        int size = mutableVector.getSize();
        if (size <= 0) {
            return false;
        }
        Node[] content = mutableVector.getContent();
        int i10 = 0;
        boolean z11 = false;
        do {
            if (!content[i10].buildCache(changes, parentCoordinates, internalPointerEvent, z10) && !z11) {
                z11 = false;
            } else {
                z11 = true;
            }
            i10++;
        } while (i10 < size);
        return z11;
    }

    public void cleanUpHits(@NotNull InternalPointerEvent internalPointerEvent) {
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        int size = this.children.getSize();
        while (true) {
            size--;
            if (-1 < size) {
                if (this.children.getContent()[size].getPointerIds().isEmpty()) {
                    this.children.removeAt(size);
                }
            } else {
                return;
            }
        }
    }

    public final void clear() {
        this.children.clear();
    }

    public void dispatchCancel() {
        MutableVector<Node> mutableVector = this.children;
        int size = mutableVector.getSize();
        if (size > 0) {
            Node[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].dispatchCancel();
                i10++;
            } while (i10 < size);
        }
    }

    public boolean dispatchFinalEventPass(@NotNull InternalPointerEvent internalPointerEvent) {
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        MutableVector<Node> mutableVector = this.children;
        int size = mutableVector.getSize();
        boolean z10 = false;
        if (size > 0) {
            Node[] content = mutableVector.getContent();
            int i10 = 0;
            boolean z11 = false;
            do {
                if (!content[i10].dispatchFinalEventPass(internalPointerEvent) && !z11) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                i10++;
            } while (i10 < size);
            z10 = z11;
        }
        cleanUpHits(internalPointerEvent);
        return z10;
    }

    public boolean dispatchMainEventPass(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull LayoutCoordinates parentCoordinates, @NotNull InternalPointerEvent internalPointerEvent, boolean z10) {
        Intrinsics.checkNotNullParameter(changes, "changes");
        Intrinsics.checkNotNullParameter(parentCoordinates, "parentCoordinates");
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        MutableVector<Node> mutableVector = this.children;
        int size = mutableVector.getSize();
        if (size <= 0) {
            return false;
        }
        Node[] content = mutableVector.getContent();
        int i10 = 0;
        boolean z11 = false;
        do {
            if (!content[i10].dispatchMainEventPass(changes, parentCoordinates, internalPointerEvent, z10) && !z11) {
                z11 = false;
            } else {
                z11 = true;
            }
            i10++;
        } while (i10 < size);
        return z11;
    }

    @NotNull
    public final MutableVector<Node> getChildren() {
        return this.children;
    }

    public final void removeDetachedPointerInputFilters() {
        int i10 = 0;
        while (i10 < this.children.getSize()) {
            Node node = this.children.getContent()[i10];
            if (!node.getPointerInputFilter().isAttached$ui_release()) {
                this.children.removeAt(i10);
                node.dispatchCancel();
            } else {
                i10++;
                node.removeDetachedPointerInputFilters();
            }
        }
    }
}
