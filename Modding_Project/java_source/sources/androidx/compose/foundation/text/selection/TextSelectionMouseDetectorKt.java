package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TextSelectionMouseDetector.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextSelectionMouseDetectorKt {
    public static final double ClicksSlop = 100.0d;

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0042 -> B:18:0x0045). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitMouseEventDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, rs.c<? super androidx.compose.ui.input.pointer.PointerEvent> r10) {
        /*
            boolean r0 = r10 instanceof androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$awaitMouseEventDown$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$awaitMouseEventDown$1 r0 = (androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$awaitMouseEventDown$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$awaitMouseEventDown$1 r0 = new androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$awaitMouseEventDown$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r9 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r9
            kotlin.f.b(r10)
            goto L45
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            kotlin.f.b(r10)
        L38:
            androidx.compose.ui.input.pointer.PointerEventPass r10 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            r0.L$0 = r9
            r0.label = r3
            java.lang.Object r10 = r9.awaitPointerEvent(r10, r0)
            if (r10 != r1) goto L45
            return r1
        L45:
            androidx.compose.ui.input.pointer.PointerEvent r10 = (androidx.compose.ui.input.pointer.PointerEvent) r10
            int r2 = r10.m3153getButtonsry648PA()
            boolean r2 = androidx.compose.ui.input.pointer.PointerEvent_androidKt.m3186isPrimaryPressedaHzCxE(r2)
            if (r2 == 0) goto L38
            java.util.List r2 = r10.getChanges()
            int r4 = r2.size()
            r5 = 0
        L5a:
            if (r5 >= r4) goto L7b
            java.lang.Object r6 = r2.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            int r7 = r6.m3211getTypeT8wyACA()
            androidx.compose.ui.input.pointer.PointerType$Companion r8 = androidx.compose.ui.input.pointer.PointerType.Companion
            int r8 = r8.m3284getMouseT8wyACA()
            boolean r7 = androidx.compose.ui.input.pointer.PointerType.m3279equalsimpl0(r7, r8)
            if (r7 == 0) goto L38
            boolean r6 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDown(r6)
            if (r6 == 0) goto L38
            int r5 = r5 + 1
            goto L5a
        L7b:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt.awaitMouseEventDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope, rs.c):java.lang.Object");
    }

    @Nullable
    public static final Object mouseSelectionDetector(@NotNull PointerInputScope pointerInputScope, @NotNull MouseSelectionObserver mouseSelectionObserver, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new TextSelectionMouseDetectorKt$mouseSelectionDetector$2(mouseSelectionObserver, null), cVar);
        if (forEachGesture == kotlin.coroutines.intrinsics.a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }
}
