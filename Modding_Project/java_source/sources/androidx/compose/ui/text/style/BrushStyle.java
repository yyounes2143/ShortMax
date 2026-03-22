package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextDrawStyle.kt */
@Metadata
/* loaded from: classes.dex */
public final class BrushStyle implements TextDrawStyle {
    @NotNull
    private final ShaderBrush value;

    public BrushStyle(@NotNull ShaderBrush value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }

    private final ShaderBrush component1() {
        return this.value;
    }

    public static /* synthetic */ BrushStyle copy$default(BrushStyle brushStyle, ShaderBrush shaderBrush, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            shaderBrush = brushStyle.value;
        }
        return brushStyle.copy(shaderBrush);
    }

    @NotNull
    public final BrushStyle copy(@NotNull ShaderBrush value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new BrushStyle(value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BrushStyle) && Intrinsics.areEqual(this.value, ((BrushStyle) obj).value)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    @NotNull
    public Brush getBrush() {
        return this.value;
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    /* renamed from: getColor-0d7_KjU  reason: not valid java name */
    public long mo3920getColor0d7_KjU() {
        return Color.Companion.m1878getUnspecified0d7_KjU();
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @NotNull
    public String toString() {
        return "BrushStyle(value=" + this.value + ')';
    }
}
