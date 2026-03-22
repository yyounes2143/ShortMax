package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.key.MotionKey;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyTrigger;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.DifferentialInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.motion.utils.ViewState;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Motion implements TypedValues {
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
    private HashMap<String, SplineSet> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    public String mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private MotionKeyTrigger[] mKeyTriggers;
    Motion mRelativeMotion;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    MotionWidget mView;
    Rect mTempRect = new Rect();
    private int mCurveFitType = 0;
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
    private ArrayList<MotionKey> mKeyList = new ArrayList<>();
    private int mPathMotionArc = -1;
    private int mTransformPivotTarget = -1;
    private MotionWidget mTransformPivotView = null;
    private int mQuantizeMotionSteps = -1;
    private float mQuantizeMotionPhase = Float.NaN;
    private DifferentialInterpolator mQuantizeMotionInterpolator = null;
    private boolean mNoMovement = false;

    public Motion(MotionWidget motionWidget) {
        setView(motionWidget);
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

    private static DifferentialInterpolator getInterpolator(int i10, String str, int i11) {
        if (i10 != -1) {
            return null;
        }
        final Easing interpolator = Easing.getInterpolator(str);
        return new DifferentialInterpolator() { // from class: androidx.constraintlayout.core.motion.Motion.1
            float mX;

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getInterpolation(float f10) {
                this.mX = f10;
                return (float) Easing.this.get(f10);
            }

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getVelocity() {
                return (float) Easing.this.getDiff(this.mX);
            }
        };
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
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        MotionPaths motionPaths2 = null;
        while (it.hasNext()) {
            MotionPaths next = it.next();
            if (motionPaths.mPosition == next.mPosition) {
                motionPaths2 = next;
            }
        }
        if (motionPaths2 != null) {
            this.mMotionPaths.remove(motionPaths2);
        }
        int binarySearch = Collections.binarySearch(this.mMotionPaths, motionPaths);
        if (binarySearch == 0) {
            Utils.loge(TAG, " KeyPath position \"" + motionPaths.mPosition + "\" outside of range");
        }
        this.mMotionPaths.add((-binarySearch) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds(this.mView.getX(), this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(MotionKey motionKey) {
        this.mKeyList.add(motionKey);
    }

    void addKeys(ArrayList<MotionKey> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    void buildBounds(float[] fArr, int i10) {
        float f10;
        float f11 = 1.0f / (i10 - 1);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
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

    public int buildKeyFrames(float[] fArr, int[] iArr, int[] iArr2) {
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
        if (iArr2 != null) {
            Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
            int i11 = 0;
            while (it2.hasNext()) {
                iArr2[i11] = (int) (it2.next().mPosition * 100.0f);
                i11++;
            }
        }
        int i12 = 0;
        for (int i13 = 0; i13 < timePoints.length; i13++) {
            this.mSpline[0].getPos(timePoints[i13], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[i13], this.mInterpolateVariables, this.mInterpolateData, fArr, i12);
            i12 += 2;
        }
        return i12 / 2;
    }

    public void buildPath(float[] fArr, int i10) {
        SplineSet splineSet;
        SplineSet splineSet2;
        KeyCycleOscillator keyCycleOscillator;
        float f10;
        int i11 = i10;
        float f11 = 1.0f;
        float f12 = 1.0f / (i11 - 1);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        KeyCycleOscillator keyCycleOscillator2 = null;
        if (hashMap == null) {
            splineSet = null;
        } else {
            splineSet = hashMap.get("translationX");
        }
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        if (hashMap2 == null) {
            splineSet2 = null;
        } else {
            splineSet2 = hashMap2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 == null) {
            keyCycleOscillator = null;
        } else {
            keyCycleOscillator = hashMap3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            keyCycleOscillator2 = hashMap4.get("translationY");
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
            if (keyCycleOscillator != null) {
                fArr[i13] = fArr[i13] + keyCycleOscillator.get(f13);
            } else if (splineSet != null) {
                fArr[i13] = fArr[i13] + splineSet.get(f13);
            }
            if (keyCycleOscillator2 != null) {
                int i14 = i13 + 1;
                fArr[i14] = fArr[i14] + keyCycleOscillator2.get(f13);
            } else if (splineSet2 != null) {
                int i15 = i13 + 1;
                fArr[i15] = fArr[i15] + splineSet2.get(f13);
            }
            i12++;
            i11 = i10;
            f11 = 1.0f;
        }
    }

    public void buildRect(float f10, float[] fArr, int i10) {
        this.mSpline[0].getPos(getAdjustedPosition(f10, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i10);
    }

    void buildRectangles(float[] fArr, int i10) {
        float f10 = 1.0f / (i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            this.mSpline[0].getPos(getAdjustedPosition(i11 * f10, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i11 * 8);
        }
    }

    public String getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    int getAttributeValues(String str, float[] fArr, int i10) {
        SplineSet splineSet = this.mAttributesMap.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i11 = 0; i11 < fArr.length; i11++) {
            fArr[i11] = splineSet.get(i11 / (fArr.length - 1));
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

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public MotionPaths getKeyFrame(int i10) {
        return this.mMotionPaths.get(i10);
    }

    public int getKeyFrameInfo(int i10, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<MotionKey> it = this.mKeyList.iterator();
        int i11 = 0;
        int i12 = 0;
        while (it.hasNext()) {
            MotionKey next = it.next();
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
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    iArr[i12 + 5] = motionKeyPosition.mPositionType;
                    iArr[i12 + 6] = Float.floatToIntBits(motionKeyPosition.mPercentX);
                    i15 = i12 + 7;
                    iArr[i15] = Float.floatToIntBits(motionKeyPosition.mPercentY);
                }
                int i16 = i15 + 1;
                iArr[i12] = i16 - i12;
                i11++;
                i12 = i16;
            }
        }
        return i11;
    }

    float getKeyFrameParameter(int i10, float f10, float f11) {
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
        Iterator<MotionKey> it = this.mKeyList.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            MotionKey next = it.next();
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

    public float getMotionStagger() {
        return this.mMotionStagger;
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

    MotionKeyPosition getPositionKeyframe(int i10, int i11, float f10, float f11) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.mX;
        floatRect.left = f12;
        float f13 = motionPaths.mY;
        floatRect.top = f13;
        floatRect.right = f12 + motionPaths.mWidth;
        floatRect.bottom = f13 + motionPaths.mHeight;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.mX;
        floatRect2.left = f14;
        float f15 = motionPaths2.mY;
        floatRect2.top = f15;
        floatRect2.right = f14 + motionPaths2.mWidth;
        floatRect2.bottom = f15 + motionPaths2.mHeight;
        Iterator<MotionKey> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            MotionKey next = it.next();
            if (next instanceof MotionKeyPosition) {
                MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                if (motionKeyPosition.intersects(i10, i11, floatRect, floatRect2, f10, f11)) {
                    return motionKeyPosition;
                }
            }
        }
        return null;
    }

    void getPostLayoutDvDp(float f10, int i10, int i11, float f11, float f12, float[] fArr) {
        SplineSet splineSet;
        SplineSet splineSet2;
        SplineSet splineSet3;
        SplineSet splineSet4;
        SplineSet splineSet5;
        KeyCycleOscillator keyCycleOscillator;
        KeyCycleOscillator keyCycleOscillator2;
        KeyCycleOscillator keyCycleOscillator3;
        KeyCycleOscillator keyCycleOscillator4;
        float adjustedPosition = getAdjustedPosition(f10, this.mVelocity);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        KeyCycleOscillator keyCycleOscillator5 = null;
        if (hashMap == null) {
            splineSet = null;
        } else {
            splineSet = hashMap.get("translationX");
        }
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        if (hashMap2 == null) {
            splineSet2 = null;
        } else {
            splineSet2 = hashMap2.get("translationY");
        }
        HashMap<String, SplineSet> hashMap3 = this.mAttributesMap;
        if (hashMap3 == null) {
            splineSet3 = null;
        } else {
            splineSet3 = hashMap3.get("rotationZ");
        }
        HashMap<String, SplineSet> hashMap4 = this.mAttributesMap;
        if (hashMap4 == null) {
            splineSet4 = null;
        } else {
            splineSet4 = hashMap4.get("scaleX");
        }
        HashMap<String, SplineSet> hashMap5 = this.mAttributesMap;
        if (hashMap5 == null) {
            splineSet5 = null;
        } else {
            splineSet5 = hashMap5.get("scaleY");
        }
        HashMap<String, KeyCycleOscillator> hashMap6 = this.mCycleMap;
        if (hashMap6 == null) {
            keyCycleOscillator = null;
        } else {
            keyCycleOscillator = hashMap6.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> hashMap7 = this.mCycleMap;
        if (hashMap7 == null) {
            keyCycleOscillator2 = null;
        } else {
            keyCycleOscillator2 = hashMap7.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> hashMap8 = this.mCycleMap;
        if (hashMap8 == null) {
            keyCycleOscillator3 = null;
        } else {
            keyCycleOscillator3 = hashMap8.get("rotationZ");
        }
        HashMap<String, KeyCycleOscillator> hashMap9 = this.mCycleMap;
        if (hashMap9 == null) {
            keyCycleOscillator4 = null;
        } else {
            keyCycleOscillator4 = hashMap9.get("scaleX");
        }
        HashMap<String, KeyCycleOscillator> hashMap10 = this.mCycleMap;
        if (hashMap10 != null) {
            keyCycleOscillator5 = hashMap10.get("scaleY");
        }
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
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
            KeyCycleOscillator keyCycleOscillator6 = keyCycleOscillator4;
            float f17 = (motionPaths.mHeight - motionPaths2.mHeight) + f16;
            fArr[0] = (f15 * (1.0f - f11)) + (((motionPaths.mWidth - motionPaths2.mWidth) + f15) * f11);
            fArr[1] = (f16 * (1.0f - f12)) + (f17 * f12);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(keyCycleOscillator6, keyCycleOscillator5, adjustedPosition);
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

    public MotionWidget getView() {
        return this.mView;
    }

    public boolean interpolate(MotionWidget motionWidget, float f10, long j10, KeyCache keyCache) {
        double d10;
        MotionWidget motionWidget2;
        float f11;
        float adjustedPosition = getAdjustedPosition(f10, null);
        int i10 = this.mQuantizeMotionSteps;
        if (i10 != -1) {
            float f12 = 1.0f / i10;
            float floor = ((float) Math.floor(adjustedPosition / f12)) * f12;
            float f13 = (adjustedPosition % f12) / f12;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f13 = (f13 + this.mQuantizeMotionPhase) % 1.0f;
            }
            DifferentialInterpolator differentialInterpolator = this.mQuantizeMotionInterpolator;
            if (differentialInterpolator != null) {
                f11 = differentialInterpolator.getInterpolation(f13);
            } else if (f13 > 0.5d) {
                f11 = 1.0f;
            } else {
                f11 = 0.0f;
            }
            adjustedPosition = (f11 * f12) + floor;
        }
        float f14 = adjustedPosition;
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            for (SplineSet splineSet : hashMap.values()) {
                splineSet.setProperty(motionWidget, f14);
            }
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
                this.mStartMotionPath.setView(f14, motionWidget, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
            } else {
                d10 = d11;
            }
            if (this.mTransformPivotTarget != -1) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = motionWidget.getParent().findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (motionWidget2.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (motionWidget.getRight() - motionWidget.getLeft() > 0 && motionWidget.getBottom() - motionWidget.getTop() > 0) {
                        motionWidget.setPivotX(left - motionWidget.getLeft());
                        motionWidget.setPivotY(top - motionWidget.getTop());
                    }
                }
            }
            int i11 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i11 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i11].getPos(d10, this.mValuesBuff);
                this.mStartMotionPath.mCustomAttributes.get(this.mAttributeNames[i11 - 1]).setInterpolatedValue(motionWidget, this.mValuesBuff);
                i11++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f14 <= 0.0f) {
                    motionWidget.setVisibility(motionConstrainedPoint.mVisibility);
                } else if (f14 >= 1.0f) {
                    motionWidget.setVisibility(this.mEndPoint.mVisibility);
                } else if (this.mEndPoint.mVisibility != motionConstrainedPoint.mVisibility) {
                    motionWidget.setVisibility(4);
                }
            }
            if (this.mKeyTriggers != null) {
                int i12 = 0;
                while (true) {
                    MotionKeyTrigger[] motionKeyTriggerArr = this.mKeyTriggers;
                    if (i12 >= motionKeyTriggerArr.length) {
                        break;
                    }
                    motionKeyTriggerArr[i12].conditionallyFire(f14, motionWidget);
                    i12++;
                }
            }
        } else {
            MotionPaths motionPaths = this.mStartMotionPath;
            float f15 = motionPaths.mX;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f16 = f15 + ((motionPaths2.mX - f15) * f14);
            float f17 = motionPaths.mY;
            float f18 = f17 + ((motionPaths2.mY - f17) * f14);
            float f19 = motionPaths.mWidth;
            float f20 = f19 + ((motionPaths2.mWidth - f19) * f14);
            float f21 = motionPaths.mHeight;
            float f22 = f16 + 0.5f;
            float f23 = f18 + 0.5f;
            motionWidget.layout((int) f22, (int) f23, (int) (f22 + f20), (int) (f23 + f21 + ((motionPaths2.mHeight - f21) * f14)));
        }
        HashMap<String, KeyCycleOscillator> hashMap2 = this.mCycleMap;
        if (hashMap2 != null) {
            for (KeyCycleOscillator keyCycleOscillator : hashMap2.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                    double[] dArr2 = this.mInterpolateVelocity;
                    ((KeyCycleOscillator.PathRotateSet) keyCycleOscillator).setPathRotate(motionWidget, f14, dArr2[0], dArr2[1]);
                } else {
                    keyCycleOscillator.setProperty(motionWidget, f14);
                }
            }
            return false;
        }
        return false;
    }

    String name() {
        return this.mView.getName();
    }

    void positionKeyframe(MotionWidget motionWidget, MotionKeyPosition motionKeyPosition, float f10, float f11, String[] strArr, float[] fArr) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.mX;
        floatRect.left = f12;
        float f13 = motionPaths.mY;
        floatRect.top = f13;
        floatRect.right = f12 + motionPaths.mWidth;
        floatRect.bottom = f13 + motionPaths.mHeight;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.mX;
        floatRect2.left = f14;
        float f15 = motionPaths2.mY;
        floatRect2.top = f15;
        floatRect2.right = f14 + motionPaths2.mWidth;
        floatRect2.bottom = f15 + motionPaths2.mHeight;
        motionKeyPosition.positionAttributes(motionWidget, floatRect, floatRect2, f10, f11, strArr, fArr);
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

    void setBothStates(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartPoint.setState(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setDrawPath(int i10) {
        this.mStartMotionPath.mDrawPath = i10;
    }

    public void setEnd(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.mTime = 1.0f;
        motionPaths.mPosition = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(motionWidget.getLeft(), motionWidget.getTop(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.applyParameters(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setIdString(String str) {
        this.mId = str;
        this.mStartMotionPath.mId = str;
    }

    public void setPathMotionArc(int i10) {
        this.mPathMotionArc = i10;
    }

    public void setStaggerOffset(float f10) {
        this.mStaggerOffset = f10;
    }

    public void setStaggerScale(float f10) {
        this.mStaggerScale = f10;
    }

    public void setStart(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartMotionPath.applyParameters(motionWidget);
        this.mStartPoint.setState(motionWidget);
        TypedBundle motionProperties = motionWidget.getWidgetFrame().getMotionProperties();
        if (motionProperties != null) {
            motionProperties.applyDelta(this);
        }
    }

    public void setStartState(ViewState viewState, MotionWidget motionWidget, int i10, int i11, int i12) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        Rect rect = new Rect();
        if (i10 != 1) {
            if (i10 == 2) {
                int i13 = viewState.left + viewState.right;
                rect.left = i12 - (((viewState.top + viewState.bottom) + viewState.width()) / 2);
                rect.top = (i13 - viewState.height()) / 2;
                rect.right = rect.left + viewState.width();
                rect.bottom = rect.top + viewState.height();
            }
        } else {
            int i14 = viewState.left + viewState.right;
            rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
            rect.top = i11 - ((i14 + viewState.height()) / 2);
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        }
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, motionWidget, i10, viewState.rotation);
    }

    public void setTransformPivotTarget(int i10) {
        this.mTransformPivotTarget = i10;
        this.mTransformPivotView = null;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, boolean z10) {
        return false;
    }

    public void setView(MotionWidget motionWidget) {
        this.mView = motionWidget;
    }

    public void setup(int i10, int i11, float f10, long j10) {
        ArrayList arrayList;
        String[] strArr;
        boolean z10;
        MotionPaths motionPaths;
        int i12;
        int i13;
        CustomVariable customVariable;
        int i14;
        SplineSet makeSpline;
        CustomVariable customVariable2;
        int i15;
        Integer num;
        SplineSet makeSpline2;
        CustomVariable customVariable3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        setupRelative();
        int i16 = this.mPathMotionArc;
        if (i16 != -1) {
            MotionPaths motionPaths2 = this.mStartMotionPath;
            if (motionPaths2.mPathMotionArc == -1) {
                motionPaths2.mPathMotionArc = i16;
            }
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<MotionKey> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<MotionKey> it = arrayList2.iterator();
            arrayList = null;
            while (it.hasNext()) {
                MotionKey next = it.next();
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    insertKey(new MotionPaths(i10, i11, motionKeyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i17 = motionKeyPosition.mCurveFit;
                    if (i17 != -1) {
                        this.mCurveFitType = i17;
                    }
                } else if (next instanceof MotionKeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof MotionKeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof MotionKeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((MotionKeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (MotionKeyTrigger[]) arrayList.toArray(new MotionKeyTrigger[0]);
        }
        char c10 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    KeyFrameArray.CustomVar customVar = new KeyFrameArray.CustomVar();
                    String str = next2.split(",")[c10];
                    Iterator<MotionKey> it3 = this.mKeyList.iterator();
                    while (it3.hasNext()) {
                        MotionKey next3 = it3.next();
                        HashMap<String, CustomVariable> hashMap2 = next3.mCustom;
                        if (hashMap2 != null && (customVariable3 = hashMap2.get(str)) != null) {
                            customVar.append(next3.mFramePosition, customVariable3);
                        }
                    }
                    makeSpline2 = SplineSet.makeCustomSplineSet(next2, customVar);
                } else {
                    makeSpline2 = SplineSet.makeSpline(next2, j10);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.mAttributesMap.put(next2, makeSpline2);
                }
                c10 = 1;
            }
            ArrayList<MotionKey> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                Iterator<MotionKey> it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    MotionKey next4 = it4.next();
                    if (next4 instanceof MotionKeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                if (hashMap.containsKey(str2) && (num = hashMap.get(str2)) != null) {
                    i15 = num.intValue();
                } else {
                    i15 = 0;
                }
                SplineSet splineSet = this.mAttributesMap.get(str2);
                if (splineSet != null) {
                    splineSet.setup(i15);
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
                        KeyFrameArray.CustomVar customVar2 = new KeyFrameArray.CustomVar();
                        String str3 = next5.split(",")[1];
                        Iterator<MotionKey> it6 = this.mKeyList.iterator();
                        while (it6.hasNext()) {
                            MotionKey next6 = it6.next();
                            HashMap<String, CustomVariable> hashMap3 = next6.mCustom;
                            if (hashMap3 != null && (customVariable2 = hashMap3.get(str3)) != null) {
                                customVar2.append(next6.mFramePosition, customVariable2);
                            }
                        }
                        makeSpline = SplineSet.makeCustomSplineSet(next5, customVar2);
                    } else {
                        makeSpline = SplineSet.makeSpline(next5, j10);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                    }
                }
            }
            ArrayList<MotionKey> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                Iterator<MotionKey> it7 = arrayList4.iterator();
                while (it7.hasNext()) {
                    MotionKey next7 = it7.next();
                    if (next7 instanceof MotionKeyTimeCycle) {
                        ((MotionKeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                if (hashMap.containsKey(str4)) {
                    i14 = hashMap.get(str4).intValue();
                } else {
                    i14 = 0;
                }
                this.mTimeCycleAttributesMap.get(str4).setup(i14);
            }
        }
        int size = this.mMotionPaths.size();
        int i18 = size + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[i18];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size + 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == MotionKey.UNSET) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it8 = this.mMotionPaths.iterator();
        int i19 = 1;
        while (it8.hasNext()) {
            motionPathsArr[i19] = it8.next();
            i19++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.mCustomAttributes.keySet()) {
            if (this.mStartMotionPath.mCustomAttributes.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i20 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i20 >= strArr.length) {
                break;
            }
            String str6 = strArr[i20];
            this.mAttributeInterpolatorCount[i20] = 0;
            int i21 = 0;
            while (true) {
                if (i21 >= i18) {
                    break;
                }
                if (motionPathsArr[i21].mCustomAttributes.containsKey(str6) && (customVariable = motionPathsArr[i21].mCustomAttributes.get(str6)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i20] = iArr[i20] + customVariable.numberOfInterpolatedValues();
                    break;
                }
                i21++;
            }
            i20++;
        }
        if (motionPathsArr[0].mPathMotionArc != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i22 = 1; i22 < i18; i22++) {
            motionPathsArr[i22].different(motionPathsArr[i22 - 1], zArr, this.mAttributeNames, z10);
        }
        int i23 = 0;
        for (int i24 = 1; i24 < length; i24++) {
            if (zArr[i24]) {
                i23++;
            }
        }
        this.mInterpolateVariables = new int[i23];
        int i25 = 2;
        int max = Math.max(2, i23);
        this.mInterpolateData = new double[max];
        this.mInterpolateVelocity = new double[max];
        int i26 = 0;
        for (int i27 = 1; i27 < length; i27++) {
            if (zArr[i27]) {
                this.mInterpolateVariables[i26] = i27;
                i26++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i18, this.mInterpolateVariables.length);
        double[] dArr2 = new double[i18];
        for (int i28 = 0; i28 < i18; i28++) {
            motionPathsArr[i28].fillStandard(dArr[i28], this.mInterpolateVariables);
            dArr2[i28] = motionPathsArr[i28].mTime;
        }
        int i29 = 0;
        while (true) {
            int[] iArr2 = this.mInterpolateVariables;
            if (i29 >= iArr2.length) {
                break;
            }
            if (iArr2[i29] < MotionPaths.sNames.length) {
                String str7 = MotionPaths.sNames[this.mInterpolateVariables[i29]] + " [";
                for (int i30 = 0; i30 < i18; i30++) {
                    str7 = str7 + dArr[i30][i29];
                }
            }
            i29++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i31 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i31 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i31];
            int i32 = 0;
            int i33 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i32 < i18) {
                if (motionPathsArr[i32].hasCustomData(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[i18];
                        int[] iArr3 = new int[i25];
                        iArr3[1] = motionPathsArr[i32].getCustomDataCount(str8);
                        i13 = 0;
                        iArr3[0] = i18;
                        dArr4 = (double[][]) Array.newInstance(Double.TYPE, iArr3);
                    } else {
                        i13 = 0;
                    }
                    MotionPaths motionPaths3 = motionPathsArr[i32];
                    i12 = i18;
                    dArr3[i33] = motionPaths3.mTime;
                    motionPaths3.getCustomData(str8, dArr4[i33], i13);
                    i33++;
                } else {
                    i12 = i18;
                }
                i32++;
                i18 = i12;
                i25 = 2;
            }
            i31++;
            this.mSpline[i31] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i33), (double[][]) Arrays.copyOf(dArr4, i33));
            i18 = i18;
            i25 = 2;
        }
        int i34 = i18;
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != -1) {
            int[] iArr4 = new int[i34];
            double[] dArr5 = new double[i34];
            double[][] dArr6 = (double[][]) Array.newInstance(Double.TYPE, i34, 2);
            for (int i35 = 0; i35 < i34; i35++) {
                iArr4[i35] = motionPathsArr[i35].mPathMotionArc;
                dArr5[i35] = motionPaths.mTime;
                double[] dArr7 = dArr6[i35];
                dArr7[0] = motionPaths.mX;
                dArr7[1] = motionPaths.mY;
            }
            this.mArcSpline = CurveFit.getArc(iArr4, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it9 = hashSet3.iterator();
            float f11 = Float.NaN;
            while (it9.hasNext()) {
                String next8 = it9.next();
                KeyCycleOscillator makeWidgetCycle = KeyCycleOscillator.makeWidgetCycle(next8);
                if (makeWidgetCycle != null) {
                    if (makeWidgetCycle.variesByPath() && Float.isNaN(f11)) {
                        f11 = getPreCycleDistance();
                    }
                    makeWidgetCycle.setType(next8);
                    this.mCycleMap.put(next8, makeWidgetCycle);
                }
            }
            Iterator<MotionKey> it10 = this.mKeyList.iterator();
            while (it10.hasNext()) {
                MotionKey next9 = it10.next();
                if (next9 instanceof MotionKeyCycle) {
                    ((MotionKeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            for (KeyCycleOscillator keyCycleOscillator : this.mCycleMap.values()) {
                keyCycleOscillator.setup(f11);
            }
        }
    }

    public void setupRelative(Motion motion) {
        this.mRelativeMotion = motion;
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.mX + " y: " + this.mStartMotionPath.mY + " end: x: " + this.mEndMotionPath.mX + " y: " + this.mEndMotionPath.mY;
    }

    private void setupRelative() {
        Motion motion = this.mRelativeMotion;
        if (motion == null) {
            return;
        }
        this.mStartMotionPath.setupRelative(motion, motion.mStartMotionPath);
        MotionPaths motionPaths = this.mEndMotionPath;
        Motion motion2 = this.mRelativeMotion;
        motionPaths.setupRelative(motion2, motion2.mEndMotionPath);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, int i11) {
        if (i10 == 509) {
            setPathMotionArc(i11);
            return true;
        } else if (i10 != 610) {
            return i10 == 704;
        } else {
            this.mQuantizeMotionSteps = i11;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, float f10) {
        if (602 == i10) {
            this.mQuantizeMotionPhase = f10;
            return true;
        } else if (600 == i10) {
            this.mMotionStagger = f10;
            return true;
        } else {
            return false;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, String str) {
        if (705 == i10 || 611 == i10) {
            this.mQuantizeMotionInterpolator = getInterpolator(-1, str, 0);
            return true;
        } else if (605 == i10) {
            this.mStartMotionPath.mAnimateRelativeTo = str;
            return true;
        } else {
            return false;
        }
    }

    void endTrigger(boolean z10) {
    }
}
