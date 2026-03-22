package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.util.Consumer;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.transition.Transition;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
/* loaded from: classes2.dex */
public abstract class Transition implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<TransitionValues> mEndValuesList;
    private EpicenterCallback mEpicenterCallback;
    private TransitionListener[] mListenersCache;
    private ArrayMap<String, String> mNameOverrides;
    TransitionPropagation mPropagation;
    SeekController mSeekController;
    long mSeekOffsetInParent;
    private ArrayList<TransitionValues> mStartValuesList;
    long mTotalDuration;
    private static final Animator[] EMPTY_ANIMATOR_ARRAY = new Animator[0];
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final PathMotion STRAIGHT_PATH_MOTION = new PathMotion() { // from class: androidx.transition.Transition.1
        @Override // androidx.transition.PathMotion
        @NonNull
        public Path getPath(float f10, float f11, float f12, float f13) {
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            return path;
        }
    };
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class<?>> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class<?>> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
    private TransitionValuesMaps mStartValues = new TransitionValuesMaps();
    private TransitionValuesMaps mEndValues = new TransitionValuesMaps();
    TransitionSet mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private Animator[] mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
    int mNumInstances = 0;
    private boolean mPaused = false;
    boolean mEnded = false;
    private Transition mCloneParent = null;
    private ArrayList<TransitionListener> mListeners = null;
    ArrayList<Animator> mAnimators = new ArrayList<>();
    private PathMotion mPathMotion = STRAIGHT_PATH_MOTION;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class AnimationInfo {
        Animator mAnimator;
        String mName;
        Transition mTransition;
        TransitionValues mValues;
        View mView;
        WindowId mWindowId;

        AnimationInfo(View view, String str, Transition transition, WindowId windowId, TransitionValues transitionValues, Animator animator) {
            this.mView = view;
            this.mName = str;
            this.mValues = transitionValues;
            this.mWindowId = windowId;
            this.mTransition = transition;
            this.mAnimator = animator;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ArrayListManager {
        private ArrayListManager() {
        }

        static <T> ArrayList<T> add(ArrayList<T> arrayList, T t10) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t10)) {
                arrayList.add(t10);
            }
            return arrayList;
        }

        static <T> ArrayList<T> remove(ArrayList<T> arrayList, T t10) {
            if (arrayList != null) {
                arrayList.remove(t10);
                if (arrayList.isEmpty()) {
                    return null;
                }
                return arrayList;
            }
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class EpicenterCallback {
        @Nullable
        public abstract Rect onGetEpicenter(@NonNull Transition transition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(26)
    /* loaded from: classes2.dex */
    public static class Impl26 {
        private Impl26() {
        }

        @DoNotInline
        static long getTotalDuration(Animator animator) {
            return animator.getTotalDuration();
        }

        @DoNotInline
        static void setCurrentPlayTime(Animator animator, long j10) {
            ((AnimatorSet) animator).setCurrentPlayTime(j10);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public @interface MatchOrder {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(34)
    /* loaded from: classes2.dex */
    public class SeekController extends TransitionListenerAdapter implements TransitionSeekController, DynamicAnimation.OnAnimationUpdateListener {
        private boolean mIsCanceled;
        private boolean mIsReady;
        private Runnable mResetToStartState;
        private SpringAnimation mSpringAnimation;
        private long mCurrentPlayTime = -1;
        private ArrayList<Consumer<TransitionSeekController>> mOnReadyListeners = null;
        private ArrayList<Consumer<TransitionSeekController>> mOnProgressListeners = null;
        private Consumer<TransitionSeekController>[] mListenerCache = null;
        private final VelocityTracker1D mVelocityTracker = new VelocityTracker1D();

        SeekController() {
        }

        private void callProgressListeners() {
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnProgressListeners;
            if (arrayList != null && !arrayList.isEmpty()) {
                int size = this.mOnProgressListeners.size();
                if (this.mListenerCache == null) {
                    this.mListenerCache = new Consumer[size];
                }
                Consumer<TransitionSeekController>[] consumerArr = (Consumer[]) this.mOnProgressListeners.toArray(this.mListenerCache);
                this.mListenerCache = null;
                for (int i10 = 0; i10 < size; i10++) {
                    consumerArr[i10].accept(this);
                    consumerArr[i10] = null;
                }
                this.mListenerCache = consumerArr;
            }
        }

        private void ensureAnimation() {
            if (this.mSpringAnimation != null) {
                return;
            }
            this.mVelocityTracker.addDataPoint(AnimationUtils.currentAnimationTimeMillis(), (float) this.mCurrentPlayTime);
            this.mSpringAnimation = new SpringAnimation(new FloatValueHolder());
            SpringForce springForce = new SpringForce();
            springForce.setDampingRatio(1.0f);
            springForce.setStiffness(200.0f);
            this.mSpringAnimation.setSpring(springForce);
            this.mSpringAnimation.setStartValue((float) this.mCurrentPlayTime);
            this.mSpringAnimation.addUpdateListener(this);
            this.mSpringAnimation.setStartVelocity(this.mVelocityTracker.calculateVelocity());
            this.mSpringAnimation.setMaxValue((float) (getDurationMillis() + 1));
            this.mSpringAnimation.setMinValue(-1.0f);
            this.mSpringAnimation.setMinimumVisibleChange(4.0f);
            this.mSpringAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: androidx.transition.c
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z10, float f10, float f11) {
                    Transition.SeekController.this.lambda$ensureAnimation$0(dynamicAnimation, z10, f10, f11);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$ensureAnimation$0(DynamicAnimation dynamicAnimation, boolean z10, float f10, float f11) {
            if (!z10) {
                if (f10 < 1.0f) {
                    long durationMillis = getDurationMillis();
                    Transition transitionAt = ((TransitionSet) Transition.this).getTransitionAt(0);
                    Transition transition = transitionAt.mCloneParent;
                    transitionAt.mCloneParent = null;
                    Transition.this.setCurrentPlayTimeMillis(-1L, this.mCurrentPlayTime);
                    Transition.this.setCurrentPlayTimeMillis(durationMillis, -1L);
                    this.mCurrentPlayTime = durationMillis;
                    Runnable runnable = this.mResetToStartState;
                    if (runnable != null) {
                        runnable.run();
                    }
                    Transition.this.mAnimators.clear();
                    if (transition != null) {
                        transition.notifyListeners(TransitionNotification.ON_END, true);
                        return;
                    }
                    return;
                }
                Transition.this.notifyListeners(TransitionNotification.ON_END, false);
            }
        }

        @Override // androidx.transition.TransitionSeekController
        public void addOnProgressChangedListener(@NonNull Consumer<TransitionSeekController> consumer) {
            if (this.mOnProgressListeners == null) {
                this.mOnProgressListeners = new ArrayList<>();
            }
            this.mOnProgressListeners.add(consumer);
        }

        @Override // androidx.transition.TransitionSeekController
        public void addOnReadyListener(@NonNull Consumer<TransitionSeekController> consumer) {
            if (isReady()) {
                consumer.accept(this);
                return;
            }
            if (this.mOnReadyListeners == null) {
                this.mOnReadyListeners = new ArrayList<>();
            }
            this.mOnReadyListeners.add(consumer);
        }

        @Override // androidx.transition.TransitionSeekController
        public void animateToEnd() {
            ensureAnimation();
            this.mSpringAnimation.animateToFinalPosition((float) (getDurationMillis() + 1));
        }

        @Override // androidx.transition.TransitionSeekController
        public void animateToStart(@NonNull Runnable runnable) {
            this.mResetToStartState = runnable;
            ensureAnimation();
            this.mSpringAnimation.animateToFinalPosition(0.0f);
        }

        @Override // androidx.transition.TransitionSeekController
        public float getCurrentFraction() {
            return ((float) getCurrentPlayTimeMillis()) / ((float) getDurationMillis());
        }

        @Override // androidx.transition.TransitionSeekController
        public long getCurrentPlayTimeMillis() {
            return Math.min(getDurationMillis(), Math.max(0L, this.mCurrentPlayTime));
        }

        @Override // androidx.transition.TransitionSeekController
        public long getDurationMillis() {
            return Transition.this.getTotalDurationMillis();
        }

        void initPlayTime() {
            long j10 = 0;
            if (getDurationMillis() == 0) {
                j10 = 1;
            }
            Transition.this.setCurrentPlayTimeMillis(j10, this.mCurrentPlayTime);
            this.mCurrentPlayTime = j10;
        }

        @Override // androidx.transition.TransitionSeekController
        public boolean isReady() {
            return this.mIsReady;
        }

        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
        public void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f10, float f11) {
            long max = Math.max(-1L, Math.min(getDurationMillis() + 1, Math.round(f10)));
            Transition.this.setCurrentPlayTimeMillis(max, this.mCurrentPlayTime);
            this.mCurrentPlayTime = max;
            callProgressListeners();
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            this.mIsCanceled = true;
        }

        public void ready() {
            this.mIsReady = true;
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnReadyListeners;
            if (arrayList != null) {
                this.mOnReadyListeners = null;
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    arrayList.get(i10).accept(this);
                }
            }
            callProgressListeners();
        }

        @Override // androidx.transition.TransitionSeekController
        public void removeOnProgressChangedListener(@NonNull Consumer<TransitionSeekController> consumer) {
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnProgressListeners;
            if (arrayList != null) {
                arrayList.remove(consumer);
            }
        }

        @Override // androidx.transition.TransitionSeekController
        public void removeOnReadyListener(@NonNull Consumer<TransitionSeekController> consumer) {
            ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnReadyListeners;
            if (arrayList != null) {
                arrayList.remove(consumer);
                if (this.mOnReadyListeners.isEmpty()) {
                    this.mOnReadyListeners = null;
                }
            }
        }

        @Override // androidx.transition.TransitionSeekController
        public void setCurrentFraction(float f10) {
            if (this.mSpringAnimation == null) {
                setCurrentPlayTimeMillis(f10 * ((float) getDurationMillis()));
                return;
            }
            throw new IllegalStateException("setCurrentFraction() called after animation has been started");
        }

        @Override // androidx.transition.TransitionSeekController
        public void setCurrentPlayTimeMillis(long j10) {
            if (this.mSpringAnimation == null) {
                if (j10 != this.mCurrentPlayTime && isReady()) {
                    if (!this.mIsCanceled) {
                        if (j10 == 0 && this.mCurrentPlayTime > 0) {
                            j10 = -1;
                        } else {
                            long durationMillis = getDurationMillis();
                            if (j10 == durationMillis && this.mCurrentPlayTime < durationMillis) {
                                j10 = 1 + durationMillis;
                            }
                        }
                        long j11 = this.mCurrentPlayTime;
                        if (j10 != j11) {
                            Transition.this.setCurrentPlayTimeMillis(j10, j11);
                            this.mCurrentPlayTime = j10;
                        }
                    }
                    callProgressListeners();
                    this.mVelocityTracker.addDataPoint(AnimationUtils.currentAnimationTimeMillis(), (float) j10);
                    return;
                }
                return;
            }
            throw new IllegalStateException("setCurrentPlayTimeMillis() called after animation has been started");
        }
    }

    /* loaded from: classes2.dex */
    public interface TransitionListener {
        void onTransitionCancel(@NonNull Transition transition);

        void onTransitionEnd(@NonNull Transition transition);

        default void onTransitionEnd(@NonNull Transition transition, boolean z10) {
            onTransitionEnd(transition);
        }

        void onTransitionPause(@NonNull Transition transition);

        void onTransitionResume(@NonNull Transition transition);

        void onTransitionStart(@NonNull Transition transition);

        default void onTransitionStart(@NonNull Transition transition, boolean z10) {
            onTransitionStart(transition);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface TransitionNotification {
        public static final TransitionNotification ON_START = new TransitionNotification() { // from class: androidx.transition.d
            @Override // androidx.transition.Transition.TransitionNotification
            public final void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z10) {
                transitionListener.onTransitionStart(transition, z10);
            }
        };
        public static final TransitionNotification ON_END = new TransitionNotification() { // from class: androidx.transition.e
            @Override // androidx.transition.Transition.TransitionNotification
            public final void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z10) {
                transitionListener.onTransitionEnd(transition, z10);
            }
        };
        public static final TransitionNotification ON_CANCEL = new TransitionNotification() { // from class: androidx.transition.f
            @Override // androidx.transition.Transition.TransitionNotification
            public final void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z10) {
                transitionListener.onTransitionCancel(transition);
            }
        };
        public static final TransitionNotification ON_PAUSE = new TransitionNotification() { // from class: androidx.transition.g
            @Override // androidx.transition.Transition.TransitionNotification
            public final void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z10) {
                transitionListener.onTransitionPause(transition);
            }
        };
        public static final TransitionNotification ON_RESUME = new TransitionNotification() { // from class: androidx.transition.h
            @Override // androidx.transition.Transition.TransitionNotification
            public final void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z10) {
                transitionListener.onTransitionResume(transition);
            }
        };

        void notifyListener(@NonNull TransitionListener transitionListener, @NonNull Transition transition, boolean z10);
    }

    public Transition() {
    }

    private void addUnmatched(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int i10 = 0; i10 < arrayMap.size(); i10++) {
            TransitionValues valueAt = arrayMap.valueAt(i10);
            if (isValidTarget(valueAt.view)) {
                this.mStartValuesList.add(valueAt);
                this.mEndValuesList.add(null);
            }
        }
        for (int i11 = 0; i11 < arrayMap2.size(); i11++) {
            TransitionValues valueAt2 = arrayMap2.valueAt(i11);
            if (isValidTarget(valueAt2.view)) {
                this.mEndValuesList.add(valueAt2);
                this.mStartValuesList.add(null);
            }
        }
    }

    private static void addViewValues(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        transitionValuesMaps.mViewValues.put(view, transitionValues);
        int id2 = view.getId();
        if (id2 >= 0) {
            if (transitionValuesMaps.mIdValues.indexOfKey(id2) >= 0) {
                transitionValuesMaps.mIdValues.put(id2, null);
            } else {
                transitionValuesMaps.mIdValues.put(id2, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (transitionValuesMaps.mNameValues.containsKey(transitionName)) {
                transitionValuesMaps.mNameValues.put(transitionName, null);
            } else {
                transitionValuesMaps.mNameValues.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (transitionValuesMaps.mItemIdValues.indexOfKey(itemIdAtPosition) >= 0) {
                    View view2 = transitionValuesMaps.mItemIdValues.get(itemIdAtPosition);
                    if (view2 != null) {
                        view2.setHasTransientState(false);
                        transitionValuesMaps.mItemIdValues.put(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                view.setHasTransientState(true);
                transitionValuesMaps.mItemIdValues.put(itemIdAtPosition, view);
            }
        }
    }

    private static boolean alreadyContains(int[] iArr, int i10) {
        int i11 = iArr[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] == i11) {
                return true;
            }
        }
        return false;
    }

    private void captureHierarchy(View view, boolean z10) {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList != null && arrayList.contains(Integer.valueOf(id2))) {
            return;
        }
        ArrayList<View> arrayList2 = this.mTargetExcludes;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList3 = this.mTargetTypeExcludes;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            TransitionValues transitionValues = new TransitionValues(view);
            if (z10) {
                captureStartValues(transitionValues);
            } else {
                captureEndValues(transitionValues);
            }
            transitionValues.mTargetedTransitions.add(this);
            capturePropagationValues(transitionValues);
            if (z10) {
                addViewValues(this.mStartValues, view, transitionValues);
            } else {
                addViewValues(this.mEndValues, view, transitionValues);
            }
        }
        if (view instanceof ViewGroup) {
            ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
            if (arrayList4 != null && arrayList4.contains(Integer.valueOf(id2))) {
                return;
            }
            ArrayList<View> arrayList5 = this.mTargetChildExcludes;
            if (arrayList5 != null && arrayList5.contains(view)) {
                return;
            }
            ArrayList<Class<?>> arrayList6 = this.mTargetTypeChildExcludes;
            if (arrayList6 != null) {
                int size2 = arrayList6.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    if (this.mTargetTypeChildExcludes.get(i11).isInstance(view)) {
                        return;
                    }
                }
            }
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                captureHierarchy(viewGroup.getChildAt(i12), z10);
            }
        }
    }

    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i10, boolean z10) {
        if (i10 > 0) {
            if (z10) {
                return ArrayListManager.add(arrayList, Integer.valueOf(i10));
            }
            return ArrayListManager.remove(arrayList, Integer.valueOf(i10));
        }
        return arrayList;
    }

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t10, boolean z10) {
        if (t10 != null) {
            if (z10) {
                return ArrayListManager.add(arrayList, t10);
            }
            return ArrayListManager.remove(arrayList, t10);
        }
        return arrayList;
    }

    private ArrayList<Class<?>> excludeType(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z10) {
        if (cls != null) {
            if (z10) {
                return ArrayListManager.add(arrayList, cls);
            }
            return ArrayListManager.remove(arrayList, cls);
        }
        return arrayList;
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z10) {
        if (view != null) {
            if (z10) {
                return ArrayListManager.add(arrayList, view);
            }
            return ArrayListManager.remove(arrayList, view);
        }
        return arrayList;
    }

    private static ArrayMap<Animator, AnimationInfo> getRunningAnimators() {
        ArrayMap<Animator, AnimationInfo> arrayMap = sRunningAnimators.get();
        if (arrayMap == null) {
            ArrayMap<Animator, AnimationInfo> arrayMap2 = new ArrayMap<>();
            sRunningAnimators.set(arrayMap2);
            return arrayMap2;
        }
        return arrayMap;
    }

    private static boolean isValidMatch(int i10) {
        if (i10 >= 1 && i10 <= 4) {
            return true;
        }
        return false;
    }

    private static boolean isValueChanged(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        Object obj = transitionValues.values.get(str);
        Object obj2 = transitionValues2.values.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    private void matchIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View valueAt = sparseArray.valueAt(i10);
            if (valueAt != null && isValidTarget(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i10))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void matchInstances(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        TransitionValues remove;
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View keyAt = arrayMap.keyAt(size);
            if (keyAt != null && isValidTarget(keyAt) && (remove = arrayMap2.remove(keyAt)) != null && isValidTarget(remove.view)) {
                this.mStartValuesList.add(arrayMap.removeAt(size));
                this.mEndValuesList.add(remove);
            }
        }
    }

    private void matchItemIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View view;
        int size = longSparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View valueAt = longSparseArray.valueAt(i10);
            if (valueAt != null && isValidTarget(valueAt) && (view = longSparseArray2.get(longSparseArray.keyAt(i10))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void matchNames(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.size();
        for (int i10 = 0; i10 < size; i10++) {
            View valueAt = arrayMap3.valueAt(i10);
            if (valueAt != null && isValidTarget(valueAt) && (view = arrayMap4.get(arrayMap3.keyAt(i10))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void matchStartAndEnd(TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        ArrayMap<View, TransitionValues> arrayMap = new ArrayMap<>(transitionValuesMaps.mViewValues);
        ArrayMap<View, TransitionValues> arrayMap2 = new ArrayMap<>(transitionValuesMaps2.mViewValues);
        int i10 = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i10 < iArr.length) {
                int i11 = iArr[i10];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                matchItemIds(arrayMap, arrayMap2, transitionValuesMaps.mItemIdValues, transitionValuesMaps2.mItemIdValues);
                            }
                        } else {
                            matchIds(arrayMap, arrayMap2, transitionValuesMaps.mIdValues, transitionValuesMaps2.mIdValues);
                        }
                    } else {
                        matchNames(arrayMap, arrayMap2, transitionValuesMaps.mNameValues, transitionValuesMaps2.mNameValues);
                    }
                } else {
                    matchInstances(arrayMap, arrayMap2);
                }
                i10++;
            } else {
                addUnmatched(arrayMap, arrayMap2);
                return;
            }
        }
    }

    private void notifyFromTransition(Transition transition, TransitionNotification transitionNotification, boolean z10) {
        Transition transition2 = this.mCloneParent;
        if (transition2 != null) {
            transition2.notifyFromTransition(transition, transitionNotification, z10);
        }
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = this.mListeners.size();
            TransitionListener[] transitionListenerArr = this.mListenersCache;
            if (transitionListenerArr == null) {
                transitionListenerArr = new TransitionListener[size];
            }
            this.mListenersCache = null;
            TransitionListener[] transitionListenerArr2 = (TransitionListener[]) this.mListeners.toArray(transitionListenerArr);
            for (int i10 = 0; i10 < size; i10++) {
                transitionNotification.notifyListener(transitionListenerArr2[i10], transition, z10);
                transitionListenerArr2[i10] = null;
            }
            this.mListenersCache = transitionListenerArr2;
        }
    }

    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i10] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(trim)) {
                iArr[i10] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
                iArr[i10] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(trim)) {
                iArr[i10] = 4;
            } else if (trim.isEmpty()) {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i10);
                i10--;
                iArr = iArr2;
            } else {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            }
            i10++;
        }
        return iArr;
    }

    private void runAnimator(Animator animator, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    arrayMap.remove(animator2);
                    Transition.this.mCurrentAnimators.remove(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    Transition.this.mCurrentAnimators.add(animator2);
                }
            });
            animate(animator);
        }
    }

    @NonNull
    public Transition addListener(@NonNull TransitionListener transitionListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(transitionListener);
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull View view) {
        this.mTargets.add(view);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    protected void animate(@Nullable Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay() + animator.getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                Transition.this.end();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        int size = this.mCurrentAnimators.size();
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = animatorArr[i10];
            animatorArr[i10] = null;
            animator.cancel();
        }
        this.mAnimatorCache = animatorArr;
        notifyListeners(TransitionNotification.ON_CANCEL, false);
    }

    public abstract void captureEndValues(@NonNull TransitionValues transitionValues);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void capturePropagationValues(TransitionValues transitionValues) {
        String[] propagationProperties;
        if (this.mPropagation == null || transitionValues.values.isEmpty() || (propagationProperties = this.mPropagation.getPropagationProperties()) == null) {
            return;
        }
        for (String str : propagationProperties) {
            if (!transitionValues.values.containsKey(str)) {
                this.mPropagation.captureValues(transitionValues);
                return;
            }
        }
    }

    public abstract void captureStartValues(@NonNull TransitionValues transitionValues);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void captureValues(@NonNull ViewGroup viewGroup, boolean z10) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        ArrayMap<String, String> arrayMap;
        clearValues(z10);
        if ((this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) || (((arrayList = this.mTargetNames) != null && !arrayList.isEmpty()) || ((arrayList2 = this.mTargetTypes) != null && !arrayList2.isEmpty()))) {
            captureHierarchy(viewGroup, z10);
        } else {
            for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                View findViewById = viewGroup.findViewById(this.mTargetIds.get(i10).intValue());
                if (findViewById != null) {
                    TransitionValues transitionValues = new TransitionValues(findViewById);
                    if (z10) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.mTargetedTransitions.add(this);
                    capturePropagationValues(transitionValues);
                    if (z10) {
                        addViewValues(this.mStartValues, findViewById, transitionValues);
                    } else {
                        addViewValues(this.mEndValues, findViewById, transitionValues);
                    }
                }
            }
            for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                View view = this.mTargets.get(i11);
                TransitionValues transitionValues2 = new TransitionValues(view);
                if (z10) {
                    captureStartValues(transitionValues2);
                } else {
                    captureEndValues(transitionValues2);
                }
                transitionValues2.mTargetedTransitions.add(this);
                capturePropagationValues(transitionValues2);
                if (z10) {
                    addViewValues(this.mStartValues, view, transitionValues2);
                } else {
                    addViewValues(this.mEndValues, view, transitionValues2);
                }
            }
        }
        if (!z10 && (arrayMap = this.mNameOverrides) != null) {
            int size = arrayMap.size();
            ArrayList arrayList3 = new ArrayList(size);
            for (int i12 = 0; i12 < size; i12++) {
                arrayList3.add(this.mStartValues.mNameValues.remove(this.mNameOverrides.keyAt(i12)));
            }
            for (int i13 = 0; i13 < size; i13++) {
                View view2 = (View) arrayList3.get(i13);
                if (view2 != null) {
                    this.mStartValues.mNameValues.put(this.mNameOverrides.valueAt(i13), view2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearValues(boolean z10) {
        if (z10) {
            this.mStartValues.mViewValues.clear();
            this.mStartValues.mIdValues.clear();
            this.mStartValues.mItemIdValues.clear();
            return;
        }
        this.mEndValues.mViewValues.clear();
        this.mEndValues.mIdValues.clear();
        this.mEndValues.mItemIdValues.clear();
    }

    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createAnimators(@NonNull ViewGroup viewGroup, @NonNull TransitionValuesMaps transitionValuesMaps, @NonNull TransitionValuesMaps transitionValuesMaps2, @NonNull ArrayList<TransitionValues> arrayList, @NonNull ArrayList<TransitionValues> arrayList2) {
        boolean z10;
        Animator createAnimator;
        int i10;
        int i11;
        View view;
        AnimatorSet animatorSet;
        TransitionValues transitionValues;
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        if (getRootTransition().mSeekController != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j10 = Long.MAX_VALUE;
        int i12 = 0;
        while (i12 < size) {
            TransitionValues transitionValues2 = arrayList.get(i12);
            TransitionValues transitionValues3 = arrayList2.get(i12);
            if (transitionValues2 != null && !transitionValues2.mTargetedTransitions.contains(this)) {
                transitionValues2 = null;
            }
            if (transitionValues3 != null && !transitionValues3.mTargetedTransitions.contains(this)) {
                transitionValues3 = null;
            }
            if ((transitionValues2 == null && transitionValues3 == null) || ((transitionValues2 != null && transitionValues3 != null && !isTransitionRequired(transitionValues2, transitionValues3)) || (createAnimator = createAnimator(viewGroup, transitionValues2, transitionValues3)) == null)) {
                i10 = size;
                i11 = i12;
            } else {
                if (transitionValues3 != null) {
                    view = transitionValues3.view;
                    String[] transitionProperties = getTransitionProperties();
                    Animator animator = createAnimator;
                    if (transitionProperties != null && transitionProperties.length > 0) {
                        transitionValues = new TransitionValues(view);
                        i10 = size;
                        TransitionValues transitionValues4 = transitionValuesMaps2.mViewValues.get(view);
                        if (transitionValues4 != null) {
                            int i13 = 0;
                            while (i13 < transitionProperties.length) {
                                Map<String, Object> map = transitionValues.values;
                                int i14 = i12;
                                String str = transitionProperties[i13];
                                map.put(str, transitionValues4.values.get(str));
                                i13++;
                                i12 = i14;
                                transitionProperties = transitionProperties;
                            }
                        }
                        i11 = i12;
                        int size2 = runningAnimators.size();
                        int i15 = 0;
                        while (true) {
                            if (i15 >= size2) {
                                break;
                            }
                            AnimationInfo animationInfo = runningAnimators.get(runningAnimators.keyAt(i15));
                            if (animationInfo.mValues != null && animationInfo.mView == view && animationInfo.mName.equals(getName()) && animationInfo.mValues.equals(transitionValues)) {
                                animator = null;
                                break;
                            }
                            i15++;
                        }
                    } else {
                        i10 = size;
                        i11 = i12;
                        transitionValues = null;
                    }
                    animatorSet = animator;
                } else {
                    i10 = size;
                    i11 = i12;
                    view = transitionValues2.view;
                    animatorSet = createAnimator;
                    transitionValues = null;
                }
                if (animatorSet != null) {
                    TransitionPropagation transitionPropagation = this.mPropagation;
                    if (transitionPropagation != null) {
                        long startDelay = transitionPropagation.getStartDelay(viewGroup, this, transitionValues2, transitionValues3);
                        sparseIntArray.put(this.mAnimators.size(), (int) startDelay);
                        j10 = Math.min(startDelay, j10);
                    }
                    long j11 = j10;
                    AnimationInfo animationInfo2 = new AnimationInfo(view, getName(), this, viewGroup.getWindowId(), transitionValues, animatorSet);
                    if (z10) {
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        animatorSet2.play(animatorSet);
                        animatorSet = animatorSet2;
                    }
                    runningAnimators.put(animatorSet, animationInfo2);
                    this.mAnimators.add(animatorSet);
                    j10 = j11;
                }
            }
            i12 = i11 + 1;
            size = i10;
        }
        if (sparseIntArray.size() != 0) {
            for (int i16 = 0; i16 < sparseIntArray.size(); i16++) {
                AnimationInfo animationInfo3 = runningAnimators.get(this.mAnimators.get(sparseIntArray.keyAt(i16)));
                animationInfo3.mAnimator.setStartDelay((sparseIntArray.valueAt(i16) - j10) + animationInfo3.mAnimator.getStartDelay());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @RequiresApi(34)
    public TransitionSeekController createSeekController() {
        SeekController seekController = new SeekController();
        this.mSeekController = seekController;
        addListener(seekController);
        return this.mSeekController;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void end() {
        int i10 = this.mNumInstances - 1;
        this.mNumInstances = i10;
        if (i10 == 0) {
            notifyListeners(TransitionNotification.ON_END, false);
            for (int i11 = 0; i11 < this.mStartValues.mItemIdValues.size(); i11++) {
                View valueAt = this.mStartValues.mItemIdValues.valueAt(i11);
                if (valueAt != null) {
                    valueAt.setHasTransientState(false);
                }
            }
            for (int i12 = 0; i12 < this.mEndValues.mItemIdValues.size(); i12++) {
                View valueAt2 = this.mEndValues.mItemIdValues.valueAt(i12);
                if (valueAt2 != null) {
                    valueAt2.setHasTransientState(false);
                }
            }
            this.mEnded = true;
        }
    }

    @NonNull
    public Transition excludeChildren(@NonNull View view, boolean z10) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z10);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z10) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void forceToEnd(@Nullable ViewGroup viewGroup) {
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup != null && size != 0) {
            WindowId windowId = viewGroup.getWindowId();
            ArrayMap arrayMap = new ArrayMap(runningAnimators);
            runningAnimators.clear();
            for (int i10 = size - 1; i10 >= 0; i10--) {
                AnimationInfo animationInfo = (AnimationInfo) arrayMap.valueAt(i10);
                if (animationInfo.mView != null && windowId.equals(animationInfo.mWindowId)) {
                    ((Animator) arrayMap.keyAt(i10)).end();
                }
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    @Nullable
    public Rect getEpicenter() {
        EpicenterCallback epicenterCallback = this.mEpicenterCallback;
        if (epicenterCallback == null) {
            return null;
        }
        return epicenterCallback.onGetEpicenter(this);
    }

    @Nullable
    public EpicenterCallback getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    @Nullable
    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransitionValues getMatchedTransitionValues(View view, boolean z10) {
        ArrayList<TransitionValues> arrayList;
        ArrayList<TransitionValues> arrayList2;
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getMatchedTransitionValues(view, z10);
        }
        if (z10) {
            arrayList = this.mStartValuesList;
        } else {
            arrayList = this.mEndValuesList;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                TransitionValues transitionValues = arrayList.get(i10);
                if (transitionValues == null) {
                    return null;
                }
                if (transitionValues.view == view) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 < 0) {
            return null;
        }
        if (z10) {
            arrayList2 = this.mEndValuesList;
        } else {
            arrayList2 = this.mStartValuesList;
        }
        return arrayList2.get(i10);
    }

    @NonNull
    public String getName() {
        return this.mName;
    }

    @NonNull
    public PathMotion getPathMotion() {
        return this.mPathMotion;
    }

    @Nullable
    public TransitionPropagation getPropagation() {
        return this.mPropagation;
    }

    @NonNull
    public final Transition getRootTransition() {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getRootTransition();
        }
        return this;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    @NonNull
    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    @Nullable
    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    @Nullable
    public List<Class<?>> getTargetTypes() {
        return this.mTargetTypes;
    }

    @NonNull
    public List<View> getTargets() {
        return this.mTargets;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long getTotalDurationMillis() {
        return this.mTotalDuration;
    }

    @Nullable
    public String[] getTransitionProperties() {
        return null;
    }

    @Nullable
    public TransitionValues getTransitionValues(@NonNull View view, boolean z10) {
        TransitionValuesMaps transitionValuesMaps;
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z10);
        }
        if (z10) {
            transitionValuesMaps = this.mStartValues;
        } else {
            transitionValuesMaps = this.mEndValues;
        }
        return transitionValuesMaps.mViewValues.get(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasAnimators() {
        return !this.mCurrentAnimators.isEmpty();
    }

    public boolean isSeekingSupported() {
        return false;
    }

    public boolean isTransitionRequired(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties != null) {
            for (String str : transitionProperties) {
                if (!isValueChanged(transitionValues, transitionValues2, str)) {
                }
            }
            return false;
        }
        for (String str2 : transitionValues.values.keySet()) {
            if (isValueChanged(transitionValues, transitionValues2, str2)) {
            }
        }
        return false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isValidTarget(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id2 = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id2))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && ViewCompat.getTransitionName(view) != null && this.mTargetNameExcludes.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id2)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i11 = 0; i11 < this.mTargetTypes.size(); i11++) {
                if (this.mTargetTypes.get(i11).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyListeners(TransitionNotification transitionNotification, boolean z10) {
        notifyFromTransition(this, transitionNotification, z10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(@Nullable View view) {
        if (!this.mEnded) {
            int size = this.mCurrentAnimators.size();
            Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
            this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
            for (int i10 = size - 1; i10 >= 0; i10--) {
                Animator animator = animatorArr[i10];
                animatorArr[i10] = null;
                animator.pause();
            }
            this.mAnimatorCache = animatorArr;
            notifyListeners(TransitionNotification.ON_PAUSE, false);
            this.mPaused = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void playTransition(@NonNull ViewGroup viewGroup) {
        AnimationInfo animationInfo;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        WindowId windowId = viewGroup.getWindowId();
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator keyAt = runningAnimators.keyAt(i10);
            if (keyAt != null && (animationInfo = runningAnimators.get(keyAt)) != null && animationInfo.mView != null && windowId.equals(animationInfo.mWindowId)) {
                TransitionValues transitionValues = animationInfo.mValues;
                View view = animationInfo.mView;
                TransitionValues transitionValues2 = getTransitionValues(view, true);
                TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (transitionValues2 == null && matchedTransitionValues == null) {
                    matchedTransitionValues = this.mEndValues.mViewValues.get(view);
                }
                if ((transitionValues2 != null || matchedTransitionValues != null) && animationInfo.mTransition.isTransitionRequired(transitionValues, matchedTransitionValues)) {
                    Transition transition = animationInfo.mTransition;
                    if (transition.getRootTransition().mSeekController != null) {
                        keyAt.cancel();
                        transition.mCurrentAnimators.remove(keyAt);
                        runningAnimators.remove(keyAt);
                        if (transition.mCurrentAnimators.size() == 0) {
                            transition.notifyListeners(TransitionNotification.ON_CANCEL, false);
                            if (!transition.mEnded) {
                                transition.mEnded = true;
                                transition.notifyListeners(TransitionNotification.ON_END, false);
                            }
                        }
                    } else if (!keyAt.isRunning() && !keyAt.isStarted()) {
                        runningAnimators.remove(keyAt);
                    } else {
                        keyAt.cancel();
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
        if (this.mSeekController == null) {
            runAnimators();
        } else if (Build.VERSION.SDK_INT >= 34) {
            prepareAnimatorsForSeeking();
            this.mSeekController.initPlayTime();
            this.mSeekController.ready();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(34)
    public void prepareAnimatorsForSeeking() {
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        this.mTotalDuration = 0L;
        for (int i10 = 0; i10 < this.mAnimators.size(); i10++) {
            Animator animator = this.mAnimators.get(i10);
            AnimationInfo animationInfo = runningAnimators.get(animator);
            if (animator != null && animationInfo != null) {
                if (getDuration() >= 0) {
                    animationInfo.mAnimator.setDuration(getDuration());
                }
                if (getStartDelay() >= 0) {
                    animationInfo.mAnimator.setStartDelay(getStartDelay() + animationInfo.mAnimator.getStartDelay());
                }
                if (getInterpolator() != null) {
                    animationInfo.mAnimator.setInterpolator(getInterpolator());
                }
                this.mCurrentAnimators.add(animator);
                this.mTotalDuration = Math.max(this.mTotalDuration, Impl26.getTotalDuration(animator));
            }
        }
        this.mAnimators.clear();
    }

    @NonNull
    public Transition removeListener(@NonNull TransitionListener transitionListener) {
        Transition transition;
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        if (!arrayList.remove(transitionListener) && (transition = this.mCloneParent) != null) {
            transition.removeListener(transitionListener);
        }
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull View view) {
        this.mTargets.remove(view);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(@Nullable View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                int size = this.mCurrentAnimators.size();
                Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
                this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
                for (int i10 = size - 1; i10 >= 0; i10--) {
                    Animator animator = animatorArr[i10];
                    animatorArr[i10] = null;
                    animator.resume();
                }
                this.mAnimatorCache = animatorArr;
                notifyListeners(TransitionNotification.ON_RESUME, false);
            }
            this.mPaused = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        start();
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        Iterator<Animator> it = this.mAnimators.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (runningAnimators.containsKey(next)) {
                start();
                runAnimator(next, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCanRemoveViews(boolean z10) {
        this.mCanRemoveViews = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(34)
    public void setCurrentPlayTimeMillis(long j10, long j11) {
        boolean z10;
        long totalDurationMillis = getTotalDurationMillis();
        int i10 = 0;
        if (j10 < j11) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if ((i11 < 0 && j10 >= 0) || (j11 > totalDurationMillis && j10 <= totalDurationMillis)) {
            this.mEnded = false;
            notifyListeners(TransitionNotification.ON_START, z10);
        }
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int size = this.mCurrentAnimators.size(); i10 < size; size = size) {
            Animator animator = animatorArr[i10];
            animatorArr[i10] = null;
            Impl26.setCurrentPlayTime(animator, Math.min(Math.max(0L, j10), Impl26.getTotalDuration(animator)));
            i10++;
            i11 = i11;
        }
        int i12 = i11;
        this.mAnimatorCache = animatorArr;
        int i13 = (j10 > totalDurationMillis ? 1 : (j10 == totalDurationMillis ? 0 : -1));
        if ((i13 > 0 && j11 <= totalDurationMillis) || (j10 < 0 && i12 >= 0)) {
            if (i13 > 0) {
                this.mEnded = true;
            }
            notifyListeners(TransitionNotification.ON_END, z10);
        }
    }

    @NonNull
    public Transition setDuration(long j10) {
        this.mDuration = j10;
        return this;
    }

    public void setEpicenterCallback(@Nullable EpicenterCallback epicenterCallback) {
        this.mEpicenterCallback = epicenterCallback;
    }

    @NonNull
    public Transition setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void setMatchOrder(@Nullable int... iArr) {
        if (iArr != null && iArr.length != 0) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                if (isValidMatch(iArr[i10])) {
                    if (alreadyContains(iArr, i10)) {
                        throw new IllegalArgumentException("matches contains a duplicate value");
                    }
                } else {
                    throw new IllegalArgumentException("matches contains invalid value");
                }
            }
            this.mMatchOrder = (int[]) iArr.clone();
            return;
        }
        this.mMatchOrder = DEFAULT_MATCH_ORDER;
    }

    public void setPathMotion(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = pathMotion;
        }
    }

    public void setPropagation(@Nullable TransitionPropagation transitionPropagation) {
        this.mPropagation = transitionPropagation;
    }

    @NonNull
    public Transition setStartDelay(long j10) {
        this.mStartDelay = j10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void start() {
        if (this.mNumInstances == 0) {
            notifyListeners(TransitionNotification.ON_START, false);
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    @NonNull
    public String toString() {
        return toString("");
    }

    @NonNull
    public Transition addTarget(@IdRes int i10) {
        if (i10 != 0) {
            this.mTargetIds.add(Integer.valueOf(i10));
        }
        return this;
    }

    @Override // 
    @NonNull
    /* renamed from: clone */
    public Transition mo4465clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.mAnimators = new ArrayList<>();
            transition.mStartValues = new TransitionValuesMaps();
            transition.mEndValues = new TransitionValuesMaps();
            transition.mStartValuesList = null;
            transition.mEndValuesList = null;
            transition.mSeekController = null;
            transition.mCloneParent = this;
            transition.mListeners = null;
            return transition;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public Transition excludeChildren(@IdRes int i10, boolean z10) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i10, z10);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@IdRes int i10, boolean z10) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i10, z10);
        return this;
    }

    @NonNull
    public Transition removeTarget(@IdRes int i10) {
        if (i10 != 0) {
            this.mTargetIds.remove(Integer.valueOf(i10));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String toString(String str) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(getClass().getSimpleName());
        sb2.append("@");
        sb2.append(Integer.toHexString(hashCode()));
        sb2.append(": ");
        if (this.mDuration != -1) {
            sb2.append("dur(");
            sb2.append(this.mDuration);
            sb2.append(") ");
        }
        if (this.mStartDelay != -1) {
            sb2.append("dly(");
            sb2.append(this.mStartDelay);
            sb2.append(") ");
        }
        if (this.mInterpolator != null) {
            sb2.append("interp(");
            sb2.append(this.mInterpolator);
            sb2.append(") ");
        }
        if (this.mTargetIds.size() > 0 || this.mTargets.size() > 0) {
            sb2.append("tgts(");
            if (this.mTargetIds.size() > 0) {
                for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                    if (i10 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(this.mTargetIds.get(i10));
                }
            }
            if (this.mTargets.size() > 0) {
                for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                    if (i11 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(this.mTargets.get(i11));
                }
            }
            sb2.append(")");
        }
        return sb2.toString();
    }

    @NonNull
    public Transition addTarget(@NonNull String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull Class<?> cls, boolean z10) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z10);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z10) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z10);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z10) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z10);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull Class<?> cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    public Transition(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long namedInt = TypedArrayUtils.getNamedInt(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (namedInt >= 0) {
            setDuration(namedInt);
        }
        long namedInt2 = TypedArrayUtils.getNamedInt(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (namedInt2 > 0) {
            setStartDelay(namedInt2);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, namedResourceId));
        }
        String namedString = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (namedString != null) {
            setMatchOrder(parseMatchOrder(namedString));
        }
        obtainStyledAttributes.recycle();
    }
}
