package androidx.compose.foundation.text.selection;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidSelectionHandles.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class HandlePositionProvider implements PopupPositionProvider {
    @NotNull
    private final HandleReferencePoint handleReferencePoint;
    private final long offset;

    /* compiled from: AndroidSelectionHandles.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HandleReferencePoint.values().length];
            iArr[HandleReferencePoint.TopLeft.ordinal()] = 1;
            iArr[HandleReferencePoint.TopRight.ordinal()] = 2;
            iArr[HandleReferencePoint.TopMiddle.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ HandlePositionProvider(HandleReferencePoint handleReferencePoint, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(handleReferencePoint, j10);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4  reason: not valid java name */
    public long mo809calculatePositionllwVHH4(@NotNull IntRect anchorBounds, long j10, @NotNull LayoutDirection layoutDirection, long j11) {
        Intrinsics.checkNotNullParameter(anchorBounds, "anchorBounds");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.handleReferencePoint.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return IntOffsetKt.IntOffset((anchorBounds.getLeft() + IntOffset.m4167getXimpl(this.offset)) - (IntSize.m4209getWidthimpl(j11) / 2), anchorBounds.getTop() + IntOffset.m4168getYimpl(this.offset));
                }
                throw new NoWhenBranchMatchedException();
            }
            return IntOffsetKt.IntOffset((anchorBounds.getLeft() + IntOffset.m4167getXimpl(this.offset)) - IntSize.m4209getWidthimpl(j11), anchorBounds.getTop() + IntOffset.m4168getYimpl(this.offset));
        }
        return IntOffsetKt.IntOffset(anchorBounds.getLeft() + IntOffset.m4167getXimpl(this.offset), anchorBounds.getTop() + IntOffset.m4168getYimpl(this.offset));
    }

    private HandlePositionProvider(HandleReferencePoint handleReferencePoint, long j10) {
        this.handleReferencePoint = handleReferencePoint;
        this.offset = j10;
    }
}
