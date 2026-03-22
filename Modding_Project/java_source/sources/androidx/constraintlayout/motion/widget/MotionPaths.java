package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Arrays;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    static final int PERPENDICULAR = 1;
    static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] sNames = {"position", TextureRenderKeys.KEY_IS_X, TextureRenderKeys.KEY_IS_Y, "width", "height", "pathRotate"};
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    LinkedHashMap<String, ConstraintAttribute> mAttributes;
    float mHeight;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPosition;
    float mRelativeAngle;
    MotionController mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float mTime;
    float mWidth;
    float mX;
    float mY;
    int mDrawPath = 0;
    float mPathRotate = Float.NaN;
    float mProgress = Float.NaN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionPaths() {
        int i10 = Key.UNSET;
        this.mPathMotionArc = i10;
        this.mAnimateRelativeTo = i10;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.mAttributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    private boolean diff(float f10, float f11) {
        if (!Float.isNaN(f10) && !Float.isNaN(f11)) {
            if (Math.abs(f10 - f11) <= 1.0E-6f) {
                return false;
            }
            return true;
        } else if (Float.isNaN(f10) == Float.isNaN(f11)) {
            return false;
        } else {
            return true;
        }
    }

    private static float xRotate(float f10, float f11, float f12, float f13, float f14, float f15) {
        return (((f14 - f12) * f11) - ((f15 - f13) * f10)) + f12;
    }

    private static float yRotate(float f10, float f11, float f12, float f13, float f14, float f15) {
        return ((f14 - f12) * f10) + ((f15 - f13) * f11) + f13;
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = constraint.propertySet.mProgress;
        this.mRelativeAngle = constraint.layout.circleAngle;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute != null && constraintAttribute.isContinuous()) {
                this.mAttributes.put(str, constraintAttribute);
            }
        }
    }

    public void configureRelativeTo(MotionController motionController) {
        motionController.getPos(this.mProgress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z10) {
        boolean diff = diff(this.mX, motionPaths.mX);
        boolean diff2 = diff(this.mY, motionPaths.mY);
        zArr[0] = zArr[0] | diff(this.mPosition, motionPaths.mPosition);
        boolean z11 = diff | diff2 | z10;
        zArr[1] = zArr[1] | z11;
        zArr[2] = z11 | zArr[2];
        zArr[3] = zArr[3] | diff(this.mWidth, motionPaths.mWidth);
        zArr[4] = diff(this.mHeight, motionPaths.mHeight) | zArr[4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.mPosition, this.mX, this.mY, this.mWidth, this.mHeight, this.mPathRotate};
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 < 6) {
                dArr[i10] = fArr[i11];
                i10++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getBounds(int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.mWidth;
        float f11 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f12 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 != 3) {
                if (i12 == 4) {
                    f11 = f12;
                }
            } else {
                f10 = f12;
            }
        }
        fArr[i10] = f10;
        fArr[i10 + 1] = f11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double d10, int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.mX;
        float f11 = this.mY;
        float f12 = this.mWidth;
        float f13 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f14 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f10 = f14;
            } else if (i12 == 2) {
                f11 = f14;
            } else if (i12 == 3) {
                f12 = f14;
            } else if (i12 == 4) {
                f13 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.getCenter(d10, fArr2, new float[2]);
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d11 = f15;
            double d12 = f10;
            double d13 = f11;
            f10 = (float) ((d11 + (Math.sin(d13) * d12)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d12 * Math.cos(d13))) - (f13 / 2.0f));
        }
        fArr[i10] = f10 + (f12 / 2.0f) + 0.0f;
        fArr[i10 + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    void getCenterVelocity(double d10, int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.mX;
        float f11 = this.mY;
        float f12 = this.mWidth;
        float f13 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f14 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 == 4) {
                            f13 = f14;
                        }
                    } else {
                        f12 = f14;
                    }
                } else {
                    f11 = f14;
                }
            } else {
                f10 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.getCenter(d10, fArr2, new float[2]);
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d11 = f15;
            double d12 = f10;
            double d13 = f11;
            f10 = (float) ((d11 + (Math.sin(d13) * d12)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d12 * Math.cos(d13))) - (f13 / 2.0f));
        }
        fArr[i10] = f10 + (f12 / 2.0f) + 0.0f;
        fArr[i10 + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomData(String str, double[] dArr, int i10) {
        ConstraintAttribute constraintAttribute = this.mAttributes.get(str);
        int i11 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            dArr[i10] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        while (i11 < numberOfInterpolatedValues) {
            dArr[i10] = fArr[i11];
            i11++;
            i10++;
        }
        return numberOfInterpolatedValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomDataCount(String str) {
        ConstraintAttribute constraintAttribute = this.mAttributes.get(str);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.numberOfInterpolatedValues();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.mX;
        float f11 = this.mY;
        float f12 = this.mWidth;
        float f13 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f14 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 == 4) {
                            f13 = f14;
                        }
                    } else {
                        f12 = f14;
                    }
                } else {
                    f11 = f14;
                }
            } else {
                f10 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float centerX = motionController.getCenterX();
            double d10 = f10;
            double d11 = f11;
            f11 = (float) ((this.mRelativeToController.getCenterY() - (d10 * Math.cos(d11))) - (f13 / 2.0f));
            f10 = (float) ((centerX + (Math.sin(d11) * d10)) - (f12 / 2.0f));
        }
        float f15 = f12 + f10;
        float f16 = f13 + f11;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        fArr[i10] = f10 + 0.0f;
        fArr[i10 + 1] = f11 + 0.0f;
        fArr[i10 + 2] = f15 + 0.0f;
        fArr[i10 + 3] = f11 + 0.0f;
        fArr[i10 + 4] = f15 + 0.0f;
        fArr[i10 + 5] = f16 + 0.0f;
        fArr[i10 + 6] = f10 + 0.0f;
        fArr[i10 + 7] = f16 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasCustomData(String str) {
        return this.mAttributes.containsKey(str);
    }

    void initAxis(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18 = keyPosition.mFramePosition / 100.0f;
        this.mTime = f18;
        this.mDrawPath = keyPosition.mDrawPath;
        if (Float.isNaN(keyPosition.mPercentWidth)) {
            f10 = f18;
        } else {
            f10 = keyPosition.mPercentWidth;
        }
        if (Float.isNaN(keyPosition.mPercentHeight)) {
            f11 = f18;
        } else {
            f11 = keyPosition.mPercentHeight;
        }
        float f19 = motionPaths2.mWidth;
        float f20 = motionPaths.mWidth;
        float f21 = f19 - f20;
        float f22 = motionPaths2.mHeight;
        float f23 = motionPaths.mHeight;
        float f24 = f22 - f23;
        this.mPosition = this.mTime;
        float f25 = (f20 / 2.0f) + motionPaths.mX;
        float f26 = motionPaths.mY + (f23 / 2.0f);
        float f27 = motionPaths2.mX + (f19 / 2.0f);
        float f28 = motionPaths2.mY + (f22 / 2.0f);
        if (f25 > f27) {
            f25 = f27;
            f27 = f25;
        }
        if (f26 <= f28) {
            f26 = f28;
            f28 = f26;
        }
        float f29 = f27 - f25;
        float f30 = f26 - f28;
        float f31 = (f21 * f10) / 2.0f;
        this.mX = (int) ((f12 + (f29 * f18)) - f31);
        float f32 = (f24 * f11) / 2.0f;
        this.mY = (int) ((f13 + (f30 * f18)) - f32);
        this.mWidth = (int) (f20 + f14);
        this.mHeight = (int) (f23 + f15);
        if (Float.isNaN(keyPosition.mPercentX)) {
            f16 = f18;
        } else {
            f16 = keyPosition.mPercentX;
        }
        float f33 = 0.0f;
        if (Float.isNaN(keyPosition.mAltPercentY)) {
            f17 = 0.0f;
        } else {
            f17 = keyPosition.mAltPercentY;
        }
        if (!Float.isNaN(keyPosition.mPercentY)) {
            f18 = keyPosition.mPercentY;
        }
        if (!Float.isNaN(keyPosition.mAltPercentX)) {
            f33 = keyPosition.mAltPercentX;
        }
        this.mMode = 0;
        this.mX = (int) (((motionPaths.mX + (f16 * f29)) + (f33 * f30)) - f31);
        this.mY = (int) (((motionPaths.mY + (f29 * f17)) + (f30 * f18)) - f32);
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initCartesian(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16 = keyPosition.mFramePosition / 100.0f;
        this.mTime = f16;
        this.mDrawPath = keyPosition.mDrawPath;
        if (Float.isNaN(keyPosition.mPercentWidth)) {
            f10 = f16;
        } else {
            f10 = keyPosition.mPercentWidth;
        }
        if (Float.isNaN(keyPosition.mPercentHeight)) {
            f11 = f16;
        } else {
            f11 = keyPosition.mPercentHeight;
        }
        float f17 = motionPaths2.mWidth;
        float f18 = motionPaths.mWidth;
        float f19 = motionPaths2.mHeight;
        float f20 = motionPaths.mHeight;
        this.mPosition = this.mTime;
        float f21 = motionPaths.mX;
        float f22 = motionPaths.mY;
        float f23 = (motionPaths2.mX + (f17 / 2.0f)) - ((f18 / 2.0f) + f21);
        float f24 = (motionPaths2.mY + (f19 / 2.0f)) - (f22 + (f20 / 2.0f));
        float f25 = ((f17 - f18) * f10) / 2.0f;
        this.mX = (int) ((f21 + (f23 * f16)) - f25);
        float f26 = ((f19 - f20) * f11) / 2.0f;
        this.mY = (int) ((f22 + (f24 * f16)) - f26);
        this.mWidth = (int) (f18 + f12);
        this.mHeight = (int) (f20 + f13);
        if (Float.isNaN(keyPosition.mPercentX)) {
            f14 = f16;
        } else {
            f14 = keyPosition.mPercentX;
        }
        float f27 = 0.0f;
        if (Float.isNaN(keyPosition.mAltPercentY)) {
            f15 = 0.0f;
        } else {
            f15 = keyPosition.mAltPercentY;
        }
        if (!Float.isNaN(keyPosition.mPercentY)) {
            f16 = keyPosition.mPercentY;
        }
        if (!Float.isNaN(keyPosition.mAltPercentX)) {
            f27 = keyPosition.mAltPercentX;
        }
        this.mMode = 0;
        this.mX = (int) (((motionPaths.mX + (f14 * f23)) + (f27 * f24)) - f25);
        this.mY = (int) (((motionPaths.mY + (f23 * f15)) + (f24 * f16)) - f26);
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initPath(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15 = keyPosition.mFramePosition / 100.0f;
        this.mTime = f15;
        this.mDrawPath = keyPosition.mDrawPath;
        if (Float.isNaN(keyPosition.mPercentWidth)) {
            f10 = f15;
        } else {
            f10 = keyPosition.mPercentWidth;
        }
        if (Float.isNaN(keyPosition.mPercentHeight)) {
            f11 = f15;
        } else {
            f11 = keyPosition.mPercentHeight;
        }
        float f16 = motionPaths2.mWidth - motionPaths.mWidth;
        float f17 = motionPaths2.mHeight - motionPaths.mHeight;
        this.mPosition = this.mTime;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            f15 = keyPosition.mPercentX;
        }
        float f18 = motionPaths.mX;
        float f19 = motionPaths.mWidth;
        float f20 = motionPaths.mY;
        float f21 = motionPaths.mHeight;
        float f22 = (motionPaths2.mX + (motionPaths2.mWidth / 2.0f)) - ((f19 / 2.0f) + f18);
        float f23 = (motionPaths2.mY + (motionPaths2.mHeight / 2.0f)) - ((f21 / 2.0f) + f20);
        float f24 = f22 * f15;
        float f25 = (f16 * f10) / 2.0f;
        this.mX = (int) ((f18 + f24) - f25);
        float f26 = f15 * f23;
        float f27 = (f17 * f11) / 2.0f;
        this.mY = (int) ((f20 + f26) - f27);
        this.mWidth = (int) (f19 + f12);
        this.mHeight = (int) (f21 + f13);
        if (Float.isNaN(keyPosition.mPercentY)) {
            f14 = 0.0f;
        } else {
            f14 = keyPosition.mPercentY;
        }
        this.mMode = 1;
        float f28 = (int) ((motionPaths.mX + f24) - f25);
        float f29 = (int) ((motionPaths.mY + f26) - f27);
        this.mX = f28 + ((-f23) * f14);
        this.mY = f29 + (f22 * f14);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initPolar(int i10, int i11, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float min;
        float f12;
        float f13;
        float f14 = keyPosition.mFramePosition / 100.0f;
        this.mTime = f14;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mMode = keyPosition.mPositionType;
        if (Float.isNaN(keyPosition.mPercentWidth)) {
            f10 = f14;
        } else {
            f10 = keyPosition.mPercentWidth;
        }
        if (Float.isNaN(keyPosition.mPercentHeight)) {
            f11 = f14;
        } else {
            f11 = keyPosition.mPercentHeight;
        }
        float f15 = motionPaths2.mWidth;
        float f16 = motionPaths.mWidth;
        float f17 = motionPaths2.mHeight;
        float f18 = motionPaths.mHeight;
        this.mPosition = this.mTime;
        this.mWidth = (int) (f16 + ((f15 - f16) * f10));
        this.mHeight = (int) (f18 + ((f17 - f18) * f11));
        if (keyPosition.mPositionType != 2) {
            if (Float.isNaN(keyPosition.mPercentX)) {
                f13 = f14;
            } else {
                f13 = keyPosition.mPercentX;
            }
            float f19 = motionPaths2.mX;
            float f20 = motionPaths.mX;
            this.mX = (f13 * (f19 - f20)) + f20;
            if (!Float.isNaN(keyPosition.mPercentY)) {
                f14 = keyPosition.mPercentY;
            }
            float f21 = motionPaths2.mY;
            float f22 = motionPaths.mY;
            this.mY = (f14 * (f21 - f22)) + f22;
        } else {
            if (Float.isNaN(keyPosition.mPercentX)) {
                float f23 = motionPaths2.mX;
                float f24 = motionPaths.mX;
                min = ((f23 - f24) * f14) + f24;
            } else {
                min = Math.min(f11, f10) * keyPosition.mPercentX;
            }
            this.mX = min;
            if (Float.isNaN(keyPosition.mPercentY)) {
                float f25 = motionPaths2.mY;
                float f26 = motionPaths.mY;
                f12 = (f14 * (f25 - f26)) + f26;
            } else {
                f12 = keyPosition.mPercentY;
            }
            this.mY = f12;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initScreen(int i10, int i11, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12 = keyPosition.mFramePosition / 100.0f;
        this.mTime = f12;
        this.mDrawPath = keyPosition.mDrawPath;
        if (Float.isNaN(keyPosition.mPercentWidth)) {
            f10 = f12;
        } else {
            f10 = keyPosition.mPercentWidth;
        }
        if (Float.isNaN(keyPosition.mPercentHeight)) {
            f11 = f12;
        } else {
            f11 = keyPosition.mPercentHeight;
        }
        float f13 = motionPaths2.mWidth;
        float f14 = motionPaths.mWidth;
        float f15 = motionPaths2.mHeight;
        float f16 = motionPaths.mHeight;
        this.mPosition = this.mTime;
        float f17 = motionPaths.mX;
        float f18 = motionPaths.mY;
        float f19 = motionPaths2.mX + (f13 / 2.0f);
        float f20 = motionPaths2.mY + (f15 / 2.0f);
        float f21 = (f13 - f14) * f10;
        this.mX = (int) ((f17 + ((f19 - ((f14 / 2.0f) + f17)) * f12)) - (f21 / 2.0f));
        float f22 = (f15 - f16) * f11;
        this.mY = (int) ((f18 + ((f20 - (f18 + (f16 / 2.0f))) * f12)) - (f22 / 2.0f));
        this.mWidth = (int) (f14 + f21);
        this.mHeight = (int) (f16 + f22);
        this.mMode = 2;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            this.mX = (int) (keyPosition.mPercentX * (i10 - ((int) this.mWidth)));
        }
        if (!Float.isNaN(keyPosition.mPercentY)) {
            this.mY = (int) (keyPosition.mPercentY * (i11 - ((int) this.mHeight)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBounds(float f10, float f11, float f12, float f13) {
        this.mX = f10;
        this.mY = f11;
        this.mWidth = f12;
        this.mHeight = f13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDpDt(float f10, float f11, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f16 = (float) dArr[i10];
            double d10 = dArr2[i10];
            int i11 = iArr[i10];
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 == 4) {
                            f15 = f16;
                        }
                    } else {
                        f13 = f16;
                    }
                } else {
                    f14 = f16;
                }
            } else {
                f12 = f16;
            }
        }
        float f17 = f12 - ((0.0f * f13) / 2.0f);
        float f18 = f14 - ((0.0f * f15) / 2.0f);
        fArr[0] = (f17 * (1.0f - f10)) + (((f13 * 1.0f) + f17) * f10) + 0.0f;
        fArr[1] = (f18 * (1.0f - f11)) + (((f15 * 1.0f) + f18) * f11) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setView(float f10, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z10) {
        float f11;
        float f12;
        float f13 = this.mX;
        float f14 = this.mY;
        float f15 = this.mWidth;
        float f16 = this.mHeight;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i10 = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i10];
            this.mTempDelta = new double[i10];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i11 = 0; i11 < iArr.length; i11++) {
            double[] dArr4 = this.mTempValue;
            int i12 = iArr[i11];
            dArr4[i12] = dArr[i11];
            this.mTempDelta[i12] = dArr2[i11];
        }
        float f17 = Float.NaN;
        int i13 = 0;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        while (true) {
            double[] dArr5 = this.mTempValue;
            if (i13 >= dArr5.length) {
                break;
            }
            double d10 = 0.0d;
            if (Double.isNaN(dArr5[i13]) && (dArr3 == null || dArr3[i13] == 0.0d)) {
                f12 = f17;
            } else {
                if (dArr3 != null) {
                    d10 = dArr3[i13];
                }
                if (!Double.isNaN(this.mTempValue[i13])) {
                    d10 = this.mTempValue[i13] + d10;
                }
                f12 = f17;
                float f22 = (float) d10;
                float f23 = (float) this.mTempDelta[i13];
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 != 4) {
                                if (i13 == 5) {
                                    f17 = f22;
                                }
                            } else {
                                f17 = f12;
                                f21 = f23;
                                f16 = f22;
                            }
                        } else {
                            f17 = f12;
                            f20 = f23;
                            f15 = f22;
                        }
                    } else {
                        f17 = f12;
                        f19 = f23;
                        f14 = f22;
                    }
                } else {
                    f17 = f12;
                    f18 = f23;
                    f13 = f22;
                }
                i13++;
            }
            f17 = f12;
            i13++;
        }
        float f24 = f17;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(f10, fArr, fArr2);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = fArr2[0];
            float f28 = fArr2[1];
            double d11 = f13;
            double d12 = f14;
            float sin = (float) ((f25 + (Math.sin(d12) * d11)) - (f15 / 2.0f));
            f11 = f16;
            float cos = (float) ((f26 - (Math.cos(d12) * d11)) - (f16 / 2.0f));
            double d13 = f18;
            double d14 = f19;
            float sin2 = (float) (f27 + (Math.sin(d12) * d13) + (Math.cos(d12) * d11 * d14));
            float cos2 = (float) ((f28 - (d13 * Math.cos(d12))) + (d11 * Math.sin(d12) * d14));
            if (dArr2.length >= 2) {
                dArr2[0] = sin2;
                dArr2[1] = cos2;
            }
            if (!Float.isNaN(f24)) {
                view.setRotation((float) (f24 + Math.toDegrees(Math.atan2(cos2, sin2))));
            }
            f13 = sin;
            f14 = cos;
        } else {
            f11 = f16;
            if (!Float.isNaN(f24)) {
                view.setRotation(f24 + ((float) Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f)))) + 0.0f);
            }
        }
        if (view instanceof FloatLayout) {
            ((FloatLayout) view).layout(f13, f14, f15 + f13, f14 + f11);
            return;
        }
        float f29 = f13 + 0.5f;
        int i14 = (int) f29;
        float f30 = f14 + 0.5f;
        int i15 = (int) f30;
        int i16 = (int) (f29 + f15);
        int i17 = (int) (f30 + f11);
        int i18 = i16 - i14;
        int i19 = i17 - i15;
        if (i18 != view.getMeasuredWidth() || i19 != view.getMeasuredHeight() || z10) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
        }
        view.layout(i14, i15, i16, i17);
    }

    public void setupRelative(MotionController motionController, MotionPaths motionPaths) {
        double d10 = ((this.mX + (this.mWidth / 2.0f)) - motionPaths.mX) - (motionPaths.mWidth / 2.0f);
        double d11 = ((this.mY + (this.mHeight / 2.0f)) - motionPaths.mY) - (motionPaths.mHeight / 2.0f);
        this.mRelativeToController = motionController;
        this.mX = (float) Math.hypot(d11, d10);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.mY = (float) (Math.atan2(d11, d10) + 1.5707963267948966d);
        } else {
            this.mY = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull MotionPaths motionPaths) {
        return Float.compare(this.mPosition, motionPaths.mPosition);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionPaths(int i10, int i11, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        int i12 = Key.UNSET;
        this.mPathMotionArc = i12;
        this.mAnimateRelativeTo = i12;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.mAttributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != Key.UNSET) {
            initPolar(i10, i11, keyPosition, motionPaths, motionPaths2);
            return;
        }
        int i13 = keyPosition.mPositionType;
        if (i13 == 1) {
            initPath(keyPosition, motionPaths, motionPaths2);
        } else if (i13 == 2) {
            initScreen(i10, i11, keyPosition, motionPaths, motionPaths2);
        } else if (i13 != 3) {
            initCartesian(keyPosition, motionPaths, motionPaths2);
        } else {
            initAxis(keyPosition, motionPaths, motionPaths2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double d10, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f10;
        float f11 = this.mX;
        float f12 = this.mY;
        float f13 = this.mWidth;
        float f14 = this.mHeight;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f19 = (float) dArr[i10];
            float f20 = (float) dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f11 = f19;
                f15 = f20;
            } else if (i11 == 2) {
                f12 = f19;
                f17 = f20;
            } else if (i11 == 3) {
                f13 = f19;
                f16 = f20;
            } else if (i11 == 4) {
                f14 = f19;
                f18 = f20;
            }
        }
        float f21 = 2.0f;
        float f22 = (f16 / 2.0f) + f15;
        float f23 = (f18 / 2.0f) + f17;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motionController.getCenter(d10, fArr3, fArr4);
            float f24 = fArr3[0];
            float f25 = fArr3[1];
            float f26 = fArr4[0];
            float f27 = fArr4[1];
            double d11 = f11;
            double d12 = f12;
            f10 = f13;
            double d13 = f15;
            double d14 = f17;
            float sin = (float) (f26 + (Math.sin(d12) * d13) + (Math.cos(d12) * d14));
            f23 = (float) ((f27 - (d13 * Math.cos(d12))) + (Math.sin(d12) * d14));
            f22 = sin;
            f11 = (float) ((f24 + (Math.sin(d12) * d11)) - (f13 / 2.0f));
            f12 = (float) ((f25 - (d11 * Math.cos(d12))) - (f14 / 2.0f));
            f21 = 2.0f;
        } else {
            f10 = f13;
        }
        fArr[0] = f11 + (f10 / f21) + 0.0f;
        fArr[1] = f12 + (f14 / f21) + 0.0f;
        fArr2[0] = f22;
        fArr2[1] = f23;
    }
}
