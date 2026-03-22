package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HitPathTracker.kt */
@Metadata
/* loaded from: classes.dex */
public final class Node extends NodeParent {
    @Nullable
    private LayoutCoordinates coordinates;
    private boolean hasExited;
    private boolean isIn;
    @Nullable
    private PointerEvent pointerEvent;
    @NotNull
    private final MutableVector<PointerId> pointerIds;
    @NotNull
    private final PointerInputFilter pointerInputFilter;
    @NotNull
    private final Map<PointerId, PointerInputChange> relevantChanges;
    private boolean wasIn;

    public Node(@NotNull PointerInputFilter pointerInputFilter) {
        Intrinsics.checkNotNullParameter(pointerInputFilter, "pointerInputFilter");
        this.pointerInputFilter = pointerInputFilter;
        this.pointerIds = new MutableVector<>(new PointerId[16], 0);
        this.relevantChanges = new LinkedHashMap();
        this.isIn = true;
        this.hasExited = true;
    }

    private final void clearCache() {
        this.relevantChanges.clear();
        this.coordinates = null;
    }

    private final boolean dispatchIfNeeded(Function0<Unit> function0) {
        if (this.relevantChanges.isEmpty() || !this.pointerInputFilter.isAttached$ui_release()) {
            return false;
        }
        function0.invoke();
        return true;
    }

