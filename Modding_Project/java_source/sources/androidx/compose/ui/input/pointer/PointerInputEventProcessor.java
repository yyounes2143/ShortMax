package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerInputEventProcessor.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInputEventProcessor {
    @NotNull
    private final HitPathTracker hitPathTracker;
    @NotNull
    private final HitTestResult<PointerInputFilter> hitResult;
    private boolean isProcessing;
    @NotNull
    private final PointerInputChangeEventProducer pointerInputChangeEventProducer;
    @NotNull
    private final LayoutNode root;

    public PointerInputEventProcessor(@NotNull LayoutNode root) {
        Intrinsics.checkNotNullParameter(root, "root");
        this.root = root;
        this.hitPathTracker = new HitPathTracker(root.getCoordinates());
        this.pointerInputChangeEventProducer = new PointerInputChangeEventProducer();
        this.hitResult = new HitTestResult<>();
    }

    /* renamed from: process-BIzXfog$default  reason: not valid java name */
    public static /* synthetic */ int m3226processBIzXfog$default(PointerInputEventProcessor pointerInputEventProcessor, PointerInputEvent pointerInputEvent, PositionCalculator positionCalculator, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return pointerInputEventProcessor.m3227processBIzXfog(pointerInputEvent, positionCalculator, z10);
    }

    @NotNull
    public final LayoutNode getRoot() {
        return this.root;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:7:0x001b, B:9:0x0031, B:23:0x005d, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x007f, B:32:0x00a5, B:33:0x00b6, B:48:0x00ff, B:36:0x00cb, B:38:0x00d9, B:41:0x00e3, B:42:0x00e7, B:44:0x00ed, B:46:0x00f9, B:14:0x003e, B:15:0x0042, B:17:0x0048, B:19:0x0054), top: B:53:0x001b }] */
    /* renamed from: process-BIzXfog  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m3227processBIzXfog(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.PointerInputEvent r18, @org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.PositionCalculator r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerInputEventProcessor.m3227processBIzXfog(androidx.compose.ui.input.pointer.PointerInputEvent, androidx.compose.ui.input.pointer.PositionCalculator, boolean):int");
    }

    public final void processCancel() {
        this.pointerInputChangeEventProducer.clear();
        this.hitPathTracker.processCancel();
    }
}
