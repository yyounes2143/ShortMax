package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidTextStyle.android.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class PlatformParagraphStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final PlatformParagraphStyle Default = new PlatformParagraphStyle();
    private final boolean includeFontPadding;

    /* compiled from: AndroidTextStyle.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PlatformParagraphStyle getDefault() {
            return PlatformParagraphStyle.Default;
        }

        private Companion() {
        }
    }

    @c
    public PlatformParagraphStyle(boolean z10) {
        this.includeFontPadding = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof PlatformParagraphStyle) && this.includeFontPadding == ((PlatformParagraphStyle) obj).includeFontPadding) {
            return true;
        }
        return false;
    }

    public final boolean getIncludeFontPadding() {
        return this.includeFontPadding;
    }

    public int hashCode() {
        return Boolean.hashCode(this.includeFontPadding);
    }

    @NotNull
    public final PlatformParagraphStyle merge(@Nullable PlatformParagraphStyle platformParagraphStyle) {
        if (platformParagraphStyle == null) {
            return this;
        }
        return platformParagraphStyle;
    }

    @NotNull
    public String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.includeFontPadding + ')';
    }

    public /* synthetic */ PlatformParagraphStyle(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10);
    }

    public PlatformParagraphStyle() {
        this(true);
    }

    @c
    public static /* synthetic */ void getIncludeFontPadding$annotations() {
    }
}
