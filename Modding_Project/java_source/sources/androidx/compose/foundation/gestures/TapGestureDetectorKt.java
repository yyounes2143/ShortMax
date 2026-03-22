package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TapGestureDetector.kt */
@Metadata
/* loaded from: classes.dex */
public final class TapGestureDetectorKt {
    @NotNull
    private static final n<PressGestureScope, Offset, c<? super Unit>, Object> NoPressGesture = new TapGestureDetectorKt$NoPressGesture$1(null);

    @Nullable
    public static final Object awaitFirstDown(@NotNull AwaitPointerEventScope awaitPointerEventScope, boolean z10, @NotNull c<? super PointerInputChange> cVar) {
        return awaitFirstDownOnPass(awaitPointerEventScope, PointerEventPass.Main, z10, cVar);
    }

    public static /* synthetic */ Object awaitFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z10, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return awaitFirstDown(awaitPointerEventScope, z10, cVar);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0076 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:18:0x0050). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitFirstDownOnPass(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, @org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.PointerEventPass r10, boolean r11, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDownOnPass$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r9 = r0.Z$0
            java.lang.Object r10 = r0.L$1
            androidx.compose.ui.input.pointer.PointerEventPass r10 = (androidx.compose.ui.input.pointer.PointerEventPass) r10
            java.lang.Object r11 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r11 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r11
            kotlin.f.b(r12)
            r8 = r11
            r11 = r9
            r9 = r8
            goto L50
        L36:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3e:
            kotlin.f.b(r12)
        L41:
            r0.L$0 = r9
            r0.L$1 = r10
            r0.Z$0 = r11
            r0.label = r3
            java.lang.Object r12 = r9.awaitPointerEvent(r10, r0)
            if (r12 != r1) goto L50
            return r1
        L50:
            androidx.compose.ui.input.pointer.PointerEvent r12 = (androidx.compose.ui.input.pointer.PointerEvent) r12
            java.util.List r2 = r12.getChanges()
            int r4 = r2.size()
            r5 = 0
            r6 = r5
        L5c:
            if (r6 >= r4) goto L76
            java.lang.Object r7 = r2.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            if (r11 == 0) goto L6b
            boolean r7 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDown(r7)
            goto L6f
        L6b:
            boolean r7 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDownIgnoreConsumed(r7)
        L6f:
            if (r7 != 0) goto L73
            r2 = r5
            goto L77
        L73:
            int r6 = r6 + 1
            goto L5c
        L76:
            r2 = r3
        L77:
            if (r2 == 0) goto L41
            java.util.List r9 = r12.getChanges()
            java.lang.Object r9 = r9.get(r5)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDownOnPass(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerEventPass, boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object awaitSecondDown(AwaitPointerEventScope awaitPointerEventScope, PointerInputChange pointerInputChange, c<? super PointerInputChange> cVar) {
        return awaitPointerEventScope.withTimeoutOrNull(awaitPointerEventScope.getViewConfiguration().getDoubleTapTimeoutMillis(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange, null), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052 A[LOOP:0: B:19:0x0050->B:20:0x0052, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0041 -> B:18:0x0044). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object consumeUntilUp(androidx.compose.ui.input.pointer.AwaitPointerEventScope r8, rs.c<? super kotlin.Unit> r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r8 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r8
            kotlin.f.b(r9)
            goto L44
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.f.b(r9)
        L38:
            r0.L$0 = r8
            r0.label = r3
            r9 = 0
            java.lang.Object r9 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r8, r9, r0, r3, r9)
            if (r9 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
            java.util.List r2 = r9.getChanges()
            int r4 = r2.size()
            r5 = 0
            r6 = r5
        L50:
            if (r6 >= r4) goto L5e
            java.lang.Object r7 = r2.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            r7.consume()
            int r6 = r6 + 1
            goto L50
        L5e:
            java.util.List r9 = r9.getChanges()
            int r2 = r9.size()
        L66:
            if (r5 >= r2) goto L78
            java.lang.Object r4 = r9.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
            boolean r4 = r4.getPressed()
            if (r4 == 0) goto L75
            goto L38
        L75:
            int r5 = r5 + 1
            goto L66
        L78:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.consumeUntilUp(androidx.compose.ui.input.pointer.AwaitPointerEventScope, rs.c):java.lang.Object");
    }

    @Nullable
    public static final Object detectTapAndPress(@NotNull PointerInputScope pointerInputScope, @NotNull n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, @Nullable Function1<? super Offset, Unit> function1, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new TapGestureDetectorKt$detectTapAndPress$2(new PressGestureScopeImpl(pointerInputScope), nVar, function1, null), cVar);
        if (forEachGesture == a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object detectTapAndPress$default(PointerInputScope pointerInputScope, n nVar, Function1 function1, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            nVar = NoPressGesture;
        }
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        return detectTapAndPress(pointerInputScope, nVar, function1, cVar);
    }

    @Nullable
    public static final Object detectTapGestures(@NotNull PointerInputScope pointerInputScope, @Nullable Function1<? super Offset, Unit> function1, @Nullable Function1<? super Offset, Unit> function12, @NotNull n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, @Nullable Function1<? super Offset, Unit> function13, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new TapGestureDetectorKt$detectTapGestures$2(pointerInputScope, nVar, function12, function1, function13, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object detectTapGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function1 function12, n nVar, Function1 function13, c cVar, int i10, Object obj) {
        Function1 function14;
        Function1 function15;
        Function1 function16;
        if ((i10 & 1) != 0) {
            function14 = null;
        } else {
            function14 = function1;
        }
        if ((i10 & 2) != 0) {
            function15 = null;
        } else {
            function15 = function12;
        }
        if ((i10 & 4) != 0) {
            nVar = NoPressGesture;
        }
        n nVar2 = nVar;
        if ((i10 & 8) != 0) {
            function16 = null;
        } else {
            function16 = function13;
        }
        return detectTapGestures(pointerInputScope, function14, function15, nVar2, function16, cVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0095, code lost:
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00a0 -> B:36:0x00a3). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object waitForUpOrCancellation(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r13, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r14) {
        /*
            boolean r0 = r14 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForUpOrCancellation$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForUpOrCancellation$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForUpOrCancellation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForUpOrCancellation$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForUpOrCancellation$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 0
            r6 = 1
            if (r2 == 0) goto L43
            if (r2 == r6) goto L3b
            if (r2 != r4) goto L33
            java.lang.Object r13 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r13 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r13
            kotlin.f.b(r14)
            goto La3
        L33:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L3b:
            java.lang.Object r13 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r13 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r13
            kotlin.f.b(r14)
            goto L53
        L43:
            kotlin.f.b(r14)
        L46:
            androidx.compose.ui.input.pointer.PointerEventPass r14 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            r0.L$0 = r13
            r0.label = r6
            java.lang.Object r14 = r13.awaitPointerEvent(r14, r0)
            if (r14 != r1) goto L53
            return r1
        L53:
            androidx.compose.ui.input.pointer.PointerEvent r14 = (androidx.compose.ui.input.pointer.PointerEvent) r14
            java.util.List r2 = r14.getChanges()
            int r7 = r2.size()
            r8 = r5
        L5e:
            if (r8 >= r7) goto Lc3
            java.lang.Object r9 = r2.get(r8)
            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
            boolean r9 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUp(r9)
            if (r9 != 0) goto Lc0
            java.util.List r14 = r14.getChanges()
            int r2 = r14.size()
            r7 = r5
        L75:
            if (r7 >= r2) goto L96
            java.lang.Object r8 = r14.get(r7)
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            boolean r9 = r8.isConsumed()
            if (r9 != 0) goto L95
            long r9 = r13.mo3126getSizeYbymL2g()
            long r11 = r13.mo3125getExtendedTouchPaddingNHjbRc()
            boolean r8 = androidx.compose.ui.input.pointer.PointerEventKt.m3158isOutOfBoundsjwHxaWs(r8, r9, r11)
            if (r8 == 0) goto L92
            goto L95
        L92:
            int r7 = r7 + 1
            goto L75
        L95:
            return r3
        L96:
            androidx.compose.ui.input.pointer.PointerEventPass r14 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            r0.L$0 = r13
            r0.label = r4
            java.lang.Object r14 = r13.awaitPointerEvent(r14, r0)
            if (r14 != r1) goto La3
            return r1
        La3:
            androidx.compose.ui.input.pointer.PointerEvent r14 = (androidx.compose.ui.input.pointer.PointerEvent) r14
            java.util.List r14 = r14.getChanges()
            int r2 = r14.size()
            r7 = r5
        Lae:
            if (r7 >= r2) goto L46
            java.lang.Object r8 = r14.get(r7)
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            boolean r8 = r8.isConsumed()
            if (r8 == 0) goto Lbd
            return r3
        Lbd:
            int r7 = r7 + 1
            goto Lae
        Lc0:
            int r8 = r8 + 1
            goto L5e
        Lc3:
            java.util.List r13 = r14.getChanges()
            java.lang.Object r13 = r13.get(r5)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(androidx.compose.ui.input.pointer.AwaitPointerEventScope, rs.c):java.lang.Object");
    }
}
