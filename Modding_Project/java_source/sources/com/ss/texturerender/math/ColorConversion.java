package com.ss.texturerender.math;
/* loaded from: classes6.dex */
public class ColorConversion {
    public float[] matrix;
    public float[] offset;
    public static float[] matrix_Rec601_yuv_to_rgb_full = {1.0f, -0.0f, 1.402f, 1.0f, -0.344136f, -0.714136f, 1.0f, 1.772f, 0.0f};
    public static float[] matrix_Rec601_yuv_to_rgb_limit = {1.164384f, -0.0f, 1.596027f, 1.164384f, -0.391762f, -0.812968f, 1.164384f, 2.017232f, 0.0f};
    public static float[] matrix_Rec709_yuv_to_rgb_full = {1.0f, -0.0f, 1.5748f, 1.0f, -0.187324f, -0.468124f, 1.0f, 1.8556f, -0.0f};
    public static float[] matrix_Rec709_yuv_to_rgb_limit = {1.164384f, -0.0f, 1.792741f, 1.164384f, -0.213249f, -0.532909f, 1.164384f, 2.112402f, -0.0f};
    public static float[] matrix_BT2020_8bit_yuv_to_rgb_full = {1.0f, -0.0f, 1.4746f, 1.0f, -0.164553f, -0.571353f, 1.0f, 1.8814f, -0.0f};
    public static float[] matrix_BT2020_8bit_yuv_to_rgb_limite = {1.164384f, -0.0f, 1.678674f, 1.164384f, -0.187326f, -0.650424f, 1.164384f, 2.141772f, -0.0f};
    public static float[] matrix_BT2020_10bit_yuv_to_rgb_full = {1.0f, -0.0f, 1.4746f, 1.0f, -0.164553f, -0.571353f, 1.0f, 1.8814f, -0.0f};
    public static float[] matrix_BT2020_10bit_yuv_to_rgb_limite = {1.167808f, -0.0f, 1.683611f, 1.167808f, -0.187877f, -0.652337f, 1.167808f, 2.148072f, -0.0f};
    public static float[] offset_limite_8bit = {-0.062745f, -0.5f, -0.5f};
    public static float[] offset_limite_10bit = {-0.06256109f, -0.5f, -0.5f};
    public static float[] offset_full = {0.0f, -0.5f, -0.5f};

    public ColorConversion(float[] fArr, float[] fArr2) {
        this.matrix = fArr;
        this.offset = fArr2;
    }

    public static ColorConversion getFromDataspace(int i10, int i11) {
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        float[] fArr4;
        int i12 = i10 & 3;
        int i13 = (i10 >> 2) & 63;
        if (i12 == 0 || i13 == 2 || i13 == 0) {
            return null;
        }
        ColorConversion colorConversion = new ColorConversion(null, null);
        if (i12 == 2) {
            colorConversion.offset = offset_full;
        } else {
            if (i11 == 8) {
                fArr = offset_limite_8bit;
            } else {
                fArr = offset_limite_10bit;
            }
            colorConversion.offset = fArr;
        }
        if (i13 != 5 && i13 != 6) {
            if (i13 != 9 && i13 != 10) {
                if (i12 == 2) {
                    fArr4 = matrix_Rec709_yuv_to_rgb_full;
                } else {
                    fArr4 = matrix_Rec709_yuv_to_rgb_limit;
                }
                colorConversion.matrix = fArr4;
            } else {
                if (i12 == 2) {
                    if (i11 == 8) {
                        fArr3 = matrix_BT2020_8bit_yuv_to_rgb_full;
                    } else {
                        fArr3 = matrix_BT2020_10bit_yuv_to_rgb_full;
                    }
                } else if (i11 == 8) {
                    fArr3 = matrix_BT2020_8bit_yuv_to_rgb_limite;
                } else {
                    fArr3 = matrix_BT2020_10bit_yuv_to_rgb_limite;
                }
                colorConversion.matrix = fArr3;
            }
        } else {
            if (i12 == 2) {
                fArr2 = matrix_Rec601_yuv_to_rgb_full;
            } else {
                fArr2 = matrix_Rec601_yuv_to_rgb_limit;
            }
            colorConversion.matrix = fArr2;
        }
        return colorConversion;
    }
}
