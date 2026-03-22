package androidx.compose.foundation;

import android.os.Build;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Magnifier.kt */
@Stable
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class MagnifierStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final MagnifierStyle Default;
    @NotNull
    private static final MagnifierStyle TextDefault;
    private final boolean clippingEnabled;
    private final float cornerRadius;
    private final float elevation;
    private final boolean fishEyeEnabled;
    private final long size;
    private final boolean useTextDefault;

    /* compiled from: Magnifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ boolean isStyleSupported$foundation_release$default(Companion companion, MagnifierStyle magnifierStyle, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = Build.VERSION.SDK_INT;
            }
            return companion.isStyleSupported$foundation_release(magnifierStyle, i10);
        }

        @NotNull
        public final MagnifierStyle getDefault() {
            return MagnifierStyle.Default;
        }

        @NotNull
        public final MagnifierStyle getTextDefault() {
            return MagnifierStyle.TextDefault;
        }

        public final boolean isStyleSupported$foundation_release(@NotNull MagnifierStyle style, int i10) {
            Intrinsics.checkNotNullParameter(style, "style");
            if (!MagnifierKt.isPlatformMagnifierSupported(i10) || style.getFishEyeEnabled$foundation_release()) {
                return false;
            }
            if (!style.getUseTextDefault$foundation_release() && !Intrinsics.areEqual(style, getDefault()) && i10 < 29) {
                return false;
            }
            return true;
        }

        private Companion() {
        }

        @ExperimentalFoundationApi
        public static /* synthetic */ void getDefault$annotations() {
        }

        @ExperimentalFoundationApi
        public static /* synthetic */ void getTextDefault$annotations() {
        }
    }

    static {
        MagnifierStyle magnifierStyle = new MagnifierStyle(0L, 0.0f, 0.0f, false, false, 31, (DefaultConstructorMarker) null);
        Default = magnifierStyle;
        TextDefault = new MagnifierStyle(true, magnifierStyle.size, magnifierStyle.cornerRadius, magnifierStyle.elevation, magnifierStyle.clippingEnabled, magnifierStyle.fishEyeEnabled, (DefaultConstructorMarker) null);
    }

    @ExperimentalFoundationApi
    public /* synthetic */ MagnifierStyle(long j10, float f10, float f11, boolean z10, boolean z11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, f10, f11, z10, z11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MagnifierStyle)) {
            return false;
        }
        MagnifierStyle magnifierStyle = (MagnifierStyle) obj;
        if (this.useTextDefault == magnifierStyle.useTextDefault && DpSize.m4144equalsimpl0(this.size, magnifierStyle.size) && Dp.m4054equalsimpl0(this.cornerRadius, magnifierStyle.cornerRadius) && Dp.m4054equalsimpl0(this.elevation, magnifierStyle.elevation) && this.clippingEnabled == magnifierStyle.clippingEnabled && this.fishEyeEnabled == magnifierStyle.fishEyeEnabled) {
            return true;
        }
        return false;
    }

    public final boolean getClippingEnabled$foundation_release() {
        return this.clippingEnabled;
    }

    /* renamed from: getCornerRadius-D9Ej5fM$foundation_release  reason: not valid java name */
    public final float m266getCornerRadiusD9Ej5fM$foundation_release() {
        return this.cornerRadius;
    }

    /* renamed from: getElevation-D9Ej5fM$foundation_release  reason: not valid java name */
    public final float m267getElevationD9Ej5fM$foundation_release() {
        return this.elevation;
    }

    public final boolean getFishEyeEnabled$foundation_release() {
        return this.fishEyeEnabled;
    }

    /* renamed from: getSize-MYxV2XQ$foundation_release  reason: not valid java name */
    public final long m268getSizeMYxV2XQ$foundation_release() {
        return this.size;
    }

    public final boolean getUseTextDefault$foundation_release() {
        return this.useTextDefault;
    }

    public int hashCode() {
        return (((((((((Boolean.hashCode(this.useTextDefault) * 31) + DpSize.m4149hashCodeimpl(this.size)) * 31) + Dp.m4055hashCodeimpl(this.cornerRadius)) * 31) + Dp.m4055hashCodeimpl(this.elevation)) * 31) + Boolean.hashCode(this.clippingEnabled)) * 31) + Boolean.hashCode(this.fishEyeEnabled);
    }

    public final boolean isSupported() {
        return Companion.isStyleSupported$foundation_release$default(Companion, this, 0, 2, null);
    }

    @NotNull
    public String toString() {
        if (this.useTextDefault) {
            return "MagnifierStyle.TextDefault";
        }
        return "MagnifierStyle(size=" + ((Object) DpSize.m4154toStringimpl(this.size)) + ", cornerRadius=" + ((Object) Dp.m4060toStringimpl(this.cornerRadius)) + ", elevation=" + ((Object) Dp.m4060toStringimpl(this.elevation)) + ", clippingEnabled=" + this.clippingEnabled + ", fishEyeEnabled=" + this.fishEyeEnabled + ')';
    }

    public /* synthetic */ MagnifierStyle(boolean z10, long j10, float f10, float f11, boolean z11, boolean z12, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, j10, f10, f11, z11, z12);
    }

    private MagnifierStyle(boolean z10, long j10, float f10, float f11, boolean z11, boolean z12) {
        this.useTextDefault = z10;
        this.size = j10;
        this.cornerRadius = f10;
        this.elevation = f11;
        this.clippingEnabled = z11;
        this.fishEyeEnabled = z12;
    }

    public /* synthetic */ MagnifierStyle(long j10, float f10, float f11, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? DpSize.Companion.m4156getUnspecifiedMYxV2XQ() : j10, (i10 & 2) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f10, (i10 & 4) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f11, (i10 & 8) != 0 ? true : z10, (i10 & 16) != 0 ? false : z11, (DefaultConstructorMarker) null);
    }

    private MagnifierStyle(long j10, float f10, float f11, boolean z10, boolean z11) {
        this(false, j10, f10, f11, z10, z11, (DefaultConstructorMarker) null);
    }
}
