package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextGeometricTransform.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextGeometricTransform {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final TextGeometricTransform None = new TextGeometricTransform(1.0f, 0.0f);
    private final float scaleX;
    private final float skewX;

    /* compiled from: TextGeometricTransform.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextGeometricTransform getNone$ui_text_release() {
            return TextGeometricTransform.None;
        }

        private Companion() {
        }

        @Stable
        public static /* synthetic */ void getNone$ui_text_release$annotations() {
        }
    }

    public TextGeometricTransform() {
        this(0.0f, 0.0f, 3, null);
    }

    public static /* synthetic */ TextGeometricTransform copy$default(TextGeometricTransform textGeometricTransform, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = textGeometricTransform.scaleX;
        }
        if ((i10 & 2) != 0) {
            f11 = textGeometricTransform.skewX;
        }
        return textGeometricTransform.copy(f10, f11);
    }

    @NotNull
    public final TextGeometricTransform copy(float f10, float f11) {
        return new TextGeometricTransform(f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextGeometricTransform)) {
            return false;
        }
        TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj;
        if (this.scaleX == textGeometricTransform.scaleX && this.skewX == textGeometricTransform.skewX) {
            return true;
        }
        return false;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getSkewX() {
        return this.skewX;
    }

    public int hashCode() {
        return (Float.hashCode(this.scaleX) * 31) + Float.hashCode(this.skewX);
    }

    @NotNull
    public String toString() {
        return "TextGeometricTransform(scaleX=" + this.scaleX + ", skewX=" + this.skewX + ')';
    }

    public TextGeometricTransform(float f10, float f11) {
        this.scaleX = f10;
        this.skewX = f11;
    }

    public /* synthetic */ TextGeometricTransform(float f10, float f11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1.0f : f10, (i10 & 2) != 0 ? 0.0f : f11);
    }
}
