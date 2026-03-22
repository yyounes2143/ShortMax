package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PointerEvent.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class PointerInputFilter {
    public static final int $stable = 8;
    private boolean isAttached;
    @Nullable
    private LayoutCoordinates layoutCoordinates;

    public boolean getInterceptOutOfBoundsChildEvents() {
        return false;
    }

    @Nullable
    public final LayoutCoordinates getLayoutCoordinates$ui_release() {
        return this.layoutCoordinates;
    }

    @ExperimentalComposeUiApi
    public boolean getShareWithSiblings() {
        return false;
    }

    /* renamed from: getSize-YbymL2g  reason: not valid java name */
    public final long m3228getSizeYbymL2g() {
        LayoutCoordinates layoutCoordinates = this.layoutCoordinates;
        if (layoutCoordinates != null) {
            return layoutCoordinates.mo3337getSizeYbymL2g();
        }
        return IntSize.Companion.m4214getZeroYbymL2g();
    }

    public final boolean isAttached$ui_release() {
        return this.isAttached;
    }

    public abstract void onCancel();

    /* renamed from: onPointerEvent-H0pRuoY  reason: not valid java name */
    public abstract void mo3229onPointerEventH0pRuoY(@NotNull PointerEvent pointerEvent, @NotNull PointerEventPass pointerEventPass, long j10);

    public final void setAttached$ui_release(boolean z10) {
        this.isAttached = z10;
    }

    public final void setLayoutCoordinates$ui_release(@Nullable LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates = layoutCoordinates;
    }

    @ExperimentalComposeUiApi
    public static /* synthetic */ void getShareWithSiblings$annotations() {
    }
}
