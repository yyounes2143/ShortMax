package io.bidmachine.media3.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import io.bidmachine.media3.ui.j1;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import zm.a0;
import zm.w;
/* loaded from: classes8.dex */
public class LegacyPlayerControlView extends FrameLayout {
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    @Nullable
    private zm.w G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private int M;
    private int N;
    private int O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private long U;
    private long[] V;
    private boolean[] W;

    /* renamed from: a  reason: collision with root package name */
    private final b f57505a;

    /* renamed from: a0  reason: collision with root package name */
    private long[] f57506a0;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<d> f57507b;

    /* renamed from: b0  reason: collision with root package name */
    private boolean[] f57508b0;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f57509c;

    /* renamed from: c0  reason: collision with root package name */
    private long f57510c0;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f57511d;

    /* renamed from: d0  reason: collision with root package name */
    private long f57512d0;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final View f57513e;

    /* renamed from: e0  reason: collision with root package name */
    private long f57514e0;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final View f57515f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final View f57516g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f57517h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ImageView f57518i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final ImageView f57519j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f57520k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final TextView f57521l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final TextView f57522m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final j1 f57523n;

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f57524o;

    /* renamed from: p  reason: collision with root package name */
    private final Formatter f57525p;

    /* renamed from: q  reason: collision with root package name */
    private final a0.b f57526q;

    /* renamed from: r  reason: collision with root package name */
    private final a0.c f57527r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f57528s;

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f57529t;

    /* renamed from: u  reason: collision with root package name */
    private final Drawable f57530u;

    /* renamed from: v  reason: collision with root package name */
    private final Drawable f57531v;

    /* renamed from: w  reason: collision with root package name */
    private final Drawable f57532w;

    /* renamed from: x  reason: collision with root package name */
    private final String f57533x;

    /* renamed from: y  reason: collision with root package name */
    private final String f57534y;

    /* renamed from: z  reason: collision with root package name */
    private final String f57535z;

    /* loaded from: classes8.dex */
    private final class b implements w.d, j1.a, View.OnClickListener {
        private b() {
        }

        @Override // io.bidmachine.media3.ui.j1.a
        public void K(j1 j1Var, long j10, boolean z10) {
            LegacyPlayerControlView.this.L = false;
            if (!z10 && LegacyPlayerControlView.this.G != null) {
                LegacyPlayerControlView legacyPlayerControlView = LegacyPlayerControlView.this;
                legacyPlayerControlView.G(legacyPlayerControlView.G, j10);
            }
        }

        @Override // zm.w.d
        public void R(zm.w wVar, w.c cVar) {
            if (cVar.b(4, 5)) {
                LegacyPlayerControlView.this.K();
            }
            if (cVar.b(4, 5, 7)) {
                LegacyPlayerControlView.this.L();
            }
            if (cVar.a(8)) {
                LegacyPlayerControlView.this.M();
            }
            if (cVar.a(9)) {
                LegacyPlayerControlView.this.N();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                LegacyPlayerControlView.this.J();
            }
            if (cVar.b(11, 0)) {
                LegacyPlayerControlView.this.O();
            }
        }

        @Override // io.bidmachine.media3.ui.j1.a
        public void i(j1 j1Var, long j10) {
            if (LegacyPlayerControlView.this.f57522m != null) {
                LegacyPlayerControlView.this.f57522m.setText(cn.m0.o0(LegacyPlayerControlView.this.f57524o, LegacyPlayerControlView.this.f57525p, j10));
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            zm.w wVar = LegacyPlayerControlView.this.G;
            if (wVar == null) {
                return;
            }
            if (LegacyPlayerControlView.this.f57511d == view) {
                wVar.t();
            } else if (LegacyPlayerControlView.this.f57509c == view) {
                wVar.o();
            } else if (LegacyPlayerControlView.this.f57516g == view) {
                if (wVar.getPlaybackState() != 4) {
                    wVar.m();
                }
            } else if (LegacyPlayerControlView.this.f57517h == view) {
                wVar.y();
            } else if (LegacyPlayerControlView.this.f57513e == view) {
                cn.m0.w0(wVar);
            } else if (LegacyPlayerControlView.this.f57515f == view) {
                cn.m0.v0(wVar);
            } else if (LegacyPlayerControlView.this.f57518i == view) {
                wVar.setRepeatMode(cn.c0.a(wVar.getRepeatMode(), LegacyPlayerControlView.this.O));
            } else if (LegacyPlayerControlView.this.f57519j == view) {
                wVar.setShuffleModeEnabled(!wVar.getShuffleModeEnabled());
            }
        }

        @Override // io.bidmachine.media3.ui.j1.a
        public void x(j1 j1Var, long j10) {
            LegacyPlayerControlView.this.L = true;
            if (LegacyPlayerControlView.this.f57522m != null) {
                LegacyPlayerControlView.this.f57522m.setText(cn.m0.o0(LegacyPlayerControlView.this.f57524o, LegacyPlayerControlView.this.f57525p, j10));
            }
        }
    }

