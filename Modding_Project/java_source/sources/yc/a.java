package yc;

import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.viewpager.widget.ViewPager;
import java.util.LinkedList;
import sc.b;
import sc.e;
import vc.i;
/* compiled from: RefreshContentWrapper.java */
/* loaded from: classes6.dex */
public class a implements b, vc.a, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    protected View f70769a;

    /* renamed from: b  reason: collision with root package name */
    protected View f70770b;

    /* renamed from: c  reason: collision with root package name */
    protected View f70771c;

    /* renamed from: d  reason: collision with root package name */
    protected View f70772d;

    /* renamed from: e  reason: collision with root package name */
    protected View f70773e;

    /* renamed from: f  reason: collision with root package name */
    protected int f70774f = 0;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f70775g = true;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f70776h = true;

    /* renamed from: i  reason: collision with root package name */
    protected wc.a f70777i = new wc.a();

    public a(@NonNull View view) {
        this.f70771c = view;
        this.f70770b = view;
        this.f70769a = view;
    }

    @Override // sc.b
    public void a(MotionEvent motionEvent) {
        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
        pointF.offset(-this.f70769a.getLeft(), -this.f70769a.getTop());
        View view = this.f70771c;
        View view2 = this.f70769a;
        if (view != view2) {
            this.f70771c = l(view2, pointF, view);
        }
        if (this.f70771c == this.f70769a) {
            this.f70777i.f69828a = null;
        } else {
            this.f70777i.f69828a = pointF;
        }
    }

    @Override // sc.b
    public void b(boolean z10) {
        this.f70777i.f69830c = z10;
    }

    @Override // sc.b
    public ValueAnimator.AnimatorUpdateListener c(int i10) {
        View view = this.f70771c;
        if (view != null && i10 != 0) {
            if ((i10 < 0 && view.canScrollVertically(1)) || (i10 > 0 && this.f70771c.canScrollVertically(-1))) {
                this.f70774f = i10;
                return this;
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // sc.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(int r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            r2 = 0
            r3 = -1
            if (r7 == r3) goto L21
            android.view.View r4 = r5.f70770b
            android.view.View r7 = r4.findViewById(r7)
            if (r7 == 0) goto L21
            if (r6 <= 0) goto L16
            float r4 = (float) r6
            r7.setTranslationY(r4)
            r7 = r0
            goto L22
        L16:
            float r4 = r7.getTranslationY()
            int r4 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r4 <= 0) goto L21
            r7.setTranslationY(r1)
        L21:
            r7 = r2
        L22:
            if (r8 == r3) goto L3e
            android.view.View r3 = r5.f70770b
            android.view.View r8 = r3.findViewById(r8)
            if (r8 == 0) goto L3e
            if (r6 >= 0) goto L33
            float r7 = (float) r6
            r8.setTranslationY(r7)
            goto L3f
        L33:
            float r0 = r8.getTranslationY()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L3e
            r8.setTranslationY(r1)
        L3e:
            r0 = r7
        L3f:
            if (r0 != 0) goto L48
            android.view.View r7 = r5.f70770b
            float r8 = (float) r6
            r7.setTranslationY(r8)
            goto L4d
        L48:
            android.view.View r7 = r5.f70770b
            r7.setTranslationY(r1)
        L4d:
            android.view.View r7 = r5.f70772d
            if (r7 == 0) goto L59
            int r8 = java.lang.Math.max(r2, r6)
            float r8 = (float) r8
            r7.setTranslationY(r8)
        L59:
            android.view.View r7 = r5.f70773e
            if (r7 == 0) goto L65
            int r6 = java.lang.Math.min(r2, r6)
            float r6 = (float) r6
            r7.setTranslationY(r6)
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: yc.a.d(int, int, int):void");
    }

    @Override // sc.b
    public boolean e() {
        if (this.f70776h && this.f70777i.a(this.f70769a)) {
            return true;
        }
        return false;
    }

    @Override // sc.b
    public void f(e eVar, View view, View view2) {
        k(this.f70769a, eVar);
        if (view != null || view2 != null) {
            this.f70772d = view;
            this.f70773e = view2;
            FrameLayout frameLayout = new FrameLayout(this.f70769a.getContext());
            int indexOfChild = eVar.d().getLayout().indexOfChild(this.f70769a);
            eVar.d().getLayout().removeView(this.f70769a);
            frameLayout.addView(this.f70769a, 0, new ViewGroup.LayoutParams(-1, -1));
            eVar.d().getLayout().addView(frameLayout, indexOfChild, this.f70769a.getLayoutParams());
            this.f70769a = frameLayout;
            if (view != null) {
                view.setTag(uc.a.f68349a, "fixed-top");
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                int indexOfChild2 = viewGroup.indexOfChild(view);
                viewGroup.removeView(view);
                layoutParams.height = xc.b.h(view);
                viewGroup.addView(new Space(this.f70769a.getContext()), indexOfChild2, layoutParams);
                frameLayout.addView(view, 1, layoutParams);
            }
            if (view2 != null) {
                view2.setTag(uc.a.f68349a, "fixed-bottom");
                ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                ViewGroup viewGroup2 = (ViewGroup) view2.getParent();
                int indexOfChild3 = viewGroup2.indexOfChild(view2);
                viewGroup2.removeView(view2);
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(layoutParams2);
                layoutParams2.height = xc.b.h(view2);
                viewGroup2.addView(new Space(this.f70769a.getContext()), indexOfChild3, layoutParams2);
                layoutParams3.gravity = 80;
                frameLayout.addView(view2, 1, layoutParams3);
            }
        }
    }

    @Override // sc.b
    public void g(i iVar) {
        if (iVar instanceof wc.a) {
            this.f70777i = (wc.a) iVar;
        } else {
            this.f70777i.f69829b = iVar;
        }
    }

    @Override // sc.b
    @NonNull
    public View getView() {
        return this.f70769a;
    }

    @Override // sc.b
    @NonNull
    public View h() {
        return this.f70771c;
    }

    @Override // sc.b
    public boolean i() {
        if (this.f70775g && this.f70777i.b(this.f70769a)) {
            return true;
        }
        return false;
    }

    @Override // vc.a
    public void j(boolean z10, boolean z11) {
        this.f70775g = z10;
        this.f70776h = z11;
    }

    protected void k(View view, e eVar) {
        boolean z10;
        boolean isInEditMode = this.f70769a.isInEditMode();
        View view2 = null;
        while (true) {
            if (view2 != null && (!(view2 instanceof NestedScrollingParent) || (view2 instanceof NestedScrollingChild))) {
                break;
            }
            if (view2 == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            view = m(view, z10);
            if (view == view2) {
                break;
            }
            if (!isInEditMode) {
                xc.a.a(view, eVar, this);
            }
            view2 = view;
        }
        if (view2 != null) {
            this.f70771c = view2;
        }
    }

    protected View l(View view, PointF pointF, View view2) {
        if ((view instanceof ViewGroup) && pointF != null) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (xc.b.g(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if ((childAt instanceof ViewPager) || !xc.b.e(childAt)) {
                        pointF.offset(pointF2.x, pointF2.y);
                        View l10 = l(childAt, pointF, view2);
                        pointF.offset(-pointF2.x, -pointF2.y);
                        return l10;
                    }
                    return childAt;
                }
            }
        }
        return view2;
    }

    protected View m(View view, boolean z10) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(view);
        View view2 = null;
        while (linkedList.size() > 0 && view2 == null) {
            View view3 = (View) linkedList.poll();
            if (view3 != null) {
                if ((z10 || view3 != view) && xc.b.e(view3)) {
                    view2 = view3;
                } else if (view3 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view3;
                    for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                        linkedList.add(viewGroup.getChildAt(i10));
                    }
                }
            }
        }
        if (view2 != null) {
            return view2;
        }
        return view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        try {
            float scaleY = (intValue - this.f70774f) * this.f70771c.getScaleY();
            View view = this.f70771c;
            if (view instanceof AbsListView) {
                xc.b.j((AbsListView) view, (int) scaleY);
            } else {
                view.scrollBy(0, (int) scaleY);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        this.f70774f = intValue;
    }
}
