package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ViewTransitionController {
    ArrayList<ViewTransition.Animate> mAnimations;
    private final MotionLayout mMotionLayout;
    private HashSet<View> mRelatedViews;
    private ArrayList<ViewTransition> mViewTransitions = new ArrayList<>();
    private String mTAG = "ViewTransitionController";
    ArrayList<ViewTransition.Animate> mRemoveList = new ArrayList<>();

    public ViewTransitionController(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }

    private void listenForSharedVariable(final ViewTransition viewTransition, final boolean z10) {
        final int sharedValueID = viewTransition.getSharedValueID();
        final int sharedValue = viewTransition.getSharedValue();
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new SharedValues.SharedValuesListener() { // from class: androidx.constraintlayout.motion.widget.ViewTransitionController.1
            @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
            public void onNewValue(int i10, int i11, int i12) {
                int sharedValueCurrent = viewTransition.getSharedValueCurrent();
                viewTransition.setSharedValueCurrent(i11);
                if (sharedValueID == i10 && sharedValueCurrent != i11) {
                    int i13 = 0;
                    if (z10) {
                        if (sharedValue == i11) {
                            int childCount = ViewTransitionController.this.mMotionLayout.getChildCount();
                            while (i13 < childCount) {
                                View childAt = ViewTransitionController.this.mMotionLayout.getChildAt(i13);
                                if (viewTransition.matchesView(childAt)) {
                                    int currentState = ViewTransitionController.this.mMotionLayout.getCurrentState();
                                    ConstraintSet constraintSet = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState);
                                    ViewTransition viewTransition2 = viewTransition;
                                    ViewTransitionController viewTransitionController = ViewTransitionController.this;
                                    viewTransition2.applyTransition(viewTransitionController, viewTransitionController.mMotionLayout, currentState, constraintSet, childAt);
                                }
                                i13++;
                            }
                        }
                    } else if (sharedValue != i11) {
                        int childCount2 = ViewTransitionController.this.mMotionLayout.getChildCount();
                        while (i13 < childCount2) {
                            View childAt2 = ViewTransitionController.this.mMotionLayout.getChildAt(i13);
                            if (viewTransition.matchesView(childAt2)) {
                                int currentState2 = ViewTransitionController.this.mMotionLayout.getCurrentState();
                                ConstraintSet constraintSet2 = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState2);
                                ViewTransition viewTransition3 = viewTransition;
                                ViewTransitionController viewTransitionController2 = ViewTransitionController.this;
                                viewTransition3.applyTransition(viewTransitionController2, viewTransitionController2.mMotionLayout, currentState2, constraintSet2, childAt2);
                            }
                            i13++;
                        }
                    }
                }
            }
        });
    }

    private void viewTransition(ViewTransition viewTransition, View... viewArr) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (viewTransition.mViewTransitionMode == 2) {
            viewTransition.applyTransition(this, this.mMotionLayout, currentState, null, viewArr);
        } else if (currentState == -1) {
            String str = this.mTAG;
            Log.w(str, "No support for ViewTransition within transition yet. Currently: " + this.mMotionLayout.toString());
        } else {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            if (constraintSet == null) {
                return;
            }
            viewTransition.applyTransition(this, this.mMotionLayout, currentState, constraintSet, viewArr);
        }
    }

    public void add(ViewTransition viewTransition) {
        this.mViewTransitions.add(viewTransition);
        this.mRelatedViews = null;
        if (viewTransition.getStateTransition() == 4) {
            listenForSharedVariable(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            listenForSharedVariable(viewTransition, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAnimation(ViewTransition.Animate animate) {
        if (this.mAnimations == null) {
            this.mAnimations = new ArrayList<>();
        }
        this.mAnimations.add(animate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void animate() {
        ArrayList<ViewTransition.Animate> arrayList = this.mAnimations;
        if (arrayList == null) {
            return;
        }
        Iterator<ViewTransition.Animate> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().mutate();
        }
        this.mAnimations.removeAll(this.mRemoveList);
        this.mRemoveList.clear();
        if (this.mAnimations.isEmpty()) {
            this.mAnimations = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean applyViewTransition(int i10, MotionController motionController) {
        Iterator<ViewTransition> it = this.mViewTransitions.iterator();
        while (it.hasNext()) {
            ViewTransition next = it.next();
            if (next.getId() == i10) {
                next.mKeyFrames.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableViewTransition(int i10, boolean z10) {
        Iterator<ViewTransition> it = this.mViewTransitions.iterator();
        while (it.hasNext()) {
            ViewTransition next = it.next();
            if (next.getId() == i10) {
                next.setEnabled(z10);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidate() {
        this.mMotionLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isViewTransitionEnabled(int i10) {
        Iterator<ViewTransition> it = this.mViewTransitions.iterator();
        while (it.hasNext()) {
            ViewTransition next = it.next();
            if (next.getId() == i10) {
                return next.isEnabled();
            }
        }
        return false;
    }

    void remove(int i10) {
        ViewTransition viewTransition;
        Iterator<ViewTransition> it = this.mViewTransitions.iterator();
        while (true) {
            if (it.hasNext()) {
                viewTransition = it.next();
                if (viewTransition.getId() == i10) {
                    break;
                }
            } else {
                viewTransition = null;
                break;
            }
        }
        if (viewTransition != null) {
            this.mRelatedViews = null;
            this.mViewTransitions.remove(viewTransition);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAnimation(ViewTransition.Animate animate) {
        this.mRemoveList.add(animate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void touchEvent(MotionEvent motionEvent) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.mRelatedViews == null) {
            this.mRelatedViews = new HashSet<>();
            Iterator<ViewTransition> it = this.mViewTransitions.iterator();
            while (it.hasNext()) {
                ViewTransition next = it.next();
                int childCount = this.mMotionLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = this.mMotionLayout.getChildAt(i10);
                    if (next.matchesView(childAt)) {
                        childAt.getId();
                        this.mRelatedViews.add(childAt);
                    }
                }
            }
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList<ViewTransition.Animate> arrayList = this.mAnimations;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ViewTransition.Animate> it2 = this.mAnimations.iterator();
            while (it2.hasNext()) {
                it2.next().reactTo(action, x10, y10);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            Iterator<ViewTransition> it3 = this.mViewTransitions.iterator();
            while (it3.hasNext()) {
                ViewTransition next2 = it3.next();
                if (next2.supports(action)) {
                    Iterator<View> it4 = this.mRelatedViews.iterator();
                    while (it4.hasNext()) {
                        View next3 = it4.next();
                        if (next2.matchesView(next3)) {
                            next3.getHitRect(rect);
                            if (rect.contains((int) x10, (int) y10)) {
                                next2.applyTransition(this, this.mMotionLayout, currentState, constraintSet, next3);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void viewTransition(int i10, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        Iterator<ViewTransition> it = this.mViewTransitions.iterator();
        ViewTransition viewTransition = null;
        while (it.hasNext()) {
            ViewTransition next = it.next();
            if (next.getId() == i10) {
                for (View view : viewArr) {
                    if (next.checkTags(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    viewTransition(next, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                viewTransition = next;
            }
        }
        if (viewTransition == null) {
            Log.e(this.mTAG, " Could not find ViewTransition");
        }
    }
}
