package com.lcodecore.tkrefreshlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import cc.e;
import cc.h;
import cc.j;
import cc.k;
import com.lcodecore.tkrefreshlayout.footer.BallPulseView;
import com.lcodecore.tkrefreshlayout.header.GoogleDotView;
/* loaded from: classes5.dex */
public class TwinklingRefreshLayout extends RelativeLayout implements e, NestedScrollingChild {

    /* renamed from: e0  reason: collision with root package name */
    private static String f25591e0 = "";

    /* renamed from: f0  reason: collision with root package name */
    private static String f25592f0 = "";
    protected boolean A;
    private d B;
    private final int C;
    private e D;
    private final NestedScrollingChildHelper E;
    private ec.c F;
    private cc.d G;
    private float H;
    private float I;
    private VelocityTracker J;
    private float K;
    private float L;
    private float M;
    private float N;
    private int O;
    private int P;
    private MotionEvent Q;
    private boolean R;
    private int S;
    private final int[] T;
    private final int[] U;
    private final int[] V;
    private int W;

    /* renamed from: a  reason: collision with root package name */
    protected float f25593a;

    /* renamed from: a0  reason: collision with root package name */
    private int f25594a0;

    /* renamed from: b  reason: collision with root package name */
    protected float f25595b;

    /* renamed from: b0  reason: collision with root package name */
    private int f25596b0;

    /* renamed from: c  reason: collision with root package name */
    protected float f25597c;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f25598c0;

    /* renamed from: d  reason: collision with root package name */
    protected float f25599d;

    /* renamed from: d0  reason: collision with root package name */
    private k f25600d0;

    /* renamed from: e  reason: collision with root package name */
    private View f25601e;

    /* renamed from: f  reason: collision with root package name */
    protected FrameLayout f25602f;

    /* renamed from: g  reason: collision with root package name */
    private FrameLayout f25603g;

    /* renamed from: h  reason: collision with root package name */
    private int f25604h;

    /* renamed from: i  reason: collision with root package name */
    private cc.b f25605i;

    /* renamed from: j  reason: collision with root package name */
    private cc.a f25606j;

    /* renamed from: k  reason: collision with root package name */
    private float f25607k;

    /* renamed from: l  reason: collision with root package name */
    private FrameLayout f25608l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f25609m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f25610n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f25611o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f25612p;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f25613q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f25614r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f25615s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f25616t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f25617u;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f25618v;

    /* renamed from: w  reason: collision with root package name */
    protected boolean f25619w;

    /* renamed from: x  reason: collision with root package name */
    protected boolean f25620x;

    /* renamed from: y  reason: collision with root package name */
    protected boolean f25621y;

    /* renamed from: z  reason: collision with root package name */
    protected boolean f25622z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements cc.d {
        a() {
        }

        @Override // cc.d
        public void a(MotionEvent motionEvent, boolean z10) {
            TwinklingRefreshLayout.this.F.d(motionEvent, z10);
        }

        @Override // cc.d
        public void onDown(MotionEvent motionEvent) {
            TwinklingRefreshLayout.this.F.b(motionEvent);
        }

        @Override // cc.d
        public void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            TwinklingRefreshLayout.this.F.f(motionEvent, motionEvent2, f10, f11);
        }

