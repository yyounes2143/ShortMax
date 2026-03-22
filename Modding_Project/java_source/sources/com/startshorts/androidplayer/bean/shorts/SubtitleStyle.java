package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubtitleData.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubtitleStyle {
    @NotNull
    private String color;
    private int fontSize;
    private int letterSpacing;
    @NotNull
    private String shadowColor;
    private int shadowDx;
    private int shadowDy;
    private int shadowRadius;
    private float topPercentage;

    public SubtitleStyle() {
        this(null, 0, 0, null, 0, 0, 0, 0.0f, 255, null);
    }

    public static /* synthetic */ SubtitleStyle copy$default(SubtitleStyle subtitleStyle, String str, int i10, int i11, String str2, int i12, int i13, int i14, float f10, int i15, Object obj) {
        String str3;
        int i16;
        int i17;
        String str4;
        int i18;
        int i19;
        int i20;
        float f11;
        if ((i15 & 1) != 0) {
            str3 = subtitleStyle.color;
        } else {
            str3 = str;
        }
        if ((i15 & 2) != 0) {
            i16 = subtitleStyle.shadowRadius;
        } else {
            i16 = i10;
        }
        if ((i15 & 4) != 0) {
            i17 = subtitleStyle.fontSize;
        } else {
            i17 = i11;
        }
        if ((i15 & 8) != 0) {
            str4 = subtitleStyle.shadowColor;
        } else {
            str4 = str2;
        }
        if ((i15 & 16) != 0) {
            i18 = subtitleStyle.shadowDy;
        } else {
            i18 = i12;
        }
        if ((i15 & 32) != 0) {
            i19 = subtitleStyle.shadowDx;
        } else {
            i19 = i13;
        }
        if ((i15 & 64) != 0) {
            i20 = subtitleStyle.letterSpacing;
        } else {
            i20 = i14;
        }
        if ((i15 & 128) != 0) {
            f11 = subtitleStyle.topPercentage;
        } else {
            f11 = f10;
        }
        return subtitleStyle.copy(str3, i16, i17, str4, i18, i19, i20, f11);
    }

    @NotNull
    public final String component1() {
        return this.color;
    }

    public final int component2() {
        return this.shadowRadius;
    }

    public final int component3() {
        return this.fontSize;
    }

    @NotNull
    public final String component4() {
        return this.shadowColor;
    }

    public final int component5() {
        return this.shadowDy;
    }

    public final int component6() {
        return this.shadowDx;
    }

    public final int component7() {
        return this.letterSpacing;
    }

    public final float component8() {
        return this.topPercentage;
    }

    @NotNull
    public final SubtitleStyle copy(@NotNull String color, int i10, int i11, @NotNull String shadowColor, int i12, int i13, int i14, float f10) {
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(shadowColor, "shadowColor");
        return new SubtitleStyle(color, i10, i11, shadowColor, i12, i13, i14, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubtitleStyle)) {
            return false;
        }
        SubtitleStyle subtitleStyle = (SubtitleStyle) obj;
        if (Intrinsics.areEqual(this.color, subtitleStyle.color) && this.shadowRadius == subtitleStyle.shadowRadius && this.fontSize == subtitleStyle.fontSize && Intrinsics.areEqual(this.shadowColor, subtitleStyle.shadowColor) && this.shadowDy == subtitleStyle.shadowDy && this.shadowDx == subtitleStyle.shadowDx && this.letterSpacing == subtitleStyle.letterSpacing && Float.compare(this.topPercentage, subtitleStyle.topPercentage) == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getColor() {
        return this.color;
    }

    public final int getFontSize() {
        return this.fontSize;
    }

    public final int getLetterSpacing() {
        return this.letterSpacing;
    }

    @NotNull
    public final String getShadowColor() {
        return this.shadowColor;
    }

    public final int getShadowDx() {
        return this.shadowDx;
    }

    public final int getShadowDy() {
        return this.shadowDy;
    }

    public final int getShadowRadius() {
        return this.shadowRadius;
    }

    public final float getTopPercentage() {
        return this.topPercentage;
    }

    public int hashCode() {
        return (((((((((((((this.color.hashCode() * 31) + Integer.hashCode(this.shadowRadius)) * 31) + Integer.hashCode(this.fontSize)) * 31) + this.shadowColor.hashCode()) * 31) + Integer.hashCode(this.shadowDy)) * 31) + Integer.hashCode(this.shadowDx)) * 31) + Integer.hashCode(this.letterSpacing)) * 31) + Float.hashCode(this.topPercentage);
    }

    public final void setColor(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.color = str;
    }

    public final void setFontSize(int i10) {
        this.fontSize = i10;
    }

    public final void setLetterSpacing(int i10) {
        this.letterSpacing = i10;
    }

    public final void setShadowColor(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shadowColor = str;
    }

    public final void setShadowDx(int i10) {
        this.shadowDx = i10;
    }

    public final void setShadowDy(int i10) {
        this.shadowDy = i10;
    }

    public final void setShadowRadius(int i10) {
        this.shadowRadius = i10;
    }

    public final void setTopPercentage(float f10) {
        this.topPercentage = f10;
    }

    @NotNull
    public String toString() {
        return "SubtitleStyle(color=" + this.color + ", shadowRadius=" + this.shadowRadius + ", fontSize=" + this.fontSize + ", shadowColor=" + this.shadowColor + ", shadowDy=" + this.shadowDy + ", shadowDx=" + this.shadowDx + ", letterSpacing=" + this.letterSpacing + ", topPercentage=" + this.topPercentage + ')';
    }

    public SubtitleStyle(@NotNull String color, int i10, int i11, @NotNull String shadowColor, int i12, int i13, int i14, float f10) {
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(shadowColor, "shadowColor");
        this.color = color;
        this.shadowRadius = i10;
        this.fontSize = i11;
        this.shadowColor = shadowColor;
        this.shadowDy = i12;
        this.shadowDx = i13;
        this.letterSpacing = i14;
        this.topPercentage = f10;
    }

    public /* synthetic */ SubtitleStyle(String str, int i10, int i11, String str2, int i12, int i13, int i14, float f10, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? SubtitleDataKt.DEFAULT_SUBTITLE_TEXT_COLOR : str, (i15 & 2) != 0 ? 2 : i10, (i15 & 4) != 0 ? 14 : i11, (i15 & 8) != 0 ? SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR : str2, (i15 & 16) != 0 ? 2 : i12, (i15 & 32) == 0 ? i13 : 2, (i15 & 64) != 0 ? 1 : i14, (i15 & 128) != 0 ? 0.33f : f10);
    }
}
