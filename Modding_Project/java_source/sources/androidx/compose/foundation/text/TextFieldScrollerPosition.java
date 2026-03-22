package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldScroll.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class TextFieldScrollerPosition {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Saver<TextFieldScrollerPosition, Object> Saver = ListSaverKt.listSaver(new Function2<SaverScope, TextFieldScrollerPosition, List<? extends Object>>() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        @NotNull
        public final List<Object> invoke(@NotNull SaverScope listSaver, @NotNull TextFieldScrollerPosition it) {
            Intrinsics.checkNotNullParameter(listSaver, "$this$listSaver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.q(Float.valueOf(it.getOffset()), Boolean.valueOf(it.getOrientation() == Orientation.Vertical));
        }
    }, new Function1<List<? extends Object>, TextFieldScrollerPosition>() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final TextFieldScrollerPosition invoke(@NotNull List<? extends Object> restored) {
            Intrinsics.checkNotNullParameter(restored, "restored");
            return new TextFieldScrollerPosition(((Boolean) restored.get(1)).booleanValue() ? Orientation.Vertical : Orientation.Horizontal, ((Float) restored.get(0)).floatValue());
        }
    });
    @NotNull
    private final MutableState maximum$delegate;
    @NotNull
    private final MutableState offset$delegate;
    @NotNull
    private final MutableState orientation$delegate;
    @NotNull
    private Rect previousCursorRect;
    private long previousSelection;

    /* compiled from: TextFieldScroll.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<TextFieldScrollerPosition, Object> getSaver() {
            return TextFieldScrollerPosition.Saver;
        }

        private Companion() {
        }
    }

    public TextFieldScrollerPosition(@NotNull Orientation initialOrientation, float f10) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(initialOrientation, "initialOrientation");
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(f10), null, 2, null);
        this.offset$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(0.0f), null, 2, null);
        this.maximum$delegate = mutableStateOf$default2;
        this.previousCursorRect = Rect.Companion.getZero();
        this.previousSelection = TextRange.Companion.m3702getZerod9O1mEE();
        this.orientation$delegate = SnapshotStateKt.mutableStateOf(initialOrientation, SnapshotStateKt.structuralEqualityPolicy());
    }

    private final void setMaximum(float f10) {
        this.maximum$delegate.setValue(Float.valueOf(f10));
    }

    public final void coerceOffset$foundation_release(float f10, float f11, int i10) {
        int i11;
        float f12;
        float offset = getOffset();
        float f13 = i10;
        float f14 = offset + f13;
        if (f11 > f14 || (f10 < offset && f11 - f10 > f13)) {
            f12 = f11 - f14;
        } else if (i11 < 0 && f11 - f10 <= f13) {
            f12 = f10 - offset;
        } else {
            f12 = 0.0f;
        }
        setOffset(getOffset() + f12);
    }

    public final float getMaximum() {
        return ((Number) this.maximum$delegate.getValue()).floatValue();
    }

    public final float getOffset() {
        return ((Number) this.offset$delegate.getValue()).floatValue();
    }

    /* renamed from: getOffsetToFollow-5zc-tL8  reason: not valid java name */
    public final int m783getOffsetToFollow5zctL8(long j10) {
        if (TextRange.m3697getStartimpl(j10) != TextRange.m3697getStartimpl(this.previousSelection)) {
            return TextRange.m3697getStartimpl(j10);
        }
        if (TextRange.m3692getEndimpl(j10) != TextRange.m3692getEndimpl(this.previousSelection)) {
            return TextRange.m3692getEndimpl(j10);
        }
        return TextRange.m3695getMinimpl(j10);
    }

    @NotNull
    public final Orientation getOrientation() {
        return (Orientation) this.orientation$delegate.getValue();
    }

    /* renamed from: getPreviousSelection-d9O1mEE  reason: not valid java name */
    public final long m784getPreviousSelectiond9O1mEE() {
        return this.previousSelection;
    }

    public final void setOffset(float f10) {
        this.offset$delegate.setValue(Float.valueOf(f10));
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation$delegate.setValue(orientation);
    }

    /* renamed from: setPreviousSelection-5zc-tL8  reason: not valid java name */
    public final void m785setPreviousSelection5zctL8(long j10) {
        this.previousSelection = j10;
    }

    public final void update(@NotNull Orientation orientation, @NotNull Rect cursorRect, int i10, int i11) {
        boolean z10;
        float left;
        float right;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(cursorRect, "cursorRect");
        float f10 = i11 - i10;
        setMaximum(f10);
        if (cursorRect.getLeft() != this.previousCursorRect.getLeft() || cursorRect.getTop() != this.previousCursorRect.getTop()) {
            if (orientation == Orientation.Vertical) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                left = cursorRect.getTop();
            } else {
                left = cursorRect.getLeft();
            }
            if (z10) {
                right = cursorRect.getBottom();
            } else {
                right = cursorRect.getRight();
            }
            coerceOffset$foundation_release(left, right, i10);
            this.previousCursorRect = cursorRect;
        }
        setOffset(e.m(getOffset(), 0.0f, f10));
    }

    public /* synthetic */ TextFieldScrollerPosition(Orientation orientation, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(orientation, (i10 & 2) != 0 ? 0.0f : f10);
    }

    public TextFieldScrollerPosition() {
        this(Orientation.Vertical, 0.0f, 2, null);
    }
}
