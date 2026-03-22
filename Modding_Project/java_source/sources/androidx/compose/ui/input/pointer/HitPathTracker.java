package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HitPathTracker.kt */
@Metadata
/* loaded from: classes.dex */
public final class HitPathTracker {
    @NotNull
    private final NodeParent root;
    @NotNull
    private final LayoutCoordinates rootCoordinates;

    public HitPathTracker(@NotNull LayoutCoordinates rootCoordinates) {
        Intrinsics.checkNotNullParameter(rootCoordinates, "rootCoordinates");
        this.rootCoordinates = rootCoordinates;
        this.root = new NodeParent();
    }

    public static /* synthetic */ boolean dispatchChanges$default(HitPathTracker hitPathTracker, InternalPointerEvent internalPointerEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return hitPathTracker.dispatchChanges(internalPointerEvent, z10);
    }

    /* renamed from: addHitPath-KNwqfcY  reason: not valid java name */
    public final void m3141addHitPathKNwqfcY(long j10, @NotNull List<? extends PointerInputFilter> pointerInputFilters) {
        Node node;
        Intrinsics.checkNotNullParameter(pointerInputFilters, "pointerInputFilters");
        NodeParent nodeParent = this.root;
        int size = pointerInputFilters.size();
        boolean z10 = true;
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputFilter pointerInputFilter = pointerInputFilters.get(i10);
            if (z10) {
                MutableVector<Node> children = nodeParent.getChildren();
                int size2 = children.getSize();
                if (size2 > 0) {
                    Node[] content = children.getContent();
                    int i11 = 0;
                    do {
                        node = content[i11];
                        if (Intrinsics.areEqual(node.getPointerInputFilter(), pointerInputFilter)) {
                            break;
                        }
                        i11++;
                    } while (i11 < size2);
                    node = null;
                } else {
                    node = null;
                }
                Node node2 = node;
                if (node2 != null) {
                    node2.markIsIn();
                    if (!node2.getPointerIds().contains(PointerId.m3192boximpl(j10))) {
                        node2.getPointerIds().add(PointerId.m3192boximpl(j10));
                    }
                    nodeParent = node2;
                } else {
                    z10 = false;
                }
            }
            Node node3 = new Node(pointerInputFilter);
            node3.getPointerIds().add(PointerId.m3192boximpl(j10));
            nodeParent.getChildren().add(node3);
            nodeParent = node3;
        }
    }

    public final boolean dispatchChanges(@NotNull InternalPointerEvent internalPointerEvent, boolean z10) {
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        if (!this.root.buildCache(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, z10)) {
            return false;
        }
        boolean dispatchMainEventPass = this.root.dispatchMainEventPass(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, z10);
        if (!this.root.dispatchFinalEventPass(internalPointerEvent) && !dispatchMainEventPass) {
            return false;
        }
        return true;
    }

    @NotNull
    public final NodeParent getRoot$ui_release() {
        return this.root;
    }

    public final void processCancel() {
        this.root.dispatchCancel();
        this.root.clear();
    }

    public final void removeDetachedPointerInputFilters() {
        this.root.removeDetachedPointerInputFilters();
    }
}
