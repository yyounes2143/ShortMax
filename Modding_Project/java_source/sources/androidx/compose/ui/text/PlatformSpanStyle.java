package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidTextStyle.android.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class PlatformSpanStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final PlatformSpanStyle Default = new PlatformSpanStyle();

    /* compiled from: AndroidTextStyle.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PlatformSpanStyle getDefault() {
            return PlatformSpanStyle.Default;
        }

        private Companion() {
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj || (obj instanceof PlatformSpanStyle)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }

    @NotNull
    public String toString() {
        return "PlatformSpanStyle()";
    }

    @NotNull
    public final PlatformSpanStyle merge(@Nullable PlatformSpanStyle platformSpanStyle) {
        return this;
    }
}
