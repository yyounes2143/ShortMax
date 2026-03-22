package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KeyPosition extends KeyPositionBase {
    public static final String DRAWPATH = "drawPath";
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    public static final String PERCENT_HEIGHT = "percentHeight";
    public static final String PERCENT_WIDTH = "percentWidth";
    public static final String PERCENT_X = "percentX";
    public static final String PERCENT_Y = "percentY";
    public static final String SIZE_PERCENT = "sizePercent";
    private static final String TAG = "KeyPosition";
    public static final String TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_AXIS = 3;
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    String mTransitionEasing = null;
    int mPathMotionArc = Key.UNSET;
    int mDrawPath = 0;
    float mPercentWidth = Float.NaN;
    float mPercentHeight = Float.NaN;
    float mPercentX = Float.NaN;
    float mPercentY = Float.NaN;
    float mAltPercentX = Float.NaN;
    float mAltPercentY = Float.NaN;
    int mPositionType = 0;
    private float mCalculatedPositionX = Float.NaN;
    private float mCalculatedPositionY = Float.NaN;

    /* loaded from: classes.dex */
    private static class Loader {
        private static final int CURVE_FIT = 4;
        private static final int DRAW_PATH = 5;
        private static final int FRAME_POSITION = 2;
        private static final int PATH_MOTION_ARC = 10;
        private static final int PERCENT_HEIGHT = 12;
        private static final int PERCENT_WIDTH = 11;
        private static final int PERCENT_X = 6;
        private static final int PERCENT_Y = 7;
        private static final int SIZE_PERCENT = 8;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TYPE = 9;
        private static SparseIntArray sAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            sAttrMap.append(R.styleable.KeyPosition_framePosition, 2);
            sAttrMap.append(R.styleable.KeyPosition_transitionEasing, 3);
            sAttrMap.append(R.styleable.KeyPosition_curveFit, 4);
            sAttrMap.append(R.styleable.KeyPosition_drawPath, 5);
            sAttrMap.append(R.styleable.KeyPosition_percentX, 6);
            sAttrMap.append(R.styleable.KeyPosition_percentY, 7);
            sAttrMap.append(R.styleable.KeyPosition_keyPositionType, 9);
            sAttrMap.append(R.styleable.KeyPosition_sizePercent, 8);
            sAttrMap.append(R.styleable.KeyPosition_percentWidth, 11);
            sAttrMap.append(R.styleable.KeyPosition_percentHeight, 12);
            sAttrMap.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void read(KeyPosition keyPosition, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (sAttrMap.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyPosition.mTargetId);
                            keyPosition.mTargetId = resourceId;
                            if (resourceId == -1) {
                                keyPosition.mTargetString = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyPosition.mTargetString = typedArray.getString(index);
                            break;
                        } else {
                            keyPosition.mTargetId = typedArray.getResourceId(index, keyPosition.mTargetId);
                            break;
                        }
                    case 2:
                        keyPosition.mFramePosition = typedArray.getInt(index, keyPosition.mFramePosition);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            keyPosition.mTransitionEasing = typedArray.getString(index);
                            break;
                        } else {
                            keyPosition.mTransitionEasing = Easing.NAMED_EASING[typedArray.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        keyPosition.mCurveFit = typedArray.getInteger(index, keyPosition.mCurveFit);
                        break;
                    case 5:
                        keyPosition.mDrawPath = typedArray.getInt(index, keyPosition.mDrawPath);
                        break;
                    case 6:
                        keyPosition.mPercentX = typedArray.getFloat(index, keyPosition.mPercentX);
                        break;
                    case 7:
                        keyPosition.mPercentY = typedArray.getFloat(index, keyPosition.mPercentY);
                        break;
                    case 8:
                        float f10 = typedArray.getFloat(index, keyPosition.mPercentHeight);
                        keyPosition.mPercentWidth = f10;
                        keyPosition.mPercentHeight = f10;
                        break;
                    case 9:
                        keyPosition.mPositionType = typedArray.getInt(index, keyPosition.mPositionType);
                        break;
                    case 10:
                        keyPosition.mPathMotionArc = typedArray.getInt(index, keyPosition.mPathMotionArc);
                        break;
                    case 11:
                        keyPosition.mPercentWidth = typedArray.getFloat(index, keyPosition.mPercentWidth);
                        break;
                    case 12:
                        keyPosition.mPercentHeight = typedArray.getFloat(index, keyPosition.mPercentHeight);
                        break;
                    default:
                        Log.e(TypedValues.PositionType.NAME, "unused attribute 0x" + Integer.toHexString(index) + "   " + sAttrMap.get(index));
                        break;
                }
            }
            if (keyPosition.mFramePosition == -1) {
                Log.e(TypedValues.PositionType.NAME, "no frame position");
            }
        }
    }

    public KeyPosition() {
        this.mType = 2;
    }

    private void calcCartesianPosition(float f10, float f11, float f12, float f13) {
        float f14;
        float f15;
        float f16;
        float f17 = f12 - f10;
        float f18 = f13 - f11;
        float f19 = 0.0f;
        if (Float.isNaN(this.mPercentX)) {
            f14 = 0.0f;
        } else {
            f14 = this.mPercentX;
        }
        if (Float.isNaN(this.mAltPercentY)) {
            f15 = 0.0f;
        } else {
            f15 = this.mAltPercentY;
        }
        if (Float.isNaN(this.mPercentY)) {
            f16 = 0.0f;
        } else {
            f16 = this.mPercentY;
        }
        if (!Float.isNaN(this.mAltPercentX)) {
            f19 = this.mAltPercentX;
        }
        this.mCalculatedPositionX = (int) (f10 + (f14 * f17) + (f19 * f18));
        this.mCalculatedPositionY = (int) (f11 + (f17 * f15) + (f18 * f16));
    }

    private void calcPathPosition(float f10, float f11, float f12, float f13) {
        float f14 = f12 - f10;
        float f15 = f13 - f11;
        float f16 = this.mPercentX;
        float f17 = this.mPercentY;
        this.mCalculatedPositionX = f10 + (f14 * f16) + ((-f15) * f17);
        this.mCalculatedPositionY = f11 + (f15 * f16) + (f14 * f17);
    }

    private void calcScreenPosition(int i10, int i11) {
        float f10 = this.mPercentX;
        float f11 = 0;
        this.mCalculatedPositionX = (i10 * f10) + f11;
        this.mCalculatedPositionY = (i11 * f10) + f11;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    void calcPosition(int i10, int i11, float f10, float f11, float f12, float f13) {
        int i12 = this.mPositionType;
        if (i12 != 1) {
            if (i12 != 2) {
                calcCartesianPosition(f10, f11, f12, f13);
                return;
            } else {
                calcScreenPosition(i10, i11);
                return;
            }
        }
        calcPathPosition(f10, f11, f12, f13);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyPosition keyPosition = (KeyPosition) key;
        this.mTransitionEasing = keyPosition.mTransitionEasing;
        this.mPathMotionArc = keyPosition.mPathMotionArc;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mPercentWidth = keyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = keyPosition.mPercentX;
        this.mPercentY = keyPosition.mPercentY;
        this.mAltPercentX = keyPosition.mAltPercentX;
        this.mAltPercentY = keyPosition.mAltPercentY;
        this.mCalculatedPositionX = keyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = keyPosition.mCalculatedPositionY;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float getPositionX() {
        return this.mCalculatedPositionX;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float getPositionY() {
        return this.mCalculatedPositionY;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public boolean intersects(int i10, int i11, RectF rectF, RectF rectF2, float f10, float f11) {
        calcPosition(i10, i11, rectF.centerX(), rectF.centerY(), rectF2.centerX(), rectF2.centerY());
        if (Math.abs(f10 - this.mCalculatedPositionX) < 20.0f && Math.abs(f11 - this.mCalculatedPositionY) < 20.0f) {
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyPosition));
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public void positionAttributes(View view, RectF rectF, RectF rectF2, float f10, float f11, String[] strArr, float[] fArr) {
        int i10 = this.mPositionType;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    positionCartAttributes(rectF, rectF2, f10, f11, strArr, fArr);
                    return;
                } else {
                    positionAxisAttributes(rectF, rectF2, f10, f11, strArr, fArr);
                    return;
                }
            }
            positionScreenAttributes(view, rectF, rectF2, f10, f11, strArr, fArr);
            return;
        }
        positionPathAttributes(rectF, rectF2, f10, f11, strArr, fArr);
    }

    void positionAxisAttributes(RectF rectF, RectF rectF2, float f10, float f11, String[] strArr, float[] fArr) {
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        float centerX2 = rectF2.centerX();
        float centerY2 = rectF2.centerY();
        if (centerX > centerX2) {
            centerX2 = centerX;
            centerX = centerX2;
        }
        if (centerY <= centerY2) {
            centerY2 = centerY;
            centerY = centerY2;
        }
        float f12 = centerX2 - centerX;
        float f13 = centerY - centerY2;
        String str = strArr[0];
        if (str != null) {
            if ("percentX".equals(str)) {
                fArr[0] = (f10 - centerX) / f12;
                fArr[1] = (f11 - centerY2) / f13;
                return;
            }
            fArr[1] = (f10 - centerX) / f12;
            fArr[0] = (f11 - centerY2) / f13;
            return;
        }
        strArr[0] = "percentX";
        fArr[0] = (f10 - centerX) / f12;
        strArr[1] = "percentY";
        fArr[1] = (f11 - centerY2) / f13;
    }

    void positionCartAttributes(RectF rectF, RectF rectF2, float f10, float f11, String[] strArr, float[] fArr) {
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        float centerX2 = rectF2.centerX() - centerX;
        float centerY2 = rectF2.centerY() - centerY;
        String str = strArr[0];
        if (str != null) {
            if ("percentX".equals(str)) {
                fArr[0] = (f10 - centerX) / centerX2;
                fArr[1] = (f11 - centerY) / centerY2;
                return;
            }
            fArr[1] = (f10 - centerX) / centerX2;
            fArr[0] = (f11 - centerY) / centerY2;
            return;
        }
        strArr[0] = "percentX";
        fArr[0] = (f10 - centerX) / centerX2;
        strArr[1] = "percentY";
        fArr[1] = (f11 - centerY) / centerY2;
    }

    void positionPathAttributes(RectF rectF, RectF rectF2, float f10, float f11, String[] strArr, float[] fArr) {
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        float centerX2 = rectF2.centerX() - centerX;
        float centerY2 = rectF2.centerY() - centerY;
        float hypot = (float) Math.hypot(centerX2, centerY2);
        if (hypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f12 = centerX2 / hypot;
        float f13 = centerY2 / hypot;
        float f14 = f11 - centerY;
        float f15 = f10 - centerX;
        float f16 = ((f12 * f14) - (f15 * f13)) / hypot;
        float f17 = ((f12 * f15) + (f13 * f14)) / hypot;
        String str = strArr[0];
        if (str != null) {
            if ("percentX".equals(str)) {
                fArr[0] = f17;
                fArr[1] = f16;
                return;
            }
            return;
        }
        strArr[0] = "percentX";
        strArr[1] = "percentY";
        fArr[0] = f17;
        fArr[1] = f16;
    }

    void positionScreenAttributes(View view, RectF rectF, RectF rectF2, float f10, float f11, String[] strArr, float[] fArr) {
        rectF.centerX();
        rectF.centerY();
        rectF2.centerX();
        rectF2.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        String str = strArr[0];
        if (str != null) {
            if ("percentX".equals(str)) {
                fArr[0] = f10 / width;
                fArr[1] = f11 / height;
                return;
            }
            fArr[1] = f10 / width;
            fArr[0] = f11 / height;
            return;
        }
        strArr[0] = "percentX";
        fArr[0] = f10 / width;
        strArr[1] = "percentY";
        fArr[1] = f11 / height;
    }

    public void setType(int i10) {
        this.mPositionType = i10;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1812823328:
                if (str.equals("transitionEasing")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1127236479:
                if (str.equals("percentWidth")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1017587252:
                if (str.equals("percentHeight")) {
                    c10 = 2;
                    break;
                }
                break;
            case -827014263:
                if (str.equals("drawPath")) {
                    c10 = 3;
                    break;
                }
                break;
            case -200259324:
                if (str.equals("sizePercent")) {
                    c10 = 4;
                    break;
                }
                break;
            case 428090547:
                if (str.equals("percentX")) {
                    c10 = 5;
                    break;
                }
                break;
            case 428090548:
                if (str.equals("percentY")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.mTransitionEasing = obj.toString();
                return;
            case 1:
                this.mPercentWidth = toFloat(obj);
                return;
            case 2:
                this.mPercentHeight = toFloat(obj);
                return;
            case 3:
                this.mDrawPath = toInt(obj);
                return;
            case 4:
                float f10 = toFloat(obj);
                this.mPercentWidth = f10;
                this.mPercentHeight = f10;
                return;
            case 5:
                this.mPercentX = toFloat(obj);
                return;
            case 6:
                this.mPercentY = toFloat(obj);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo4301clone() {
        return new KeyPosition().copy(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> hashMap) {
    }
}
