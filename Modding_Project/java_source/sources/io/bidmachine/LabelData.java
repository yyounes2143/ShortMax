package io.bidmachine;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LabelData.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LabelData {
    private final float heightDp;
    @NotNull
    private final Bitmap image;
    @NotNull
    private final PositionData positionData;
    private final float widthDp;

    public LabelData(float f10, float f11, @NotNull Bitmap image, @NotNull PositionData positionData) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(positionData, "positionData");
        this.widthDp = f10;
        this.heightDp = f11;
        this.image = image;
        this.positionData = positionData;
    }

    public static /* synthetic */ LabelData copy$default(LabelData labelData, float f10, float f11, Bitmap bitmap, PositionData positionData, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = labelData.widthDp;
        }
        if ((i10 & 2) != 0) {
            f11 = labelData.heightDp;
        }
        if ((i10 & 4) != 0) {
            bitmap = labelData.image;
        }
        if ((i10 & 8) != 0) {
            positionData = labelData.positionData;
        }
        return labelData.copy(f10, f11, bitmap, positionData);
    }

    public final float component1() {
        return this.widthDp;
    }

    public final float component2() {
        return this.heightDp;
    }

    @NotNull
    public final Bitmap component3() {
        return this.image;
    }

    @NotNull
    public final PositionData component4() {
        return this.positionData;
    }

    @NotNull
    public final LabelData copy(float f10, float f11, @NotNull Bitmap image, @NotNull PositionData positionData) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(positionData, "positionData");
        return new LabelData(f10, f11, image, positionData);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LabelData)) {
            return false;
        }
        LabelData labelData = (LabelData) obj;
        if (Float.compare(this.widthDp, labelData.widthDp) == 0 && Float.compare(this.heightDp, labelData.heightDp) == 0 && Intrinsics.areEqual(this.image, labelData.image) && this.positionData == labelData.positionData) {
            return true;
        }
        return false;
    }

    public final float getHeightDp() {
        return this.heightDp;
    }

    @NotNull
    public final Bitmap getImage() {
        return this.image;
    }

    @NotNull
    public final PositionData getPositionData() {
        return this.positionData;
    }

    public final float getWidthDp() {
        return this.widthDp;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.widthDp) * 31) + Float.hashCode(this.heightDp)) * 31) + this.image.hashCode()) * 31) + this.positionData.hashCode();
    }

    @NotNull
    public String toString() {
        return "LabelData(widthDp=" + this.widthDp + ", heightDp=" + this.heightDp + ", image=" + this.image + ", positionData=" + this.positionData + ')';
    }
}