    private final boolean hasPositionChanged(PointerEvent pointerEvent, PointerEvent pointerEvent2) {
        if (pointerEvent == null || pointerEvent.getChanges().size() != pointerEvent2.getChanges().size()) {
            return true;
        }
        int size = pointerEvent2.getChanges().size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!Offset.m1603equalsimpl0(pointerEvent.getChanges().get(i10).m3208getPositionF1C5BW0(), pointerEvent2.getChanges().get(i10).m3208getPositionF1C5BW0())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x017e  */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean buildCache(@org.jetbrains.annotations.NotNull java.util.Map<androidx.compose.ui.input.pointer.PointerId, androidx.compose.ui.input.pointer.PointerInputChange> r31, @org.jetbrains.annotations.NotNull androidx.compose.ui.layout.LayoutCoordinates r32, @org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.InternalPointerEvent r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.Node.buildCache(java.util.Map, androidx.compose.ui.layout.LayoutCoordinates, androidx.compose.ui.input.pointer.InternalPointerEvent, boolean):boolean");
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void cleanUpHits(@NotNull InternalPointerEvent internalPointerEvent) {
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        super.cleanUpHits(internalPointerEvent);
        PointerEvent pointerEvent = this.pointerEvent;
        if (pointerEvent == null) {
            return;
        }
        this.wasIn = this.isIn;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputChange pointerInputChange = changes.get(i10);
            if (!pointerInputChange.getPressed() && (!internalPointerEvent.m3142issuesEnterExitEvent0FcD4WY(pointerInputChange.m3207getIdJ3iCeTQ()) || !this.isIn)) {
                this.pointerIds.remove(PointerId.m3192boximpl(pointerInputChange.m3207getIdJ3iCeTQ()));
            }
        }
        this.isIn = false;
        this.hasExited = PointerEventType.m3162equalsimpl0(pointerEvent.m3155getType7fucELk(), PointerEventType.Companion.m3167getExit7fucELk());
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void dispatchCancel() {
        MutableVector<Node> children = getChildren();
        int size = children.getSize();
        if (size > 0) {
            Node[] content = children.getContent();
            int i10 = 0;
            do {
                content[i10].dispatchCancel();
                i10++;
            } while (i10 < size);
            this.pointerInputFilter.onCancel();
        }
        this.pointerInputFilter.onCancel();
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean dispatchFinalEventPass(@NotNull InternalPointerEvent internalPointerEvent) {
        MutableVector<Node> children;
        int size;
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        boolean z10 = false;
        int i10 = 0;
        z10 = false;
        if (!this.relevantChanges.isEmpty() && this.pointerInputFilter.isAttached$ui_release()) {
            PointerEvent pointerEvent = this.pointerEvent;
            Intrinsics.checkNotNull(pointerEvent);
            LayoutCoordinates layoutCoordinates = this.coordinates;
            Intrinsics.checkNotNull(layoutCoordinates);
            this.pointerInputFilter.mo3229onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Final, layoutCoordinates.mo3337getSizeYbymL2g());
            if (this.pointerInputFilter.isAttached$ui_release() && (size = (children = getChildren()).getSize()) > 0) {
                Node[] content = children.getContent();
                do {
                    content[i10].dispatchFinalEventPass(internalPointerEvent);
                    i10++;
                } while (i10 < size);
                z10 = true;
            } else {
                z10 = true;
            }
        }
        cleanUpHits(internalPointerEvent);
        clearCache();
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchMainEventPass(@org.jetbrains.annotations.NotNull java.util.Map<androidx.compose.ui.input.pointer.PointerId, androidx.compose.ui.input.pointer.PointerInputChange> r9, @org.jetbrains.annotations.NotNull androidx.compose.ui.layout.LayoutCoordinates r10, @org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.InternalPointerEvent r11, boolean r12) {
        /*
            r8 = this;
            java.lang.String r0 = "changes"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r9 = "parentCoordinates"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r9)
            java.lang.String r9 = "internalPointerEvent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r9)
            java.util.Map<androidx.compose.ui.input.pointer.PointerId, androidx.compose.ui.input.pointer.PointerInputChange> r9 = r8.relevantChanges
            boolean r9 = r9.isEmpty()
            r10 = 0
            if (r9 == 0) goto L19
            goto L6f
        L19:
            androidx.compose.ui.input.pointer.PointerInputFilter r9 = r8.pointerInputFilter
            boolean r9 = r9.isAttached$ui_release()
            if (r9 != 0) goto L22
            goto L6f
        L22:
            androidx.compose.ui.input.pointer.PointerEvent r9 = r8.pointerEvent
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
            androidx.compose.ui.layout.LayoutCoordinates r0 = r8.coordinates
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            long r0 = r0.mo3337getSizeYbymL2g()
            androidx.compose.ui.input.pointer.PointerInputFilter r2 = r8.pointerInputFilter
            androidx.compose.ui.input.pointer.PointerEventPass r3 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
            r2.mo3229onPointerEventH0pRuoY(r9, r3, r0)
            androidx.compose.ui.input.pointer.PointerInputFilter r2 = r8.pointerInputFilter
            boolean r2 = r2.isAttached$ui_release()
            r3 = 1
            if (r2 == 0) goto L5f
            androidx.compose.runtime.collection.MutableVector r2 = r8.getChildren()
            int r4 = r2.getSize()
            if (r4 <= 0) goto L5f
            java.lang.Object[] r2 = r2.getContent()
        L4e:
            r5 = r2[r10]
            androidx.compose.ui.input.pointer.Node r5 = (androidx.compose.ui.input.pointer.Node) r5
            java.util.Map<androidx.compose.ui.input.pointer.PointerId, androidx.compose.ui.input.pointer.PointerInputChange> r6 = r8.relevantChanges
            androidx.compose.ui.layout.LayoutCoordinates r7 = r8.coordinates
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            r5.dispatchMainEventPass(r6, r7, r11, r12)
            int r10 = r10 + r3
            if (r10 < r4) goto L4e
        L5f:
            androidx.compose.ui.input.pointer.PointerInputFilter r10 = r8.pointerInputFilter
            boolean r10 = r10.isAttached$ui_release()
            if (r10 == 0) goto L6e
            androidx.compose.ui.input.pointer.PointerInputFilter r10 = r8.pointerInputFilter
            androidx.compose.ui.input.pointer.PointerEventPass r11 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            r10.mo3229onPointerEventH0pRuoY(r9, r11, r0)
        L6e:
            r10 = r3
        L6f:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.Node.dispatchMainEventPass(java.util.Map, androidx.compose.ui.layout.LayoutCoordinates, androidx.compose.ui.input.pointer.InternalPointerEvent, boolean):boolean");
    }

    @NotNull
    public final MutableVector<PointerId> getPointerIds() {
        return this.pointerIds;
    }

    @NotNull
    public final PointerInputFilter getPointerInputFilter() {
        return this.pointerInputFilter;
    }

    public final void markIsIn() {
        this.isIn = true;
    }

    @NotNull
    public String toString() {
        return "Node(pointerInputFilter=" + this.pointerInputFilter + ", children=" + getChildren() + ", pointerIds=" + this.pointerIds + ')';
    }
}
