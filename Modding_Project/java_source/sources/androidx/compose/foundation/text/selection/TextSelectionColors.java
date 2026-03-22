package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextSelectionColors.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextSelectionColors {
    private final long backgroundColor;
    private final long handleColor;

    public /* synthetic */ TextSelectionColors(long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextSelectionColors)) {
            return false;
        }
        TextSelectionColors textSelectionColors = (TextSelectionColors) obj;
        if (Color.m1843equalsimpl0(this.handleColor, textSelectionColors.handleColor) && Color.m1843equalsimpl0(this.backgroundColor, textSelectionColors.backgroundColor)) {
            return true;
        }
        return false;
    }

    /* renamed from: getBackgroundColor-0d7_KjU  reason: not valid java name */
    public final long m902getBackgroundColor0d7_KjU() {
        return this.backgroundColor;
    }

    /* renamed from: getHandleColor-0d7_KjU  reason: not valid java name */
    public final long m903getHandleColor0d7_KjU() {
        return this.handleColor;
    }

    public int hashCode() {
        return (Color.m1849hashCodeimpl(this.handleColor) * 31) + Color.m1849hashCodeimpl(this.backgroundColor);
    }

    @NotNull
    public String toString() {
        return "SelectionColors(selectionHandleColor=" + ((Object) Color.m1850toStringimpl(this.handleColor)) + ", selectionBackgroundColor=" + ((Object) Color.m1850toStringimpl(this.backgroundColor)) + ')';
    }

    private TextSelectionColors(long j10, long j11) {
        this.handleColor = j10;
        this.backgroundColor = j11;
    }
}
