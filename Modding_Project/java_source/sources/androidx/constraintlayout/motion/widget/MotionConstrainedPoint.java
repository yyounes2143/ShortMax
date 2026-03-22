package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    static final int PERPENDICULAR = 1;
    public static final String TAG = "MotionPaths";
    static String[] sNames = {"position", TextureRenderKeys.KEY_IS_X, TextureRenderKeys.KEY_IS_Y, "width", "height", "pathRotate"};
    private float mHeight;
    private Easing mKeyFrameEasing;
    private float mPosition;
    int mVisibility;
    private float mWidth;
    private float mX;
    private float mY;
    public float rotationY = 0.0f;
    int mVisibilityMode = 0;
    LinkedHashMap<String, ConstraintAttribute> mAttributes = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];
    private float mAlpha = 1.0f;
    private boolean mApplyElevation = false;
    private float mElevation = 0.0f;
    private float mRotation = 0.0f;
    private float mRotationX = 0.0f;
    private float mScaleX = 1.0f;
    private float mScaleY = 1.0f;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float mTranslationX = 0.0f;
    private float mTranslationY = 0.0f;
    private float mTranslationZ = 0.0f;
    private int mDrawPath = 0;
    private float mPathRotate = Float.NaN;
    private float mProgress = Float.NaN;
    private int mAnimateRelativeTo = -1;

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

    public void addValues(HashMap<String, ViewSpline> hashMap, int i10) {
        for (String str : hashMap.keySet()) {
            ViewSpline viewSpline = hashMap.get(str);
            if (viewSpline != null) {
                str.hashCode();
                float f10 = 1.0f;
                float f11 = 0.0f;
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1249320806:
                        if (str.equals("rotationX")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1249320805:
                        if (str.equals("rotationY")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1225497657:
                        if (str.equals("translationX")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1225497656:
                        if (str.equals("translationY")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -1225497655:
                        if (str.equals("translationZ")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -1001078227:
                        if (str.equals("progress")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case -908189618:
                        if (str.equals("scaleX")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case -908189617:
                        if (str.equals("scaleY")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case -760884510:
                        if (str.equals(Key.PIVOT_X)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case -760884509:
                        if (str.equals(Key.PIVOT_Y)) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case -40300674:
                        if (str.equals("rotation")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case 92909918:
                        if (str.equals("alpha")) {
                            c10 = '\r';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        if (!Float.isNaN(this.mRotationX)) {
                            f11 = this.mRotationX;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case 1:
                        if (!Float.isNaN(this.rotationY)) {
                            f11 = this.rotationY;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case 2:
                        if (!Float.isNaN(this.mTranslationX)) {
                            f11 = this.mTranslationX;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case 3:
                        if (!Float.isNaN(this.mTranslationY)) {
                            f11 = this.mTranslationY;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case 4:
                        if (!Float.isNaN(this.mTranslationZ)) {
                            f11 = this.mTranslationZ;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case 5:
                        if (!Float.isNaN(this.mProgress)) {
                            f11 = this.mProgress;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case 6:
                        if (!Float.isNaN(this.mScaleX)) {
                            f10 = this.mScaleX;
                        }
                        viewSpline.setPoint(i10, f10);
                        continue;
                    case 7:
                        if (!Float.isNaN(this.mScaleY)) {
                            f10 = this.mScaleY;
                        }
                        viewSpline.setPoint(i10, f10);
                        continue;
                    case '\b':
                        if (!Float.isNaN(this.mPivotX)) {
                            f11 = this.mPivotX;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case '\t':
                        if (!Float.isNaN(this.mPivotY)) {
                            f11 = this.mPivotY;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case '\n':
                        if (!Float.isNaN(this.mRotation)) {
                            f11 = this.mRotation;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case 11:
                        if (!Float.isNaN(this.mElevation)) {
                            f11 = this.mElevation;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case '\f':
                        if (!Float.isNaN(this.mPathRotate)) {
                            f11 = this.mPathRotate;
                        }
                        viewSpline.setPoint(i10, f11);
                        continue;
                    case '\r':
                        if (!Float.isNaN(this.mAlpha)) {
                            f10 = this.mAlpha;
                        }
                        viewSpline.setPoint(i10, f10);
                        continue;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            String str2 = str.split(",")[1];
                            if (this.mAttributes.containsKey(str2)) {
                                ConstraintAttribute constraintAttribute = this.mAttributes.get(str2);
                                if (viewSpline instanceof ViewSpline.CustomSet) {
                                    ((ViewSpline.CustomSet) viewSpline).setPoint(i10, constraintAttribute);
                                    break;
                                } else {
                                    Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i10 + ", value" + constraintAttribute.getValueToInterpolate() + viewSpline);
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN spline " + str);
                            continue;
                        }
                }
            }
        }
    }

    public void applyParameters(View view) {
        this.mVisibility = view.getVisibility();
        this.mAlpha = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.mApplyElevation = false;
        this.mElevation = view.getElevation();
        this.mRotation = view.getRotation();
        this.mRotationX = view.getRotationX();
        this.rotationY = view.getRotationY();
        this.mScaleX = view.getScaleX();
        this.mScaleY = view.getScaleY();
        this.mPivotX = view.getPivotX();
        this.mPivotY = view.getPivotY();
        this.mTranslationX = view.getTranslationX();
        this.mTranslationY = view.getTranslationY();
        this.mTranslationZ = view.getTranslationZ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void different(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (diff(this.mAlpha, motionConstrainedPoint.mAlpha)) {
            hashSet.add("alpha");
        }
        if (diff(this.mElevation, motionConstrainedPoint.mElevation)) {
            hashSet.add("elevation");
        }
        int i10 = this.mVisibility;
        int i11 = motionConstrainedPoint.mVisibility;
        if (i10 != i11 && this.mVisibilityMode == 0 && (i10 == 0 || i11 == 0)) {
            hashSet.add("alpha");
        }
        if (diff(this.mRotation, motionConstrainedPoint.mRotation)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(motionConstrainedPoint.mPathRotate)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.mProgress) || !Float.isNaN(motionConstrainedPoint.mProgress)) {
            hashSet.add("progress");
        }
        if (diff(this.mRotationX, motionConstrainedPoint.mRotationX)) {
            hashSet.add("rotationX");
        }
        if (diff(this.rotationY, motionConstrainedPoint.rotationY)) {
            hashSet.add("rotationY");
        }
        if (diff(this.mPivotX, motionConstrainedPoint.mPivotX)) {
            hashSet.add(Key.PIVOT_X);
        }
        if (diff(this.mPivotY, motionConstrainedPoint.mPivotY)) {
            hashSet.add(Key.PIVOT_Y);
        }
        if (diff(this.mScaleX, motionConstrainedPoint.mScaleX)) {
            hashSet.add("scaleX");
        }
        if (diff(this.mScaleY, motionConstrainedPoint.mScaleY)) {
            hashSet.add("scaleY");
        }
        if (diff(this.mTranslationX, motionConstrainedPoint.mTranslationX)) {
            hashSet.add("translationX");
        }
        if (diff(this.mTranslationY, motionConstrainedPoint.mTranslationY)) {
            hashSet.add("translationY");
        }
        if (diff(this.mTranslationZ, motionConstrainedPoint.mTranslationZ)) {
            hashSet.add("translationZ");
        }
    }

    void fillStandard(double[] dArr, int[] iArr) {
        int i10 = 0;
        float[] fArr = {this.mPosition, this.mX, this.mY, this.mWidth, this.mHeight, this.mAlpha, this.mElevation, this.mRotation, this.mRotationX, this.rotationY, this.mScaleX, this.mScaleY, this.mPivotX, this.mPivotY, this.mTranslationX, this.mTranslationY, this.mTranslationZ, this.mPathRotate};
        for (int i11 : iArr) {
            if (i11 < 18) {
                dArr[i10] = fArr[i11];
                i10++;
            }
        }
    }

    int getCustomData(String str, double[] dArr, int i10) {
        ConstraintAttribute constraintAttribute = this.mAttributes.get(str);
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            dArr[i10] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        int i11 = 0;
        while (i11 < numberOfInterpolatedValues) {
            dArr[i10] = fArr[i11];
            i11++;
            i10++;
        }
        return numberOfInterpolatedValues;
    }

    int getCustomDataCount(String str) {
        return this.mAttributes.get(str).numberOfInterpolatedValues();
    }

    boolean hasCustomData(String str) {
        return this.mAttributes.containsKey(str);
    }

    void setBounds(float f10, float f11, float f12, float f13) {
        this.mX = f10;
        this.mY = f11;
        this.mWidth = f12;
        this.mHeight = f13;
    }

    public void setState(View view) {
        setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        applyParameters(view);
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.mPosition, motionConstrainedPoint.mPosition);
    }

    public void setState(Rect rect, View view, int i10, float f10) {
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(view);
        this.mPivotX = Float.NaN;
        this.mPivotY = Float.NaN;
        if (i10 == 1) {
            this.mRotation = f10 - 90.0f;
        } else if (i10 != 2) {
        } else {
            this.mRotation = f10 + 90.0f;
        }
    }

    public void setState(Rect rect, ConstraintSet constraintSet, int i10, int i11) {
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(constraintSet.getParameters(i11));
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return;
                    }
                }
            }
            float f10 = this.mRotation + 90.0f;
            this.mRotation = f10;
            if (f10 > 180.0f) {
                this.mRotation = f10 - 360.0f;
                return;
            }
            return;
        }
        this.mRotation -= 90.0f;
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        ConstraintSet.PropertySet propertySet = constraint.propertySet;
        int i10 = propertySet.mVisibilityMode;
        this.mVisibilityMode = i10;
        int i11 = propertySet.visibility;
        this.mVisibility = i11;
        this.mAlpha = (i11 == 0 || i10 != 0) ? propertySet.alpha : 0.0f;
        ConstraintSet.Transform transform = constraint.transform;
        this.mApplyElevation = transform.applyElevation;
        this.mElevation = transform.elevation;
        this.mRotation = transform.rotation;
        this.mRotationX = transform.rotationX;
        this.rotationY = transform.rotationY;
        this.mScaleX = transform.scaleX;
        this.mScaleY = transform.scaleY;
        this.mPivotX = transform.transformPivotX;
        this.mPivotY = transform.transformPivotY;
        this.mTranslationX = transform.translationX;
        this.mTranslationY = transform.translationY;
        this.mTranslationZ = transform.translationZ;
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mProgress = constraint.propertySet.mProgress;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute.isContinuous()) {
                this.mAttributes.put(str, constraintAttribute);
            }
        }
    }

    void different(MotionConstrainedPoint motionConstrainedPoint, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | diff(this.mPosition, motionConstrainedPoint.mPosition);
        zArr[1] = zArr[1] | diff(this.mX, motionConstrainedPoint.mX);
        zArr[2] = zArr[2] | diff(this.mY, motionConstrainedPoint.mY);
        zArr[3] = zArr[3] | diff(this.mWidth, motionConstrainedPoint.mWidth);
        zArr[4] = diff(this.mHeight, motionConstrainedPoint.mHeight) | zArr[4];
    }
}
