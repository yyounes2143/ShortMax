package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerInteropUtils.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInteropUtils_androidKt {
    public static final void emptyCancelMotionEventScope(long j10, @NotNull Function1<? super MotionEvent, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MotionEvent motionEvent = MotionEvent.obtain(j10, j10, 3, 0.0f, 0.0f, 0);
        motionEvent.setSource(0);
        Intrinsics.checkNotNullExpressionValue(motionEvent, "motionEvent");
        block.invoke(motionEvent);
        motionEvent.recycle();
    }

    public static /* synthetic */ void emptyCancelMotionEventScope$default(long j10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = SystemClock.uptimeMillis();
        }
        emptyCancelMotionEventScope(j10, function1);
    }

    /* renamed from: toCancelMotionEventScope-d-4ec7I  reason: not valid java name */
    public static final void m3266toCancelMotionEventScoped4ec7I(@NotNull PointerEvent toCancelMotionEventScope, long j10, @NotNull Function1<? super MotionEvent, Unit> block) {
        Intrinsics.checkNotNullParameter(toCancelMotionEventScope, "$this$toCancelMotionEventScope");
        Intrinsics.checkNotNullParameter(block, "block");
        m3268toMotionEventScopeubNVwUQ(toCancelMotionEventScope, j10, block, true);
    }

    /* renamed from: toMotionEventScope-d-4ec7I  reason: not valid java name */
    public static final void m3267toMotionEventScoped4ec7I(@NotNull PointerEvent toMotionEventScope, long j10, @NotNull Function1<? super MotionEvent, Unit> block) {
        Intrinsics.checkNotNullParameter(toMotionEventScope, "$this$toMotionEventScope");
        Intrinsics.checkNotNullParameter(block, "block");
        m3268toMotionEventScopeubNVwUQ(toMotionEventScope, j10, block, false);
    }

    /* renamed from: toMotionEventScope-ubNVwUQ  reason: not valid java name */
    private static final void m3268toMotionEventScopeubNVwUQ(PointerEvent pointerEvent, long j10, Function1<? super MotionEvent, Unit> function1, boolean z10) {
        MotionEvent motionEvent$ui_release = pointerEvent.getMotionEvent$ui_release();
        if (motionEvent$ui_release != null) {
            int action = motionEvent$ui_release.getAction();
            if (z10) {
                motionEvent$ui_release.setAction(3);
            }
            motionEvent$ui_release.offsetLocation(-Offset.m1606getXimpl(j10), -Offset.m1607getYimpl(j10));
            function1.invoke(motionEvent$ui_release);
            motionEvent$ui_release.offsetLocation(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
            motionEvent$ui_release.setAction(action);
            return;
        }
        throw new IllegalArgumentException("The PointerEvent receiver cannot have a null MotionEvent.");
    }
}