    /* loaded from: classes8.dex */
    public interface c {
    }

    /* loaded from: classes8.dex */
    public interface d {
        void i(int i10);
    }

    static {
        zm.r.a("media3.ui");
    }

    public LegacyPlayerControlView(Context context) {
        this(context, null);
    }

    private void A() {
        removeCallbacks(this.f57529t);
        if (this.M > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i10 = this.M;
            this.U = uptimeMillis + i10;
            if (this.H) {
                postDelayed(this.f57529t, i10);
                return;
            }
            return;
        }
        this.U = -9223372036854775807L;
    }

    @SuppressLint({"InlinedApi"})
    private static boolean B(int i10) {
        if (i10 != 90 && i10 != 89 && i10 != 85 && i10 != 79 && i10 != 126 && i10 != 127 && i10 != 87 && i10 != 88) {
            return false;
        }
        return true;
    }

    private void D() {
        View view;
        View view2;
        boolean l12 = cn.m0.l1(this.G, this.J);
        if (l12 && (view2 = this.f57513e) != null) {
            view2.sendAccessibilityEvent(8);
        } else if (!l12 && (view = this.f57515f) != null) {
            view.sendAccessibilityEvent(8);
        }
    }

    private void E() {
        View view;
        View view2;
        boolean l12 = cn.m0.l1(this.G, this.J);
        if (l12 && (view2 = this.f57513e) != null) {
            view2.requestFocus();
        } else if (!l12 && (view = this.f57515f) != null) {
            view.requestFocus();
        }
    }

