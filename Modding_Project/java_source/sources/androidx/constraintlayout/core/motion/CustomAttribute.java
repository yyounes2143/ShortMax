package androidx.constraintlayout.core.motion;

import androidx.core.view.ViewCompat;
/* loaded from: classes.dex */
public class CustomAttribute {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    private boolean mMethod;
    String mName;
    private String mStringValue;
    private AttributeType mType;

    /* loaded from: classes.dex */
    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    public CustomAttribute(String str, AttributeType attributeType) {
        this.mMethod = false;
        this.mName = str;
        this.mType = attributeType;
    }

    private static int clamp(int i10) {
        int i11 = (i10 & (~(i10 >> 31))) - 255;
        return (i11 & (i11 >> 31)) + 255;
    }

    public static int hsvToRgb(float f10, float f11, float f12) {
        float f13 = f10 * 6.0f;
        int i10 = (int) f13;
        float f14 = f13 - i10;
        float f15 = f12 * 255.0f;
        int i11 = (int) (((1.0f - f11) * f15) + 0.5f);
        int i12 = (int) (((1.0f - (f14 * f11)) * f15) + 0.5f);
        int i13 = (int) (((1.0f - ((1.0f - f14) * f11)) * f15) + 0.5f);
        int i14 = (int) (f15 + 0.5f);
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return 0;
                            }
                            return ((i14 << 16) + (i11 << 8) + i12) | ViewCompat.MEASURED_STATE_MASK;
                        }
                        return ((i13 << 16) + (i11 << 8) + i14) | ViewCompat.MEASURED_STATE_MASK;
                    }
                    return ((i11 << 16) + (i12 << 8) + i14) | ViewCompat.MEASURED_STATE_MASK;
                }
                return ((i11 << 16) + (i14 << 8) + i13) | ViewCompat.MEASURED_STATE_MASK;
            }
            return ((i12 << 16) + (i14 << 8) + i11) | ViewCompat.MEASURED_STATE_MASK;
        }
        return ((i14 << 16) + (i13 << 8) + i11) | ViewCompat.MEASURED_STATE_MASK;
    }

    public boolean diff(CustomAttribute customAttribute) {
        AttributeType attributeType;
        if (customAttribute == null || (attributeType = this.mType) != customAttribute.mType) {
            return false;
        }
        switch (attributeType.ordinal()) {
            case 0:
            case 7:
                if (this.mIntegerValue != customAttribute.mIntegerValue) {
                    return false;
                }
                return true;
            case 1:
                if (this.mFloatValue != customAttribute.mFloatValue) {
                    return false;
                }
                return true;
            case 2:
            case 3:
                if (this.mColorValue != customAttribute.mColorValue) {
                    return false;
                }
                return true;
            case 4:
                if (this.mIntegerValue != customAttribute.mIntegerValue) {
                    return false;
                }
                return true;
            case 5:
                if (this.mBooleanValue != customAttribute.mBooleanValue) {
                    return false;
                }
                return true;
            case 6:
                if (this.mFloatValue != customAttribute.mFloatValue) {
                    return false;
                }
                return true;
            default:
                return false;
        }
    }

    public AttributeType getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (this.mType.ordinal()) {
            case 0:
                return this.mIntegerValue;
            case 1:
                return this.mFloatValue;
            case 2:
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
                throw new RuntimeException("Cannot interpolate String");
            case 5:
                if (this.mBooleanValue) {
                    return 1.0f;
                }
                return 0.0f;
            case 6:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        float f10;
        switch (this.mType.ordinal()) {
            case 0:
                fArr[0] = this.mIntegerValue;
                return;
            case 1:
                fArr[0] = this.mFloatValue;
                return;
            case 2:
            case 3:
                int i10 = this.mColorValue;
                float pow = (float) Math.pow(((i10 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i10 >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i10 & 255) / 255.0f, 2.2d);
                fArr[3] = ((i10 >> 24) & 255) / 255.0f;
                return;
            case 4:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 5:
                if (this.mBooleanValue) {
                    f10 = 1.0f;
                } else {
                    f10 = 0.0f;
                }
                fArr[0] = f10;
                return;
            case 6:
                fArr[0] = this.mFloatValue;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int ordinal = this.mType.ordinal();
        if (ordinal != 4 && ordinal != 5 && ordinal != 7) {
            return true;
        }
        return false;
    }

    public int numberOfInterpolatedValues() {
        int ordinal = this.mType.ordinal();
        if (ordinal != 2 && ordinal != 3) {
            return 1;
        }
        return 4;
    }

    public void setColorValue(int i10) {
        this.mColorValue = i10;
    }

    public void setFloatValue(float f10) {
        this.mFloatValue = f10;
    }

    public void setIntValue(int i10) {
        this.mIntegerValue = i10;
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(float[] fArr) {
        switch (this.mType.ordinal()) {
            case 0:
            case 7:
                this.mIntegerValue = (int) fArr[0];
                return;
            case 1:
                this.mFloatValue = fArr[0];
                return;
            case 2:
            case 3:
                int hsvToRgb = hsvToRgb(fArr[0], fArr[1], fArr[2]);
                this.mColorValue = hsvToRgb;
                this.mColorValue = (clamp((int) (fArr[3] * 255.0f)) << 24) | (hsvToRgb & ViewCompat.MEASURED_SIZE_MASK);
                return;
            case 4:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 5:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                return;
            case 6:
                this.mFloatValue = fArr[0];
                return;
            default:
                return;
        }
    }

    public CustomAttribute(String str, AttributeType attributeType, Object obj, boolean z10) {
        this.mName = str;
        this.mType = attributeType;
        this.mMethod = z10;
        setValue(obj);
    }

    public void setValue(Object obj) {
        switch (this.mType.ordinal()) {
            case 0:
            case 7:
                this.mIntegerValue = ((Integer) obj).intValue();
                return;
            case 1:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            case 2:
            case 3:
                this.mColorValue = ((Integer) obj).intValue();
                return;
            case 4:
                this.mStringValue = (String) obj;
                return;
            case 5:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                return;
            case 6:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public CustomAttribute(CustomAttribute customAttribute, Object obj) {
        this.mMethod = false;
        this.mName = customAttribute.mName;
        this.mType = customAttribute.mType;
        setValue(obj);
    }
}
