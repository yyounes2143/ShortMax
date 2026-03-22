package com.mbridge.msdk.video.dynview.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.mbridge.msdk.foundation.tools.u0;
import java.util.List;
import java.util.Map;
/* compiled from: MBridgeUIAnim.java */
/* loaded from: classes6.dex */
public class b {

    /* compiled from: MBridgeUIAnim.java */
    /* renamed from: com.mbridge.msdk.video.dynview.ui.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class C0445b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f30794a;

        C0445b(List list) {
            this.f30794a = list;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            List list = this.f30794a;
            if (list != null && list.size() > 0) {
                for (View view : this.f30794a) {
                    if (view != null) {
                        view.setPadding(0, 0, 0, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                        view.requestLayout();
                    }
                }
            }
        }
    }

    /* compiled from: MBridgeUIAnim.java */
    /* loaded from: classes6.dex */
    class c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f30796a;

        c(View view) {
            this.f30796a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = this.f30796a;
            if (view != null) {
                view.getLayoutParams().width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                this.f30796a.requestLayout();
            }
        }
    }

    /* compiled from: MBridgeUIAnim.java */
    /* loaded from: classes6.dex */
    class d implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f30798a;

        d(View view) {
            this.f30798a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = this.f30798a;
            if (view != null) {
                view.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                this.f30798a.requestLayout();
                if (this.f30798a.getVisibility() != 0) {
                    this.f30798a.setVisibility(0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBridgeUIAnim.java */
    /* loaded from: classes6.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f30800a;

        e(View view) {
            this.f30800a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ViewGroup.LayoutParams layoutParams = this.f30800a.getLayoutParams();
            layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            this.f30800a.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBridgeUIAnim.java */
    /* loaded from: classes6.dex */
    public class f implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f30802a;

        f(View view) {
            this.f30802a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f30802a.setScaleX(((Float) valueAnimator.getAnimatedValue()).floatValue());
            this.f30802a.setScaleY(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public void a(Map<String, Bitmap> map, com.mbridge.msdk.video.dynview.c cVar, View view) {
        if (view != null) {
            com.mbridge.msdk.video.dynview.util.draw.a.a().a(map, cVar, view);
        }
    }

    public ObjectAnimator b(View view) {
        ObjectAnimator a10 = a(view, 1.0f, 1.0f, 5.0f, 2000L);
        a10.setRepeatCount(-1);
        return a10;
    }

    public ObjectAnimator c(View view) {
        ObjectAnimator a10 = a(view, 1.0f, 1.0f, 2000L);
        a10.setRepeatCount(-1);
        return a10;
    }

    public ObjectAnimator a(View view) {
        ObjectAnimator a10 = a(view, 2.0f, 1000L);
        a10.setRepeatCount(-1);
        return a10;
    }

    public void b(View view, long j10) {
        if (view != null) {
            view.setAlpha(1.0f);
            view.animate().alpha(0.0f).setDuration(j10).setListener(new a(view));
        }
    }

    public void c(View view, long j10) {
        if (view == null) {
            return;
        }
        a(view, 0, u0.g(view.getContext().getApplicationContext()), j10);
    }

    public void a(View view, long j10) {
        if (view != null) {
            view.setVisibility(0);
            view.setAlpha(0.0f);
            view.animate().alpha(1.0f).setDuration(j10);
        }
    }

    private PropertyValuesHolder b(Property property, float f10) {
        float f11 = f10 - 0.2f;
        float f12 = f10 + 0.3f;
        return PropertyValuesHolder.ofKeyframe(property, Keyframe.ofFloat(0.0f, f10), Keyframe.ofFloat(0.1f, f10 - 0.4f), Keyframe.ofFloat(0.2f, f11), Keyframe.ofFloat(0.3f, f12), Keyframe.ofFloat(0.4f, f11), Keyframe.ofFloat(0.5f, f12), Keyframe.ofFloat(0.6f, f10 - 0.1f), Keyframe.ofFloat(0.7f, f12), Keyframe.ofFloat(0.8f, f10), Keyframe.ofFloat(0.9f, 0.1f + f10), Keyframe.ofFloat(1.0f, f10));
    }

    private PropertyValuesHolder c(Property property, float f10) {
        float f11 = (-2.0f) * f10;
        float f12 = f10 * 2.0f;
        return PropertyValuesHolder.ofKeyframe(property, Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.1f, f11), Keyframe.ofFloat(0.2f, f11), Keyframe.ofFloat(0.3f, f12), Keyframe.ofFloat(0.4f, f11), Keyframe.ofFloat(0.5f, f12), Keyframe.ofFloat(0.6f, f11), Keyframe.ofFloat(0.7f, f12), Keyframe.ofFloat(0.8f, f11), Keyframe.ofFloat(0.9f, f12), Keyframe.ofFloat(1.0f, 0.0f));
    }

    public void a(List<View> list, int i10, int i11, long j10) {
        ValueAnimator duration = ValueAnimator.ofInt(i10, i11).setDuration(j10);
        duration.addUpdateListener(new C0445b(list));
        duration.start();
    }

    public void a(View view, int i10, int i11, int i12, int i13, long j10) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i10, i11);
        ofInt.addUpdateListener(new c(view));
        ValueAnimator ofInt2 = ValueAnimator.ofInt(i12, i13);
        ofInt2.addUpdateListener(new d(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofInt, ofInt2);
        animatorSet.setDuration(j10);
        animatorSet.start();
    }

    private ObjectAnimator a(View view, float f10, float f11, float f12, long j10) {
        return ObjectAnimator.ofPropertyValuesHolder(view, b(View.SCALE_X, f10), b(View.SCALE_Y, f11), c(View.ROTATION_X, f12)).setDuration(j10);
    }

    private void a(View view, int i10, int i11, long j10) {
        ValueAnimator ofInt;
        ValueAnimator ofFloat;
        if (view.getLayoutParams().width == 0) {
            ofInt = ValueAnimator.ofInt(i10, i11);
        } else {
            ofInt = ValueAnimator.ofInt(i11, i10);
        }
        ofInt.setDuration(j10);
        ofInt.addUpdateListener(new e(view));
        if (view.getLayoutParams().width == 0) {
            ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        } else {
            ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        }
        ofFloat.setDuration(j10);
        ofFloat.addUpdateListener(new f(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofInt, ofFloat);
        animatorSet.start();
    }

    /* compiled from: MBridgeUIAnim.java */
    /* loaded from: classes6.dex */
    class a implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f30792a;

        a(View view) {
            this.f30792a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            View view = this.f30792a;
            if (view != null && (view instanceof ViewGroup)) {
                ((ViewGroup) view).removeAllViews();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f30792a;
            if (view != null && (view instanceof ViewGroup)) {
                ((ViewGroup) view).removeAllViews();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    private ObjectAnimator a(View view, float f10, float f11, long j10) {
        return ObjectAnimator.ofPropertyValuesHolder(view, a(View.SCALE_X, f10), a(View.SCALE_Y, f11)).setDuration(j10);
    }

    public ObjectAnimator a(View view, float f10, long j10) {
        return ObjectAnimator.ofPropertyValuesHolder(view, c(View.ROTATION, f10)).setDuration(j10);
    }

    private PropertyValuesHolder a(Property property, float f10) {
        float f11 = f10 - 0.4f;
        return PropertyValuesHolder.ofKeyframe(property, Keyframe.ofFloat(0.0f, f10), Keyframe.ofFloat(0.1f, f11), Keyframe.ofFloat(0.2f, f11), Keyframe.ofFloat(0.3f, f10), Keyframe.ofFloat(0.4f, f10), Keyframe.ofFloat(0.5f, f10), Keyframe.ofFloat(0.6f, f10), Keyframe.ofFloat(0.7f, f10), Keyframe.ofFloat(0.8f, f10), Keyframe.ofFloat(0.9f, f10), Keyframe.ofFloat(1.0f, f10));
    }
}
