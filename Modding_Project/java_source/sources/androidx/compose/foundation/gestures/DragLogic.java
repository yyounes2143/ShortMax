package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Draggable.kt */
@Metadata
/* loaded from: classes.dex */
public final class DragLogic {
    @NotNull
    private final MutableState<DragInteraction.Start> dragStartInteraction;
    @Nullable
    private final MutableInteractionSource interactionSource;
    @NotNull
    private final n<g0, Offset, c<? super Unit>, Object> onDragStarted;
    @NotNull
    private final n<g0, Float, c<? super Unit>, Object> onDragStopped;

    /* JADX WARN: Multi-variable type inference failed */
    public DragLogic(@NotNull n<? super g0, ? super Offset, ? super c<? super Unit>, ? extends Object> onDragStarted, @NotNull n<? super g0, ? super Float, ? super c<? super Unit>, ? extends Object> onDragStopped, @NotNull MutableState<DragInteraction.Start> dragStartInteraction, @Nullable MutableInteractionSource mutableInteractionSource) {
        Intrinsics.checkNotNullParameter(onDragStarted, "onDragStarted");
        Intrinsics.checkNotNullParameter(onDragStopped, "onDragStopped");
        Intrinsics.checkNotNullParameter(dragStartInteraction, "dragStartInteraction");
        this.onDragStarted = onDragStarted;
        this.onDragStopped = onDragStopped;
        this.dragStartInteraction = dragStartInteraction;
        this.interactionSource = mutableInteractionSource;
    }

    @NotNull
    public final MutableState<DragInteraction.Start> getDragStartInteraction() {
        return this.dragStartInteraction;
    }

    @Nullable
    public final MutableInteractionSource getInteractionSource() {
        return this.interactionSource;
    }

    @NotNull
    public final n<g0, Offset, c<? super Unit>, Object> getOnDragStarted() {
        return this.onDragStarted;
    }

