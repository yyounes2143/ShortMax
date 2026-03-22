package com.startshorts.androidplayer.ui.view.banner;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.utils.scroll.NestedScrollableHost;
import fk.v;
import java.util.Collections;
import java.util.List;
/* loaded from: classes7.dex */
public class BannerViewPager<T> extends RelativeLayout implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private int f47042a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f47043b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f47044c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager2 f47045d;

    /* renamed from: e  reason: collision with root package name */
    private dj.a f47046e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f47047f;

    /* renamed from: g  reason: collision with root package name */
    private BaseBannerAdapter<T> f47048g;

    /* renamed from: h  reason: collision with root package name */
    private b f47049h;

    /* renamed from: i  reason: collision with root package name */
    private final Runnable f47050i;

    /* renamed from: j  reason: collision with root package name */
    private RectF f47051j;

    /* renamed from: k  reason: collision with root package name */
    private Path f47052k;

    /* renamed from: l  reason: collision with root package name */
    private int f47053l;

    /* renamed from: m  reason: collision with root package name */
    private int f47054m;

    /* renamed from: n  reason: collision with root package name */
    private Lifecycle f47055n;

    /* renamed from: o  reason: collision with root package name */
    private int f47056o;

    /* renamed from: p  reason: collision with root package name */
    private int f47057p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f47058q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f47059r;

    /* renamed from: s  reason: collision with root package name */
    private NestedScrollableHost f47060s;

    /* renamed from: t  reason: collision with root package name */
    private final ViewPager2.OnPageChangeCallback f47061t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f47062u;

    /* loaded from: classes7.dex */
    class a extends ViewPager2.OnPageChangeCallback {
        a() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i10) {
            super.onPageScrollStateChanged(i10);
            BannerViewPager.this.v(i10);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i10, float f10, int i11) {
            super.onPageScrolled(i10, f10, i11);
            BannerViewPager.this.w(i10, f10, i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            BannerViewPager.this.x(i10);
        }
    }

    /* loaded from: classes7.dex */
    public interface c {
        void a(View view, int i10);
    }

    public BannerViewPager(Context context) {
        this(context, null);
    }

    private void C(int i10) {
        if (q() && this.f47058q) {
            this.f47045d.setCurrentItem(fj.a.b(this.f47048g.f()) + i10, false);
        } else {
            this.f47045d.setCurrentItem(i10, false);
        }
    }

    private void H() {
        NestedScrollableHost nestedScrollableHost = this.f47060s;
        if (nestedScrollableHost != null) {
            nestedScrollableHost.setRequestDisallowInterceptTouchEventForTrue();
        }
    }

    private int getInterval() {
        return this.f47046e.c().a();
    }

    private NestedScrollableHost h() {
        View view;
        if (getParent() instanceof View) {
            view = (View) getParent();
        } else {
            view = null;
        }
        NestedScrollableHost nestedScrollableHost = null;
        while (view != null) {
            if (view instanceof NestedScrollableHost) {
                nestedScrollableHost = (NestedScrollableHost) view;
            }
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
            } else {
                view = null;
            }
        }
        return nestedScrollableHost;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        BaseBannerAdapter<T> baseBannerAdapter = this.f47048g;
        if (baseBannerAdapter != null && baseBannerAdapter.f() > 1 && p()) {
            ViewPager2 viewPager2 = this.f47045d;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1, this.f47046e.c().m());
            this.f47047f.postDelayed(this.f47050i, getInterval());
        }
    }

    private void j(Context context, AttributeSet attributeSet) {
        dj.a aVar = new dj.a();
        this.f47046e = aVar;
        aVar.e(context, attributeSet);
        o();
    }

    private void k() {
        List<T> d10 = this.f47048g.d();
        if (d10 != null) {
            setupViewPager(d10);
            n();
        }
    }

    private void l(int i10) {
        float f10 = this.f47046e.c().f();
        if (i10 == 4) {
            this.f47046e.h(true, f10);
        } else if (i10 == 8) {
            this.f47046e.h(false, f10);
        }
    }

    private void m() {
        dj.b c10 = this.f47046e.c();
        z(c10, c10.b(), c10.h());
        this.f47046e.b();
    }

    private void n() {
        int i10 = this.f47046e.c().i();
        if (i10 > 0) {
            ej.b.a(this, i10);
        }
    }

    private void o() {
        View.inflate(getContext(), R$layout.bvp_layout, this);
        ViewPager2 viewPager2 = (ViewPager2) findViewById(R$id.vp_main);
        this.f47045d = viewPager2;
        viewPager2.setPageTransformer(this.f47046e.d());
    }

    private boolean p() {
        return this.f47046e.c().l();
    }

    private boolean q() {
        BaseBannerAdapter<T> baseBannerAdapter;
        dj.a aVar = this.f47046e;
        if (aVar != null && aVar.c() != null && this.f47046e.c().n() && (baseBannerAdapter = this.f47048g) != null && baseBannerAdapter.f() > 1) {
            return true;
        }
        return false;
    }

    private boolean r() {
        return this.f47046e.c().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(c cVar, boolean z10, View view, int i10, int i11) {
        cVar.a(view, i10);
        if (z10) {
            this.f47045d.setCurrentItem(i11);
        }
    }

    private void setupViewPager(List<T> list) {
        if (this.f47048g != null) {
            dj.b c10 = this.f47046e.c();
            if (c10.k() != 0) {
                ej.a.a(this.f47045d, c10.k());
            }
            this.f47042a = 0;
            this.f47048g.k(c10.n());
            this.f47045d.setAdapter(this.f47048g);
            if (q()) {
                this.f47045d.setCurrentItem(fj.a.b(list.size()), false);
            }
            this.f47045d.unregisterOnPageChangeCallback(this.f47061t);
            this.f47045d.registerOnPageChangeCallback(this.f47061t);
            this.f47045d.setOrientation(c10.d());
            this.f47045d.setOffscreenPageLimit(c10.c());
            m();
            l(c10.g());
            T();
            return;
        }
        throw new NullPointerException("You must set adapter for BannerViewPager");
    }

    private void t(int i10, int i11, int i12) {
        int i13;
        boolean z10 = false;
        if (i11 > i12) {
            if (!this.f47046e.c().n()) {
                if (v.f51778a.b()) {
                    i13 = this.f47053l - i10;
                } else {
                    i13 = i10 - this.f47053l;
                }
                int i14 = this.f47042a;
                if (i14 == 0 && i13 > 0) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                    H();
                    return;
                }
                if (i14 != getData().size() - 1 || i13 >= 0) {
                    z10 = true;
                }
                getParent().requestDisallowInterceptTouchEvent(z10);
                if (!z10) {
                    H();
                    return;
                }
                return;
            }
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (i12 > i11) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
    }

    private void u(int i10, int i11, int i12) {
        boolean z10 = false;
        if (i12 > i11) {
            if (!this.f47046e.c().n()) {
                int i13 = this.f47042a;
                if (i13 == 0 && i10 - this.f47054m > 0) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                    H();
                    return;
                }
                if (i13 != getData().size() - 1 || i10 - this.f47054m >= 0) {
                    z10 = true;
                }
                getParent().requestDisallowInterceptTouchEvent(z10);
                if (!z10) {
                    H();
                    return;
                }
                return;
            }
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (i11 > i12) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i10) {
        if (i10 == 1) {
            this.f47062u = true;
        } else if (i10 == 0) {
            this.f47062u = false;
        }
        b bVar = this.f47049h;
        if (bVar != null) {
            bVar.b(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(int i10, float f10, int i11) {
        int f11 = this.f47048g.f();
        this.f47046e.c().n();
        fj.a.c(i10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(int i10) {
        int f10 = this.f47048g.f();
        boolean n10 = this.f47046e.c().n();
        int c10 = fj.a.c(i10, f10);
        this.f47042a = c10;
        if (f10 > 0 && n10 && (i10 == 0 || i10 == 999)) {
            C(c10);
        }
        b bVar = this.f47049h;
        if (bVar != null) {
            bVar.a(this.f47062u, this.f47042a, i10);
        }
    }

    public BannerViewPager<T> A(Lifecycle lifecycle) {
        lifecycle.addObserver(this);
        this.f47055n = lifecycle;
        return this;
    }

    public BannerViewPager<T> B(b bVar) {
        this.f47049h = bVar;
        return this;
    }

    public BannerViewPager<T> D(BaseBannerAdapter<T> baseBannerAdapter) {
        this.f47048g = baseBannerAdapter;
        return this;
    }

    public BannerViewPager<T> E(boolean z10) {
        this.f47046e.c().q(z10);
        if (p()) {
            this.f47046e.c().r(true);
        }
        return this;
    }

    public BannerViewPager<T> F(boolean z10) {
        this.f47046e.c().r(z10);
        if (!z10) {
            this.f47046e.c().q(false);
        }
        return this;
    }

    public BannerViewPager<T> G(int i10) {
        this.f47046e.c().s(i10);
        return this;
    }

    public BannerViewPager<T> I(int i10) {
        this.f47046e.c().u(i10);
        return this;
    }

    public BannerViewPager<T> J(c cVar) {
        K(cVar, false);
        return this;
    }

    public BannerViewPager<T> K(final c cVar, final boolean z10) {
        BaseBannerAdapter<T> baseBannerAdapter = this.f47048g;
        if (baseBannerAdapter != null) {
            baseBannerAdapter.m(new BaseBannerAdapter.a() { // from class: com.startshorts.androidplayer.ui.view.banner.a
                @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter.a
                public final void a(View view, int i10, int i11) {
                    BannerViewPager.this.s(cVar, z10, view, i10, i11);
                }
            });
        }
        return this;
    }

    public BannerViewPager<T> L(int i10) {
        this.f47046e.c().v(i10);
        return this;
    }

    public BannerViewPager<T> M(int i10) {
        this.f47046e.i(i10);
        return this;
    }

    public BannerViewPager<T> N(int i10) {
        return O(i10, 0.85f);
    }

    public BannerViewPager<T> O(int i10, float f10) {
        this.f47046e.c().y(i10);
        this.f47046e.c().x(f10);
        return this;
    }

    public BannerViewPager<T> P(boolean z10) {
        this.f47045d.setLayoutDirection(z10 ? 1 : 0);
        this.f47046e.c().A(z10);
        return this;
    }

    public BannerViewPager<T> Q(int i10, int i11) {
        this.f47046e.c().z(i11);
        this.f47046e.c().t(i10);
        return this;
    }

    public BannerViewPager<T> R(int i10) {
        this.f47046e.c().B(i10);
        return this;
    }

    public BannerViewPager<T> S(boolean z10) {
        this.f47046e.c().C(z10);
        this.f47045d.setUserInputEnabled(z10);
        return this;
    }

    public void T() {
        BaseBannerAdapter<T> baseBannerAdapter;
        if (!this.f47044c && p() && (baseBannerAdapter = this.f47048g) != null && baseBannerAdapter.f() > 1 && isAttachedToWindow()) {
            Lifecycle lifecycle = this.f47055n;
            if (lifecycle == null || lifecycle.getCurrentState() == Lifecycle.State.RESUMED || this.f47055n.getCurrentState() == Lifecycle.State.CREATED) {
                this.f47047f.postDelayed(this.f47050i, getInterval());
                this.f47044c = true;
            }
        }
    }

    public void U() {
        if (this.f47044c) {
            this.f47047f.removeCallbacks(this.f47050i);
            this.f47044c = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float[] j10 = this.f47046e.c().j();
        RectF rectF = this.f47051j;
        if (rectF != null && this.f47052k != null && j10 != null) {
            rectF.right = getWidth();
            this.f47051j.bottom = getHeight();
            this.f47052k.addRoundRect(this.f47051j, j10, Path.Direction.CW);
            canvas.clipPath(this.f47052k);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3 || action == 4) {
                this.f47044c = false;
                T();
            }
        } else {
            this.f47044c = true;
            U();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public BannerViewPager<T> f(@Nullable ViewPager2.PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            this.f47046e.a(pageTransformer);
        }
        return this;
    }

    public void g(List<T> list) {
        BaseBannerAdapter<T> baseBannerAdapter = this.f47048g;
        if (baseBannerAdapter != null) {
            baseBannerAdapter.l(list);
            k();
            return;
        }
        throw new NullPointerException("You must set adapter for BannerViewPager");
    }

    public BaseBannerAdapter<T> getAdapter() {
        return this.f47048g;
    }

    public int getCurrentItem() {
        return this.f47042a;
    }

    public List<T> getData() {
        BaseBannerAdapter<T> baseBannerAdapter = this.f47048g;
        if (baseBannerAdapter != null) {
            return baseBannerAdapter.d();
        }
        return Collections.emptyList();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f47060s = h();
        if (this.f47046e != null && r()) {
            T();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        U();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (this.f47046e != null && r()) {
            U();
        }
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
        if (r0 != 3) goto L14;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            androidx.viewpager2.widget.ViewPager2 r0 = r6.f47045d
            boolean r0 = r0.isUserInputEnabled()
            if (r0 == 0) goto L85
            com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter<T> r0 = r6.f47048g
            r1 = 1
            if (r0 == 0) goto L18
            java.util.List r0 = r0.d()
            int r0 = r0.size()
            if (r0 > r1) goto L18
            goto L85
        L18:
            int r0 = r7.getAction()
            if (r0 == 0) goto L60
            if (r0 == r1) goto L57
            r2 = 2
            if (r0 == r2) goto L27
            r1 = 3
            if (r0 == r1) goto L57
            goto L80
        L27:
            float r0 = r7.getX()
            int r0 = (int) r0
            float r2 = r7.getY()
            int r2 = (int) r2
            int r3 = r6.f47053l
            int r3 = r0 - r3
            int r3 = java.lang.Math.abs(r3)
            int r4 = r6.f47054m
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            dj.a r5 = r6.f47046e
            dj.b r5 = r5.c()
            int r5 = r5.d()
            if (r5 != r1) goto L51
            r6.u(r2, r3, r4)
            goto L80
        L51:
            if (r5 != 0) goto L80
            r6.t(r0, r3, r4)
            goto L80
        L57:
            android.view.ViewParent r0 = r6.getParent()
            r1 = 0
            r0.requestDisallowInterceptTouchEvent(r1)
            goto L80
        L60:
            float r0 = r7.getX()
            int r0 = (int) r0
            r6.f47053l = r0
            float r0 = r7.getY()
            int r0 = (int) r0
            r6.f47054m = r0
            android.view.ViewParent r0 = r6.getParent()
            dj.a r2 = r6.f47046e
            dj.b r2 = r2.c()
            boolean r2 = r2.o()
            r1 = r1 ^ r2
            r0.requestDisallowInterceptTouchEvent(r1)
        L80:
            boolean r7 = super.onInterceptTouchEvent(r7)
            return r7
        L85:
            boolean r7 = super.onInterceptTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.banner.BannerViewPager.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        U();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("SUPER_STATE"));
        this.f47042a = bundle.getInt("CURRENT_POSITION");
        this.f47043b = bundle.getBoolean("IS_CUSTOM_INDICATOR");
        setCurrentItem(this.f47042a, false);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        T();
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("SUPER_STATE", onSaveInstanceState);
        bundle.putInt("CURRENT_POSITION", this.f47042a);
        bundle.putBoolean("IS_CUSTOM_INDICATOR", this.f47043b);
        return bundle;
    }

    public void setCurrentItem(int i10) {
        setCurrentItem(i10, true);
    }

    public void setResetCurrentItemWhenCanLoop(Boolean bool) {
        this.f47058q = bool.booleanValue();
    }

    public void y(int i10, int i11) {
        z(this.f47046e.c(), i10, i11);
    }

    public void z(dj.b bVar, int i10, int i11) {
        if (i10 != this.f47056o || i11 != this.f47057p) {
            this.f47056o = i10;
            this.f47057p = i11;
            RecyclerView recyclerView = (RecyclerView) this.f47045d.getChildAt(0);
            int d10 = bVar.d();
            int e10 = bVar.e() + i10;
            int e11 = bVar.e() + i11;
            if (e10 < 0) {
                e10 = 0;
            }
            if (e11 < 0) {
                e11 = 0;
            }
            if (d10 == 0) {
                recyclerView.setPaddingRelative(e10, 0, e11, 0);
            } else if (d10 == 1) {
                recyclerView.setPadding(0, e10, 0, e11);
            }
            if (this.f47059r) {
                this.f47059r = false;
                recyclerView.setClipToPadding(false);
            }
        }
    }

    public BannerViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCurrentItem(int i10, boolean z10) {
        if (q()) {
            U();
            int currentItem = this.f47045d.getCurrentItem();
            this.f47045d.setCurrentItem(currentItem + (i10 - fj.a.c(currentItem, this.f47048g.f())), z10);
            T();
            return;
        }
        this.f47045d.setCurrentItem(i10, z10);
    }

    public BannerViewPager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f47047f = new Handler(Looper.getMainLooper());
        this.f47050i = new Runnable() { // from class: cj.a
            @Override // java.lang.Runnable
            public final void run() {
                BannerViewPager.this.i();
            }
        };
        this.f47056o = 0;
        this.f47057p = 0;
        this.f47058q = true;
        this.f47059r = true;
        this.f47061t = new a();
        this.f47062u = false;
        j(context, attributeSet);
    }

    public void setCurrentItem(int i10, boolean z10, boolean z11) {
        this.f47062u = z11;
        if (q()) {
            U();
            int currentItem = this.f47045d.getCurrentItem();
            this.f47045d.setCurrentItem(currentItem + (i10 - fj.a.c(currentItem, this.f47048g.f())), z10);
            T();
            return;
        }
        this.f47045d.setCurrentItem(i10, z10);
    }

    /* loaded from: classes7.dex */
    public static class b {
        public void a(boolean z10, int i10, int i11) {
            throw null;
        }

        public void b(int i10) {
        }
    }
}
