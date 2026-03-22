package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidTextStyle.android.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class PlatformTextStyle {
    @Nullable
    private final PlatformParagraphStyle paragraphStyle;
    @Nullable
    private final PlatformSpanStyle spanStyle;

    public PlatformTextStyle(@Nullable PlatformSpanStyle platformSpanStyle, @Nullable PlatformParagraphStyle platformParagraphStyle) {
        this.spanStyle = platformSpanStyle;
        this.paragraphStyle = platformParagraphStyle;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlatformTextStyle)) {
            return false;
        }
        PlatformTextStyle platformTextStyle = (PlatformTextStyle) obj;
        if (Intrinsics.areEqual(this.paragraphStyle, platformTextStyle.paragraphStyle) && Intrinsics.areEqual(this.spanStyle, platformTextStyle.spanStyle)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final PlatformParagraphStyle getParagraphStyle() {
        return this.paragraphStyle;
    }

    @Nullable
    public final PlatformSpanStyle getSpanStyle() {
        return this.spanStyle;
    }

    public int hashCode() {
        int i10;
        PlatformSpanStyle platformSpanStyle = this.spanStyle;
        int i11 = 0;
        if (platformSpanStyle != null) {
            i10 = platformSpanStyle.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        PlatformParagraphStyle platformParagraphStyle = this.paragraphStyle;
        if (platformParagraphStyle != null) {
            i11 = platformParagraphStyle.hashCode();
        }
        return i12 + i11;
    }

    @NotNull
    public String toString() {
        return "PlatformTextStyle(spanStyle=" + this.spanStyle + ", paragraphSyle=" + this.paragraphStyle + ')';
    }

    public /* synthetic */ PlatformTextStyle(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10);
    }

    @c
    public PlatformTextStyle(boolean z10) {
        this(null, new PlatformParagraphStyle(z10));
    }
}
