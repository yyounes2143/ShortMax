package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SelectionMode.kt */
@Metadata
/* loaded from: classes.dex */
public enum SelectionMode {
    Vertical { // from class: androidx.compose.foundation.text.selection.SelectionMode.Vertical
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* renamed from: compare-3MmeM6k$foundation_release */
        public int mo878compare3MmeM6k$foundation_release(long j10, @NotNull Rect bounds) {
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            if (bounds.m1632containsk4lQ0M(j10)) {
                return 0;
            }
            if (Offset.m1607getYimpl(j10) < bounds.getTop()) {
                return -1;
            }
            if (Offset.m1606getXimpl(j10) < bounds.getLeft() && Offset.m1607getYimpl(j10) < bounds.getBottom()) {
                return -1;
            }
            return 1;
        }
    },
    Horizontal { // from class: androidx.compose.foundation.text.selection.SelectionMode.Horizontal
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* renamed from: compare-3MmeM6k$foundation_release */
        public int mo878compare3MmeM6k$foundation_release(long j10, @NotNull Rect bounds) {
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            if (bounds.m1632containsk4lQ0M(j10)) {
                return 0;
            }
            if (Offset.m1606getXimpl(j10) < bounds.getLeft()) {
                return -1;
            }
            if (Offset.m1607getYimpl(j10) < bounds.getTop() && Offset.m1606getXimpl(j10) < bounds.getRight()) {
                return -1;
            }
            return 1;
        }
    };

    /* synthetic */ SelectionMode(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: compare-3MmeM6k$foundation_release  reason: not valid java name */
    public abstract int mo878compare3MmeM6k$foundation_release(long j10, @NotNull Rect rect);

    /* renamed from: isSelected-2x9bVx0$foundation_release  reason: not valid java name */
    public final boolean m879isSelected2x9bVx0$foundation_release(@NotNull Rect bounds, long j10, long j11) {
        boolean z10;
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        boolean z11 = true;
        if (bounds.m1632containsk4lQ0M(j10) || bounds.m1632containsk4lQ0M(j11)) {
            return true;
        }
        int mo878compare3MmeM6k$foundation_release = mo878compare3MmeM6k$foundation_release(j10, bounds);
        int mo878compare3MmeM6k$foundation_release2 = mo878compare3MmeM6k$foundation_release(j11, bounds);
        if (mo878compare3MmeM6k$foundation_release > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (mo878compare3MmeM6k$foundation_release2 <= 0) {
            z11 = false;
        }
        return z10 ^ z11;
    }
}