    private void F(zm.w wVar, int i10, long j10) {
        wVar.seekTo(i10, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(zm.w wVar, long j10) {
        int x10;
        zm.a0 currentTimeline = wVar.getCurrentTimeline();
        if (this.K && !currentTimeline.q()) {
            int p10 = currentTimeline.p();
            x10 = 0;
            while (true) {
                long d10 = currentTimeline.n(x10, this.f57527r).d();
                if (j10 < d10) {
                    break;
                } else if (x10 == p10 - 1) {
                    j10 = d10;
                    break;
                } else {
                    j10 -= d10;
                    x10++;
                }
            }
        } else {
            x10 = wVar.x();
        }
        F(wVar, x10, j10);
        L();
    }

    private void H() {
        K();
        J();
        M();
        N();
        O();
    }

    private void I(boolean z10, boolean z11, @Nullable View view) {
        float f10;
        int i10;
        if (view == null) {
            return;
        }
        view.setEnabled(z11);
        if (z11) {
            f10 = this.C;
        } else {
            f10 = this.D;
        }
        view.setAlpha(f10);
        if (z10) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        view.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        if (C() && this.H) {
            zm.w wVar = this.G;
            if (wVar != null) {
                z10 = wVar.g(5);
                z12 = wVar.g(7);
                z13 = wVar.g(11);
                z14 = wVar.g(12);
                z11 = wVar.g(9);
            } else {
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
            }
            I(this.R, z12, this.f57509c);
            I(this.P, z13, this.f57517h);
            I(this.Q, z14, this.f57516g);
            I(this.S, z11, this.f57511d);
            j1 j1Var = this.f57523n;
            if (j1Var != null) {
                j1Var.setEnabled(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        if (C() && this.H) {
            boolean l12 = cn.m0.l1(this.G, this.J);
            View view = this.f57513e;
            int i11 = 8;
            boolean z13 = true;
            if (view != null) {
                if (!l12 && view.isFocused()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!l12 && this.f57513e.isAccessibilityFocused()) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                View view2 = this.f57513e;
                if (l12) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
                view2.setVisibility(i10);
            } else {
                z10 = false;
                z11 = false;
            }
            View view3 = this.f57515f;
            if (view3 != null) {
                if (l12 && view3.isFocused()) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z10 |= z12;
                if (!l12 || !this.f57515f.isAccessibilityFocused()) {
                    z13 = false;
                }
                z11 |= z13;
                View view4 = this.f57515f;
                if (!l12) {
                    i11 = 0;
                }
                view4.setVisibility(i11);
            }
            if (z10) {
                E();
            }
            if (z11) {
                D();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        long j10;
        long j11;
        boolean z10;
        int playbackState;
        long j12;
        if (C() && this.H) {
            zm.w wVar = this.G;
            if (wVar != null) {
                j10 = this.f57510c0 + wVar.getContentPosition();
                j11 = this.f57510c0 + wVar.l();
            } else {
                j10 = 0;
                j11 = 0;
            }
            if (j10 != this.f57512d0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f57512d0 = j10;
            this.f57514e0 = j11;
            TextView textView = this.f57522m;
            if (textView != null && !this.L && z10) {
                textView.setText(cn.m0.o0(this.f57524o, this.f57525p, j10));
            }
            j1 j1Var = this.f57523n;
            if (j1Var != null) {
                j1Var.setPosition(j10);
                this.f57523n.setBufferedPosition(j11);
            }
            removeCallbacks(this.f57528s);
            if (wVar == null) {
                playbackState = 1;
            } else {
                playbackState = wVar.getPlaybackState();
            }
            long j13 = 1000;
            if (wVar != null && wVar.isPlaying()) {
                j1 j1Var2 = this.f57523n;
                if (j1Var2 != null) {
                    j12 = j1Var2.getPreferredUpdateDelay();
                } else {
                    j12 = 1000;
                }
                long min = Math.min(j12, 1000 - (j10 % 1000));
                float f10 = wVar.getPlaybackParameters().f72208a;
                if (f10 > 0.0f) {
                    j13 = ((float) min) / f10;
                }
                postDelayed(this.f57528s, cn.m0.q(j13, this.N, 1000L));
            } else if (playbackState != 4 && playbackState != 1) {
                postDelayed(this.f57528s, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        ImageView imageView;
        if (C() && this.H && (imageView = this.f57518i) != null) {
            if (this.O == 0) {
                I(false, false, imageView);
                return;
            }
            zm.w wVar = this.G;
            if (wVar == null) {
                I(true, false, imageView);
                this.f57518i.setImageDrawable(this.f57530u);
                this.f57518i.setContentDescription(this.f57533x);
                return;
            }
            I(true, true, imageView);
            int repeatMode = wVar.getRepeatMode();
            if (repeatMode != 0) {
                if (repeatMode != 1) {
                    if (repeatMode == 2) {
                        this.f57518i.setImageDrawable(this.f57532w);
                        this.f57518i.setContentDescription(this.f57535z);
                    }
                } else {
                    this.f57518i.setImageDrawable(this.f57531v);
                    this.f57518i.setContentDescription(this.f57534y);
                }
            } else {
                this.f57518i.setImageDrawable(this.f57530u);
                this.f57518i.setContentDescription(this.f57533x);
            }
            this.f57518i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        ImageView imageView;
        Drawable drawable;
        String str;
        if (C() && this.H && (imageView = this.f57519j) != null) {
            zm.w wVar = this.G;
            if (!this.T) {
                I(false, false, imageView);
            } else if (wVar == null) {
                I(true, false, imageView);
                this.f57519j.setImageDrawable(this.B);
                this.f57519j.setContentDescription(this.F);
            } else {
                I(true, true, imageView);
                ImageView imageView2 = this.f57519j;
                if (wVar.getShuffleModeEnabled()) {
                    drawable = this.A;
                } else {
                    drawable = this.B;
                }
                imageView2.setImageDrawable(drawable);
                ImageView imageView3 = this.f57519j;
                if (wVar.getShuffleModeEnabled()) {
                    str = this.E;
                } else {
                    str = this.F;
                }
                imageView3.setContentDescription(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        boolean z10;
        int i10;
        int i11;
        int i12;
        a0.c cVar;
        int length;
        zm.w wVar = this.G;
        if (wVar == null) {
            return;
        }
        boolean z11 = true;
        if (this.I && w(wVar.getCurrentTimeline(), this.f57527r)) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.K = z10;
        long j10 = 0;
        this.f57510c0 = 0L;
        zm.a0 currentTimeline = wVar.getCurrentTimeline();
        if (!currentTimeline.q()) {
            int x10 = wVar.x();
            boolean z12 = this.K;
            if (z12) {
                i11 = 0;
            } else {
                i11 = x10;
            }
            if (z12) {
                i12 = currentTimeline.p() - 1;
            } else {
                i12 = x10;
            }
            long j11 = 0;
            i10 = 0;
            while (true) {
                if (i11 > i12) {
                    break;
                }
                if (i11 == x10) {
                    this.f57510c0 = cn.m0.u1(j11);
                }
                currentTimeline.n(i11, this.f57527r);
                a0.c cVar2 = this.f57527r;
                if (cVar2.f71769m == -9223372036854775807L) {
                    cn.a.g(this.K ^ z11);
                    break;
                }
                int i13 = cVar2.f71770n;
                while (true) {
                    cVar = this.f57527r;
                    if (i13 <= cVar.f71771o) {
                        currentTimeline.f(i13, this.f57526q);
                        int c10 = this.f57526q.c();
                        for (int o10 = this.f57526q.o(); o10 < c10; o10++) {
                            long f10 = this.f57526q.f(o10);
                            if (f10 == Long.MIN_VALUE) {
                                long j12 = this.f57526q.f71743d;
                                if (j12 != -9223372036854775807L) {
                                    f10 = j12;
                                }
                            }
                            long n10 = f10 + this.f57526q.n();
                            if (n10 >= 0) {
                                long[] jArr = this.V;
                                if (i10 == jArr.length) {
                                    if (jArr.length == 0) {
                                        length = 1;
                                    } else {
                                        length = jArr.length * 2;
                                    }
                                    this.V = Arrays.copyOf(jArr, length);
                                    this.W = Arrays.copyOf(this.W, length);
                                }
                                this.V[i10] = cn.m0.u1(j11 + n10);
                                this.W[i10] = this.f57526q.p(o10);
                                i10++;
                            }
                        }
                        i13++;
                    }
                }
                j11 += cVar.f71769m;
                i11++;
                z11 = true;
            }
            j10 = j11;
        } else {
            i10 = 0;
        }
        long u12 = cn.m0.u1(j10);
        TextView textView = this.f57521l;
        if (textView != null) {
            textView.setText(cn.m0.o0(this.f57524o, this.f57525p, u12));
        }
        j1 j1Var = this.f57523n;
        if (j1Var != null) {
            j1Var.setDuration(u12);
            int length2 = this.f57506a0.length;
            int i14 = i10 + length2;
            long[] jArr2 = this.V;
            if (i14 > jArr2.length) {
                this.V = Arrays.copyOf(jArr2, i14);
                this.W = Arrays.copyOf(this.W, i14);
            }
            System.arraycopy(this.f57506a0, 0, this.V, i10, length2);
            System.arraycopy(this.f57508b0, 0, this.W, i10, length2);
            this.f57523n.setAdGroupTimesMs(this.V, this.W, i14);
        }
        L();
    }

    private static boolean w(zm.a0 a0Var, a0.c cVar) {
        if (a0Var.p() > 100) {
            return false;
        }
        int p10 = a0Var.p();
        for (int i10 = 0; i10 < p10; i10++) {
            if (a0Var.n(i10, cVar).f71769m == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    private static int y(TypedArray typedArray, int i10) {
        return typedArray.getInt(b1.f57736z, i10);
    }

    public boolean C() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!x(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f57529t);
        } else if (motionEvent.getAction() == 1) {
            A();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public zm.w getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.O;
    }

    public boolean getShowShuffleButton() {
        return this.T;
    }

    public int getShowTimeoutMs() {
        return this.M;
    }

    public boolean getShowVrButton() {
        View view = this.f57520k;
        if (view != null && view.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.H = true;
        long j10 = this.U;
        if (j10 != -9223372036854775807L) {
            long uptimeMillis = j10 - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                z();
            } else {
                postDelayed(this.f57529t, uptimeMillis);
            }
        } else if (C()) {
            A();
        }
        H();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
        removeCallbacks(this.f57528s);
        removeCallbacks(this.f57529t);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        boolean z10 = false;
        if (jArr == null) {
            this.f57506a0 = new long[0];
            this.f57508b0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) cn.a.e(zArr);
            if (jArr.length == zArr2.length) {
                z10 = true;
            }
            cn.a.a(z10);
            this.f57506a0 = jArr;
            this.f57508b0 = zArr2;
        }
        O();
    }

    public void setPlayer(@Nullable zm.w wVar) {
        boolean z10;
        boolean z11 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (wVar == null || wVar.s() == Looper.getMainLooper()) {
            z11 = true;
        }
        cn.a.a(z11);
        zm.w wVar2 = this.G;
        if (wVar2 == wVar) {
            return;
        }
        if (wVar2 != null) {
            wVar2.B(this.f57505a);
        }
        this.G = wVar;
        if (wVar != null) {
            wVar.C(this.f57505a);
        }
        H();
    }

    public void setRepeatToggleModes(int i10) {
        this.O = i10;
        zm.w wVar = this.G;
        if (wVar != null) {
            int repeatMode = wVar.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.G.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.G.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.G.setRepeatMode(2);
            }
        }
        M();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.Q = z10;
        J();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        this.I = z10;
        O();
    }

    public void setShowNextButton(boolean z10) {
        this.S = z10;
        J();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        this.J = z10;
        K();
    }

    public void setShowPreviousButton(boolean z10) {
        this.R = z10;
        J();
    }

    public void setShowRewindButton(boolean z10) {
        this.P = z10;
        J();
    }

    public void setShowShuffleButton(boolean z10) {
        this.T = z10;
        N();
    }

    public void setShowTimeoutMs(int i10) {
        this.M = i10;
        if (C()) {
            A();
        }
    }

    public void setShowVrButton(boolean z10) {
        int i10;
        View view = this.f57520k;
        if (view != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            view.setVisibility(i10);
        }
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.N = cn.m0.p(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        boolean z10;
        View view = this.f57520k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            boolean showVrButton = getShowVrButton();
            if (onClickListener != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            I(showVrButton, z10, this.f57520k);
        }
    }

    public boolean x(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        zm.w wVar = this.G;
        if (wVar != null && B(keyCode)) {
            if (keyEvent.getAction() == 0) {
                if (keyCode == 90) {
                    if (wVar.getPlaybackState() != 4) {
                        wVar.m();
                        return true;
                    }
                    return true;
                } else if (keyCode == 89) {
                    wVar.y();
                    return true;
                } else if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 && keyCode != 85) {
                        if (keyCode != 87) {
                            if (keyCode != 88) {
                                if (keyCode != 126) {
                                    if (keyCode == 127) {
                                        cn.m0.v0(wVar);
                                        return true;
                                    }
                                    return true;
                                }
                                cn.m0.w0(wVar);
                                return true;
                            }
                            wVar.o();
                            return true;
                        }
                        wVar.t();
                        return true;
                    }
                    cn.m0.x0(wVar, this.J);
                    return true;
                } else {
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    public void z() {
        if (C()) {
            setVisibility(8);
            Iterator<d> it = this.f57507b.iterator();
            while (it.hasNext()) {
                it.next().i(getVisibility());
            }
            removeCallbacks(this.f57528s);
            removeCallbacks(this.f57529t);
            this.U = -9223372036854775807L;
        }
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i10);
        int i11 = x0.f57905a;
        this.J = true;
        this.M = 5000;
        this.O = 0;
        this.N = 200;
        this.U = -9223372036854775807L;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = true;
        this.T = false;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, b1.f57732x, i10, 0);
            try {
                this.M = obtainStyledAttributes.getInt(b1.F, this.M);
                i11 = obtainStyledAttributes.getResourceId(b1.f57734y, i11);
                this.O = y(obtainStyledAttributes, this.O);
                this.P = obtainStyledAttributes.getBoolean(b1.D, this.P);
                this.Q = obtainStyledAttributes.getBoolean(b1.A, this.Q);
                this.R = obtainStyledAttributes.getBoolean(b1.C, this.R);
                this.S = obtainStyledAttributes.getBoolean(b1.B, this.S);
                this.T = obtainStyledAttributes.getBoolean(b1.E, this.T);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(b1.G, this.N));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f57507b = new CopyOnWriteArrayList<>();
        this.f57526q = new a0.b();
        this.f57527r = new a0.c();
        StringBuilder sb2 = new StringBuilder();
        this.f57524o = sb2;
        this.f57525p = new Formatter(sb2, Locale.getDefault());
        this.V = new long[0];
        this.W = new boolean[0];
        this.f57506a0 = new long[0];
        this.f57508b0 = new boolean[0];
        b bVar = new b();
        this.f57505a = bVar;
        this.f57528s = new Runnable() { // from class: io.bidmachine.media3.ui.g
            @Override // java.lang.Runnable
            public final void run() {
                LegacyPlayerControlView.this.L();
            }
        };
        this.f57529t = new Runnable() { // from class: io.bidmachine.media3.ui.h
            @Override // java.lang.Runnable
            public final void run() {
                LegacyPlayerControlView.this.z();
            }
        };
        LayoutInflater.from(context).inflate(i11, this);
        setDescendantFocusability(262144);
        j1 j1Var = (j1) findViewById(v0.I);
        View findViewById = findViewById(v0.J);
        if (j1Var != null) {
            this.f57523n = j1Var;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(v0.I);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f57523n = defaultTimeBar;
        } else {
            this.f57523n = null;
        }
        this.f57521l = (TextView) findViewById(v0.f57887m);
        this.f57522m = (TextView) findViewById(v0.G);
        j1 j1Var2 = this.f57523n;
        if (j1Var2 != null) {
            j1Var2.a(bVar);
        }
        View findViewById2 = findViewById(v0.D);
        this.f57513e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(bVar);
        }
        View findViewById3 = findViewById(v0.C);
        this.f57515f = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(bVar);
        }
        View findViewById4 = findViewById(v0.H);
        this.f57509c = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(bVar);
        }
        View findViewById5 = findViewById(v0.f57899y);
        this.f57511d = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(bVar);
        }
        View findViewById6 = findViewById(v0.L);
        this.f57517h = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(bVar);
        }
        View findViewById7 = findViewById(v0.f57891q);
        this.f57516g = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(bVar);
        }
        ImageView imageView = (ImageView) findViewById(v0.K);
        this.f57518i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(v0.O);
        this.f57519j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(bVar);
        }
        View findViewById8 = findViewById(v0.V);
        this.f57520k = findViewById8;
        setShowVrButton(false);
        I(false, false, findViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(w0.f57903b) / 100.0f;
        this.D = resources.getInteger(w0.f57902a) / 100.0f;
        this.f57530u = cn.m0.a0(context, resources, t0.f57850c);
        this.f57531v = cn.m0.a0(context, resources, t0.f57851d);
        this.f57532w = cn.m0.a0(context, resources, t0.f57849b);
        this.A = cn.m0.a0(context, resources, t0.f57853f);
        this.B = cn.m0.a0(context, resources, t0.f57852e);
        this.f57533x = resources.getString(z0.f57925j);
        this.f57534y = resources.getString(z0.f57926k);
        this.f57535z = resources.getString(z0.f57924i);
        this.E = resources.getString(z0.f57929n);
        this.F = resources.getString(z0.f57928m);
        this.f57512d0 = -9223372036854775807L;
        this.f57514e0 = -9223372036854775807L;
    }

    public void setProgressUpdateListener(@Nullable c cVar) {
    }
}
