package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.SpringStopEngine;
import androidx.constraintlayout.core.motion.utils.StopEngine;
import androidx.constraintlayout.core.motion.utils.StopLogicEngine;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Transition implements TypedValues {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    public static final int START = 0;
    int mParentEndHeight;
    int mParentEndWidth;
    int mParentInterpolateHeight;
    int mParentInterpolatedWidth;
    int mParentStartHeight;
    int mParentStartWidth;
    final CorePixelDp mToPixel;
    boolean mWrap;
    private HashMap<Integer, HashMap<String, KeyPosition>> mKeyPositions = new HashMap<>();
    private HashMap<String, WidgetState> mState = new HashMap<>();
    private TypedBundle mBundle = new TypedBundle();
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private Easing mEasing = null;
    private int mAutoTransition = 0;
    private int mDuration = 400;
    private float mStagger = 0.0f;
    private OnSwipe mOnSwipe = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class KeyPosition {
        int mFrame;
        String mTarget;
        int mType;
        float mX;
        float mY;

        KeyPosition(String str, int i10, int i11, float f10, float f11) {
            this.mTarget = str;
            this.mFrame = i10;
            this.mType = i11;
            this.mX = f10;
            this.mY = f11;
        }
    }

    /* loaded from: classes.dex */
    static class OnSwipe {
        public static final int ANCHOR_SIDE_BOTTOM = 3;
        public static final int ANCHOR_SIDE_END = 6;
        public static final int ANCHOR_SIDE_LEFT = 1;
        public static final int ANCHOR_SIDE_MIDDLE = 4;
        public static final int ANCHOR_SIDE_RIGHT = 2;
        public static final int ANCHOR_SIDE_START = 5;
        public static final int ANCHOR_SIDE_TOP = 0;
        public static final int BOUNDARY_BOUNCE_BOTH = 3;
        public static final int BOUNDARY_BOUNCE_END = 2;
        public static final int BOUNDARY_BOUNCE_START = 1;
        public static final int BOUNDARY_OVERSHOOT = 0;
        public static final int DRAG_ANTICLOCKWISE = 7;
        public static final int DRAG_CLOCKWISE = 6;
        public static final int DRAG_DOWN = 1;
        public static final int DRAG_END = 5;
        public static final int DRAG_LEFT = 2;
        public static final int DRAG_RIGHT = 3;
        public static final int DRAG_START = 4;
        public static final int DRAG_UP = 0;
        public static final int MODE_CONTINUOUS_VELOCITY = 0;
        public static final int MODE_SPRING = 1;
        public static final int ON_UP_AUTOCOMPLETE = 0;
        public static final int ON_UP_AUTOCOMPLETE_TO_END = 2;
        public static final int ON_UP_AUTOCOMPLETE_TO_START = 1;
        public static final int ON_UP_DECELERATE = 4;
        public static final int ON_UP_DECELERATE_AND_COMPLETE = 5;
        public static final int ON_UP_NEVER_COMPLETE_TO_END = 7;
        public static final int ON_UP_NEVER_COMPLETE_TO_START = 6;
        public static final int ON_UP_STOP = 3;
        String mAnchorId;
        private int mAnchorSide;
        private StopEngine mEngine;
        String mLimitBoundsTo;
        private String mRotationCenterId;
        private long mStart;
        public static final String[] SIDES = {"top", TtmlNode.LEFT, TtmlNode.RIGHT, "bottom", "middle", "start", "end"};
        private static final float[][] TOUCH_SIDES = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
        public static final String[] DIRECTIONS = {"up", "down", TtmlNode.LEFT, TtmlNode.RIGHT, "start", "end", "clockwise", "anticlockwise"};
        public static final String[] MODE = {"velocity", "spring"};
        public static final String[] TOUCH_UP = {"autocomplete", "toStart", "toEnd", "stop", "decelerate", "decelerateComplete", "neverCompleteStart", "neverCompleteEnd"};
        public static final String[] BOUNDARY = {"overshoot", "bounceStart", "bounceEnd", "bounceBoth"};
        private static final float[][] TOUCH_DIRECTION = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};
        private boolean mDragVertical = true;
        private int mDragDirection = 0;
        private float mDragScale = 1.0f;
        private float mDragThreshold = 10.0f;
        private int mAutoCompleteMode = 0;
        private float mMaxVelocity = 4.0f;
        private float mMaxAcceleration = 1.2f;
        private int mOnTouchUp = 0;
        private float mSpringMass = 1.0f;
        private float mSpringStiffness = 400.0f;
        private float mSpringDamping = 10.0f;
        private float mSpringStopThreshold = 0.01f;
        private float mDestination = 0.0f;
        private int mSpringBoundary = 0;

        OnSwipe() {
        }

        void config(float f10, float f11, long j10, float f12) {
            SpringStopEngine springStopEngine;
            StopLogicEngine stopLogicEngine;
            StopLogicEngine.Decelerate decelerate;
            this.mStart = j10;
            float abs = Math.abs(f11);
            float f13 = this.mMaxVelocity;
            if (abs > f13) {
                f11 = Math.signum(f11) * f13;
            }
            float f14 = f11;
            float destinationPosition = getDestinationPosition(f10, f14, f12);
            this.mDestination = destinationPosition;
            if (destinationPosition == f10) {
                this.mEngine = null;
            } else if (this.mOnTouchUp == 4 && this.mAutoCompleteMode == 0) {
                StopEngine stopEngine = this.mEngine;
                if (stopEngine instanceof StopLogicEngine.Decelerate) {
                    decelerate = (StopLogicEngine.Decelerate) stopEngine;
                } else {
                    decelerate = new StopLogicEngine.Decelerate();
                    this.mEngine = decelerate;
                }
                decelerate.config(f10, this.mDestination, f14);
            } else if (this.mAutoCompleteMode == 0) {
                StopEngine stopEngine2 = this.mEngine;
                if (stopEngine2 instanceof StopLogicEngine) {
                    stopLogicEngine = (StopLogicEngine) stopEngine2;
                } else {
                    stopLogicEngine = new StopLogicEngine();
                    this.mEngine = stopLogicEngine;
                }
                stopLogicEngine.config(f10, this.mDestination, f14, f12, this.mMaxAcceleration, this.mMaxVelocity);
            } else {
                StopEngine stopEngine3 = this.mEngine;
                if (stopEngine3 instanceof SpringStopEngine) {
                    springStopEngine = (SpringStopEngine) stopEngine3;
                } else {
                    springStopEngine = new SpringStopEngine();
                    this.mEngine = springStopEngine;
                }
                springStopEngine.springConfig(f10, this.mDestination, f14, this.mSpringMass, this.mSpringStiffness, this.mSpringDamping, this.mSpringStopThreshold, this.mSpringBoundary);
            }
        }

        float getDestinationPosition(float f10, float f11, float f12) {
            float abs = (((Math.abs(f11) * 0.5f) * f11) / this.mMaxAcceleration) + f10;
            switch (this.mOnTouchUp) {
                case 1:
                    if (f10 < 1.0f) {
                        return 0.0f;
                    }
                    return 1.0f;
                case 2:
                    if (f10 <= 0.0f) {
                        return 0.0f;
                    }
                    return 1.0f;
                case 3:
                    return Float.NaN;
                case 4:
                    return Math.max(0.0f, Math.min(1.0f, abs));
                case 5:
                    if (abs > 0.2f && abs < 0.8f) {
                        return abs;
                    }
                    if (abs <= 0.5f) {
                        return 0.0f;
                    }
                    return 1.0f;
                case 6:
                    return 1.0f;
                case 7:
                    return 0.0f;
                default:
                    if (abs <= 0.5d) {
                        return 0.0f;
                    }
                    return 1.0f;
            }
        }

        float[] getDirection() {
            return TOUCH_DIRECTION[this.mDragDirection];
        }

        float getScale() {
            return this.mDragScale;
        }

        float[] getSide() {
            return TOUCH_SIDES[this.mAnchorSide];
        }

        public float getTouchUpProgress(long j10) {
            float interpolation = this.mEngine.getInterpolation(((float) (j10 - this.mStart)) * 1.0E-9f);
            if (this.mEngine.isStopped()) {
                return this.mDestination;
            }
            return interpolation;
        }

        public boolean isNotDone(float f10) {
            StopEngine stopEngine;
            if (this.mOnTouchUp == 3 || (stopEngine = this.mEngine) == null || stopEngine.isStopped()) {
                return false;
            }
            return true;
        }

        public void printInfo() {
            if (this.mAutoCompleteMode == 0) {
                PrintStream printStream = System.out;
                printStream.println("velocity = " + this.mEngine.getVelocity());
                printStream.println("mMaxAcceleration = " + this.mMaxAcceleration);
                printStream.println("mMaxVelocity = " + this.mMaxVelocity);
                return;
            }
            PrintStream printStream2 = System.out;
            printStream2.println("mSpringMass          = " + this.mSpringMass);
            printStream2.println("mSpringStiffness     = " + this.mSpringStiffness);
            printStream2.println("mSpringDamping       = " + this.mSpringDamping);
            printStream2.println("mSpringStopThreshold = " + this.mSpringStopThreshold);
            printStream2.println("mSpringBoundary      = " + this.mSpringBoundary);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setAnchorId(String str) {
            this.mAnchorId = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setAnchorSide(int i10) {
            this.mAnchorSide = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setAutoCompleteMode(int i10) {
            this.mAutoCompleteMode = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setDragDirection(int i10) {
            boolean z10;
            this.mDragDirection = i10;
            if (i10 < 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.mDragVertical = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setDragScale(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mDragScale = f10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setDragThreshold(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mDragThreshold = f10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setLimitBoundsTo(String str) {
            this.mLimitBoundsTo = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setMaxAcceleration(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mMaxAcceleration = f10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setMaxVelocity(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mMaxVelocity = f10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setOnTouchUp(int i10) {
            this.mOnTouchUp = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setRotationCenterId(String str) {
            this.mRotationCenterId = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setSpringBoundary(int i10) {
            this.mSpringBoundary = i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setSpringDamping(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mSpringDamping = f10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setSpringMass(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mSpringMass = f10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setSpringStiffness(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mSpringStiffness = f10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setSpringStopThreshold(float f10) {
            if (Float.isNaN(f10)) {
                return;
            }
            this.mSpringStopThreshold = f10;
        }
    }

    public Transition(@NonNull CorePixelDp corePixelDp) {
        this.mToPixel = corePixelDp;
    }

    private void calculateParentDimensions(float f10) {
        int i10 = this.mParentStartWidth;
        this.mParentInterpolatedWidth = (int) (i10 + 0.5f + ((this.mParentEndWidth - i10) * f10));
        int i11 = this.mParentStartHeight;
        this.mParentInterpolateHeight = (int) (i11 + 0.5f + ((this.mParentEndHeight - i11) * f10));
    }

    public static Interpolator getInterpolator(int i10, final String str) {
        switch (i10) {
            case -1:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.a
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$0;
                        lambda$getInterpolator$0 = Transition.lambda$getInterpolator$0(str, f10);
                        return lambda$getInterpolator$0;
                    }
                };
            case 0:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.b
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$1;
                        lambda$getInterpolator$1 = Transition.lambda$getInterpolator$1(f10);
                        return lambda$getInterpolator$1;
                    }
                };
            case 1:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.c
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$2;
                        lambda$getInterpolator$2 = Transition.lambda$getInterpolator$2(f10);
                        return lambda$getInterpolator$2;
                    }
                };
            case 2:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.d
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$3;
                        lambda$getInterpolator$3 = Transition.lambda$getInterpolator$3(f10);
                        return lambda$getInterpolator$3;
                    }
                };
            case 3:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.e
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$4;
                        lambda$getInterpolator$4 = Transition.lambda$getInterpolator$4(f10);
                        return lambda$getInterpolator$4;
                    }
                };
            case 4:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.h
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$7;
                        lambda$getInterpolator$7 = Transition.lambda$getInterpolator$7(f10);
                        return lambda$getInterpolator$7;
                    }
                };
            case 5:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.g
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$6;
                        lambda$getInterpolator$6 = Transition.lambda$getInterpolator$6(f10);
                        return lambda$getInterpolator$6;
                    }
                };
            case 6:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.f
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$5;
                        lambda$getInterpolator$5 = Transition.lambda$getInterpolator$5(f10);
                        return lambda$getInterpolator$5;
                    }
                };
            default:
                return null;
        }
    }

    private WidgetState getWidgetState(String str) {
        return this.mState.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$0(String str, float f10) {
        return (float) Easing.getInterpolator(str).get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$1(float f10) {
        return (float) Easing.getInterpolator("standard").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$2(float f10) {
        return (float) Easing.getInterpolator("accelerate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$3(float f10) {
        return (float) Easing.getInterpolator("decelerate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$4(float f10) {
        return (float) Easing.getInterpolator("linear").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$5(float f10) {
        return (float) Easing.getInterpolator("anticipate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$6(float f10) {
        return (float) Easing.getInterpolator("overshoot").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$7(float f10) {
        return (float) Easing.getInterpolator("spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)").get(f10);
    }

    public void addCustomColor(int i10, String str, String str2, int i11) {
        getWidgetState(str, null, i10).getFrame(i10).addCustomColor(str2, i11);
    }

    public void addCustomFloat(int i10, String str, String str2, float f10) {
        getWidgetState(str, null, i10).getFrame(i10).addCustomFloat(str2, f10);
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle);
    }

    public void addKeyCycle(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyCycle(typedBundle);
    }

    public void addKeyPosition(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
    }

    public void calcStagger() {
        boolean z10;
        float f10;
        float f11;
        float f12 = this.mStagger;
        if (f12 == 0.0f) {
            return;
        }
        if (f12 < 0.0d) {
            z10 = true;
        } else {
            z10 = false;
        }
        float abs = Math.abs(f12);
        Iterator<String> it = this.mState.keySet().iterator();
        do {
            f10 = Float.MAX_VALUE;
            f11 = -3.4028235E38f;
            if (!it.hasNext()) {
                for (String str : this.mState.keySet()) {
                    Motion motion = this.mState.get(str).mMotionControl;
                    float finalX = motion.getFinalX() + motion.getFinalY();
                    f10 = Math.min(f10, finalX);
                    f11 = Math.max(f11, finalX);
                }
                for (String str2 : this.mState.keySet()) {
                    Motion motion2 = this.mState.get(str2).mMotionControl;
                    float finalX2 = motion2.getFinalX() + motion2.getFinalY();
                    float f13 = f11 - f10;
                    float f14 = abs - (((finalX2 - f10) * abs) / f13);
                    if (z10) {
                        f14 = abs - (((f11 - finalX2) / f13) * abs);
                    }
                    motion2.setStaggerScale(1.0f / (1.0f - abs));
                    motion2.setStaggerOffset(f14);
                }
                return;
            }
        } while (Float.isNaN(this.mState.get(it.next()).mMotionControl.getMotionStagger()));
        for (String str3 : this.mState.keySet()) {
            float motionStagger = this.mState.get(str3).mMotionControl.getMotionStagger();
            if (!Float.isNaN(motionStagger)) {
                f10 = Math.min(f10, motionStagger);
                f11 = Math.max(f11, motionStagger);
            }
        }
        for (String str4 : this.mState.keySet()) {
            Motion motion3 = this.mState.get(str4).mMotionControl;
            float motionStagger2 = motion3.getMotionStagger();
            if (!Float.isNaN(motionStagger2)) {
                float f15 = 1.0f / (1.0f - abs);
                float f16 = f11 - f10;
                float f17 = abs - (((motionStagger2 - f10) * abs) / f16);
                if (z10) {
                    f17 = abs - (((f11 - motionStagger2) / f16) * abs);
                }
                motion3.setStaggerScale(f15);
                motion3.setStaggerOffset(f17);
            }
        }
    }

    public void clear() {
        this.mState.clear();
    }

    public boolean contains(String str) {
        return this.mState.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OnSwipe createOnSwipe() {
        OnSwipe onSwipe = new OnSwipe();
        this.mOnSwipe = onSwipe;
        return onSwipe;
    }

    public float dragToProgress(float f10, int i10, int i11, float f11, float f12) {
        WidgetState widgetState;
        float abs;
        float scale;
        Iterator<WidgetState> it = this.mState.values().iterator();
        if (it.hasNext()) {
            widgetState = it.next();
        } else {
            widgetState = null;
        }
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe != null && widgetState != null) {
            String str = onSwipe.mAnchorId;
            if (str == null) {
                float[] direction = onSwipe.getDirection();
                int i12 = widgetState.mParentHeight;
                float f13 = i12;
                float f14 = i12;
                float f15 = direction[0];
                if (f15 != 0.0f) {
                    abs = (f11 * Math.abs(f15)) / f13;
                } else {
                    abs = (f12 * Math.abs(direction[1])) / f14;
                }
                scale = this.mOnSwipe.getScale();
            } else {
                WidgetState widgetState2 = this.mState.get(str);
                float[] direction2 = this.mOnSwipe.getDirection();
                float[] side = this.mOnSwipe.getSide();
                float[] fArr = new float[2];
                widgetState2.interpolate(i10, i11, f10, this);
                widgetState2.mMotionControl.getDpDt(f10, side[0], side[1], fArr);
                float f16 = direction2[0];
                if (f16 != 0.0f) {
                    abs = (f11 * Math.abs(f16)) / fArr[0];
                } else {
                    abs = (f12 * Math.abs(direction2[1])) / fArr[1];
                }
                scale = this.mOnSwipe.getScale();
            }
            return abs * scale;
        } else if (widgetState != null) {
            return (-f12) / widgetState.mParentHeight;
        } else {
            return 1.0f;
        }
    }

    public void fillKeyPositions(WidgetFrame widgetFrame, float[] fArr, float[] fArr2, float[] fArr3) {
        KeyPosition keyPosition;
        int i10 = 0;
        for (int i11 = 0; i11 <= 100; i11++) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i11));
            if (hashMap != null && (keyPosition = hashMap.get(widgetFrame.widget.stringId)) != null) {
                fArr[i10] = keyPosition.mX;
                fArr2[i10] = keyPosition.mY;
                fArr3[i10] = keyPosition.mFrame;
                i10++;
            }
        }
    }

    public KeyPosition findNextPosition(String str, int i10) {
        KeyPosition keyPosition;
        while (i10 <= 100) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i10));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i10++;
        }
        return null;
    }

    public KeyPosition findPreviousPosition(String str, int i10) {
        KeyPosition keyPosition;
        while (i10 >= 0) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i10));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i10--;
        }
        return null;
    }

    public int getAutoTransition() {
        return this.mAutoTransition;
    }

    public WidgetFrame getEnd(String str) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.mEnd;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public WidgetFrame getInterpolated(String str) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.mInterpolated;
    }

    public int getInterpolatedHeight() {
        return this.mParentInterpolateHeight;
    }

    public int getInterpolatedWidth() {
        return this.mParentInterpolatedWidth;
    }

    public int getKeyFrames(String str, float[] fArr, int[] iArr, int[] iArr2) {
        return this.mState.get(str).mMotionControl.buildKeyFrames(fArr, iArr, iArr2);
    }

    public Motion getMotion(String str) {
        return getWidgetState(str, null, 0).mMotionControl;
    }

    public int getNumberKeyPositions(WidgetFrame widgetFrame) {
        int i10 = 0;
        for (int i11 = 0; i11 <= 100; i11++) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i11));
            if (hashMap != null && hashMap.get(widgetFrame.widget.stringId) != null) {
                i10++;
            }
        }
        return i10;
    }

    public float[] getPath(String str) {
        float[] fArr = new float[124];
        this.mState.get(str).mMotionControl.buildPath(fArr, 62);
        return fArr;
    }

    public WidgetFrame getStart(String str) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.mStart;
    }

    public float getTouchUpProgress(long j10) {
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe != null) {
            return onSwipe.getTouchUpProgress(j10);
        }
        return 0.0f;
    }

    public boolean hasOnSwipe() {
        if (this.mOnSwipe != null) {
            return true;
        }
        return false;
    }

    public boolean hasPositionKeyframes() {
        if (this.mKeyPositions.size() > 0) {
            return true;
        }
        return false;
    }

    public void interpolate(int i10, int i11, float f10) {
        if (this.mWrap) {
            calculateParentDimensions(f10);
        }
        Easing easing = this.mEasing;
        if (easing != null) {
            f10 = (float) easing.get(f10);
        }
        for (String str : this.mState.keySet()) {
            this.mState.get(str).interpolate(i10, i11, f10, this);
        }
    }

    public boolean isEmpty() {
        return this.mState.isEmpty();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isFirstDownAccepted(float f10, float f11) {
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe == null) {
            return false;
        }
        String str = onSwipe.mLimitBoundsTo;
        if (str == null) {
            return true;
        }
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            System.err.println("mLimitBoundsTo target is null");
            return false;
        }
        WidgetFrame frame = widgetState.getFrame(2);
        if (f10 < frame.left || f10 >= frame.right || f11 < frame.top || f11 >= frame.bottom) {
            return false;
        }
        return true;
    }

    public boolean isTouchNotDone(float f10) {
        return this.mOnSwipe.isNotDone(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetProperties() {
        this.mOnSwipe = null;
        this.mBundle.clear();
    }

    public void setTouchUp(float f10, long j10, float f11, float f12) {
        float f13;
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe != null) {
            float[] fArr = new float[2];
            float[] direction = this.mOnSwipe.getDirection();
            float[] side = this.mOnSwipe.getSide();
            this.mState.get(onSwipe.mAnchorId).mMotionControl.getDpDt(f10, side[0], side[1], fArr);
            if (Math.abs((direction[0] * fArr[0]) + (direction[1] * fArr[1])) < 0.01d) {
                fArr[0] = 0.01f;
                fArr[1] = 0.01f;
            }
            if (direction[0] != 0.0f) {
                f13 = f11 / fArr[0];
            } else {
                f13 = f12 / fArr[1];
            }
            this.mOnSwipe.config(f10, f13 * this.mOnSwipe.getScale(), j10, this.mDuration * 0.001f);
        }
    }

    public void setTransitionProperties(TypedBundle typedBundle) {
        typedBundle.applyDelta(this.mBundle);
        typedBundle.applyDelta(this);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, int i11) {
        return false;
    }

    public void updateFrom(ConstraintWidgetContainer constraintWidgetContainer, int i10) {
        boolean z10;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer.mListDimensionBehaviors;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z11 = true;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.mWrap = z10;
        if (dimensionBehaviourArr[1] != dimensionBehaviour2) {
            z11 = false;
        }
        this.mWrap = z10 | z11;
        if (i10 == 0) {
            int width = constraintWidgetContainer.getWidth();
            this.mParentStartWidth = width;
            this.mParentInterpolatedWidth = width;
            int height = constraintWidgetContainer.getHeight();
            this.mParentStartHeight = height;
            this.mParentInterpolateHeight = height;
        } else {
            this.mParentEndWidth = constraintWidgetContainer.getWidth();
            this.mParentEndHeight = constraintWidgetContainer.getHeight();
        }
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        WidgetState[] widgetStateArr = new WidgetState[size];
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = children.get(i11);
            WidgetState widgetState = getWidgetState(constraintWidget.stringId, null, i10);
            widgetStateArr[i11] = widgetState;
            widgetState.update(constraintWidget, i10);
            String pathRelativeId = widgetState.getPathRelativeId();
            if (pathRelativeId != null) {
                widgetState.setPathRelative(getWidgetState(pathRelativeId, null, i10));
            }
        }
        calcStagger();
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle, CustomVariable[] customVariableArr) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle, customVariableArr);
    }

    public void addKeyPosition(String str, int i10, int i11, float f10, float f11) {
        TypedBundle typedBundle = new TypedBundle();
        typedBundle.add(510, 2);
        typedBundle.add(100, i10);
        typedBundle.add(506, f10);
        typedBundle.add(507, f11);
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
        KeyPosition keyPosition = new KeyPosition(str, i10, i11, f10, f11);
        HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i10));
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.mKeyPositions.put(Integer.valueOf(i10), hashMap);
        }
        hashMap.put(str, keyPosition);
    }

    public WidgetState getWidgetState(String str, ConstraintWidget constraintWidget, int i10) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            widgetState = new WidgetState();
            this.mBundle.applyDelta(widgetState.mMotionControl);
            widgetState.mMotionWidgetStart.updateMotion(widgetState.mMotionControl);
            this.mState.put(str, widgetState);
            if (constraintWidget != null) {
                widgetState.update(constraintWidget, i10);
            }
        }
        return widgetState;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, boolean z10) {
        return false;
    }

    /* loaded from: classes.dex */
    public static class WidgetState {
        Motion mMotionControl;
        boolean mNeedSetup = true;
        KeyCache mKeyCache = new KeyCache();
        int mParentHeight = -1;
        int mParentWidth = -1;
        WidgetFrame mStart = new WidgetFrame();
        WidgetFrame mEnd = new WidgetFrame();
        WidgetFrame mInterpolated = new WidgetFrame();
        MotionWidget mMotionWidgetStart = new MotionWidget(this.mStart);
        MotionWidget mMotionWidgetEnd = new MotionWidget(this.mEnd);
        MotionWidget mMotionWidgetInterpolated = new MotionWidget(this.mInterpolated);

        public WidgetState() {
            Motion motion = new Motion(this.mMotionWidgetStart);
            this.mMotionControl = motion;
            motion.setStart(this.mMotionWidgetStart);
            this.mMotionControl.setEnd(this.mMotionWidgetEnd);
        }

        public WidgetFrame getFrame(int i10) {
            if (i10 == 0) {
                return this.mStart;
            }
            if (i10 == 1) {
                return this.mEnd;
            }
            return this.mInterpolated;
        }

        String getPathRelativeId() {
            return this.mMotionControl.getAnimateRelativeTo();
        }

        public void interpolate(int i10, int i11, float f10, Transition transition) {
            this.mParentHeight = i11;
            this.mParentWidth = i10;
            if (this.mNeedSetup) {
                this.mMotionControl.setup(i10, i11, 1.0f, System.nanoTime());
                this.mNeedSetup = false;
            }
            WidgetFrame.interpolate(i10, i11, this.mInterpolated, this.mStart, this.mEnd, transition, f10);
            this.mInterpolated.interpolatedPos = f10;
            this.mMotionControl.interpolate(this.mMotionWidgetInterpolated, f10, System.nanoTime(), this.mKeyCache);
        }

        public void setKeyAttribute(TypedBundle typedBundle) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            this.mMotionControl.addKey(motionKeyAttributes);
        }

        public void setKeyCycle(TypedBundle typedBundle) {
            MotionKeyCycle motionKeyCycle = new MotionKeyCycle();
            typedBundle.applyDelta(motionKeyCycle);
            this.mMotionControl.addKey(motionKeyCycle);
        }

        public void setKeyPosition(TypedBundle typedBundle) {
            MotionKeyPosition motionKeyPosition = new MotionKeyPosition();
            typedBundle.applyDelta(motionKeyPosition);
            this.mMotionControl.addKey(motionKeyPosition);
        }

        public void setPathRelative(WidgetState widgetState) {
            this.mMotionControl.setupRelative(widgetState.mMotionControl);
        }

        public void update(ConstraintWidget constraintWidget, int i10) {
            if (i10 == 0) {
                this.mStart.update(constraintWidget);
                MotionWidget motionWidget = this.mMotionWidgetStart;
                motionWidget.updateMotion(motionWidget);
                this.mMotionControl.setStart(this.mMotionWidgetStart);
                this.mNeedSetup = true;
            } else if (i10 == 1) {
                this.mEnd.update(constraintWidget);
                this.mMotionControl.setEnd(this.mMotionWidgetEnd);
                this.mNeedSetup = true;
            }
            this.mParentWidth = -1;
        }

        public void setKeyAttribute(TypedBundle typedBundle, CustomVariable[] customVariableArr) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            if (customVariableArr != null) {
                for (int i10 = 0; i10 < customVariableArr.length; i10++) {
                    motionKeyAttributes.mCustom.put(customVariableArr[i10].getName(), customVariableArr[i10]);
                }
            }
            this.mMotionControl.addKey(motionKeyAttributes);
        }
    }

    public WidgetFrame getEnd(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 1).mEnd;
    }

    public WidgetFrame getInterpolated(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 2).mInterpolated;
    }

    public WidgetFrame getStart(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 0).mStart;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, float f10) {
        if (i10 == 706) {
            this.mStagger = f10;
            return false;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i10, String str) {
        if (i10 == 705) {
            this.mDefaultInterpolatorString = str;
            this.mEasing = Easing.getInterpolator(str);
            return false;
        }
        return false;
    }

    public Interpolator getInterpolator() {
        return getInterpolator(this.mDefaultInterpolator, this.mDefaultInterpolatorString);
    }
}
