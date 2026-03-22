package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import java.util.Map;
/* loaded from: classes2.dex */
public class ChangeBounds extends Transition {
    private boolean mResizeClip;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.1
        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.setTopLeft(pointF);
        }
    };
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.2
        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.setBottomRight(pointF);
        }
    };
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.3
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            ViewUtils.setLeftTopRightBottom(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.4
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            ViewUtils.setLeftTopRightBottom(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };
    private static final Property<View, PointF> POSITION_PROPERTY = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.transition.ChangeBounds.5
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            ViewUtils.setLeftTopRightBottom(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    };
    private static final RectEvaluator sRectEvaluator = new RectEvaluator();

    /* loaded from: classes2.dex */
    private static class ClipListener extends AnimatorListenerAdapter implements Transition.TransitionListener {
        private final int mEndBottom;
        private final Rect mEndClip;
        private final boolean mEndClipIsNull;
        private final int mEndLeft;
        private final int mEndRight;
        private final int mEndTop;
        private boolean mIsCanceled;
        private final int mStartBottom;
        private final Rect mStartClip;
        private final boolean mStartClipIsNull;
        private final int mStartLeft;
        private final int mStartRight;
        private final int mStartTop;
        private final View mView;

        ClipListener(View view, Rect rect, boolean z10, Rect rect2, boolean z11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.mView = view;
            this.mStartClip = rect;
            this.mStartClipIsNull = z10;
            this.mEndClip = rect2;
            this.mEndClipIsNull = z11;
            this.mStartLeft = i10;
            this.mStartTop = i11;
            this.mStartRight = i12;
            this.mStartBottom = i13;
            this.mEndLeft = i14;
            this.mEndTop = i15;
            this.mEndRight = i16;
            this.mEndBottom = i17;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            this.mIsCanceled = true;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            Rect rect;
            this.mView.setTag(R.id.transition_clip, this.mView.getClipBounds());
            if (this.mEndClipIsNull) {
                rect = null;
            } else {
                rect = this.mEndClip;
            }
            this.mView.setClipBounds(rect);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.mView.setTag(R.id.transition_clip, null);
            this.mView.setClipBounds((Rect) this.mView.getTag(R.id.transition_clip));
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (this.mIsCanceled) {
                return;
            }
            Rect rect = null;
            if (z10) {
                if (!this.mStartClipIsNull) {
                    rect = this.mStartClip;
                }
            } else if (!this.mEndClipIsNull) {
                rect = this.mEndClip;
            }
            this.mView.setClipBounds(rect);
            if (z10) {
                ViewUtils.setLeftTopRightBottom(this.mView, this.mStartLeft, this.mStartTop, this.mStartRight, this.mStartBottom);
            } else {
                ViewUtils.setLeftTopRightBottom(this.mView, this.mEndLeft, this.mEndTop, this.mEndRight, this.mEndBottom);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z10) {
            int max = Math.max(this.mStartRight - this.mStartLeft, this.mEndRight - this.mEndLeft);
            int max2 = Math.max(this.mStartBottom - this.mStartTop, this.mEndBottom - this.mEndTop);
            int i10 = z10 ? this.mEndLeft : this.mStartLeft;
            int i11 = z10 ? this.mEndTop : this.mStartTop;
            ViewUtils.setLeftTopRightBottom(this.mView, i10, i11, max + i10, max2 + i11);
            this.mView.setClipBounds(z10 ? this.mEndClip : this.mStartClip);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }
    }

    /* loaded from: classes2.dex */
    private static class SuppressLayoutListener extends TransitionListenerAdapter {
        boolean mCanceled = false;
        final ViewGroup mParent;

        SuppressLayoutListener(@NonNull ViewGroup viewGroup) {
            this.mParent = viewGroup;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            ViewGroupUtils.suppressLayout(this.mParent, false);
            this.mCanceled = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            if (!this.mCanceled) {
                ViewGroupUtils.suppressLayout(this.mParent, false);
            }
            transition.removeListener(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            ViewGroupUtils.suppressLayout(this.mParent, false);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            ViewGroupUtils.suppressLayout(this.mParent, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private final View mView;

        ViewBounds(View view) {
            this.mView = view;
        }

        private void setLeftTopRightBottom() {
            ViewUtils.setLeftTopRightBottom(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }

        void setBottomRight(PointF pointF) {
            this.mRight = Math.round(pointF.x);
            this.mBottom = Math.round(pointF.y);
            int i10 = this.mBottomRightCalls + 1;
            this.mBottomRightCalls = i10;
            if (this.mTopLeftCalls == i10) {
                setLeftTopRightBottom();
            }
        }

        void setTopLeft(PointF pointF) {
            this.mLeft = Math.round(pointF.x);
            this.mTop = Math.round(pointF.y);
            int i10 = this.mTopLeftCalls + 1;
            this.mTopLeftCalls = i10;
            if (i10 == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }
    }

    public ChangeBounds() {
        this.mResizeClip = false;
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.isLaidOut() || view.getWidth() != 0 || view.getHeight() != 0) {
            transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
            if (this.mResizeClip) {
                transitionValues.values.put(PROPNAME_CLIP, view.getClipBounds());
            }
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        Rect rect;
        captureValues(transitionValues);
        if (this.mResizeClip && (rect = (Rect) transitionValues.view.getTag(R.id.transition_clip)) != null) {
            transitionValues.values.put(PROPNAME_CLIP, rect);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i10;
        View view;
        int i11;
        int i12;
        int i13;
        ObjectAnimator ofPointF;
        boolean z10;
        int i14;
        int i15;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator mergeAnimators;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(PROPNAME_PARENT);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(PROPNAME_PARENT);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = transitionValues2.view;
        Rect rect2 = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
        Rect rect3 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
        int i16 = rect2.left;
        int i17 = rect3.left;
        int i18 = rect2.top;
        int i19 = rect3.top;
        int i20 = rect2.right;
        int i21 = rect3.right;
        int i22 = rect2.bottom;
        int i23 = rect3.bottom;
        int i24 = i20 - i16;
        int i25 = i22 - i18;
        int i26 = i21 - i17;
        int i27 = i23 - i19;
        Rect rect4 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
        Rect rect5 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
        if ((i24 != 0 && i25 != 0) || (i26 != 0 && i27 != 0)) {
            if (i16 == i17 && i18 == i19) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            if (i20 != i21 || i22 != i23) {
                i10++;
            }
        } else {
            i10 = 0;
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i10++;
        }
        if (i10 > 0) {
            if (!this.mResizeClip) {
                view = view2;
                ViewUtils.setLeftTopRightBottom(view, i16, i18, i20, i22);
                if (i10 == 2) {
                    if (i24 == i26 && i25 == i27) {
                        mergeAnimators = ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i16, i18, i17, i19));
                    } else {
                        ViewBounds viewBounds = new ViewBounds(view);
                        ObjectAnimator ofPointF2 = ObjectAnimatorUtils.ofPointF(viewBounds, TOP_LEFT_PROPERTY, getPathMotion().getPath(i16, i18, i17, i19));
                        ObjectAnimator ofPointF3 = ObjectAnimatorUtils.ofPointF(viewBounds, BOTTOM_RIGHT_PROPERTY, getPathMotion().getPath(i20, i22, i21, i23));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(ofPointF2, ofPointF3);
                        animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: androidx.transition.ChangeBounds.6
                            private final ViewBounds mViewBounds;
                            final /* synthetic */ ViewBounds val$viewBounds;

                            {
                                this.val$viewBounds = viewBounds;
                                this.mViewBounds = viewBounds;
                            }
                        });
                        mergeAnimators = animatorSet;
                    }
                } else if (i16 == i17 && i18 == i19) {
                    mergeAnimators = ObjectAnimatorUtils.ofPointF(view, BOTTOM_RIGHT_ONLY_PROPERTY, getPathMotion().getPath(i20, i22, i21, i23));
                } else {
                    mergeAnimators = ObjectAnimatorUtils.ofPointF(view, TOP_LEFT_ONLY_PROPERTY, getPathMotion().getPath(i16, i18, i17, i19));
                }
            } else {
                view = view2;
                ViewUtils.setLeftTopRightBottom(view, i16, i18, Math.max(i24, i26) + i16, i18 + Math.max(i25, i27));
                if (i16 == i17 && i18 == i19) {
                    i11 = i21;
                    i12 = i20;
                    i13 = i18;
                    ofPointF = null;
                } else {
                    i11 = i21;
                    i12 = i20;
                    i13 = i18;
                    ofPointF = ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i16, i18, i17, i19));
                }
                if (rect4 == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    i14 = 0;
                    rect4 = new Rect(0, 0, i24, i25);
                } else {
                    i14 = 0;
                }
                Rect rect6 = rect4;
                if (rect5 == null) {
                    i15 = 1;
                } else {
                    i15 = i14;
                }
                if (i15 != 0) {
                    rect = new Rect(i14, i14, i26, i27);
                } else {
                    rect = rect5;
                }
                if (!rect6.equals(rect)) {
                    view.setClipBounds(rect6);
                    objectAnimator = ObjectAnimator.ofObject(view, "clipBounds", sRectEvaluator, rect6, rect);
                    Rect rect7 = rect;
                    boolean z11 = i15;
                    ClipListener clipListener = new ClipListener(view, rect6, z10, rect7, z11, i16, i13, i12, i22, i17, i19, i11, i23);
                    objectAnimator.addListener(clipListener);
                    addListener(clipListener);
                } else {
                    objectAnimator = null;
                }
                mergeAnimators = TransitionUtils.mergeAnimators(ofPointF, objectAnimator);
            }
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                ViewGroupUtils.suppressLayout(viewGroup4, true);
                getRootTransition().addListener(new SuppressLayoutListener(viewGroup4));
            }
            return mergeAnimators;
        }
        return null;
    }

    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    public void setResizeClip(boolean z10) {
        this.mResizeClip = z10;
    }

    public ChangeBounds(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mResizeClip = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_BOUNDS);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }
}
