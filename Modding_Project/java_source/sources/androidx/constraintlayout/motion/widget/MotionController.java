package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MotionController {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    String[] mAttributeTable;
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private boolean mNoMovement;
    private int mPathMotionArc;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int mMaxDimension = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController(View view) {
        int i10 = Key.UNSET;
        this.mPathMotionArc = i10;
        this.mTransformPivotTarget = i10;
        this.mTransformPivotView = null;
        this.mQuantizeMotionSteps = i10;
        this.mQuantizeMotionPhase = Float.NaN;
        this.mQuantizeMotionInterpolator = null;
        this.mNoMovement = false;
        setView(view);
    }

    private float getAdjustedPosition(float f10, float[] fArr) {
        float f11 = 0.0f;
        float f12 = 1.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f13 = this.mStaggerScale;
            if (f13 != 1.0d) {
                float f14 = this.mStaggerOffset;
                if (f10 < f14) {
                    f10 = 0.0f;
                }
                if (f10 > f14 && f10 < 1.0d) {
                    f10 = Math.min((f10 - f14) * f13, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        float f15 = Float.NaN;
        while (it.hasNext()) {
            MotionPaths next = it.next();
            Easing easing2 = next.mKeyFrameEasing;
            if (easing2 != null) {
                float f16 = next.mTime;
                if (f16 < f10) {
                    easing = easing2;
                    f11 = f16;
                } else if (Float.isNaN(f15)) {
                    f15 = next.mTime;
                }
            }
        }
        if (easing != null) {
            if (!Float.isNaN(f15)) {
                f12 = f15;
            }
            float f17 = f12 - f11;
            double d10 = (f10 - f11) / f17;
            f10 = (((float) easing.get(d10)) * f17) + f11;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d10);
            }
        }
        return f10;
    }

    private static Interpolator getInterpolator(Context context, int i10, String str, int i11) {
        if (i10 != -2) {
            if (i10 != -1) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 4) {
                                if (i10 != 5) {
                                    return null;
                                }
                                return new OvershootInterpolator();
                            }
                            return new BounceInterpolator();
                        }
                        return new DecelerateInterpolator();
                    }
                    return new AccelerateInterpolator();
                }
                return new AccelerateDecelerateInterpolator();
            }
            final Easing interpolator = Easing.getInterpolator(str);
            return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                @Override // android.animation.TimeInterpolator
                public float getInterpolation(float f10) {
                    return (float) Easing.this.get(f10);
                }
            };
        }
        return AnimationUtils.loadInterpolator(context, i11);
    }

    private float getPreCycleDistance() {
        char c10;
        float f10;
        float[] fArr = new float[2];
        float f11 = 1.0f / 99;
        double d10 = 0.0d;
        double d11 = 0.0d;
        int i10 = 0;
        float f12 = 0.0f;
        while (i10 < 100) {
            float f13 = i10 * f11;
            double d12 = f13;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f14 = Float.NaN;
            float f15 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f16 = next.mTime;
                    if (f16 < f13) {
                        easing = easing2;
                        f15 = f16;
                    } else if (Float.isNaN(f14)) {
                        f14 = next.mTime;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f14)) {
                    f14 = 1.0f;
                }
                d12 = (((float) easing.get((f13 - f15) / f10)) * (f14 - f15)) + f15;
            }
            this.mSpline[0].getPos(d12, this.mInterpolateData);
            int i11 = i10;
            this.mStartMotionPath.getCenter(d12, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i11 > 0) {
                c10 = 0;
                f12 += (float) Math.hypot(d11 - fArr[1], d10 - fArr[0]);
            } else {
                c10 = 0;
            }
            d10 = fArr[c10];
            i10 = i11 + 1;
            d11 = fArr[1];
        }
        return f12;
    }

    private void insertKey(MotionPaths motionPaths) {
        int binarySearch = Collections.binarySearch(this.mMotionPaths, motionPaths);
        if (binarySearch == 0) {
            Log.e(TAG, " KeyPath position \"" + motionPaths.mPosition + "\" outside of range");
        }
        this.mMotionPaths.add((-binarySearch) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addKeys(ArrayList<Key> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    void buildBounds(float[] fArr, int i10) {
        float f10;
        float f11 = 1.0f / (i10 - 1);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, ViewOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i11 = 0; i11 < i10; i11++) {
            float f12 = i11 * f11;
            float f13 = this.mStaggerScale;
            float f14 = 0.0f;
            if (f13 != 1.0f) {
                float f15 = this.mStaggerOffset;
                if (f12 < f15) {
                    f12 = 0.0f;
                }
                if (f12 > f15 && f12 < 1.0d) {
                    f12 = Math.min((f12 - f15) * f13, 1.0f);
                }
            }
            double d10 = f12;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f16 = Float.NaN;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f17 = next.mTime;
                    if (f17 < f12) {
                        easing = easing2;
                        f14 = f17;
                    } else if (Float.isNaN(f16)) {
                        f16 = next.mTime;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f16)) {
                    f16 = 1.0f;
                }
                d10 = (((float) easing.get((f12 - f14) / f10)) * (f16 - f14)) + f14;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i11 * 2);
        }
    }

    int buildKeyBounds(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                iArr[i10] = it.next().mMode;
                i10++;
            }
        }
        int i11 = 0;
        for (double d10 : timePoints) {
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int buildKeyFrames(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                iArr[i10] = it.next().mMode;
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < timePoints.length; i12++) {
            this.mSpline[0].getPos(timePoints[i12], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[i12], this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildPath(float[] fArr, int i10) {
        ViewSpline viewSpline;
        ViewSpline viewSpline2;
        ViewOscillator viewOscillator;
        float f10;
        int i11 = i10;
        float f11 = 1.0f;
        float f12 = 1.0f / (i11 - 1);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        ViewOscillator viewOscillator2 = null;
        if (hashMap == null) {
            viewSpline = null;
        } else {
            viewSpline = hashMap.get("translationX");
        }
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        if (hashMap2 == null) {
            viewSpline2 = null;
        } else {
            viewSpline2 = hashMap2.get("translationY");
        }
        HashMap<String, ViewOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 == null) {
            viewOscillator = null;
        } else {
            viewOscillator = hashMap3.get("translationX");
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            viewOscillator2 = hashMap4.get("translationY");
        }
        int i12 = 0;
        while (i12 < i11) {
            float f13 = i12 * f12;
            float f14 = this.mStaggerScale;
            float f15 = 0.0f;
            if (f14 != f11) {
                float f16 = this.mStaggerOffset;
                if (f13 < f16) {
                    f13 = 0.0f;
                }
                if (f13 > f16 && f13 < 1.0d) {
                    f13 = Math.min((f13 - f16) * f14, f11);
                }
            }
            double d10 = f13;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f17 = Float.NaN;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f18 = next.mTime;
                    if (f18 < f13) {
                        f15 = f18;
                        easing = easing2;
                    } else if (Float.isNaN(f17)) {
                        f17 = next.mTime;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f17)) {
                    f17 = 1.0f;
                }
                d10 = (((float) easing.get((f13 - f15) / f10)) * (f17 - f15)) + f15;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            int i13 = i12 * 2;
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, i13);
            if (viewOscillator != null) {
                fArr[i13] = fArr[i13] + viewOscillator.get(f13);
            } else if (viewSpline != null) {
                fArr[i13] = fArr[i13] + viewSpline.get(f13);
            }
            if (viewOscillator2 != null) {
                int i14 = i13 + 1;
                fArr[i14] = fArr[i14] + viewOscillator2.get(f13);
            } else if (viewSpline2 != null) {
                int i15 = i13 + 1;
                fArr[i15] = fArr[i15] + viewSpline2.get(f13);
            }
            i12++;
            i11 = i10;
            f11 = 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildRect(float f10, float[] fArr, int i10) {
        this.mSpline[0].getPos(getAdjustedPosition(f10, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildRectangles(float[] fArr, int i10) {
        float f10 = 1.0f / (i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            this.mSpline[0].getPos(getAdjustedPosition(i11 * f10, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i11 * 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endTrigger(boolean z10) {
        float f10;
        if ("button".equals(Debug.getName(this.mView)) && this.mKeyTriggers != null) {
            int i10 = 0;
            while (true) {
                KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                if (i10 < keyTriggerArr.length) {
                    KeyTrigger keyTrigger = keyTriggerArr[i10];
                    if (z10) {
                        f10 = -100.0f;
                    } else {
                        f10 = 100.0f;
                    }
                    keyTrigger.conditionallyFire(f10, this.mView);
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAttributeValues(String str, float[] fArr, int i10) {
        ViewSpline viewSpline = this.mAttributesMap.get(str);
        if (viewSpline == null) {
            return -1;
        }
        for (int i11 = 0; i11 < fArr.length; i11++) {
            fArr[i11] = viewSpline.get(i11 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public void getCenter(double d10, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(d10, dArr);
        this.mSpline[0].getSlope(d10, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, dArr, fArr, dArr2, fArr2);
    }

    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getDpDt(float f10, float f11, float f12, float[] fArr) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(f10, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i10 = 0;
        if (curveFitArr != null) {
            double d10 = adjustedPosition;
            curveFitArr[0].getSlope(d10, this.mInterpolateVelocity);
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            float f13 = this.mVelocity[0];
            while (true) {
                dArr = this.mInterpolateVelocity;
                if (i10 >= dArr.length) {
                    break;
                }
                dArr[i10] = dArr[i10] * f13;
                i10++;
            }
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr2 = this.mInterpolateData;
                if (dArr2.length > 0) {
                    curveFit.getPos(d10, dArr2);
                    this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                    this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
                    return;
                }
                return;
            }
            this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        float f14 = motionPaths.mX;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f15 = f14 - motionPaths2.mX;
        float f16 = motionPaths.mY - motionPaths2.mY;
        float f17 = (motionPaths.mWidth - motionPaths2.mWidth) + f15;
        float f18 = (motionPaths.mHeight - motionPaths2.mHeight) + f16;
        fArr[0] = (f15 * (1.0f - f11)) + (f17 * f11);
        fArr[1] = (f16 * (1.0f - f12)) + (f18 * f12);
    }

    public int getDrawPath() {
        int i10 = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            i10 = Math.max(i10, it.next().mDrawPath);
        }
        return Math.max(i10, this.mEndMotionPath.mDrawPath);
    }

    public float getFinalHeight() {
        return this.mEndMotionPath.mHeight;
    }

    public float getFinalWidth() {
        return this.mEndMotionPath.mWidth;
    }

    public float getFinalX() {
        return this.mEndMotionPath.mX;
    }

    public float getFinalY() {
        return this.mEndMotionPath.mY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionPaths getKeyFrame(int i10) {
        return this.mMotionPaths.get(i10);
    }

    public int getKeyFrameInfo(int i10, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<Key> it = this.mKeyList.iterator();
        int i11 = 0;
        int i12 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            int i13 = next.mType;
            if (i13 == i10 || i10 != -1) {
                iArr[i12] = 0;
                iArr[i12 + 1] = i13;
                int i14 = next.mFramePosition;
                iArr[i12 + 2] = i14;
                double d10 = i14 / 100.0f;
                this.mSpline[0].getPos(d10, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                iArr[i12 + 3] = Float.floatToIntBits(fArr[0]);
                int i15 = i12 + 4;
                iArr[i15] = Float.floatToIntBits(fArr[1]);
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    iArr[i12 + 5] = keyPosition.mPositionType;
                    iArr[i12 + 6] = Float.floatToIntBits(keyPosition.mPercentX);
                    i15 = i12 + 7;
                    iArr[i15] = Float.floatToIntBits(keyPosition.mPercentY);
                }
                int i16 = i15 + 1;
                iArr[i12] = i16 - i12;
                i11++;
                i12 = i16;
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getKeyFrameParameter(int i10, float f10, float f11) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f12 = motionPaths.mX;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f13 = motionPaths2.mX;
        float f14 = f12 - f13;
        float f15 = motionPaths.mY;
        float f16 = motionPaths2.mY;
        float f17 = f15 - f16;
        float f18 = f13 + (motionPaths2.mWidth / 2.0f);
        float f19 = f16 + (motionPaths2.mHeight / 2.0f);
        float hypot = (float) Math.hypot(f14, f17);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f20 = f10 - f18;
        float f21 = f11 - f19;
        if (((float) Math.hypot(f20, f21)) == 0.0f) {
            return 0.0f;
        }
        float f22 = (f20 * f14) + (f21 * f17);
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return 0.0f;
                            }
                            return f21 / f17;
                        }
                        return f20 / f17;
                    }
                    return f21 / f14;
                }
                return f20 / f14;
            }
            return (float) Math.sqrt((hypot * hypot) - (f22 * f22));
        }
        return f22 / hypot;
    }

    public int getKeyFramePositions(int[] iArr, float[] fArr) {
        Iterator<Key> it = this.mKeyList.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            int i12 = next.mFramePosition;
            iArr[i10] = (next.mType * 1000) + i12;
            double d10 = i12 / 100.0f;
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            i11 += 2;
            i10++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double[] getPos(double d10) {
        this.mSpline[0].getPos(d10, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(d10, dArr);
            }
        }
        return this.mInterpolateData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyPositionBase getPositionKeyframe(int i10, int i11, float f10, float f11) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.mX;
        rectF.left = f12;
        float f13 = motionPaths.mY;
        rectF.top = f13;
        rectF.right = f12 + motionPaths.mWidth;
        rectF.bottom = f13 + motionPaths.mHeight;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.mX;
        rectF2.left = f14;
        float f15 = motionPaths2.mY;
        rectF2.top = f15;
        rectF2.right = f14 + motionPaths2.mWidth;
        rectF2.bottom = f15 + motionPaths2.mHeight;
        Iterator<Key> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            Key next = it.next();
            if (next instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) next;
                if (keyPositionBase.intersects(i10, i11, rectF, rectF2, f10, f11)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getPostLayoutDvDp(float f10, int i10, int i11, float f11, float f12, float[] fArr) {
        ViewSpline viewSpline;
        ViewSpline viewSpline2;
        ViewSpline viewSpline3;
        ViewSpline viewSpline4;
        ViewSpline viewSpline5;
        ViewOscillator viewOscillator;
        ViewOscillator viewOscillator2;
        ViewOscillator viewOscillator3;
        ViewOscillator viewOscillator4;
        float adjustedPosition = getAdjustedPosition(f10, this.mVelocity);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        ViewOscillator viewOscillator5 = null;
        if (hashMap == null) {
            viewSpline = null;
        } else {
            viewSpline = hashMap.get("translationX");
        }
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        if (hashMap2 == null) {
            viewSpline2 = null;
        } else {
            viewSpline2 = hashMap2.get("translationY");
        }
        HashMap<String, ViewSpline> hashMap3 = this.mAttributesMap;
        if (hashMap3 == null) {
            viewSpline3 = null;
        } else {
            viewSpline3 = hashMap3.get("rotation");
        }
        HashMap<String, ViewSpline> hashMap4 = this.mAttributesMap;
        if (hashMap4 == null) {
            viewSpline4 = null;
        } else {
            viewSpline4 = hashMap4.get("scaleX");
        }
        HashMap<String, ViewSpline> hashMap5 = this.mAttributesMap;
        if (hashMap5 == null) {
            viewSpline5 = null;
        } else {
            viewSpline5 = hashMap5.get("scaleY");
        }
        HashMap<String, ViewOscillator> hashMap6 = this.mCycleMap;
        if (hashMap6 == null) {
            viewOscillator = null;
        } else {
            viewOscillator = hashMap6.get("translationX");
        }
        HashMap<String, ViewOscillator> hashMap7 = this.mCycleMap;
        if (hashMap7 == null) {
            viewOscillator2 = null;
        } else {
            viewOscillator2 = hashMap7.get("translationY");
        }
        HashMap<String, ViewOscillator> hashMap8 = this.mCycleMap;
        if (hashMap8 == null) {
            viewOscillator3 = null;
        } else {
            viewOscillator3 = hashMap8.get("rotation");
        }
        HashMap<String, ViewOscillator> hashMap9 = this.mCycleMap;
        if (hashMap9 == null) {
            viewOscillator4 = null;
        } else {
            viewOscillator4 = hashMap9.get("scaleX");
        }
        HashMap<String, ViewOscillator> hashMap10 = this.mCycleMap;
        if (hashMap10 != null) {
            viewOscillator5 = hashMap10.get("scaleY");
        }
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
        velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d10 = adjustedPosition;
                curveFit.getPos(d10, dArr);
                this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f11, f12, i10, i11, fArr);
            return;
        }
        int i12 = 0;
        if (this.mSpline != null) {
            double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
            this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
            this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
            float f13 = this.mVelocity[0];
            while (true) {
                double[] dArr2 = this.mInterpolateVelocity;
                if (i12 < dArr2.length) {
                    dArr2[i12] = dArr2[i12] * f13;
                    i12++;
                } else {
                    this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                    velocityMatrix.applyTransform(f11, f12, i10, i11, fArr);
                    return;
                }
            }
        } else {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f14 = motionPaths.mX;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f15 = f14 - motionPaths2.mX;
            float f16 = motionPaths.mY - motionPaths2.mY;
            ViewOscillator viewOscillator6 = viewOscillator4;
            float f17 = (motionPaths.mHeight - motionPaths2.mHeight) + f16;
            fArr[0] = (f15 * (1.0f - f11)) + (((motionPaths.mWidth - motionPaths2.mWidth) + f15) * f11);
            fArr[1] = (f16 * (1.0f - f12)) + (f17 * f12);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
            velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewOscillator6, viewOscillator5, adjustedPosition);
            velocityMatrix.applyTransform(f11, f12, i10, i11, fArr);
        }
    }

    public float getStartHeight() {
        return this.mStartMotionPath.mHeight;
    }

    public float getStartWidth() {
        return this.mStartMotionPath.mWidth;
    }

    public float getStartX() {
        return this.mStartMotionPath.mX;
    }

    public float getStartY() {
        return this.mStartMotionPath.mY;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public View getView() {
        return this.mView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean interpolate(View view, float f10, long j10, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean z10;
        int i10;
        double d10;
        View view2;
        float f11;
        float adjustedPosition = getAdjustedPosition(f10, null);
        int i11 = this.mQuantizeMotionSteps;
        if (i11 != Key.UNSET) {
            float f12 = 1.0f / i11;
            float floor = ((float) Math.floor(adjustedPosition / f12)) * f12;
            float f13 = (adjustedPosition % f12) / f12;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f13 = (f13 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            if (interpolator != null) {
                f11 = interpolator.getInterpolation(f13);
            } else if (f13 > 0.5d) {
                f11 = 1.0f;
            } else {
                f11 = 0.0f;
            }
            adjustedPosition = (f11 * f12) + floor;
        }
        float f14 = adjustedPosition;
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            for (ViewSpline viewSpline : hashMap.values()) {
                viewSpline.setProperty(view, f14);
            }
        }
        HashMap<String, ViewTimeCycle> hashMap2 = this.mTimeCycleAttributesMap;
        if (hashMap2 != null) {
            ViewTimeCycle.PathRotate pathRotate2 = null;
            boolean z11 = false;
            for (ViewTimeCycle viewTimeCycle : hashMap2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate2 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    z11 |= viewTimeCycle.setProperty(view, f14, j10, keyCache);
                }
            }
            z10 = z11;
            pathRotate = pathRotate2;
        } else {
            pathRotate = null;
            z10 = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d11 = f14;
            curveFitArr[0].getPos(d11, this.mInterpolateData);
            this.mSpline[0].getSlope(d11, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d11, dArr);
                    this.mArcSpline.getSlope(d11, this.mInterpolateVelocity);
                }
            }
            if (!this.mNoMovement) {
                d10 = d11;
                this.mStartMotionPath.setView(f14, view, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                this.mForceMeasure = false;
            } else {
                d10 = d11;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) view.getParent()).findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (view2.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        view.setPivotX(left - view.getLeft());
                        view.setPivotY(top - view.getTop());
                    }
                }
            }
            HashMap<String, ViewSpline> hashMap3 = this.mAttributesMap;
            if (hashMap3 != null) {
                for (ViewSpline viewSpline2 : hashMap3.values()) {
                    if (viewSpline2 instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline2).setPathRotate(view, f14, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                i10 = 1;
                z10 |= pathRotate.setPathRotate(view, keyCache, f14, j10, dArr3[0], dArr3[1]);
            } else {
                i10 = 1;
            }
            int i12 = i10;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i12 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i12].getPos(d10, this.mValuesBuff);
                CustomSupport.setInterpolatedValue(this.mStartMotionPath.mAttributes.get(this.mAttributeNames[i12 - 1]), view, this.mValuesBuff);
                i12++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f14 <= 0.0f) {
                    view.setVisibility(motionConstrainedPoint.mVisibility);
                } else if (f14 >= 1.0f) {
                    view.setVisibility(this.mEndPoint.mVisibility);
                } else if (this.mEndPoint.mVisibility != motionConstrainedPoint.mVisibility) {
                    view.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i13 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i13 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i13].conditionallyFire(f14, view);
                    i13++;
                }
            }
        } else {
            i10 = 1;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f15 = motionPaths.mX;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f16 = f15 + ((motionPaths2.mX - f15) * f14);
            float f17 = motionPaths.mY;
            float f18 = f17 + ((motionPaths2.mY - f17) * f14);
            float f19 = motionPaths.mWidth;
            float f20 = motionPaths2.mWidth;
            float f21 = motionPaths.mHeight;
            float f22 = motionPaths2.mHeight;
            float f23 = f16 + 0.5f;
            int i14 = (int) f23;
            float f24 = f18 + 0.5f;
            int i15 = (int) f24;
            int i16 = (int) (f23 + ((f20 - f19) * f14) + f19);
            int i17 = (int) (f24 + ((f22 - f21) * f14) + f21);
            int i18 = i16 - i14;
            int i19 = i17 - i15;
            if (f20 != f19 || f22 != f21 || this.mForceMeasure) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
                this.mForceMeasure = false;
            }
            view.layout(i14, i15, i16, i17);
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            for (ViewOscillator viewOscillator : hashMap4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(view, f14, dArr4[0], dArr4[i10]);
                } else {
                    viewOscillator.setProperty(view, f14);
                }
            }
        }
        return z10;
    }

    String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void positionKeyframe(View view, KeyPositionBase keyPositionBase, float f10, float f11, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.mX;
        rectF.left = f12;
        float f13 = motionPaths.mY;
        rectF.top = f13;
        rectF.right = f12 + motionPaths.mWidth;
        rectF.bottom = f13 + motionPaths.mHeight;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.mX;
        rectF2.left = f14;
        float f15 = motionPaths2.mY;
        rectF2.top = f15;
        rectF2.right = f14 + motionPaths2.mWidth;
        rectF2.bottom = f15 + motionPaths2.mHeight;
        keyPositionBase.positionAttributes(view, rectF, rectF2, f10, f11, strArr, fArr);
    }

    public void remeasure() {
        this.mForceMeasure = true;
    }

    void rotate(Rect rect, Rect rect2, int i10, int i11, int i12) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        int i13 = rect.left + rect.right;
                        rect2.left = i11 - (((rect.bottom + rect.top) + rect.width()) / 2);
                        rect2.top = (i13 - rect.height()) / 2;
                        rect2.right = rect2.left + rect.width();
                        rect2.bottom = rect2.top + rect.height();
                        return;
                    }
                    return;
                }
                int i14 = rect.left + rect.right;
                rect2.left = ((rect.height() / 2) + rect.top) - (i14 / 2);
                rect2.top = i12 - ((i14 + rect.height()) / 2);
                rect2.right = rect2.left + rect.width();
                rect2.bottom = rect2.top + rect.height();
                return;
            }
            int i15 = rect.left + rect.right;
            rect2.left = i11 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i15 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        int i16 = rect.left + rect.right;
        rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
        rect2.top = i12 - ((i16 + rect.height()) / 2);
        rect2.right = rect2.left + rect.width();
        rect2.bottom = rect2.top + rect.height();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBothStates(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mEndMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
        this.mEndPoint.setState(view);
    }

    public void setDrawPath(int i10) {
        this.mStartMotionPath.mDrawPath = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndState(Rect rect, ConstraintSet constraintSet, int i10, int i11) {
        int i12 = constraintSet.mRotate;
        if (i12 != 0) {
            rotate(rect, this.mTempRect, i12, i10, i11);
            rect = this.mTempRect;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.mTime = 1.0f;
        motionPaths.mPosition = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(rect, constraintSet, i12, this.mId);
    }

    public void setPathMotionArc(int i10) {
        this.mPathMotionArc = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartCurrentState(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
    }

    public void setStartState(ViewState viewState, View view, int i10, int i11, int i12) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        Rect rect = new Rect();
        if (i10 == 1) {
            int i13 = viewState.left + viewState.right;
            rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
            rect.top = i11 - ((i13 + viewState.height()) / 2);
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        } else if (i10 == 2) {
            int i14 = viewState.left + viewState.right;
            rect.left = i12 - (((viewState.top + viewState.bottom) + viewState.width()) / 2);
            rect.top = (i14 - viewState.height()) / 2;
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        }
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, view, i10, viewState.rotation);
    }

    public void setTransformPivotTarget(int i10) {
        this.mTransformPivotTarget = i10;
        this.mTransformPivotView = null;
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int i10, int i11, float f10, long j10) {
        ArrayList arrayList;
        String[] strArr;
        boolean z10;
        MotionPaths motionPaths;
        double[][] dArr;
        ConstraintAttribute constraintAttribute;
        int i12;
        ViewTimeCycle makeSpline;
        ConstraintAttribute constraintAttribute2;
        int i13;
        Integer num;
        ViewSpline makeSpline2;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i14 = this.mPathMotionArc;
        if (i14 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = i14;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            arrayList = null;
            while (it.hasNext()) {
                Key next = it.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    insertKey(new MotionPaths(i10, i11, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i15 = keyPosition.mCurveFit;
                    if (i15 != Key.UNSET) {
                        this.mCurveFitType = i15;
                    }
                } else if (next instanceof KeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        char c10 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<Key> it3 = this.mKeyList.iterator();
                    while (it3.hasNext()) {
                        Key next3 = it3.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next3.mCustomConstraints;
                        if (hashMap2 != null && (constraintAttribute3 = hashMap2.get(str)) != null) {
                            sparseArray.append(next3.mFramePosition, constraintAttribute3);
                        }
                    }
                    makeSpline2 = ViewSpline.makeCustomSpline(next2, sparseArray);
                } else {
                    makeSpline2 = ViewSpline.makeSpline(next2);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.mAttributesMap.put(next2, makeSpline2);
                }
            }
            ArrayList<Key> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                Iterator<Key> it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    Key next4 = it4.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                if (hashMap.containsKey(str2) && (num = hashMap.get(str2)) != null) {
                    i13 = num.intValue();
                } else {
                    i13 = 0;
                }
                ViewSpline viewSpline = this.mAttributesMap.get(str2);
                if (viewSpline != null) {
                    viewSpline.setup(i13);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.mTimeCycleAttributesMap.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it6 = this.mKeyList.iterator();
                        while (it6.hasNext()) {
                            Key next6 = it6.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next6.mCustomConstraints;
                            if (hashMap3 != null && (constraintAttribute2 = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next6.mFramePosition, constraintAttribute2);
                            }
                        }
                        makeSpline = ViewTimeCycle.makeCustomSpline(next5, sparseArray2);
                    } else {
                        makeSpline = ViewTimeCycle.makeSpline(next5, j10);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                        this.mTimeCycleAttributesMap.put(next5, makeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                Iterator<Key> it7 = arrayList4.iterator();
                while (it7.hasNext()) {
                    Key next7 = it7.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                if (hashMap.containsKey(str4)) {
                    i12 = hashMap.get(str4).intValue();
                } else {
                    i12 = 0;
                }
                this.mTimeCycleAttributesMap.get(str4).setup(i12);
            }
        }
        int size = this.mMotionPaths.size();
        int i16 = size + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[i16];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size + 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it8 = this.mMotionPaths.iterator();
        int i17 = 1;
        while (it8.hasNext()) {
            motionPathsArr[i17] = it8.next();
            i17++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.mAttributes.keySet()) {
            if (this.mStartMotionPath.mAttributes.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i18 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i18 >= strArr.length) {
                break;
            }
            String str6 = strArr[i18];
            this.mAttributeInterpolatorCount[i18] = 0;
            int i19 = 0;
            while (true) {
                if (i19 >= i16) {
                    break;
                }
                if (motionPathsArr[i19].mAttributes.containsKey(str6) && (constraintAttribute = motionPathsArr[i19].mAttributes.get(str6)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i18] = iArr[i18] + constraintAttribute.numberOfInterpolatedValues();
                    break;
                }
                i19++;
            }
            i18++;
        }
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            z10 = true;
        } else {
            z10 = false;
        }
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i20 = 1; i20 < i16; i20++) {
            motionPathsArr[i20].different(motionPathsArr[i20 - 1], zArr, this.mAttributeNames, z10);
        }
        int i21 = 0;
        for (int i22 = 1; i22 < length; i22++) {
            if (zArr[i22]) {
                i21++;
            }
        }
        this.mInterpolateVariables = new int[i21];
        int i23 = 2;
        int max = Math.max(2, i21);
        this.mInterpolateData = new double[max];
        this.mInterpolateVelocity = new double[max];
        int i24 = 0;
        for (int i25 = 1; i25 < length; i25++) {
            if (zArr[i25]) {
                this.mInterpolateVariables[i24] = i25;
                i24++;
            }
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, i16, this.mInterpolateVariables.length);
        double[] dArr3 = new double[i16];
        for (int i26 = 0; i26 < i16; i26++) {
            motionPathsArr[i26].fillStandard(dArr2[i26], this.mInterpolateVariables);
            dArr3[i26] = motionPathsArr[i26].mTime;
        }
        int i27 = 0;
        while (true) {
            int[] iArr2 = this.mInterpolateVariables;
            if (i27 >= iArr2.length) {
                break;
            }
            if (iArr2[i27] < MotionPaths.sNames.length) {
                String str7 = MotionPaths.sNames[this.mInterpolateVariables[i27]] + " [";
                for (int i28 = 0; i28 < i16; i28++) {
                    str7 = str7 + dArr2[i28][i27];
                }
            }
            i27++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i29 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i29 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i29];
            int i30 = 0;
            int i31 = 0;
            double[] dArr4 = null;
            double[][] dArr5 = null;
            while (i30 < i16) {
                if (motionPathsArr[i30].hasCustomData(str8)) {
                    if (dArr5 == null) {
                        dArr4 = new double[i16];
                        int[] iArr3 = new int[i23];
                        iArr3[c10] = motionPathsArr[i30].getCustomDataCount(str8);
                        iArr3[0] = i16;
                        dArr5 = (double[][]) Array.newInstance(Double.TYPE, iArr3);
                    }
                    MotionPaths motionPaths2 = motionPathsArr[i30];
                    dArr = dArr2;
                    dArr4[i31] = motionPaths2.mTime;
                    motionPaths2.getCustomData(str8, dArr5[i31], 0);
                    i31++;
                } else {
                    dArr = dArr2;
                }
                i30++;
                dArr2 = dArr;
                i23 = 2;
                c10 = 1;
            }
            i29++;
            this.mSpline[i29] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr4, i31), (double[][]) Arrays.copyOf(dArr5, i31));
            dArr2 = dArr2;
            i23 = 2;
            c10 = 1;
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr3, dArr2);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr4 = new int[i16];
            double[] dArr6 = new double[i16];
            double[][] dArr7 = (double[][]) Array.newInstance(Double.TYPE, i16, 2);
            for (int i32 = 0; i32 < i16; i32++) {
                iArr4[i32] = motionPathsArr[i32].mPathMotionArc;
                dArr6[i32] = motionPaths.mTime;
                double[] dArr8 = dArr7[i32];
                dArr8[0] = motionPaths.mX;
                dArr8[1] = motionPaths.mY;
            }
            this.mArcSpline = CurveFit.getArc(iArr4, dArr6, dArr7);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it9 = hashSet3.iterator();
            float f11 = Float.NaN;
            while (it9.hasNext()) {
                String next8 = it9.next();
                ViewOscillator makeSpline3 = ViewOscillator.makeSpline(next8);
                if (makeSpline3 != null) {
                    if (makeSpline3.variesByPath() && Float.isNaN(f11)) {
                        f11 = getPreCycleDistance();
                    }
                    makeSpline3.setType(next8);
                    this.mCycleMap.put(next8, makeSpline3);
                }
            }
            Iterator<Key> it10 = this.mKeyList.iterator();
            while (it10.hasNext()) {
                Key next9 = it10.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            for (ViewOscillator viewOscillator : this.mCycleMap.values()) {
                viewOscillator.setup(f11);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.mStartMotionPath.setupRelative(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motionController, motionController.mEndMotionPath);
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.mX + " y: " + this.mStartMotionPath.mY + " end: x: " + this.mEndMotionPath.mX + " y: " + this.mEndMotionPath.mY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartState(Rect rect, ConstraintSet constraintSet, int i10, int i11) {
        int i12 = constraintSet.mRotate;
        if (i12 != 0) {
            rotate(rect, this.mTempRect, i12, i10, i11);
        }
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        readView(motionPaths);
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(rect, constraintSet, i12, this.mId);
        this.mTransformPivotTarget = parameters.transform.transformPivotTarget;
        ConstraintSet.Motion motion = parameters.motion;
        this.mQuantizeMotionSteps = motion.mQuantizeMotionSteps;
        this.mQuantizeMotionPhase = motion.mQuantizeMotionPhase;
        Context context = this.mView.getContext();
        ConstraintSet.Motion motion2 = parameters.motion;
        this.mQuantizeMotionInterpolator = getInterpolator(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }
}