        @Override // cc.d
        public void onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            TwinklingRefreshLayout.this.F.a(motionEvent, motionEvent2, f10, f11, TwinklingRefreshLayout.this.H, TwinklingRefreshLayout.this.I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FrameLayout frameLayout = TwinklingRefreshLayout.this.f25602f;
            if (frameLayout != null) {
                frameLayout.bringToFront();
            }
        }
    }

    /* loaded from: classes5.dex */
    class c implements cc.c {
        c() {
        }

        @Override // cc.c
        public void a() {
            TwinklingRefreshLayout.this.B.k();
        }
    }

    /* loaded from: classes5.dex */
    public class d {

        /* renamed from: b  reason: collision with root package name */
        private int f25627b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f25628c = 0;

        /* renamed from: d  reason: collision with root package name */
        private boolean f25629d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f25630e = false;

        /* renamed from: f  reason: collision with root package name */
        private boolean f25631f = false;

        /* renamed from: a  reason: collision with root package name */
        private ec.a f25626a = new ec.a(this);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f0();
                TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
                if (!twinklingRefreshLayout.f25617u && twinklingRefreshLayout.f25601e != null) {
                    d.this.d0(true);
                    d.this.f25626a.B();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.e0();
                TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
                if (!twinklingRefreshLayout.f25617u && twinklingRefreshLayout.f25601e != null) {
                    d.this.Z(true);
                    d.this.f25626a.y();
                }
            }
        }

        public d() {
        }

        public boolean A() {
            return TwinklingRefreshLayout.this.f25612p;
        }

        public boolean B() {
            return TwinklingRefreshLayout.this.f25610n;
        }

        public boolean C() {
            return TwinklingRefreshLayout.this.f25619w;
        }

        public boolean D() {
            return TwinklingRefreshLayout.this.f25616t;
        }

        public boolean E() {
            return TwinklingRefreshLayout.this.f25615s;
        }

        public boolean F() {
            return this.f25631f;
        }

        public boolean G() {
            return this.f25630e;
        }

        public boolean H() {
            return TwinklingRefreshLayout.this.f25617u;
        }

        public boolean I() {
            return TwinklingRefreshLayout.this.f25609m;
        }

        public boolean J() {
            return TwinklingRefreshLayout.this.f25611o;
        }

        public boolean K() {
            if (1 == this.f25627b) {
                return true;
            }
            return false;
        }

        public boolean L() {
            if (this.f25627b == 0) {
                return true;
            }
            return false;
        }

        public void M() {
            TwinklingRefreshLayout.this.D.e();
        }

        public void N() {
            TwinklingRefreshLayout.this.D.i();
        }

        public void O() {
            TwinklingRefreshLayout.this.D.d(TwinklingRefreshLayout.this);
        }

        public void P() {
            TwinklingRefreshLayout.this.D.a();
        }

        public void Q(float f10) {
            e eVar = TwinklingRefreshLayout.this.D;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.c(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f25597c);
        }

        public void R(float f10) {
            e eVar = TwinklingRefreshLayout.this.D;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.g(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f25607k);
        }

        public void S(float f10) {
            e eVar = TwinklingRefreshLayout.this.D;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.h(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f25597c);
        }

        public void T(float f10) {
            e eVar = TwinklingRefreshLayout.this.D;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.f(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f25607k);
        }

        public void U() {
            TwinklingRefreshLayout.this.D.b(TwinklingRefreshLayout.this);
        }

        public void V() {
            TwinklingRefreshLayout.this.D.j();
        }

        public void W() {
            if (TwinklingRefreshLayout.this.f25606j != null) {
                TwinklingRefreshLayout.this.f25606j.reset();
            }
        }

        public void X() {
            if (TwinklingRefreshLayout.this.f25605i != null) {
                TwinklingRefreshLayout.this.f25605i.reset();
            }
        }

        public void Y(boolean z10) {
            TwinklingRefreshLayout.this.f25610n = z10;
        }

        public void Z(boolean z10) {
            TwinklingRefreshLayout.this.f25612p = z10;
        }

        public void a0(boolean z10) {
            this.f25631f = z10;
        }

        public boolean b() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            if (!twinklingRefreshLayout.f25609m && !twinklingRefreshLayout.f25610n) {
                return true;
            }
            return false;
        }

        public void b0(boolean z10) {
            this.f25630e = z10;
        }

        public boolean c() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            if (!twinklingRefreshLayout.f25614r && !twinklingRefreshLayout.f25620x) {
                return false;
            }
            return true;
        }

        public void c0(boolean z10) {
            TwinklingRefreshLayout.this.f25609m = z10;
        }

        public boolean d() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            if (!twinklingRefreshLayout.f25613q && !twinklingRefreshLayout.f25620x) {
                return false;
            }
            return true;
        }

        public void d0(boolean z10) {
            TwinklingRefreshLayout.this.f25611o = z10;
        }

        public boolean e() {
            return TwinklingRefreshLayout.this.f25618v;
        }

        public void e0() {
            this.f25627b = 1;
        }

        public boolean f(MotionEvent motionEvent) {
            return TwinklingRefreshLayout.super.dispatchTouchEvent(motionEvent);
        }

        public void f0() {
            this.f25627b = 0;
        }

        public boolean g() {
            return TwinklingRefreshLayout.this.f25613q;
        }

        public boolean g0() {
            return TwinklingRefreshLayout.this.A;
        }

        public boolean h() {
            return TwinklingRefreshLayout.this.f25620x;
        }

        public boolean h0() {
            return TwinklingRefreshLayout.this.f25622z;
        }

        public boolean i() {
            return TwinklingRefreshLayout.this.f25614r;
        }

        public void i0() {
            TwinklingRefreshLayout.this.post(new b());
        }

        public void j() {
            M();
            if (TwinklingRefreshLayout.this.f25601e != null) {
                this.f25626a.w(true);
            }
        }

        public void j0() {
            TwinklingRefreshLayout.this.post(new a());
        }

        public void k() {
            if (TwinklingRefreshLayout.this.f25601e != null) {
                this.f25626a.z(true);
            }
        }

        public void l() {
            N();
        }

        public ec.a m() {
            return this.f25626a;
        }

        public int n() {
            return (int) TwinklingRefreshLayout.this.f25607k;
        }

        public View o() {
            return TwinklingRefreshLayout.this.f25603g;
        }

        public View p() {
            return TwinklingRefreshLayout.this.f25608l;
        }

        public int q() {
            return (int) TwinklingRefreshLayout.this.f25597c;
        }

        public View r() {
            return TwinklingRefreshLayout.this.f25602f;
        }

        public int s() {
            return (int) TwinklingRefreshLayout.this.f25595b;
        }

        public float t() {
            return TwinklingRefreshLayout.this.f25593a;
        }

        public int u() {
            return (int) TwinklingRefreshLayout.this.f25599d;
        }

        public View v() {
            return TwinklingRefreshLayout.this.f25601e;
        }

        public int w() {
            return TwinklingRefreshLayout.this.C;
        }

        public void x() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            if (twinklingRefreshLayout.f25617u) {
                twinklingRefreshLayout.setOverScrollTopShow(false);
                TwinklingRefreshLayout.this.setOverScrollBottomShow(false);
                FrameLayout frameLayout = TwinklingRefreshLayout.this.f25602f;
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                if (TwinklingRefreshLayout.this.f25608l != null) {
                    TwinklingRefreshLayout.this.f25608l.setVisibility(8);
                }
            }
        }

        public boolean y() {
            return TwinklingRefreshLayout.this.f25621y;
        }

        public boolean z() {
            return this.f25629d;
        }
    }

    public TwinklingRefreshLayout(Context context) {
        this(context, null, 0);
    }

    private boolean A(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            int[] iArr = this.V;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        int[] iArr2 = this.V;
        obtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            this.W = motionEvent.getPointerId(actionIndex);
                            this.f25594a0 = (int) motionEvent.getX(actionIndex);
                            this.f25596b0 = (int) motionEvent.getY(actionIndex);
                        }
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.W);
                    if (findPointerIndex < 0) {
                        Log.e("TwinklingRefreshLayout", "Error processing scroll; pointer index for id " + this.W + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int y10 = (int) motionEvent.getY(findPointerIndex);
                    int x10 = this.f25594a0 - ((int) motionEvent.getX(findPointerIndex));
                    int i10 = this.f25596b0 - y10;
                    if (dispatchNestedPreScroll(x10, i10, this.U, this.T)) {
                        int[] iArr3 = this.U;
                        int i11 = iArr3[0];
                        i10 -= iArr3[1];
                        int[] iArr4 = this.T;
                        obtain.offsetLocation(iArr4[0], iArr4[1]);
                        int[] iArr5 = this.V;
                        int i12 = iArr5[0];
                        int[] iArr6 = this.T;
                        iArr5[0] = i12 + iArr6[0];
                        iArr5[1] = iArr5[1] + iArr6[1];
                    }
                    if (!this.f25598c0 && Math.abs(i10) > this.C) {
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f25598c0 = true;
                        if (i10 > 0) {
                            i10 -= this.C;
                        } else {
                            i10 += this.C;
                        }
                    }
                    int i13 = i10;
                    if (this.f25598c0) {
                        int[] iArr7 = this.T;
                        this.f25596b0 = y10 - iArr7[1];
                        if (dispatchNestedScroll(0, 0, 0, i13, iArr7)) {
                            int i14 = this.f25594a0;
                            int[] iArr8 = this.T;
                            int i15 = iArr8[0];
                            this.f25594a0 = i14 - i15;
                            int i16 = this.f25596b0;
                            int i17 = iArr8[1];
                            this.f25596b0 = i16 - i17;
                            obtain.offsetLocation(i15, i17);
                            int[] iArr9 = this.V;
                            int i18 = iArr9[0];
                            int[] iArr10 = this.T;
                            iArr9[0] = i18 + iArr10[0];
                            iArr9[1] = iArr9[1] + iArr10[1];
                        }
                    }
                }
            }
            stopNestedScroll();
            this.f25598c0 = false;
            this.W = -1;
        } else {
            this.W = motionEvent.getPointerId(0);
            this.f25594a0 = (int) motionEvent.getX();
            this.f25596b0 = (int) motionEvent.getY();
            startNestedScroll(2);
        }
        obtain.recycle();
        return true;
    }

    private void D() {
        this.G = new a();
    }

    public static void setDefaultFooter(String str) {
        f25592f0 = str;
    }

    public static void setDefaultHeader(String str) {
        f25591e0 = str;
    }

    private void x() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 0);
        layoutParams.addRule(12);
        frameLayout.setLayoutParams(layoutParams);
        this.f25608l = frameLayout;
        addView(frameLayout);
        if (this.f25606j == null) {
            if (!TextUtils.isEmpty(f25592f0)) {
                try {
                    setBottomView((cc.a) Class.forName(f25592f0).getDeclaredConstructor(Context.class).newInstance(getContext()));
                    return;
                } catch (Exception e10) {
                    Log.e("TwinklingRefreshLayout:", "setDefaultFooter classname=" + e10.getMessage());
                    setBottomView(new BallPulseView(getContext()));
                    return;
                }
            }
            setBottomView(new BallPulseView(getContext()));
        }
    }

    private void y() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 0);
        layoutParams.addRule(10);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.setId(h.f3434b);
        addView(frameLayout2, new RelativeLayout.LayoutParams(-1, -2));
        addView(frameLayout, layoutParams);
        this.f25603g = frameLayout2;
        this.f25602f = frameLayout;
        if (this.f25605i == null) {
            if (!TextUtils.isEmpty(f25591e0)) {
                try {
                    setHeaderView((cc.b) Class.forName(f25591e0).getDeclaredConstructor(Context.class).newInstance(getContext()));
                    return;
                } catch (Exception e10) {
                    Log.e("TwinklingRefreshLayout:", "setDefaultHeader classname=" + e10.getMessage());
                    setHeaderView(new GoogleDotView(getContext()));
                    return;
                }
            }
            setHeaderView(new GoogleDotView(getContext()));
        }
    }

    private void z(MotionEvent motionEvent, cc.d dVar) {
        Object[] objArr;
        int i10;
        int action = motionEvent.getAction();
        if (this.J == null) {
            this.J = VelocityTracker.obtain();
        }
        this.J.addMovement(motionEvent);
        int i11 = action & 255;
        boolean z10 = false;
        if (i11 == 6) {
            objArr = 1;
        } else {
            objArr = null;
        }
        if (objArr != null) {
            i10 = motionEvent.getActionIndex();
        } else {
            i10 = -1;
        }
        int pointerCount = motionEvent.getPointerCount();
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i12 = 0; i12 < pointerCount; i12++) {
            if (i10 != i12) {
                f10 += motionEvent.getX(i12);
                f11 += motionEvent.getY(i12);
            }
        }
        float f12 = objArr != null ? pointerCount - 1 : pointerCount;
        float f13 = f10 / f12;
        float f14 = f11 / f12;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 5) {
                            if (i11 == 6) {
                                this.K = f13;
                                this.M = f13;
                                this.L = f14;
                                this.N = f14;
                                this.J.computeCurrentVelocity(1000, this.O);
                                int actionIndex = motionEvent.getActionIndex();
                                int pointerId = motionEvent.getPointerId(actionIndex);
                                float xVelocity = this.J.getXVelocity(pointerId);
                                float yVelocity = this.J.getYVelocity(pointerId);
                                for (int i13 = 0; i13 < pointerCount; i13++) {
                                    if (i13 != actionIndex) {
                                        int pointerId2 = motionEvent.getPointerId(i13);
                                        if ((this.J.getXVelocity(pointerId2) * xVelocity) + (this.J.getYVelocity(pointerId2) * yVelocity) < 0.0f) {
                                            this.J.clear();
                                            return;
                                        }
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        this.K = f13;
                        this.M = f13;
                        this.L = f14;
                        this.N = f14;
                        return;
                    }
                    this.R = false;
                    VelocityTracker velocityTracker = this.J;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.J = null;
                        return;
                    }
                    return;
                }
                float f15 = this.K - f13;
                float f16 = this.L - f14;
                if (this.R) {
                    int i14 = (int) (f13 - this.M);
                    int i15 = (int) (f14 - this.N);
                    if ((i14 * i14) + (i15 * i15) > this.S) {
                        dVar.onScroll(this.Q, motionEvent, f15, f16);
                        this.K = f13;
                        this.L = f14;
                        this.R = false;
                        return;
                    }
                    return;
                } else if (Math.abs(f15) >= 1.0f || Math.abs(f16) >= 1.0f) {
                    dVar.onScroll(this.Q, motionEvent, f15, f16);
                    this.K = f13;
                    this.L = f14;
                    return;
                } else {
                    return;
                }
            }
            int pointerId3 = motionEvent.getPointerId(0);
            this.J.computeCurrentVelocity(1000, this.O);
            this.I = this.J.getYVelocity(pointerId3);
            this.H = this.J.getXVelocity(pointerId3);
            if (Math.abs(this.I) > this.P || Math.abs(this.H) > this.P) {
                dVar.onFling(this.Q, motionEvent, this.H, this.I);
                z10 = true;
            }
            dVar.a(motionEvent, z10);
            VelocityTracker velocityTracker2 = this.J;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.J = null;
                return;
            }
            return;
        }
        this.K = f13;
        this.M = f13;
        this.L = f14;
        this.N = f14;
        MotionEvent motionEvent2 = this.Q;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        this.Q = MotionEvent.obtain(motionEvent);
        this.R = true;
        dVar.onDown(motionEvent);
    }

    public void B() {
        this.B.j();
    }

    public void C() {
        this.B.l();
    }

    public void E() {
        this.B.i0();
    }

    public void F() {
        this.B.j0();
    }

    @Override // cc.e
    public void a() {
        k kVar = this.f25600d0;
        if (kVar != null) {
            kVar.a();
        }
    }

    @Override // cc.e
    public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
        this.f25605i.a(this.f25593a, this.f25597c);
        k kVar = this.f25600d0;
        if (kVar != null) {
            kVar.b(twinklingRefreshLayout);
        }
    }

    @Override // cc.e
    public void c(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        k kVar;
        this.f25605i.b(f10, this.f25593a, this.f25597c);
        if (this.f25614r && (kVar = this.f25600d0) != null) {
            kVar.c(twinklingRefreshLayout, f10);
        }
    }

    @Override // cc.e
    public void d(TwinklingRefreshLayout twinklingRefreshLayout) {
        this.f25606j.a(this.f25595b, this.f25607k);
        k kVar = this.f25600d0;
        if (kVar != null) {
            kVar.d(twinklingRefreshLayout);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.E.dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.E.dispatchNestedPreFling(f10, f11);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.E.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.E.dispatchNestedScroll(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean dispatchTouchEvent = this.F.dispatchTouchEvent(motionEvent);
        z(motionEvent, this.G);
        A(motionEvent);
        return dispatchTouchEvent;
    }

    @Override // cc.e
    public void e() {
        k kVar = this.f25600d0;
        if (kVar != null) {
            kVar.e();
        }
        if (!this.B.y() && !this.B.A()) {
            return;
        }
        this.f25606j.onFinish();
    }

    @Override // cc.e
    public void f(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        k kVar;
        this.f25606j.c(f10, this.f25593a, this.f25597c);
        if (this.f25613q && (kVar = this.f25600d0) != null) {
            kVar.f(twinklingRefreshLayout, f10);
        }
    }

    @Override // cc.e
    public void g(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        k kVar;
        this.f25606j.b(f10, this.f25595b, this.f25607k);
        if (this.f25613q && (kVar = this.f25600d0) != null) {
            kVar.g(twinklingRefreshLayout, f10);
        }
    }

    public View getExtraHeaderView() {
        return this.f25603g;
    }

    @Override // cc.e
    public void h(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        k kVar;
        this.f25605i.d(f10, this.f25593a, this.f25597c);
        if (this.f25614r && (kVar = this.f25600d0) != null) {
            kVar.h(twinklingRefreshLayout, f10);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.E.hasNestedScrollingParent();
    }

    @Override // cc.e
    public void i() {
        k kVar = this.f25600d0;
        if (kVar != null) {
            kVar.i();
        }
        if (!this.B.y() && !this.B.J()) {
            return;
        }
        this.f25605i.c(new c());
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.E.isNestedScrollingEnabled();
    }

    @Override // cc.e
    public void j() {
        k kVar = this.f25600d0;
        if (kVar != null) {
            kVar.j();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f25601e = getChildAt(3);
        this.B.x();
        d dVar = this.B;
        this.F = new ec.d(dVar, new ec.e(dVar));
        D();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.F.c(motionEvent) && !super.onInterceptTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.F.e(motionEvent) && !super.onTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    public void setAutoLoadMore(boolean z10) {
        this.f25618v = z10;
        if (!z10) {
            return;
        }
        setEnableLoadmore(true);
    }

    public void setBottomHeight(float f10) {
        this.f25607k = fc.a.a(getContext(), f10);
    }

    public void setBottomView(cc.a aVar) {
        if (aVar != null) {
            this.f25608l.removeAllViewsInLayout();
            this.f25608l.addView(aVar.getView());
            this.f25606j = aVar;
        }
    }

    public void setDecorator(ec.c cVar) {
        if (cVar != null) {
            this.F = cVar;
        }
    }

    public void setEnableKeepIView(boolean z10) {
        this.f25621y = z10;
    }

    public void setEnableLoadmore(boolean z10) {
        this.f25613q = z10;
        cc.a aVar = this.f25606j;
        if (aVar != null) {
            if (z10) {
                aVar.getView().setVisibility(0);
            } else {
                aVar.getView().setVisibility(8);
            }
        }
    }

    public void setEnableOverScroll(boolean z10) {
        this.f25620x = z10;
    }

    public void setEnableRefresh(boolean z10) {
        this.f25614r = z10;
        cc.b bVar = this.f25605i;
        if (bVar != null) {
            if (z10) {
                bVar.getView().setVisibility(0);
            } else {
                bVar.getView().setVisibility(8);
            }
        }
    }

    public void setFloatRefresh(boolean z10) {
        this.f25619w = z10;
        if (!z10) {
            return;
        }
        post(new b());
    }

    public void setHeaderHeight(float f10) {
        this.f25597c = fc.a.a(getContext(), f10);
    }

    public void setHeaderView(cc.b bVar) {
        if (bVar != null) {
            this.f25602f.removeAllViewsInLayout();
            this.f25602f.addView(bVar.getView());
            this.f25605i = bVar;
        }
    }

    public void setMaxBottomHeight(float f10) {
        this.f25595b = fc.a.a(getContext(), f10);
    }

    public void setMaxHeadHeight(float f10) {
        this.f25593a = fc.a.a(getContext(), f10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z10) {
        this.E.setNestedScrollingEnabled(z10);
    }

    public void setOnRefreshListener(k kVar) {
        if (kVar != null) {
            this.f25600d0 = kVar;
        }
    }

    public void setOverScrollBottomShow(boolean z10) {
        this.f25616t = z10;
    }

    public void setOverScrollHeight(float f10) {
        this.f25599d = fc.a.a(getContext(), f10);
    }

    public void setOverScrollRefreshShow(boolean z10) {
        this.f25615s = z10;
        this.f25616t = z10;
    }

    public void setOverScrollTopShow(boolean z10) {
        this.f25615s = z10;
    }

    public void setPureScrollModeOn() {
        this.f25617u = true;
        this.f25615s = false;
        this.f25616t = false;
        setMaxHeadHeight(this.f25599d);
        setHeaderHeight(this.f25599d);
        setMaxBottomHeight(this.f25599d);
        setBottomHeight(this.f25599d);
    }

    public void setTargetView(View view) {
        if (view != null) {
            this.f25601e = view;
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i10) {
        return this.E.startNestedScroll(i10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.E.stopNestedScroll();
    }

    public TwinklingRefreshLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwinklingRefreshLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25604h = 0;
        this.f25609m = false;
        this.f25610n = false;
        this.f25611o = false;
        this.f25612p = false;
        this.f25613q = true;
        this.f25614r = true;
        this.f25615s = true;
        this.f25616t = true;
        this.f25617u = false;
        this.f25618v = false;
        this.f25619w = false;
        this.f25620x = true;
        this.f25621y = true;
        this.f25622z = true;
        this.A = true;
        int scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.C = scaledTouchSlop;
        this.D = this;
        this.O = ViewConfiguration.getMaximumFlingVelocity();
        this.P = ViewConfiguration.getMinimumFlingVelocity();
        this.S = scaledTouchSlop * scaledTouchSlop;
        this.T = new int[2];
        this.U = new int[2];
        this.V = new int[2];
        this.W = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f3444b, i10, 0);
        try {
            this.f25593a = obtainStyledAttributes.getDimensionPixelSize(j.f3454l, fc.a.a(context, 120.0f));
            this.f25597c = obtainStyledAttributes.getDimensionPixelSize(j.f3452j, fc.a.a(context, 80.0f));
            this.f25595b = obtainStyledAttributes.getDimensionPixelSize(j.f3453k, fc.a.a(context, 120.0f));
            this.f25607k = obtainStyledAttributes.getDimensionPixelSize(j.f3446d, fc.a.a(context, 60.0f));
            this.f25599d = obtainStyledAttributes.getDimensionPixelSize(j.f3456n, (int) this.f25597c);
            this.f25614r = obtainStyledAttributes.getBoolean(j.f3450h, true);
            this.f25613q = obtainStyledAttributes.getBoolean(j.f3448f, true);
            this.f25617u = obtainStyledAttributes.getBoolean(j.f3458p, false);
            this.f25615s = obtainStyledAttributes.getBoolean(j.f3457o, true);
            this.f25616t = obtainStyledAttributes.getBoolean(j.f3455m, true);
            this.f25620x = obtainStyledAttributes.getBoolean(j.f3449g, true);
            this.f25619w = obtainStyledAttributes.getBoolean(j.f3451i, false);
            this.f25618v = obtainStyledAttributes.getBoolean(j.f3445c, false);
            this.f25621y = obtainStyledAttributes.getBoolean(j.f3447e, true);
            this.f25622z = obtainStyledAttributes.getBoolean(j.f3460r, true);
            this.A = obtainStyledAttributes.getBoolean(j.f3459q, true);
            obtainStyledAttributes.recycle();
            this.B = new d();
            y();
            x();
            setFloatRefresh(this.f25619w);
            setAutoLoadMore(this.f25618v);
            setEnableRefresh(this.f25614r);
            setEnableLoadmore(this.f25613q);
            this.E = new NestedScrollingChildHelper(this);
            setNestedScrollingEnabled(true);
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }
}