    @NotNull
    public final n<g0, Float, c<? super Unit>, Object> getOnDragStopped() {
        return this.onDragStopped;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragCancel(@org.jetbrains.annotations.NotNull gt.g0 r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.DragLogic$processDragCancel$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.gestures.DragLogic$processDragCancel$1 r0 = (androidx.compose.foundation.gestures.DragLogic$processDragCancel$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragLogic$processDragCancel$1 r0 = new androidx.compose.foundation.gestures.DragLogic$processDragCancel$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.f.b(r9)
            goto L80
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            java.lang.Object r8 = r0.L$1
            gt.g0 r8 = (gt.g0) r8
            java.lang.Object r2 = r0.L$0
            androidx.compose.foundation.gestures.DragLogic r2 = (androidx.compose.foundation.gestures.DragLogic) r2
            kotlin.f.b(r9)
            goto L65
        L41:
            kotlin.f.b(r9)
            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.DragInteraction$Start> r9 = r7.dragStartInteraction
            java.lang.Object r9 = r9.getValue()
            androidx.compose.foundation.interaction.DragInteraction$Start r9 = (androidx.compose.foundation.interaction.DragInteraction.Start) r9
            if (r9 == 0) goto L6b
            androidx.compose.foundation.interaction.MutableInteractionSource r2 = r7.interactionSource
            if (r2 == 0) goto L64
            androidx.compose.foundation.interaction.DragInteraction$Cancel r6 = new androidx.compose.foundation.interaction.DragInteraction$Cancel
            r6.<init>(r9)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r4
            java.lang.Object r9 = r2.emit(r6, r0)
            if (r9 != r1) goto L64
            return r1
        L64:
            r2 = r7
        L65:
            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.DragInteraction$Start> r9 = r2.dragStartInteraction
            r9.setValue(r5)
            goto L6c
        L6b:
            r2 = r7
        L6c:
            at.n<gt.g0, java.lang.Float, rs.c<? super kotlin.Unit>, java.lang.Object> r9 = r2.onDragStopped
            r2 = 0
            java.lang.Float r2 = kotlin.coroutines.jvm.internal.a.c(r2)
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r8 = r9.invoke(r8, r2, r0)
            if (r8 != r1) goto L80
            return r1
        L80:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragLogic.processDragCancel(gt.g0, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c3 A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragStart(@org.jetbrains.annotations.NotNull gt.g0 r8, @org.jetbrains.annotations.NotNull androidx.compose.foundation.gestures.DragEvent.DragStarted r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof androidx.compose.foundation.gestures.DragLogic$processDragStart$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.gestures.DragLogic$processDragStart$1 r0 = (androidx.compose.foundation.gestures.DragLogic$processDragStart$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragLogic$processDragStart$1 r0 = new androidx.compose.foundation.gestures.DragLogic$processDragStart$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L5d
            if (r2 == r5) goto L4c
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.f.b(r10)
            goto Lc4
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            java.lang.Object r8 = r0.L$3
            androidx.compose.foundation.interaction.DragInteraction$Start r8 = (androidx.compose.foundation.interaction.DragInteraction.Start) r8
            java.lang.Object r9 = r0.L$2
            androidx.compose.foundation.gestures.DragEvent$DragStarted r9 = (androidx.compose.foundation.gestures.DragEvent.DragStarted) r9
            java.lang.Object r2 = r0.L$1
            gt.g0 r2 = (gt.g0) r2
            java.lang.Object r4 = r0.L$0
            androidx.compose.foundation.gestures.DragLogic r4 = (androidx.compose.foundation.gestures.DragLogic) r4
            kotlin.f.b(r10)
            goto La0
        L4c:
            java.lang.Object r8 = r0.L$2
            r9 = r8
            androidx.compose.foundation.gestures.DragEvent$DragStarted r9 = (androidx.compose.foundation.gestures.DragEvent.DragStarted) r9
            java.lang.Object r8 = r0.L$1
            gt.g0 r8 = (gt.g0) r8
            java.lang.Object r2 = r0.L$0
            androidx.compose.foundation.gestures.DragLogic r2 = (androidx.compose.foundation.gestures.DragLogic) r2
            kotlin.f.b(r10)
            goto L83
        L5d:
            kotlin.f.b(r10)
            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.DragInteraction$Start> r10 = r7.dragStartInteraction
            java.lang.Object r10 = r10.getValue()
            androidx.compose.foundation.interaction.DragInteraction$Start r10 = (androidx.compose.foundation.interaction.DragInteraction.Start) r10
            if (r10 == 0) goto L82
            androidx.compose.foundation.interaction.MutableInteractionSource r2 = r7.interactionSource
            if (r2 == 0) goto L82
            androidx.compose.foundation.interaction.DragInteraction$Cancel r6 = new androidx.compose.foundation.interaction.DragInteraction$Cancel
            r6.<init>(r10)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r5
            java.lang.Object r10 = r2.emit(r6, r0)
            if (r10 != r1) goto L82
            return r1
        L82:
            r2 = r7
        L83:
            androidx.compose.foundation.interaction.DragInteraction$Start r10 = new androidx.compose.foundation.interaction.DragInteraction$Start
            r10.<init>()
            androidx.compose.foundation.interaction.MutableInteractionSource r5 = r2.interactionSource
            if (r5 == 0) goto La3
            r0.L$0 = r2
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r10
            r0.label = r4
            java.lang.Object r4 = r5.emit(r10, r0)
            if (r4 != r1) goto L9d
            return r1
        L9d:
            r4 = r2
            r2 = r8
            r8 = r10
        La0:
            r10 = r8
            r8 = r2
            r2 = r4
        La3:
            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.DragInteraction$Start> r4 = r2.dragStartInteraction
            r4.setValue(r10)
            at.n<gt.g0, androidx.compose.ui.geometry.Offset, rs.c<? super kotlin.Unit>, java.lang.Object> r10 = r2.onDragStarted
            long r4 = r9.m278getStartPointF1C5BW0()
            androidx.compose.ui.geometry.Offset r9 = androidx.compose.ui.geometry.Offset.m1595boximpl(r4)
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.L$2 = r2
            r0.L$3 = r2
            r0.label = r3
            java.lang.Object r8 = r10.invoke(r8, r9, r0)
            if (r8 != r1) goto Lc4
            return r1
        Lc4:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragLogic.processDragStart(gt.g0, androidx.compose.foundation.gestures.DragEvent$DragStarted, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008b A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragStop(@org.jetbrains.annotations.NotNull gt.g0 r8, @org.jetbrains.annotations.NotNull androidx.compose.foundation.gestures.DragEvent.DragStopped r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof androidx.compose.foundation.gestures.DragLogic$processDragStop$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.gestures.DragLogic$processDragStop$1 r0 = (androidx.compose.foundation.gestures.DragLogic$processDragStop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragLogic$processDragStop$1 r0 = new androidx.compose.foundation.gestures.DragLogic$processDragStop$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L46
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.f.b(r10)
            goto L8c
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            java.lang.Object r8 = r0.L$2
            r9 = r8
            androidx.compose.foundation.gestures.DragEvent$DragStopped r9 = (androidx.compose.foundation.gestures.DragEvent.DragStopped) r9
            java.lang.Object r8 = r0.L$1
            gt.g0 r8 = (gt.g0) r8
            java.lang.Object r2 = r0.L$0
            androidx.compose.foundation.gestures.DragLogic r2 = (androidx.compose.foundation.gestures.DragLogic) r2
            kotlin.f.b(r10)
            goto L6c
        L46:
            kotlin.f.b(r10)
            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.DragInteraction$Start> r10 = r7.dragStartInteraction
            java.lang.Object r10 = r10.getValue()
            androidx.compose.foundation.interaction.DragInteraction$Start r10 = (androidx.compose.foundation.interaction.DragInteraction.Start) r10
            if (r10 == 0) goto L72
            androidx.compose.foundation.interaction.MutableInteractionSource r2 = r7.interactionSource
            if (r2 == 0) goto L6b
            androidx.compose.foundation.interaction.DragInteraction$Stop r6 = new androidx.compose.foundation.interaction.DragInteraction$Stop
            r6.<init>(r10)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r4
            java.lang.Object r10 = r2.emit(r6, r0)
            if (r10 != r1) goto L6b
            return r1
        L6b:
            r2 = r7
        L6c:
            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.DragInteraction$Start> r10 = r2.dragStartInteraction
            r10.setValue(r5)
            goto L73
        L72:
            r2 = r7
        L73:
            at.n<gt.g0, java.lang.Float, rs.c<? super kotlin.Unit>, java.lang.Object> r10 = r2.onDragStopped
            float r9 = r9.getVelocity()
            java.lang.Float r9 = kotlin.coroutines.jvm.internal.a.c(r9)
            r0.L$0 = r5
            r0.L$1 = r5
            r0.L$2 = r5
            r0.label = r3
            java.lang.Object r8 = r10.invoke(r8, r9, r0)
            if (r8 != r1) goto L8c
            return r1
        L8c:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragLogic.processDragStop(gt.g0, androidx.compose.foundation.gestures.DragEvent$DragStopped, rs.c):java.lang.Object");
    }
}
