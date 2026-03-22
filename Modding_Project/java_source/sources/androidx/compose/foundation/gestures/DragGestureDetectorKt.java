package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: DragGestureDetector.kt */
@Metadata
/* loaded from: classes.dex */
public final class DragGestureDetectorKt {
    private static final float defaultTouchSlop;
    private static final float mouseSlop;
    private static final float mouseToTouchSlopRatio;

    static {
        float m4049constructorimpl = Dp.m4049constructorimpl((float) 0.125d);
        mouseSlop = m4049constructorimpl;
        float m4049constructorimpl2 = Dp.m4049constructorimpl(18);
        defaultTouchSlop = m4049constructorimpl2;
        mouseToTouchSlopRatio = m4049constructorimpl / m4049constructorimpl2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ca, code lost:
        if (androidx.compose.ui.input.pointer.PointerEventKt.positionChangedIgnoreConsumed(r11) != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0067 -> B:22:0x006c). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitDragOrCancellation-rnUCldI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m280awaitDragOrCancellationrnUCldI(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m280awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, rs.c):java.lang.Object");
    }

    /* renamed from: awaitDragOrUp-jO51t88  reason: not valid java name */
    private static final Object m281awaitDragOrUpjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j10, Function1<? super PointerInputChange, Boolean> function1, c<? super PointerInputChange> cVar) {
        PointerInputChange pointerInputChange;
        while (true) {
            int i10 = 0;
            InlineMarker.mark(0);
            PointerInputChange pointerInputChange2 = null;
            Object awaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, cVar, 1, null);
            InlineMarker.mark(1);
            PointerEvent pointerEvent = (PointerEvent) awaitPointerEvent$default;
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i11 = 0;
            while (true) {
                if (i11 < size) {
                    pointerInputChange = changes.get(i11);
                    if (PointerId.m3195equalsimpl0(pointerInputChange.m3207getIdJ3iCeTQ(), j10)) {
                        break;
                    }
                    i11++;
                } else {
                    pointerInputChange = null;
                    break;
                }
            }
            PointerInputChange pointerInputChange3 = pointerInputChange;
            if (pointerInputChange3 == null) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                int size2 = changes2.size();
                while (true) {
                    if (i10 >= size2) {
                        break;
                    }
                    PointerInputChange pointerInputChange4 = changes2.get(i10);
                    if (pointerInputChange4.getPressed()) {
                        pointerInputChange2 = pointerInputChange4;
                        break;
                    }
                    i10++;
                }
                PointerInputChange pointerInputChange5 = pointerInputChange2;
                if (pointerInputChange5 == null) {
                    return pointerInputChange3;
                }
                j10 = pointerInputChange5.m3207getIdJ3iCeTQ();
            } else if (function1.invoke(pointerInputChange3).booleanValue()) {
                return pointerInputChange3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d4, code lost:
        if (r9 == 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0067 -> B:22:0x006c). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitHorizontalDragOrCancellation-rnUCldI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m282awaitHorizontalDragOrCancellationrnUCldI(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m282awaitHorizontalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x011b -> B:50:0x0126). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x015c -> B:57:0x015e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x017e -> B:50:0x0126). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitHorizontalPointerSlopOrCancellation-gDDlDlE  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m283awaitHorizontalPointerSlopOrCancellationgDDlDlE(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, int r23, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r24, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r25) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m283awaitHorizontalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e6 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x011f -> B:50:0x012a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0160 -> B:57:0x0162). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0182 -> B:50:0x012a). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitHorizontalTouchSlopOrCancellation-jO51t88  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m284awaitHorizontalTouchSlopOrCancellationjO51t88(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r23, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m284awaitHorizontalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.compose.ui.input.pointer.PointerInputChange, T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v4, types: [androidx.compose.ui.input.pointer.PointerInputChange] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitLongPressOrCancellation(androidx.compose.ui.input.pointer.PointerInputScope r8, androidx.compose.ui.input.pointer.PointerInputChange r9, rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r10) {
        /*
            boolean r0 = r10 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r8 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r8 = (kotlin.jvm.internal.Ref.ObjectRef) r8
            java.lang.Object r9 = r0.L$0
            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
            kotlin.f.b(r10)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L64
            goto L6d
        L32:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3a:
            kotlin.f.b(r10)
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            r2.element = r9
            androidx.compose.ui.platform.ViewConfiguration r5 = r8.getViewConfiguration()
            long r5 = r5.getLongPressTimeoutMillis()
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2 r7 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L63
            r7.<init>(r8, r2, r10, r3)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L63
            r0.L$0 = r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L63
            r0.L$1 = r10     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L63
            r0.label = r4     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L63
            java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.c(r5, r7, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L63
            if (r8 != r1) goto L6d
            return r1
        L63:
            r8 = r10
        L64:
            T r8 = r8.element
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto L6c
            r3 = r9
            goto L6d
        L6c:
            r3 = r8
        L6d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.awaitLongPressOrCancellation(androidx.compose.ui.input.pointer.PointerInputScope, androidx.compose.ui.input.pointer.PointerInputChange, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ab A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0156 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0114 -> B:51:0x011f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x016f -> B:65:0x0175). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitPointerSlopOrCancellation-gDDlDlE  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m285awaitPointerSlopOrCancellationgDDlDlE(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, int r22, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, kotlin.Unit> r23, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m285awaitPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    /* renamed from: awaitPointerSlopOrCancellation-pn7EDYM  reason: not valid java name */
    private static final Object m286awaitPointerSlopOrCancellationpn7EDYM(AwaitPointerEventScope awaitPointerEventScope, long j10, int i10, Function2<? super PointerInputChange, ? super Float, Unit> function2, Function1<? super Offset, Float> function1, c<? super PointerInputChange> cVar) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        PointerInputChange pointerInputChange3;
        long j11 = j10;
        if (m294isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j11)) {
            return null;
        }
        float m295pointerSlopE8SPZFQ = m295pointerSlopE8SPZFQ(awaitPointerEventScope.getViewConfiguration(), i10);
        do {
            float f10 = 0.0f;
            while (true) {
                InlineMarker.mark(0);
                Object awaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, cVar, 1, null);
                InlineMarker.mark(1);
                PointerEvent pointerEvent = (PointerEvent) awaitPointerEvent$default;
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int size = changes.size();
                int i11 = 0;
                while (true) {
                    if (i11 < size) {
                        pointerInputChange = changes.get(i11);
                        if (PointerId.m3195equalsimpl0(pointerInputChange.m3207getIdJ3iCeTQ(), j11)) {
                            break;
                        }
                        i11++;
                    } else {
                        pointerInputChange = null;
                        break;
                    }
                }
                pointerInputChange2 = pointerInputChange;
                if (pointerInputChange2 == null || pointerInputChange2.isConsumed()) {
                    return null;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange2)) {
                    List<PointerInputChange> changes2 = pointerEvent.getChanges();
                    int size2 = changes2.size();
                    int i12 = 0;
                    while (true) {
                        if (i12 < size2) {
                            pointerInputChange3 = changes2.get(i12);
                            if (pointerInputChange3.getPressed()) {
                                break;
                            }
                            i12++;
                        } else {
                            pointerInputChange3 = null;
                            break;
                        }
                    }
                    PointerInputChange pointerInputChange4 = pointerInputChange3;
                    if (pointerInputChange4 == null) {
                        return null;
                    }
                    j11 = pointerInputChange4.m3207getIdJ3iCeTQ();
                } else {
                    f10 += function1.invoke(Offset.m1595boximpl(pointerInputChange2.m3208getPositionF1C5BW0())).floatValue() - function1.invoke(Offset.m1595boximpl(pointerInputChange2.m3209getPreviousPositionF1C5BW0())).floatValue();
                    if (Math.abs(f10) < m295pointerSlopE8SPZFQ) {
                        PointerEventPass pointerEventPass = PointerEventPass.Final;
                        InlineMarker.mark(0);
                        awaitPointerEventScope.awaitPointerEvent(pointerEventPass, cVar);
                        InlineMarker.mark(1);
                        if (pointerInputChange2.isConsumed()) {
                            return null;
                        }
                    } else {
                        function2.invoke(pointerInputChange2, Float.valueOf(f10 - (Math.signum(f10) * m295pointerSlopE8SPZFQ)));
                    }
                }
            }
        } while (!pointerInputChange2.isConsumed());
        return pointerInputChange2;
    }

    @Nullable
    /* renamed from: awaitTouchSlopOrCancellation-jO51t88  reason: not valid java name */
    public static final Object m287awaitTouchSlopOrCancellationjO51t88(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10, @NotNull Function2<? super PointerInputChange, ? super Offset, Unit> function2, @NotNull c<? super PointerInputChange> cVar) {
        return m285awaitPointerSlopOrCancellationgDDlDlE(awaitPointerEventScope, j10, PointerType.Companion.m3286getTouchT8wyACA(), function2, cVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d4, code lost:
        if (r9 == 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0067 -> B:22:0x006c). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitVerticalDragOrCancellation-rnUCldI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m288awaitVerticalDragOrCancellationrnUCldI(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m288awaitVerticalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x011b -> B:50:0x0126). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x015c -> B:57:0x015e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x017e -> B:50:0x0126). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitVerticalPointerSlopOrCancellation-gDDlDlE  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m289awaitVerticalPointerSlopOrCancellationgDDlDlE(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, int r23, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r24, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r25) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m289awaitVerticalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e6 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x011f -> B:50:0x012a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0160 -> B:57:0x0162). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0182 -> B:50:0x012a). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitVerticalTouchSlopOrCancellation-jO51t88  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m290awaitVerticalTouchSlopOrCancellationjO51t88(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r23, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m290awaitVerticalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    @Nullable
    public static final Object detectDragGestures(@NotNull PointerInputScope pointerInputScope, @NotNull Function1<? super Offset, Unit> function1, @NotNull Function0<Unit> function0, @NotNull Function0<Unit> function02, @NotNull Function2<? super PointerInputChange, ? super Offset, Unit> function2, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new DragGestureDetectorKt$detectDragGestures$5(function1, function2, function02, function0, null), cVar);
        if (forEachGesture == a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object detectDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m297invokek4lQ0M(offset.m1616unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                public final void m297invokek4lQ0M(long j10) {
                }
            };
        }
        Function1 function12 = function1;
        if ((i10 & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$3
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        Function0 function03 = function0;
        if ((i10 & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$4
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        return detectDragGestures(pointerInputScope, function12, function03, function02, function2, cVar);
    }

    @Nullable
    public static final Object detectDragGesturesAfterLongPress(@NotNull PointerInputScope pointerInputScope, @NotNull Function1<? super Offset, Unit> function1, @NotNull Function0<Unit> function0, @NotNull Function0<Unit> function02, @NotNull Function2<? super PointerInputChange, ? super Offset, Unit> function2, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new DragGestureDetectorKt$detectDragGesturesAfterLongPress$5(function1, function02, function0, function2, null), cVar);
        if (forEachGesture == a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object detectDragGesturesAfterLongPress$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m299invokek4lQ0M(offset.m1616unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                public final void m299invokek4lQ0M(long j10) {
                }
            };
        }
        Function1 function12 = function1;
        if ((i10 & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$3
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        Function0 function03 = function0;
        if ((i10 & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$4
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        return detectDragGesturesAfterLongPress(pointerInputScope, function12, function03, function02, function2, cVar);
    }

    @Nullable
    public static final Object detectHorizontalDragGestures(@NotNull PointerInputScope pointerInputScope, @NotNull Function1<? super Offset, Unit> function1, @NotNull Function0<Unit> function0, @NotNull Function0<Unit> function02, @NotNull Function2<? super PointerInputChange, ? super Float, Unit> function2, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new DragGestureDetectorKt$detectHorizontalDragGestures$5(function1, function2, function0, function02, null), cVar);
        if (forEachGesture == a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object detectHorizontalDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m300invokek4lQ0M(offset.m1616unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                public final void m300invokek4lQ0M(long j10) {
                }
            };
        }
        Function1 function12 = function1;
        if ((i10 & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$3
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        Function0 function03 = function0;
        if ((i10 & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$4
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        return detectHorizontalDragGestures(pointerInputScope, function12, function03, function02, function2, cVar);
    }

    @Nullable
    public static final Object detectVerticalDragGestures(@NotNull PointerInputScope pointerInputScope, @NotNull Function1<? super Offset, Unit> function1, @NotNull Function0<Unit> function0, @NotNull Function0<Unit> function02, @NotNull Function2<? super PointerInputChange, ? super Float, Unit> function2, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new DragGestureDetectorKt$detectVerticalDragGestures$5(function1, function2, function0, function02, null), cVar);
        if (forEachGesture == a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object detectVerticalDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m301invokek4lQ0M(offset.m1616unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                public final void m301invokek4lQ0M(long j10) {
                }
            };
        }
        Function1 function12 = function1;
        if ((i10 & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$3
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        Function0 function03 = function0;
        if ((i10 & 4) != 0) {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$4
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        return detectVerticalDragGestures(pointerInputScope, function12, function03, function02, function2, cVar);
    }

    /* renamed from: drag-VnAYq1g  reason: not valid java name */
    private static final Object m291dragVnAYq1g(AwaitPointerEventScope awaitPointerEventScope, long j10, Function1<? super PointerInputChange, Unit> function1, Function1<? super PointerInputChange, Float> function12, Function1<? super PointerInputChange, Boolean> function13, c<? super Boolean> cVar) {
        PointerInputChange pointerInputChange;
        long j11 = j10;
        if (m294isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j11)) {
            return Boolean.FALSE;
        }
        while (true) {
            int i10 = 0;
            InlineMarker.mark(0);
            PointerInputChange pointerInputChange2 = null;
            Object awaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, cVar, 1, null);
            InlineMarker.mark(1);
            PointerEvent pointerEvent = (PointerEvent) awaitPointerEvent$default;
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i11 = 0;
            while (true) {
                if (i11 < size) {
                    pointerInputChange = changes.get(i11);
                    if (PointerId.m3195equalsimpl0(pointerInputChange.m3207getIdJ3iCeTQ(), j11)) {
                        break;
                    }
                    i11++;
                } else {
                    pointerInputChange = null;
                    break;
                }
            }
            PointerInputChange pointerInputChange3 = pointerInputChange;
            if (pointerInputChange3 != null) {
                if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
                    List<PointerInputChange> changes2 = pointerEvent.getChanges();
                    int size2 = changes2.size();
                    while (true) {
                        if (i10 >= size2) {
                            break;
                        }
                        PointerInputChange pointerInputChange4 = changes2.get(i10);
                        if (pointerInputChange4.getPressed()) {
                            pointerInputChange2 = pointerInputChange4;
                            break;
                        }
                        i10++;
                    }
                    PointerInputChange pointerInputChange5 = pointerInputChange2;
                    if (pointerInputChange5 != null) {
                        j11 = pointerInputChange5.m3207getIdJ3iCeTQ();
                    } else {
                        pointerInputChange2 = pointerInputChange3;
                    }
                } else {
                    if (function12.invoke(pointerInputChange3).floatValue() == 0.0f) {
                        i10 = 1;
                    }
                    if (i10 == 0) {
                        pointerInputChange2 = pointerInputChange3;
                    } else {
                        continue;
                    }
                }
            }
            if (pointerInputChange2 != null) {
                if (function13.invoke(pointerInputChange2).booleanValue()) {
                    return Boolean.FALSE;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange2)) {
                    return Boolean.TRUE;
                }
                function1.invoke(pointerInputChange2);
                j11 = pointerInputChange2.m3207getIdJ3iCeTQ();
            } else {
                return Boolean.FALSE;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0055  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0048 -> B:18:0x004b). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: drag-jO51t88  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m292dragjO51t88(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r4, long r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, kotlin.Unit> r7, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.L$1
            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
            kotlin.f.b(r8)
            r7 = r4
            r4 = r5
            goto L4b
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            kotlin.f.b(r8)
        L3e:
            r0.L$0 = r4
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r8 = m280awaitDragOrCancellationrnUCldI(r4, r5, r0)
            if (r8 != r1) goto L4b
            return r1
        L4b:
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto L55
            r4 = 0
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.a.a(r4)
            return r4
        L55:
            boolean r5 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUpIgnoreConsumed(r8)
            if (r5 == 0) goto L60
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r4
        L60:
            r7.invoke(r8)
            long r5 = r8.m3207getIdJ3iCeTQ()
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m292dragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f5, code lost:
        if (r0 == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007e -> B:23:0x0083). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: horizontalDrag-jO51t88  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m293horizontalDragjO51t88(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, kotlin.Unit> r21, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r22) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m293horizontalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isPointerUp-DmW0f2w  reason: not valid java name */
    public static final boolean m294isPointerUpDmW0f2w(PointerEvent pointerEvent, long j10) {
        PointerInputChange pointerInputChange;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                pointerInputChange = changes.get(i10);
                if (PointerId.m3195equalsimpl0(pointerInputChange.m3207getIdJ3iCeTQ(), j10)) {
                    break;
                }
                i10++;
            } else {
                pointerInputChange = null;
                break;
            }
        }
        PointerInputChange pointerInputChange2 = pointerInputChange;
        if (pointerInputChange2 != null && pointerInputChange2.getPressed()) {
            z10 = true;
        }
        return true ^ z10;
    }

    /* renamed from: pointerSlop-E8SPZFQ  reason: not valid java name */
    public static final float m295pointerSlopE8SPZFQ(@NotNull ViewConfiguration pointerSlop, int i10) {
        Intrinsics.checkNotNullParameter(pointerSlop, "$this$pointerSlop");
        if (PointerType.m3279equalsimpl0(i10, PointerType.Companion.m3284getMouseT8wyACA())) {
            return pointerSlop.getTouchSlop() * mouseToTouchSlopRatio;
        }
        return pointerSlop.getTouchSlop();
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f5, code lost:
        if (r0 == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007e -> B:23:0x0083). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: verticalDrag-jO51t88  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m296verticalDragjO51t88(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, kotlin.Unit> r21, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r22) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m296verticalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }
}
