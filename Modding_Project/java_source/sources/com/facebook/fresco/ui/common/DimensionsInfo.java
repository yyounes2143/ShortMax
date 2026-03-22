package com.facebook.fresco.ui.common;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DimensionsInfo.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DimensionsInfo {
    private final int decodedImageHeight;
    private final int decodedImageWidth;
    private final int encodedImageHeight;
    private final int encodedImageWidth;
    @NotNull
    private final String scaleType;
    private final int viewportHeight;
    private final int viewportWidth;

    public DimensionsInfo(int i10, int i11, int i12, int i13, int i14, int i15, @NotNull String scaleType) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        this.viewportWidth = i10;
        this.viewportHeight = i11;
        this.encodedImageWidth = i12;
        this.encodedImageHeight = i13;
        this.decodedImageWidth = i14;
        this.decodedImageHeight = i15;
        this.scaleType = scaleType;
    }

    public static /* synthetic */ DimensionsInfo copy$default(DimensionsInfo dimensionsInfo, int i10, int i11, int i12, int i13, int i14, int i15, String str, int i16, Object obj) {
        if ((i16 & 1) != 0) {
            i10 = dimensionsInfo.viewportWidth;
        }
        if ((i16 & 2) != 0) {
            i11 = dimensionsInfo.viewportHeight;
        }
        int i17 = i11;
        if ((i16 & 4) != 0) {
            i12 = dimensionsInfo.encodedImageWidth;
        }
        int i18 = i12;
        if ((i16 & 8) != 0) {
            i13 = dimensionsInfo.encodedImageHeight;
        }
        int i19 = i13;
        if ((i16 & 16) != 0) {
            i14 = dimensionsInfo.decodedImageWidth;
        }
        int i20 = i14;
        if ((i16 & 32) != 0) {
            i15 = dimensionsInfo.decodedImageHeight;
        }
        int i21 = i15;
        if ((i16 & 64) != 0) {
            str = dimensionsInfo.scaleType;
        }
        return dimensionsInfo.copy(i10, i17, i18, i19, i20, i21, str);
    }

    public final int component1() {
        return this.viewportWidth;
    }

    public final int component2() {
        return this.viewportHeight;
    }

    public final int component3() {
        return this.encodedImageWidth;
    }

    public final int component4() {
        return this.encodedImageHeight;
    }

    public final int component5() {
        return this.decodedImageWidth;
    }

    public final int component6() {
        return this.decodedImageHeight;
    }

    @NotNull
    public final String component7() {
        return this.scaleType;
    }

    @NotNull
    public final DimensionsInfo copy(int i10, int i11, int i12, int i13, int i14, int i15, @NotNull String scaleType) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        return new DimensionsInfo(i10, i11, i12, i13, i14, i15, scaleType);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(DimensionsInfo.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.ui.common.DimensionsInfo");
        DimensionsInfo dimensionsInfo = (DimensionsInfo) obj;
        if (this.viewportWidth == dimensionsInfo.viewportWidth && this.viewportHeight == dimensionsInfo.viewportHeight && this.encodedImageWidth == dimensionsInfo.encodedImageWidth && this.encodedImageHeight == dimensionsInfo.encodedImageHeight && this.decodedImageWidth == dimensionsInfo.decodedImageWidth && this.decodedImageHeight == dimensionsInfo.decodedImageHeight && Intrinsics.areEqual(this.scaleType, dimensionsInfo.scaleType)) {
            return true;
        }
        return false;
    }

    public final int getDecodedImageHeight() {
        return this.decodedImageHeight;
    }

    public final int getDecodedImageWidth() {
        return this.decodedImageWidth;
    }

    public final int getEncodedImageHeight() {
        return this.encodedImageHeight;
    }

    public final int getEncodedImageWidth() {
        return this.encodedImageWidth;
    }

    @NotNull
    public final String getScaleType() {
        return this.scaleType;
    }

    public final int getViewportHeight() {
        return this.viewportHeight;
    }

    public final int getViewportWidth() {
        return this.viewportWidth;
    }

    public int hashCode() {
        return (((((((((((this.viewportWidth * 31) + this.viewportHeight) * 31) + this.encodedImageWidth) * 31) + this.encodedImageHeight) * 31) + this.decodedImageWidth) * 31) + this.decodedImageHeight) * 31) + this.scaleType.hashCode();
    }

    @NotNull
    public String toString() {
        int i10 = this.viewportWidth;
        int i11 = this.viewportHeight;
        int i12 = this.encodedImageWidth;
        int i13 = this.encodedImageHeight;
        int i14 = this.decodedImageWidth;
        int i15 = this.decodedImageHeight;
        String str = this.scaleType;
        return "DimensionsInfo(viewportWidth=" + i10 + ", viewportHeight=" + i11 + ", encodedImageWidth=" + i12 + ", encodedImageHeight=" + i13 + ", decodedImageWidth=" + i14 + ", decodedImageHeight=" + i15 + ", scaleType=" + str + ")";
    }
}
