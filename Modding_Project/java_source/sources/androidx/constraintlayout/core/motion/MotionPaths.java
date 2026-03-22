package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] sNames = {"position", TextureRenderKeys.KEY_IS_X, TextureRenderKeys.KEY_IS_Y, "width", "height", "pathRotate"};
    int mAnimateCircleAngleTo;
    String mAnimateRelativeTo;
    HashMap<String, CustomVariable> mCustomAttributes;
    int mDrawPath;
    float mHeight;
    public String mId;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mPosition;
    float mProgress;
    float mRelativeAngle;
    Motion mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float mTime;
    float mWidth;
    float mX;
    float mY;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = null;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.mCustomAttributes = new HashMap<>();
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

    public void applyParameters(MotionWidget motionWidget) {
        ConstraintWidget constraintWidget;
        this.mKeyFrameEasing = Easing.getInterpolator(motionWidget.mMotion.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.mMotion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = motionWidget.mPropertySet.mProgress;
        WidgetFrame widgetFrame = motionWidget.mWidgetFrame;
        if (widgetFrame != null && (constraintWidget = widgetFrame.widget) != null) {
            this.mRelativeAngle = constraintWidget.mCircleConstraintAngle;
        }
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.mCustomAttributes.put(str, customAttribute);
            }
        }
    }

    public void configureRelativeTo(Motion motion) {
        motion.getPos(this.mProgress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z10) {
        boolean z11;
        boolean diff = diff(this.mX, motionPaths.mX);
        boolean diff2 = diff(this.mY, motionPaths.mY);
        boolean z12 = false;
        zArr[0] = zArr[0] | diff(this.mPosition, motionPaths.mPosition);
        boolean z13 = zArr[1];
        if (!diff && !diff2 && !z10) {
            z11 = false;
        } else {
            z11 = true;
        }
        zArr[1] = z13 | z11;
        boolean z14 = zArr[2];
        if (diff || diff2 || z10) {
            z12 = true;
        }
        zArr[2] = z14 | z12;
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
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d10, fArr2, new float[2]);
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
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d10, fArr2, new float[2]);
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
        CustomVariable customVariable = this.mCustomAttributes.get(str);
        int i11 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i10] = customVariable.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        customVariable.getValuesToInterpolate(fArr);
        while (i11 < numberOfInterpolatedValues) {
            dArr[i10] = fArr[i11];
            i11++;
            i10++;
        }
        return numberOfInterpolatedValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomDataCount(String str) {
        CustomVariable customVariable = this.mCustomAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
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
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float centerX = motion.getCenterX();
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
        return this.mCustomAttributes.containsKey(str);
    }

    void initCartesian(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f16;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        if (Float.isNaN(motionKeyPosition.mPercentWidth)) {
            f10 = f16;
        } else {
            f10 = motionKeyPosition.mPercentWidth;
        }
        if (Float.isNaN(motionKeyPosition.mPercentHeight)) {
            f11 = f16;
        } else {
            f11 = motionKeyPosition.mPercentHeight;
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
        if (Float.isNaN(motionKeyPosition.mPercentX)) {
            f14 = f16;
        } else {
            f14 = motionKeyPosition.mPercentX;
        }
        float f27 = 0.0f;
        if (Float.isNaN(motionKeyPosition.mAltPercentY)) {
            f15 = 0.0f;
        } else {
            f15 = motionKeyPosition.mAltPercentY;
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f16 = motionKeyPosition.mPercentY;
        }
        if (!Float.isNaN(motionKeyPosition.mAltPercentX)) {
            f27 = motionKeyPosition.mAltPercentX;
        }
        this.mMode = 0;
        this.mX = (int) (((motionPaths.mX + (f14 * f23)) + (f27 * f24)) - f25);
        this.mY = (int) (((motionPaths.mY + (f23 * f15)) + (f24 * f16)) - f26);
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initPath(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f15;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        if (Float.isNaN(motionKeyPosition.mPercentWidth)) {
            f10 = f15;
        } else {
            f10 = motionKeyPosition.mPercentWidth;
        }
        if (Float.isNaN(motionKeyPosition.mPercentHeight)) {
            f11 = f15;
        } else {
            f11 = motionKeyPosition.mPercentHeight;
        }
        float f16 = motionPaths2.mWidth - motionPaths.mWidth;
        float f17 = motionPaths2.mHeight - motionPaths.mHeight;
        this.mPosition = this.mTime;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f15 = motionKeyPosition.mPercentX;
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
        if (Float.isNaN(motionKeyPosition.mPercentY)) {
            f14 = 0.0f;
        } else {
            f14 = motionKeyPosition.mPercentY;
        }
        this.mMode = 1;
        float f28 = (int) ((motionPaths.mX + f24) - f25);
        float f29 = (int) ((motionPaths.mY + f26) - f27);
        this.mX = f28 + ((-f23) * f14);
        this.mY = f29 + (f22 * f14);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initPolar(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12;
        float min;
        float f13;
        float f14;
        float f15 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f15;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mMode = motionKeyPosition.mPositionType;
        if (Float.isNaN(motionKeyPosition.mPercentWidth)) {
            f10 = f15;
        } else {
            f10 = motionKeyPosition.mPercentWidth;
        }
        if (Float.isNaN(motionKeyPosition.mPercentHeight)) {
            f11 = f15;
        } else {
            f11 = motionKeyPosition.mPercentHeight;
        }
        float f16 = motionPaths2.mWidth;
        float f17 = motionPaths.mWidth;
        float f18 = motionPaths2.mHeight;
        float f19 = motionPaths.mHeight;
        this.mPosition = this.mTime;
        this.mWidth = (int) (f17 + ((f16 - f17) * f10));
        this.mHeight = (int) (f19 + ((f18 - f19) * f11));
        int i12 = motionKeyPosition.mPositionType;
        if (i12 != 1) {
            if (i12 != 2) {
                if (Float.isNaN(motionKeyPosition.mPercentX)) {
                    f14 = f15;
                } else {
                    f14 = motionKeyPosition.mPercentX;
                }
                float f20 = motionPaths2.mX;
                float f21 = motionPaths.mX;
                this.mX = (f14 * (f20 - f21)) + f21;
                if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                    f15 = motionKeyPosition.mPercentY;
                }
                float f22 = motionPaths2.mY;
                float f23 = motionPaths.mY;
                this.mY = (f15 * (f22 - f23)) + f23;
            } else {
                if (Float.isNaN(motionKeyPosition.mPercentX)) {
                    float f24 = motionPaths2.mX;
                    float f25 = motionPaths.mX;
                    min = ((f24 - f25) * f15) + f25;
                } else {
                    min = Math.min(f11, f10) * motionKeyPosition.mPercentX;
                }
                this.mX = min;
                if (Float.isNaN(motionKeyPosition.mPercentY)) {
                    float f26 = motionPaths2.mY;
                    float f27 = motionPaths.mY;
                    f13 = (f15 * (f26 - f27)) + f27;
                } else {
                    f13 = motionKeyPosition.mPercentY;
                }
                this.mY = f13;
            }
        } else {
            if (Float.isNaN(motionKeyPosition.mPercentX)) {
                f12 = f15;
            } else {
                f12 = motionKeyPosition.mPercentX;
            }
            float f28 = motionPaths2.mX;
            float f29 = motionPaths.mX;
            this.mX = (f12 * (f28 - f29)) + f29;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f15 = motionKeyPosition.mPercentY;
            }
            float f30 = motionPaths2.mY;
            float f31 = motionPaths.mY;
            this.mY = (f15 * (f30 - f31)) + f31;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initScreen(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f12;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        if (Float.isNaN(motionKeyPosition.mPercentWidth)) {
            f10 = f12;
        } else {
            f10 = motionKeyPosition.mPercentWidth;
        }
        if (Float.isNaN(motionKeyPosition.mPercentHeight)) {
            f11 = f12;
        } else {
            f11 = motionKeyPosition.mPercentHeight;
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
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.mX = (int) (motionKeyPosition.mPercentX * (i10 - ((int) this.mWidth)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.mY = (int) (motionKeyPosition.mPercentY * (i11 - ((int) this.mHeight)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
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
    public void setView(float f10, MotionWidget motionWidget, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
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
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f10, fArr, fArr2);
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
                motionWidget.setRotationZ((float) (f24 + Math.toDegrees(Math.atan2(cos2, sin2))));
            }
            f13 = sin;
            f14 = cos;
        } else {
            f11 = f16;
            if (!Float.isNaN(f24)) {
                motionWidget.setRotationZ(((float) (f24 + Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f))))) + 0.0f);
            }
        }
        float f29 = f13 + 0.5f;
        float f30 = f14 + 0.5f;
        motionWidget.layout((int) f29, (int) f30, (int) (f29 + f15), (int) (f30 + f11));
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d10 = ((this.mX + (this.mWidth / 2.0f)) - motionPaths.mX) - (motionPaths.mWidth / 2.0f);
        double d11 = ((this.mY + (this.mHeight / 2.0f)) - motionPaths.mY) - (motionPaths.mHeight / 2.0f);
        this.mRelativeToController = motion;
        this.mX = (float) Math.hypot(d11, d10);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.mY = (float) (Math.atan2(d11, d10) + 1.5707963267948966d);
        } else {
            this.mY = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.mPosition, motionPaths.mPosition);
    }

    public MotionPaths(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = null;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.mCustomAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != null) {
            initPolar(i10, i11, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i12 = motionKeyPosition.mPositionType;
        if (i12 == 1) {
            initPath(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i12 != 2) {
            initCartesian(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i10, i11, motionKeyPosition, motionPaths, motionPaths2);
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
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d10, fArr3, fArr4);
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
