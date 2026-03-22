package com.airbnb.lottie;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    private static final boolean T;
    private static final List<String> U;
    private static final Executor V;
    private Canvas A;
    private Rect B;
    private RectF C;
    private Paint D;
    private Rect E;
    private Rect F;
    private RectF G;
    private RectF H;
    private Matrix I;
    private float[] J;
    private Matrix K;
    private boolean L;
    @Nullable
    private AsyncUpdates M;
    private final ValueAnimator.AnimatorUpdateListener N;
    private final Semaphore O;
    private Handler P;
    private Runnable Q;
    private final Runnable R;
    private float S;

    /* renamed from: a  reason: collision with root package name */
    private i f4442a;

    /* renamed from: b  reason: collision with root package name */
    private final d1.i f4443b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4444c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4445d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4446e;

    /* renamed from: f  reason: collision with root package name */
    private OnVisibleAction f4447f;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<a> f4448g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private w0.b f4449h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f4450i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private w0.a f4451j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Map<String, Typeface> f4452k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    String f4453l;

    /* renamed from: m  reason: collision with root package name */
    private final l0 f4454m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f4455n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f4456o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private com.airbnb.lottie.model.layer.b f4457p;

    /* renamed from: q  reason: collision with root package name */
    private int f4458q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f4459r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f4460s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f4461t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f4462u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f4463v;

    /* renamed from: w  reason: collision with root package name */
    private RenderMode f4464w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f4465x;

    /* renamed from: y  reason: collision with root package name */
    private final Matrix f4466y;

    /* renamed from: z  reason: collision with root package name */
    private Bitmap f4467z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum OnVisibleAction {
        NONE,
        PLAY,
        RESUME
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface a {
        void a(i iVar);
    }

    static {
        boolean z10;
        if (Build.VERSION.SDK_INT <= 25) {
            z10 = true;
        } else {
            z10 = false;
        }
        T = z10;
        U = Arrays.asList("reduced motion", "reduced_motion", "reduced-motion", "reducedmotion");
        V = new ThreadPoolExecutor(0, 2, 35L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new d1.g());
    }

    public LottieDrawable() {
        d1.i iVar = new d1.i();
        this.f4443b = iVar;
        this.f4444c = true;
        this.f4445d = false;
        this.f4446e = false;
        this.f4447f = OnVisibleAction.NONE;
        this.f4448g = new ArrayList<>();
        this.f4454m = new l0();
        this.f4455n = false;
        this.f4456o = true;
        this.f4458q = 255;
        this.f4463v = false;
        this.f4464w = RenderMode.AUTOMATIC;
        this.f4465x = false;
        this.f4466y = new Matrix();
        this.J = new float[9];
        this.L = false;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.airbnb.lottie.g0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                LottieDrawable.this.m0(valueAnimator);
            }
        };
        this.N = animatorUpdateListener;
        this.O = new Semaphore(1);
        this.R = new Runnable() { // from class: com.airbnb.lottie.h0
            @Override // java.lang.Runnable
            public final void run() {
                LottieDrawable.this.o0();
            }
        };
        this.S = -3.4028235E38f;
        iVar.addUpdateListener(animatorUpdateListener);
    }

    private void A(Canvas canvas) {
        com.airbnb.lottie.model.layer.b bVar = this.f4457p;
        i iVar = this.f4442a;
        if (bVar != null && iVar != null) {
            this.f4466y.reset();
            Rect bounds = getBounds();
            if (!bounds.isEmpty()) {
                float width = bounds.width() / iVar.b().width();
                float height = bounds.height() / iVar.b().height();
                this.f4466y.preTranslate(bounds.left, bounds.top);
                this.f4466y.preScale(width, height);
            }
            bVar.i(canvas, this.f4466y, this.f4458q, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(String str, i iVar) {
        f1(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(float f10, i iVar) {
        g1(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(float f10, i iVar) {
        j1(f10);
    }

    private void D(int i10, int i11) {
        Bitmap bitmap = this.f4467z;
        if (bitmap != null && bitmap.getWidth() >= i10 && this.f4467z.getHeight() >= i11) {
            if (this.f4467z.getWidth() > i10 || this.f4467z.getHeight() > i11) {
                Bitmap createBitmap = Bitmap.createBitmap(this.f4467z, 0, 0, i10, i11);
                this.f4467z = createBitmap;
                this.A.setBitmap(createBitmap);
                this.L = true;
                return;
            }
            return;
        }
        Bitmap createBitmap2 = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        this.f4467z = createBitmap2;
        this.A.setBitmap(createBitmap2);
        this.L = true;
    }

    private void E() {
        if (this.A != null) {
            return;
        }
        this.A = new Canvas();
        this.H = new RectF();
        this.I = new Matrix();
        this.K = new Matrix();
        this.B = new Rect();
        this.C = new RectF();
        this.D = new s0.a();
        this.E = new Rect();
        this.F = new Rect();
        this.G = new RectF();
    }

    private void F0(Canvas canvas, com.airbnb.lottie.model.layer.b bVar) {
        if (this.f4442a != null && bVar != null) {
            E();
            canvas.getMatrix(this.I);
            canvas.getClipBounds(this.B);
            y(this.B, this.C);
            this.I.mapRect(this.C);
            z(this.C, this.B);
            if (this.f4456o) {
                this.H.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
            } else {
                bVar.c(this.H, null, false);
            }
            this.I.mapRect(this.H);
            Rect bounds = getBounds();
            float width = bounds.width() / getIntrinsicWidth();
            float height = bounds.height() / getIntrinsicHeight();
            I0(this.H, width, height);
            if (!d0()) {
                RectF rectF = this.H;
                Rect rect = this.B;
                rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
            }
            if (!k0(this.H)) {
                d1.f.c("Skipping software rendering: transformed bounds contain non-finite values.");
                return;
            }
            int ceil = (int) Math.ceil(this.H.width());
            int ceil2 = (int) Math.ceil(this.H.height());
            if (ceil > 0 && ceil2 > 0) {
                long j10 = ceil * ceil2;
                if (j10 > 50000000) {
                    d1.f.c("Skipping software rendering: bitmap request exceeds safe pixel count (" + j10 + ")");
                    return;
                }
                D(ceil, ceil2);
                if (this.L) {
                    this.I.getValues(this.J);
                    float[] fArr = this.J;
                    float f10 = fArr[0];
                    float f11 = fArr[4];
                    this.f4466y.set(this.I);
                    this.f4466y.preScale(width, height);
                    Matrix matrix = this.f4466y;
                    RectF rectF2 = this.H;
                    matrix.postTranslate(-rectF2.left, -rectF2.top);
                    this.f4466y.postScale(1.0f / f10, 1.0f / f11);
                    this.f4467z.eraseColor(0);
                    this.A.setMatrix(d1.p.f49791a);
                    this.A.scale(f10, f11);
                    bVar.i(this.A, this.f4466y, this.f4458q, null);
                    this.I.invert(this.K);
                    this.K.mapRect(this.G, this.H);
                    z(this.G, this.F);
                }
                this.E.set(0, 0, ceil, ceil2);
                canvas.drawBitmap(this.f4467z, this.E, this.F, this.D);
                return;
            }
            d1.f.c("Skipping software rendering: transformed bounds have negative values.");
        }
    }

    private void I0(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }

    @Nullable
    private Context L() {
        Drawable.Callback callback = getCallback();
        if (callback == null || !(callback instanceof View)) {
            return null;
        }
        return ((View) callback).getContext();
    }

    private w0.a M() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f4451j == null) {
            w0.a aVar = new w0.a(getCallback(), null);
            this.f4451j = aVar;
            String str = this.f4453l;
            if (str != null) {
                aVar.c(str);
            }
        }
        return this.f4451j;
    }

    private w0.b O() {
        w0.b bVar = this.f4449h;
        if (bVar != null && !bVar.b(L())) {
            this.f4449h = null;
        }
        if (this.f4449h == null) {
            this.f4449h = new w0.b(getCallback(), this.f4450i, null, this.f4442a.j());
        }
        return this.f4449h;
    }

    private boolean d0() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        if (!(parent instanceof ViewGroup)) {
            return false;
        }
        return !((ViewGroup) parent).getClipChildren();
    }

    private static boolean j0(float f10) {
        if (!Float.isNaN(f10) && !Float.isInfinite(f10)) {
            return true;
        }
        return false;
    }

    private static boolean k0(RectF rectF) {
        if (j0(rectF.left) && j0(rectF.top) && j0(rectF.right) && j0(rectF.bottom)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(x0.d dVar, Object obj, e1.c cVar, i iVar) {
        s(dVar, obj, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(ValueAnimator valueAnimator) {
        if (G()) {
            invalidateSelf();
            return;
        }
        com.airbnb.lottie.model.layer.b bVar = this.f4457p;
        if (bVar != null) {
            bVar.N(this.f4443b.m());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0() {
        com.airbnb.lottie.model.layer.b bVar = this.f4457p;
        if (bVar == null) {
            return;
        }
        try {
            this.O.acquire();
            bVar.N(this.f4443b.m());
            if (T && this.L) {
                if (this.P == null) {
                    this.P = new Handler(Looper.getMainLooper());
                    this.Q = new Runnable() { // from class: com.airbnb.lottie.b0
                        @Override // java.lang.Runnable
                        public final void run() {
                            LottieDrawable.this.n0();
                        }
                    };
                }
                this.P.post(this.Q);
            }
        } catch (InterruptedException unused) {
        } catch (Throwable th2) {
            this.O.release();
            throw th2;
        }
        this.O.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(i iVar) {
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(i iVar) {
        H0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(int i10, i iVar) {
        S0(i10);
    }

    private boolean r1() {
        i iVar = this.f4442a;
        if (iVar == null) {
            return false;
        }
        float f10 = this.S;
        float m10 = this.f4443b.m();
        this.S = m10;
        if (Math.abs(m10 - f10) * iVar.d() < 50.0f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(String str, i iVar) {
        Y0(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(int i10, i iVar) {
        X0(i10);
    }

    private void u() {
        i iVar = this.f4442a;
        if (iVar == null) {
            return;
        }
        com.airbnb.lottie.model.layer.b bVar = new com.airbnb.lottie.model.layer.b(this, c1.v.a(iVar), iVar.k(), iVar);
        this.f4457p = bVar;
        if (this.f4460s) {
            bVar.L(true);
        }
        this.f4457p.R(this.f4456o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(float f10, i iVar) {
        Z0(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(String str, i iVar) {
        b1(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(String str, String str2, boolean z10, i iVar) {
        c1(str, str2, z10);
    }

    private void x() {
        i iVar = this.f4442a;
        if (iVar == null) {
            return;
        }
        this.f4465x = this.f4464w.useSoftwareRendering(Build.VERSION.SDK_INT, iVar.q(), iVar.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(int i10, int i11, i iVar) {
        a1(i10, i11);
    }

    private void y(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(float f10, float f11, i iVar) {
        d1(f10, f11);
    }

    private void z(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(int i10, i iVar) {
        e1(i10);
    }

    public void B(LottieFeatureFlag lottieFeatureFlag, boolean z10) {
        boolean a10 = this.f4454m.a(lottieFeatureFlag, z10);
        if (this.f4442a != null && a10) {
            u();
        }
    }

    @MainThread
    public void C() {
        this.f4448g.clear();
        this.f4443b.l();
        if (!isVisible()) {
            this.f4447f = OnVisibleAction.NONE;
        }
    }

    public void D0() {
        this.f4448g.clear();
        this.f4443b.t();
        if (!isVisible()) {
            this.f4447f = OnVisibleAction.NONE;
        }
    }

    @MainThread
    public void E0() {
        float T2;
        if (this.f4457p == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.i0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.p0(iVar);
                }
            });
            return;
        }
        x();
        if (t(L()) || Y() == 0) {
            if (isVisible()) {
                this.f4443b.u();
                this.f4447f = OnVisibleAction.NONE;
            } else {
                this.f4447f = OnVisibleAction.PLAY;
            }
        }
        if (!t(L())) {
            x0.g S = S();
            if (S != null) {
                S0((int) S.f70382b);
            } else {
                if (a0() < 0.0f) {
                    T2 = U();
                } else {
                    T2 = T();
                }
                S0((int) T2);
            }
            this.f4443b.l();
            if (!isVisible()) {
                this.f4447f = OnVisibleAction.NONE;
            }
        }
    }

    public AsyncUpdates F() {
        AsyncUpdates asyncUpdates = this.M;
        if (asyncUpdates != null) {
            return asyncUpdates;
        }
        return d.d();
    }

    public boolean G() {
        if (F() == AsyncUpdates.ENABLED) {
            return true;
        }
        return false;
    }

    public List<x0.d> G0(x0.d dVar) {
        if (this.f4457p == null) {
            d1.f.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f4457p.b(dVar, 0, arrayList, new x0.d(new String[0]));
        return arrayList;
    }

    @Nullable
    public Bitmap H(String str) {
        w0.b O = O();
        if (O != null) {
            return O.a(str);
        }
        return null;
    }

    @MainThread
    public void H0() {
        float T2;
        if (this.f4457p == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.c0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.q0(iVar);
                }
            });
            return;
        }
        x();
        if (t(L()) || Y() == 0) {
            if (isVisible()) {
                this.f4443b.y();
                this.f4447f = OnVisibleAction.NONE;
            } else {
                this.f4447f = OnVisibleAction.RESUME;
            }
        }
        if (!t(L())) {
            if (a0() < 0.0f) {
                T2 = U();
            } else {
                T2 = T();
            }
            S0((int) T2);
            this.f4443b.l();
            if (!isVisible()) {
                this.f4447f = OnVisibleAction.NONE;
            }
        }
    }

    public boolean I() {
        return this.f4463v;
    }

    public boolean J() {
        return this.f4456o;
    }

    public void J0(boolean z10) {
        this.f4461t = z10;
    }

    public i K() {
        return this.f4442a;
    }

    public void K0(boolean z10) {
        this.f4462u = z10;
    }

    public void L0(@Nullable AsyncUpdates asyncUpdates) {
        this.M = asyncUpdates;
    }

    public void M0(boolean z10) {
        if (z10 != this.f4463v) {
            this.f4463v = z10;
            invalidateSelf();
        }
    }

    public int N() {
        return (int) this.f4443b.n();
    }

    public void N0(boolean z10) {
        if (z10 != this.f4456o) {
            this.f4456o = z10;
            com.airbnb.lottie.model.layer.b bVar = this.f4457p;
            if (bVar != null) {
                bVar.R(z10);
            }
            invalidateSelf();
        }
    }

    public boolean O0(i iVar) {
        if (this.f4442a == iVar) {
            return false;
        }
        this.L = true;
        w();
        this.f4442a = iVar;
        u();
        this.f4443b.A(iVar);
        j1(this.f4443b.getAnimatedFraction());
        Iterator it = new ArrayList(this.f4448g).iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                aVar.a(iVar);
            }
            it.remove();
        }
        this.f4448g.clear();
        iVar.v(this.f4459r);
        x();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    @Nullable
    public String P() {
        return this.f4450i;
    }

    public void P0(String str) {
        this.f4453l = str;
        w0.a M = M();
        if (M != null) {
            M.c(str);
        }
    }

    @Nullable
    public m0 Q(String str) {
        i iVar = this.f4442a;
        if (iVar == null) {
            return null;
        }
        return iVar.j().get(str);
    }

    public void Q0(com.airbnb.lottie.a aVar) {
        w0.a aVar2 = this.f4451j;
        if (aVar2 != null) {
            aVar2.d(aVar);
        }
    }

    public boolean R() {
        return this.f4455n;
    }

    public void R0(@Nullable Map<String, Typeface> map) {
        if (map == this.f4452k) {
            return;
        }
        this.f4452k = map;
        invalidateSelf();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public x0.g S() {
        x0.g gVar = null;
        for (String str : U) {
            gVar = this.f4442a.l(str);
            if (gVar != null) {
                break;
            }
        }
        return gVar;
    }

    public void S0(final int i10) {
        if (this.f4442a == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.u
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.r0(i10, iVar);
                }
            });
        } else {
            this.f4443b.B(i10);
        }
    }

    public float T() {
        return this.f4443b.p();
    }

    @Deprecated
    public void T0(boolean z10) {
        this.f4445d = z10;
    }

    public float U() {
        return this.f4443b.q();
    }

    public void U0(b bVar) {
        w0.b bVar2 = this.f4449h;
        if (bVar2 != null) {
            bVar2.d(bVar);
        }
    }

    @Nullable
    public v0 V() {
        i iVar = this.f4442a;
        if (iVar != null) {
            return iVar.n();
        }
        return null;
    }

    public void V0(@Nullable String str) {
        this.f4450i = str;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float W() {
        return this.f4443b.m();
    }

    public void W0(boolean z10) {
        this.f4455n = z10;
    }

    public RenderMode X() {
        if (this.f4465x) {
            return RenderMode.SOFTWARE;
        }
        return RenderMode.HARDWARE;
    }

    public void X0(final int i10) {
        if (this.f4442a == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.x
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.t0(i10, iVar);
                }
            });
        } else {
            this.f4443b.C(i10 + 0.99f);
        }
    }

    public int Y() {
        return this.f4443b.getRepeatCount();
    }

    public void Y0(final String str) {
        i iVar = this.f4442a;
        if (iVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.e0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar2) {
                    LottieDrawable.this.s0(str, iVar2);
                }
            });
            return;
        }
        x0.g l10 = iVar.l(str);
        if (l10 != null) {
            X0((int) (l10.f70382b + l10.f70383c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    @SuppressLint({"WrongConstant"})
    public int Z() {
        return this.f4443b.getRepeatMode();
    }

    public void Z0(@FloatRange(from = 0.0d, to = 1.0d) final float f10) {
        i iVar = this.f4442a;
        if (iVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.a0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar2) {
                    LottieDrawable.this.u0(f10, iVar2);
                }
            });
        } else {
            this.f4443b.C(d1.k.i(iVar.p(), this.f4442a.f(), f10));
        }
    }

    public float a0() {
        return this.f4443b.r();
    }

    public void a1(final int i10, final int i11) {
        if (this.f4442a == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.w
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.x0(i10, i11, iVar);
                }
            });
        } else {
            this.f4443b.D(i10, i11 + 0.99f);
        }
    }

    @Nullable
    public z0 b0() {
        return null;
    }

    public void b1(final String str) {
        i iVar = this.f4442a;
        if (iVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.t
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar2) {
                    LottieDrawable.this.v0(str, iVar2);
                }
            });
            return;
        }
        x0.g l10 = iVar.l(str);
        if (l10 != null) {
            int i10 = (int) l10.f70382b;
            a1(i10, ((int) l10.f70383c) + i10);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Typeface c0(x0.b bVar) {
        Map<String, Typeface> map = this.f4452k;
        if (map != null) {
            String a10 = bVar.a();
            if (map.containsKey(a10)) {
                return map.get(a10);
            }
            String b10 = bVar.b();
            if (map.containsKey(b10)) {
                return map.get(b10);
            }
            String str = bVar.a() + "-" + bVar.c();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        w0.a M = M();
        if (M != null) {
            return M.b(bVar);
        }
        return null;
    }

    public void c1(final String str, final String str2, final boolean z10) {
        float f10;
        i iVar = this.f4442a;
        if (iVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.d0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar2) {
                    LottieDrawable.this.w0(str, str2, z10, iVar2);
                }
            });
            return;
        }
        x0.g l10 = iVar.l(str);
        if (l10 != null) {
            int i10 = (int) l10.f70382b;
            x0.g l11 = this.f4442a.l(str2);
            if (l11 != null) {
                float f11 = l11.f70382b;
                if (z10) {
                    f10 = 1.0f;
                } else {
                    f10 = 0.0f;
                }
                a1(i10, (int) (f11 + f10));
                return;
            }
            throw new IllegalArgumentException("Cannot find marker with name " + str2 + ".");
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void d1(@FloatRange(from = 0.0d, to = 1.0d) final float f10, @FloatRange(from = 0.0d, to = 1.0d) final float f11) {
        i iVar = this.f4442a;
        if (iVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.v
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar2) {
                    LottieDrawable.this.y0(f10, f11, iVar2);
                }
            });
        } else {
            a1((int) d1.k.i(iVar.p(), this.f4442a.f(), f10), (int) d1.k.i(this.f4442a.p(), this.f4442a.f(), f11));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        com.airbnb.lottie.model.layer.b bVar = this.f4457p;
        if (bVar == null) {
            return;
        }
        boolean G = G();
        if (G) {
            try {
                this.O.acquire();
            } catch (InterruptedException unused) {
                if (d.h()) {
                    d.c("Drawable#draw");
                }
                if (G) {
                    this.O.release();
                    if (bVar.Q() == this.f4443b.m()) {
                        return;
                    }
                } else {
                    return;
                }
            } catch (Throwable th2) {
                if (d.h()) {
                    d.c("Drawable#draw");
                }
                if (G) {
                    this.O.release();
                    if (bVar.Q() != this.f4443b.m()) {
                        V.execute(this.R);
                    }
                }
                throw th2;
            }
        }
        if (d.h()) {
            d.b("Drawable#draw");
        }
        if (G && r1()) {
            j1(this.f4443b.m());
        }
        if (this.f4446e) {
            if (this.f4465x) {
                F0(canvas, bVar);
            } else {
                A(canvas);
            }
        } else if (this.f4465x) {
            F0(canvas, bVar);
        } else {
            A(canvas);
        }
        this.L = false;
        if (d.h()) {
            d.c("Drawable#draw");
        }
        if (G) {
            this.O.release();
            if (bVar.Q() == this.f4443b.m()) {
                return;
            }
            V.execute(this.R);
        }
    }

    public boolean e0() {
        d1.i iVar = this.f4443b;
        if (iVar == null) {
            return false;
        }
        return iVar.isRunning();
    }

    public void e1(final int i10) {
        if (this.f4442a == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.y
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.z0(i10, iVar);
                }
            });
        } else {
            this.f4443b.E(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f0() {
        if (isVisible()) {
            return this.f4443b.isRunning();
        }
        OnVisibleAction onVisibleAction = this.f4447f;
        if (onVisibleAction != OnVisibleAction.PLAY && onVisibleAction != OnVisibleAction.RESUME) {
            return false;
        }
        return true;
    }

    public void f1(final String str) {
        i iVar = this.f4442a;
        if (iVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.f0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar2) {
                    LottieDrawable.this.A0(str, iVar2);
                }
            });
            return;
        }
        x0.g l10 = iVar.l(str);
        if (l10 != null) {
            e1((int) l10.f70382b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public boolean g0() {
        return this.f4461t;
    }

    public void g1(final float f10) {
        i iVar = this.f4442a;
        if (iVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.j0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar2) {
                    LottieDrawable.this.B0(f10, iVar2);
                }
            });
        } else {
            e1((int) d1.k.i(iVar.p(), this.f4442a.f(), f10));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4458q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        i iVar = this.f4442a;
        if (iVar == null) {
            return -1;
        }
        return iVar.b().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        i iVar = this.f4442a;
        if (iVar == null) {
            return -1;
        }
        return iVar.b().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean h0() {
        return this.f4462u;
    }

    public void h1(boolean z10) {
        if (this.f4460s == z10) {
            return;
        }
        this.f4460s = z10;
        com.airbnb.lottie.model.layer.b bVar = this.f4457p;
        if (bVar != null) {
            bVar.L(z10);
        }
    }

    public boolean i0(LottieFeatureFlag lottieFeatureFlag) {
        return this.f4454m.b(lottieFeatureFlag);
    }

    public void i1(boolean z10) {
        this.f4459r = z10;
        i iVar = this.f4442a;
        if (iVar != null) {
            iVar.v(z10);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable.Callback callback;
        if (this.L) {
            return;
        }
        this.L = true;
        if ((!T || Looper.getMainLooper() == Looper.myLooper()) && (callback = getCallback()) != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return e0();
    }

    public void j1(@FloatRange(from = 0.0d, to = 1.0d) final float f10) {
        if (this.f4442a == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.k0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.C0(f10, iVar);
                }
            });
            return;
        }
        if (d.h()) {
            d.b("Drawable#setProgress");
        }
        this.f4443b.B(this.f4442a.h(f10));
        if (d.h()) {
            d.c("Drawable#setProgress");
        }
    }

    public void k1(RenderMode renderMode) {
        this.f4464w = renderMode;
        x();
    }

    public void l1(int i10) {
        this.f4443b.setRepeatCount(i10);
    }

    public void m1(int i10) {
        this.f4443b.setRepeatMode(i10);
    }

    public void n1(boolean z10) {
        this.f4446e = z10;
    }

    public void o1(float f10) {
        this.f4443b.F(f10);
    }

    public void q1(boolean z10) {
        this.f4443b.G(z10);
    }

    public <T> void s(final x0.d dVar, final T t10, @Nullable final e1.c<T> cVar) {
        com.airbnb.lottie.model.layer.b bVar = this.f4457p;
        if (bVar == null) {
            this.f4448g.add(new a() { // from class: com.airbnb.lottie.z
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(i iVar) {
                    LottieDrawable.this.l0(dVar, t10, cVar, iVar);
                }
            });
            return;
        }
        boolean z10 = true;
        if (dVar == x0.d.f70376c) {
            bVar.e(t10, cVar);
        } else if (dVar.d() != null) {
            dVar.d().e(t10, cVar);
        } else {
            List<x0.d> G0 = G0(dVar);
            for (int i10 = 0; i10 < G0.size(); i10++) {
                G0.get(i10).d().e(t10, cVar);
            }
            z10 = true ^ G0.isEmpty();
        }
        if (z10) {
            invalidateSelf();
            if (t10 == q0.H) {
                j1(W());
            }
        }
    }

    public boolean s1() {
        if (this.f4452k == null && this.f4442a.c().size() > 0) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        this.f4458q = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        d1.f.c("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean isVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            OnVisibleAction onVisibleAction = this.f4447f;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                E0();
            } else if (onVisibleAction == OnVisibleAction.RESUME) {
                H0();
            }
        } else if (this.f4443b.isRunning()) {
            D0();
            this.f4447f = OnVisibleAction.RESUME;
        } else if (isVisible) {
            this.f4447f = OnVisibleAction.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        E0();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        C();
    }

    public boolean t(@Nullable Context context) {
        if (this.f4445d) {
            return true;
        }
        if (this.f4444c && d.f().a(context) == ReducedMotionMode.STANDARD_MOTION) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public void v() {
        this.f4448g.clear();
        this.f4443b.cancel();
        if (!isVisible()) {
            this.f4447f = OnVisibleAction.NONE;
        }
    }

    public void w() {
        if (this.f4443b.isRunning()) {
            this.f4443b.cancel();
            if (!isVisible()) {
                this.f4447f = OnVisibleAction.NONE;
            }
        }
        this.f4442a = null;
        this.f4457p = null;
        this.f4449h = null;
        this.S = -3.4028235E38f;
        this.f4443b.k();
        invalidateSelf();
    }

    public void p1(z0 z0Var) {
    }
}
