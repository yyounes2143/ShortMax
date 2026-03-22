package androidx.compose.material;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: DragGestureDetectorCopy.kt */
@Metadata
/* loaded from: classes.dex */
public final class DragGestureDetectorCopyKt {
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

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x011b -> B:47:0x0126). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x015c -> B:54:0x015e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x017e -> B:47:0x0126). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: awaitHorizontalPointerSlopOrCancellation-gDDlDlE  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1044awaitHorizontalPointerSlopOrCancellationgDDlDlE(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, int r23, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, kotlin.Unit> r24, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r25) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.DragGestureDetectorCopyKt.m1044awaitHorizontalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    /* renamed from: awaitPointerSlopOrCancellation-pn7EDYM  reason: not valid java name */
    private static final Object m1045awaitPointerSlopOrCancellationpn7EDYM(AwaitPointerEventScope awaitPointerEventScope, long j10, int i10, Function2<? super PointerInputChange, ? super Float, Unit> function2, Function1<? super Offset, Float> function1, c<? super PointerInputChange> cVar) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        PointerInputChange pointerInputChange3;
        long j11 = j10;
        if (m1046isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j11)) {
            return null;
        }
        float m1047pointerSlopE8SPZFQ = m1047pointerSlopE8SPZFQ(awaitPointerEventScope.getViewConfiguration(), i10);
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
                Intrinsics.checkNotNull(pointerInputChange);
                pointerInputChange2 = pointerInputChange;
                if (pointerInputChange2.isConsumed()) {
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
                    if (Math.abs(f10) < m1047pointerSlopE8SPZFQ) {
                        PointerEventPass pointerEventPass = PointerEventPass.Final;
                        InlineMarker.mark(0);
                        awaitPointerEventScope.awaitPointerEvent(pointerEventPass, cVar);
                        InlineMarker.mark(1);
                        if (pointerInputChange2.isConsumed()) {
                            return null;
                        }
                    } else {
                        function2.invoke(pointerInputChange2, Float.valueOf(f10 - (Math.signum(f10) * m1047pointerSlopE8SPZFQ)));
                    }
                }
            }
        } while (!pointerInputChange2.isConsumed());
        return pointerInputChange2;
    }

    /* renamed from: isPointerUp-DmW0f2w  reason: not valid java name */
    private static final boolean m1046isPointerUpDmW0f2w(PointerEvent pointerEvent, long j10) {
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
    public static final float m1047pointerSlopE8SPZFQ(@NotNull ViewConfiguration pointerSlop, int i10) {
        Intrinsics.checkNotNullParameter(pointerSlop, "$this$pointerSlop");
        if (PointerType.m3279equalsimpl0(i10, PointerType.Companion.m3284getMouseT8wyACA())) {
            return pointerSlop.getTouchSlop() * mouseToTouchSlopRatio;
        }
        return pointerSlop.getTouchSlop();
    }
}
