package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextDrawStyle.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorStyle implements TextDrawStyle {
    private final long value;

    public /* synthetic */ ColorStyle(long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10);
    }

    /* renamed from: component1-0d7_KjU  reason: not valid java name */
    private final long m3921component10d7_KjU() {
        return this.value;
    }

    /* renamed from: copy-8_81llA$default  reason: not valid java name */
    public static /* synthetic */ ColorStyle m3922copy8_81llA$default(ColorStyle colorStyle, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = colorStyle.value;
        }
        return colorStyle.m3923copy8_81llA(j10);
    }

    @NotNull
    /* renamed from: copy-8_81llA  reason: not valid java name */
    public final ColorStyle m3923copy8_81llA(long j10) {
        return new ColorStyle(j10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ColorStyle) && Color.m1843equalsimpl0(this.value, ((ColorStyle) obj).value)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    @Nullable
    public Brush getBrush() {
        return null;
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    /* renamed from: getColor-0d7_KjU */
    public long mo3920getColor0d7_KjU() {
        return this.value;
    }

    public int hashCode() {
        return Color.m1849hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return "ColorStyle(value=" + ((Object) Color.m1850toStringimpl(this.value)) + ')';
    }

    private ColorStyle(long j10) {
        this.value = j10;
        if (j10 == Color.Companion.m1878getUnspecified0d7_KjU()) {
            throw new IllegalArgumentException("ColorStyle value must be specified, use TextDrawStyle.Unspecified instead.");
        }
    }
}
