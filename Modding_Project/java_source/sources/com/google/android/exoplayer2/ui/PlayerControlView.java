package com.google.android.exoplayer2.ui;

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
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.y0;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class PlayerControlView extends FrameLayout {
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    @Nullable
    private l1 G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private long T;
    private long[] U;
    private boolean[] V;
    private long[] W;

    /* renamed from: a  reason: collision with root package name */
    private final c f18607a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean[] f18608a0;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<e> f18609b;

    /* renamed from: b0  reason: collision with root package name */
    private long f18610b0;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f18611c;

    /* renamed from: c0  reason: collision with root package name */
    private long f18612c0;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f18613d;

    /* renamed from: d0  reason: collision with root package name */
    private long f18614d0;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final View f18615e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final View f18616f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final View f18617g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f18618h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ImageView f18619i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final ImageView f18620j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f18621k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final TextView f18622l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final TextView f18623m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final y0 f18624n;

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f18625o;

    /* renamed from: p  reason: collision with root package name */
    private final Formatter f18626p;

    /* renamed from: q  reason: collision with root package name */
    private final u1.b f18627q;

    /* renamed from: r  reason: collision with root package name */
    private final u1.d f18628r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f18629s;

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f18630t;

    /* renamed from: u  reason: collision with root package name */
    private final Drawable f18631u;

    /* renamed from: v  reason: collision with root package name */
    private final Drawable f18632v;

    /* renamed from: w  reason: collision with root package name */
    private final Drawable f18633w;

    /* renamed from: x  reason: collision with root package name */
    private final String f18634x;

    /* renamed from: y  reason: collision with root package name */
    private final String f18635y;

    /* renamed from: z  reason: collision with root package name */
    private final String f18636z;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes4.dex */
    public static final class b {
        @DoNotInline
        public static boolean a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    /* loaded from: classes4.dex */
    private final class c implements l1.d, y0.a, View.OnClickListener {
        private c() {
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void X(l1 l1Var, l1.c cVar) {
            if (cVar.b(4, 5)) {
                PlayerControlView.this.T();
            }
            if (cVar.b(4, 5, 7)) {
                PlayerControlView.this.U();
            }
            if (cVar.a(8)) {
                PlayerControlView.this.V();
            }
            if (cVar.a(9)) {
                PlayerControlView.this.W();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                PlayerControlView.this.S();
            }
            if (cVar.b(11, 0)) {
                PlayerControlView.this.X();
            }
        }

        @Override // com.google.android.exoplayer2.ui.y0.a
        public void i(y0 y0Var, long j10, boolean z10) {
            PlayerControlView.this.K = false;
            if (!z10 && PlayerControlView.this.G != null) {
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.N(playerControlView.G, j10);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1 l1Var = PlayerControlView.this.G;
            if (l1Var == null) {
                return;
            }
            if (PlayerControlView.this.f18613d == view) {
                l1Var.t();
            } else if (PlayerControlView.this.f18611c == view) {
                l1Var.o();
            } else if (PlayerControlView.this.f18617g == view) {
                if (l1Var.getPlaybackState() != 4) {
                    l1Var.m();
                }
            } else if (PlayerControlView.this.f18618h == view) {
                l1Var.y();
            } else if (PlayerControlView.this.f18615e == view) {
                PlayerControlView.this.C(l1Var);
            } else if (PlayerControlView.this.f18616f == view) {
                PlayerControlView.this.B(l1Var);
            } else if (PlayerControlView.this.f18619i == view) {
                l1Var.setRepeatMode(b7.i0.a(l1Var.getRepeatMode(), PlayerControlView.this.N));
            } else if (PlayerControlView.this.f18620j == view) {
                l1Var.setShuffleModeEnabled(!l1Var.getShuffleModeEnabled());
            }
        }

        @Override // com.google.android.exoplayer2.ui.y0.a
        public void v(y0 y0Var, long j10) {
            if (PlayerControlView.this.f18623m != null) {
                PlayerControlView.this.f18623m.setText(b7.s0.b0(PlayerControlView.this.f18625o, PlayerControlView.this.f18626p, j10));
            }
        }

        @Override // com.google.android.exoplayer2.ui.y0.a
        public void x(y0 y0Var, long j10) {
            PlayerControlView.this.K = true;
            if (PlayerControlView.this.f18623m != null) {
                PlayerControlView.this.f18623m.setText(b7.s0.b0(PlayerControlView.this.f18625o, PlayerControlView.this.f18626p, j10));
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface d {
    }

    /* loaded from: classes4.dex */
    public interface e {
        void i(int i10);
    }

    static {
        o5.z.a("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(l1 l1Var) {
        l1Var.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(l1 l1Var) {
        int playbackState = l1Var.getPlaybackState();
        if (playbackState == 1) {
            l1Var.prepare();
        } else if (playbackState == 4) {
            M(l1Var, l1Var.x(), -9223372036854775807L);
        }
        l1Var.play();
    }

    private void D(l1 l1Var) {
        int playbackState = l1Var.getPlaybackState();
        if (playbackState != 1 && playbackState != 4 && l1Var.getPlayWhenReady()) {
            B(l1Var);
        } else {
            C(l1Var);
        }
    }

    private static int E(TypedArray typedArray, int i10) {
        return typedArray.getInt(u.f19016z, i10);
    }

    private void G() {
        removeCallbacks(this.f18630t);
        if (this.L > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i10 = this.L;
            this.T = uptimeMillis + i10;
            if (this.H) {
                postDelayed(this.f18630t, i10);
                return;
            }
            return;
        }
        this.T = -9223372036854775807L;
    }

    @SuppressLint({"InlinedApi"})
    private static boolean H(int i10) {
        if (i10 != 90 && i10 != 89 && i10 != 85 && i10 != 79 && i10 != 126 && i10 != 127 && i10 != 87 && i10 != 88) {
            return false;
        }
        return true;
    }

    private void K() {
        View view;
        View view2;
        boolean O = O();
        if (!O && (view2 = this.f18615e) != null) {
            view2.sendAccessibilityEvent(8);
        } else if (O && (view = this.f18616f) != null) {
            view.sendAccessibilityEvent(8);
        }
    }

    private void L() {
        View view;
        View view2;
        boolean O = O();
        if (!O && (view2 = this.f18615e) != null) {
            view2.requestFocus();
        } else if (O && (view = this.f18616f) != null) {
            view.requestFocus();
        }
    }

    private void M(l1 l1Var, int i10, long j10) {
        l1Var.seekTo(i10, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(l1 l1Var, long j10) {
        int x10;
        u1 currentTimeline = l1Var.getCurrentTimeline();
        if (this.J && !currentTimeline.u()) {
            int t10 = currentTimeline.t();
            x10 = 0;
            while (true) {
                long g10 = currentTimeline.r(x10, this.f18628r).g();
                if (j10 < g10) {
                    break;
                } else if (x10 == t10 - 1) {
                    j10 = g10;
                    break;
                } else {
                    j10 -= g10;
                    x10++;
                }
            }
        } else {
            x10 = l1Var.x();
        }
        M(l1Var, x10, j10);
        U();
    }

    private boolean O() {
        l1 l1Var = this.G;
        if (l1Var != null && l1Var.getPlaybackState() != 4 && this.G.getPlaybackState() != 1 && this.G.getPlayWhenReady()) {
            return true;
        }
        return false;
    }

    private void Q() {
        T();
        S();
        V();
        W();
        X();
    }

    private void R(boolean z10, boolean z11, @Nullable View view) {
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
    public void S() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        if (I() && this.H) {
            l1 l1Var = this.G;
            if (l1Var != null) {
                z10 = l1Var.g(5);
                z12 = l1Var.g(7);
                z13 = l1Var.g(11);
                z14 = l1Var.g(12);
                z11 = l1Var.g(9);
            } else {
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
            }
            R(this.Q, z12, this.f18611c);
            R(this.O, z13, this.f18618h);
            R(this.P, z14, this.f18617g);
            R(this.R, z11, this.f18613d);
            y0 y0Var = this.f18624n;
            if (y0Var != null) {
                y0Var.setEnabled(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        if (I() && this.H) {
            boolean O = O();
            View view = this.f18615e;
            int i11 = 8;
            boolean z13 = true;
            if (view != null) {
                if (O && view.isFocused()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (b7.s0.f2506a < 21) {
                    z11 = z10;
                } else if (O && b.a(this.f18615e)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                View view2 = this.f18615e;
                if (O) {
                    i10 = 8;
                } else {
                    i10 = 0;
                }
                view2.setVisibility(i10);
            } else {
                z10 = false;
                z11 = false;
            }
            View view3 = this.f18616f;
            if (view3 != null) {
                if (!O && view3.isFocused()) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z10 |= z12;
                if (b7.s0.f2506a < 21) {
                    z13 = z10;
                } else if (O || !b.a(this.f18616f)) {
                    z13 = false;
                }
                z11 |= z13;
                View view4 = this.f18616f;
                if (O) {
                    i11 = 0;
                }
                view4.setVisibility(i11);
            }
            if (z10) {
                L();
            }
            if (z11) {
                K();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        long j10;
        long j11;
        boolean z10;
        int playbackState;
        long j12;
        if (I() && this.H) {
            l1 l1Var = this.G;
            if (l1Var != null) {
                j10 = this.f18610b0 + l1Var.getContentPosition();
                j11 = this.f18610b0 + l1Var.l();
            } else {
                j10 = 0;
                j11 = 0;
            }
            if (j10 != this.f18612c0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f18612c0 = j10;
            this.f18614d0 = j11;
            TextView textView = this.f18623m;
            if (textView != null && !this.K && z10) {
                textView.setText(b7.s0.b0(this.f18625o, this.f18626p, j10));
            }
            y0 y0Var = this.f18624n;
            if (y0Var != null) {
                y0Var.setPosition(j10);
                this.f18624n.setBufferedPosition(j11);
            }
            removeCallbacks(this.f18629s);
            if (l1Var == null) {
                playbackState = 1;
            } else {
                playbackState = l1Var.getPlaybackState();
            }
            long j13 = 1000;
            if (l1Var != null && l1Var.isPlaying()) {
                y0 y0Var2 = this.f18624n;
                if (y0Var2 != null) {
                    j12 = y0Var2.getPreferredUpdateDelay();
                } else {
                    j12 = 1000;
                }
                long min = Math.min(j12, 1000 - (j10 % 1000));
                float f10 = l1Var.getPlaybackParameters().f17821a;
                if (f10 > 0.0f) {
                    j13 = ((float) min) / f10;
                }
                postDelayed(this.f18629s, b7.s0.q(j13, this.M, 1000L));
            } else if (playbackState != 4 && playbackState != 1) {
                postDelayed(this.f18629s, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        ImageView imageView;
        if (I() && this.H && (imageView = this.f18619i) != null) {
            if (this.N == 0) {
                R(false, false, imageView);
                return;
            }
            l1 l1Var = this.G;
            if (l1Var == null) {
                R(true, false, imageView);
                this.f18619i.setImageDrawable(this.f18631u);
                this.f18619i.setContentDescription(this.f18634x);
                return;
            }
            R(true, true, imageView);
            int repeatMode = l1Var.getRepeatMode();
            if (repeatMode != 0) {
                if (repeatMode != 1) {
                    if (repeatMode == 2) {
                        this.f18619i.setImageDrawable(this.f18633w);
                        this.f18619i.setContentDescription(this.f18636z);
                    }
                } else {
                    this.f18619i.setImageDrawable(this.f18632v);
                    this.f18619i.setContentDescription(this.f18635y);
                }
            } else {
                this.f18619i.setImageDrawable(this.f18631u);
                this.f18619i.setContentDescription(this.f18634x);
            }
            this.f18619i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        ImageView imageView;
        Drawable drawable;
        String str;
        if (I() && this.H && (imageView = this.f18620j) != null) {
            l1 l1Var = this.G;
            if (!this.S) {
                R(false, false, imageView);
            } else if (l1Var == null) {
                R(true, false, imageView);
                this.f18620j.setImageDrawable(this.B);
                this.f18620j.setContentDescription(this.F);
            } else {
                R(true, true, imageView);
                ImageView imageView2 = this.f18620j;
                if (l1Var.getShuffleModeEnabled()) {
                    drawable = this.A;
                } else {
                    drawable = this.B;
                }
                imageView2.setImageDrawable(drawable);
                ImageView imageView3 = this.f18620j;
                if (l1Var.getShuffleModeEnabled()) {
                    str = this.E;
                } else {
                    str = this.F;
                }
                imageView3.setContentDescription(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        boolean z10;
        int i10;
        int i11;
        int i12;
        u1.d dVar;
        int length;
        l1 l1Var = this.G;
        if (l1Var == null) {
            return;
        }
        boolean z11 = true;
        if (this.I && z(l1Var.getCurrentTimeline(), this.f18628r)) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.J = z10;
        long j10 = 0;
        this.f18610b0 = 0L;
        u1 currentTimeline = l1Var.getCurrentTimeline();
        if (!currentTimeline.u()) {
            int x10 = l1Var.x();
            boolean z12 = this.J;
            if (z12) {
                i11 = 0;
            } else {
                i11 = x10;
            }
            if (z12) {
                i12 = currentTimeline.t() - 1;
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
                    this.f18610b0 = b7.s0.Q0(j11);
                }
                currentTimeline.r(i11, this.f18628r);
                u1.d dVar2 = this.f18628r;
                if (dVar2.f18563n == -9223372036854775807L) {
                    b7.a.g(this.J ^ z11);
                    break;
                }
                int i13 = dVar2.f18564o;
                while (true) {
                    dVar = this.f18628r;
                    if (i13 <= dVar.f18565p) {
                        currentTimeline.j(i13, this.f18627q);
                        int f10 = this.f18627q.f();
                        for (int r10 = this.f18627q.r(); r10 < f10; r10++) {
                            long i14 = this.f18627q.i(r10);
                            if (i14 == Long.MIN_VALUE) {
                                long j12 = this.f18627q.f18538d;
                                if (j12 != -9223372036854775807L) {
                                    i14 = j12;
                                }
                            }
                            long q10 = i14 + this.f18627q.q();
                            if (q10 >= 0) {
                                long[] jArr = this.U;
                                if (i10 == jArr.length) {
                                    if (jArr.length == 0) {
                                        length = 1;
                                    } else {
                                        length = jArr.length * 2;
                                    }
                                    this.U = Arrays.copyOf(jArr, length);
                                    this.V = Arrays.copyOf(this.V, length);
                                }
                                this.U[i10] = b7.s0.Q0(j11 + q10);
                                this.V[i10] = this.f18627q.s(r10);
                                i10++;
                            }
                        }
                        i13++;
                    }
                }
                j11 += dVar.f18563n;
                i11++;
                z11 = true;
            }
            j10 = j11;
        } else {
            i10 = 0;
        }
        long Q0 = b7.s0.Q0(j10);
        TextView textView = this.f18622l;
        if (textView != null) {
            textView.setText(b7.s0.b0(this.f18625o, this.f18626p, Q0));
        }
        y0 y0Var = this.f18624n;
        if (y0Var != null) {
            y0Var.setDuration(Q0);
            int length2 = this.W.length;
            int i15 = i10 + length2;
            long[] jArr2 = this.U;
            if (i15 > jArr2.length) {
                this.U = Arrays.copyOf(jArr2, i15);
                this.V = Arrays.copyOf(this.V, i15);
            }
            System.arraycopy(this.W, 0, this.U, i10, length2);
            System.arraycopy(this.f18608a0, 0, this.V, i10, length2);
            this.f18624n.setAdGroupTimesMs(this.U, this.V, i15);
        }
        U();
    }

    private static boolean z(u1 u1Var, u1.d dVar) {
        if (u1Var.t() > 100) {
            return false;
        }
        int t10 = u1Var.t();
        for (int i10 = 0; i10 < t10; i10++) {
            if (u1Var.r(i10, dVar).f18563n == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    public boolean A(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        l1 l1Var = this.G;
        if (l1Var != null && H(keyCode)) {
            if (keyEvent.getAction() == 0) {
                if (keyCode == 90) {
                    if (l1Var.getPlaybackState() != 4) {
                        l1Var.m();
                        return true;
                    }
                    return true;
                } else if (keyCode == 89) {
                    l1Var.y();
                    return true;
                } else if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 && keyCode != 85) {
                        if (keyCode != 87) {
                            if (keyCode != 88) {
                                if (keyCode != 126) {
                                    if (keyCode == 127) {
                                        B(l1Var);
                                        return true;
                                    }
                                    return true;
                                }
                                C(l1Var);
                                return true;
                            }
                            l1Var.o();
                            return true;
                        }
                        l1Var.t();
                        return true;
                    }
                    D(l1Var);
                    return true;
                } else {
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    public void F() {
        if (I()) {
            setVisibility(8);
            Iterator<e> it = this.f18609b.iterator();
            while (it.hasNext()) {
                it.next().i(getVisibility());
            }
            removeCallbacks(this.f18629s);
            removeCallbacks(this.f18630t);
            this.T = -9223372036854775807L;
        }
    }

    public boolean I() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public void J(e eVar) {
        this.f18609b.remove(eVar);
    }

    public void P() {
        if (!I()) {
            setVisibility(0);
            Iterator<e> it = this.f18609b.iterator();
            while (it.hasNext()) {
                it.next().i(getVisibility());
            }
            Q();
            L();
            K();
        }
        G();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!A(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f18630t);
        } else if (motionEvent.getAction() == 1) {
            G();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public l1 getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.N;
    }

    public boolean getShowShuffleButton() {
        return this.S;
    }

    public int getShowTimeoutMs() {
        return this.L;
    }

    public boolean getShowVrButton() {
        View view = this.f18621k;
        if (view != null && view.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.H = true;
        long j10 = this.T;
        if (j10 != -9223372036854775807L) {
            long uptimeMillis = j10 - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                F();
            } else {
                postDelayed(this.f18630t, uptimeMillis);
            }
        } else if (I()) {
            G();
        }
        Q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
        removeCallbacks(this.f18629s);
        removeCallbacks(this.f18630t);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        boolean z10 = false;
        if (jArr == null) {
            this.W = new long[0];
            this.f18608a0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) b7.a.e(zArr);
            if (jArr.length == zArr2.length) {
                z10 = true;
            }
            b7.a.a(z10);
            this.W = jArr;
            this.f18608a0 = zArr2;
        }
        X();
    }

    public void setPlayer(@Nullable l1 l1Var) {
        boolean z10;
        boolean z11 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (l1Var == null || l1Var.s() == Looper.getMainLooper()) {
            z11 = true;
        }
        b7.a.a(z11);
        l1 l1Var2 = this.G;
        if (l1Var2 == l1Var) {
            return;
        }
        if (l1Var2 != null) {
            l1Var2.C(this.f18607a);
        }
        this.G = l1Var;
        if (l1Var != null) {
            l1Var.F(this.f18607a);
        }
        Q();
    }

    public void setRepeatToggleModes(int i10) {
        this.N = i10;
        l1 l1Var = this.G;
        if (l1Var != null) {
            int repeatMode = l1Var.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.G.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.G.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.G.setRepeatMode(2);
            }
        }
        V();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.P = z10;
        S();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.I = z10;
        X();
    }

    public void setShowNextButton(boolean z10) {
        this.R = z10;
        S();
    }

    public void setShowPreviousButton(boolean z10) {
        this.Q = z10;
        S();
    }

    public void setShowRewindButton(boolean z10) {
        this.O = z10;
        S();
    }

    public void setShowShuffleButton(boolean z10) {
        this.S = z10;
        W();
    }

    public void setShowTimeoutMs(int i10) {
        this.L = i10;
        if (I()) {
            G();
        }
    }

    public void setShowVrButton(boolean z10) {
        int i10;
        View view = this.f18621k;
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
        this.M = b7.s0.p(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        boolean z10;
        View view = this.f18621k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            boolean showVrButton = getShowVrButton();
            if (onClickListener != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            R(showVrButton, z10, this.f18621k);
        }
    }

    public void y(e eVar) {
        b7.a.e(eVar);
        this.f18609b.add(eVar);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i10);
        int i11 = q.f18891b;
        this.L = 5000;
        this.N = 0;
        this.M = 200;
        this.T = -9223372036854775807L;
        this.O = true;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = false;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, u.f19014x, i10, 0);
            try {
                this.L = obtainStyledAttributes.getInt(u.F, this.L);
                i11 = obtainStyledAttributes.getResourceId(u.f19015y, i11);
                this.N = E(obtainStyledAttributes, this.N);
                this.O = obtainStyledAttributes.getBoolean(u.D, this.O);
                this.P = obtainStyledAttributes.getBoolean(u.A, this.P);
                this.Q = obtainStyledAttributes.getBoolean(u.C, this.Q);
                this.R = obtainStyledAttributes.getBoolean(u.B, this.R);
                this.S = obtainStyledAttributes.getBoolean(u.E, this.S);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(u.G, this.M));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f18609b = new CopyOnWriteArrayList<>();
        this.f18627q = new u1.b();
        this.f18628r = new u1.d();
        StringBuilder sb2 = new StringBuilder();
        this.f18625o = sb2;
        this.f18626p = new Formatter(sb2, Locale.getDefault());
        this.U = new long[0];
        this.V = new boolean[0];
        this.W = new long[0];
        this.f18608a0 = new boolean[0];
        c cVar = new c();
        this.f18607a = cVar;
        this.f18629s = new Runnable() { // from class: com.google.android.exoplayer2.ui.h
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.U();
            }
        };
        this.f18630t = new Runnable() { // from class: com.google.android.exoplayer2.ui.i
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.F();
            }
        };
        LayoutInflater.from(context).inflate(i11, this);
        setDescendantFocusability(262144);
        y0 y0Var = (y0) findViewById(o.H);
        View findViewById = findViewById(o.I);
        if (y0Var != null) {
            this.f18624n = y0Var;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(o.H);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f18624n = defaultTimeBar;
        } else {
            this.f18624n = null;
        }
        this.f18622l = (TextView) findViewById(o.f18872m);
        this.f18623m = (TextView) findViewById(o.F);
        y0 y0Var2 = this.f18624n;
        if (y0Var2 != null) {
            y0Var2.a(cVar);
        }
        View findViewById2 = findViewById(o.C);
        this.f18615e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(cVar);
        }
        View findViewById3 = findViewById(o.B);
        this.f18616f = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(cVar);
        }
        View findViewById4 = findViewById(o.G);
        this.f18611c = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(cVar);
        }
        View findViewById5 = findViewById(o.f18883x);
        this.f18613d = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(cVar);
        }
        View findViewById6 = findViewById(o.K);
        this.f18618h = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(cVar);
        }
        View findViewById7 = findViewById(o.f18876q);
        this.f18617g = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(cVar);
        }
        ImageView imageView = (ImageView) findViewById(o.J);
        this.f18619i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar);
        }
        ImageView imageView2 = (ImageView) findViewById(o.N);
        this.f18620j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(cVar);
        }
        View findViewById8 = findViewById(o.U);
        this.f18621k = findViewById8;
        setShowVrButton(false);
        R(false, false, findViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(p.f18888b) / 100.0f;
        this.D = resources.getInteger(p.f18887a) / 100.0f;
        this.f18631u = resources.getDrawable(m.f18839b);
        this.f18632v = resources.getDrawable(m.f18840c);
        this.f18633w = resources.getDrawable(m.f18838a);
        this.A = resources.getDrawable(m.f18842e);
        this.B = resources.getDrawable(m.f18841d);
        this.f18634x = resources.getString(s.f18911j);
        this.f18635y = resources.getString(s.f18912k);
        this.f18636z = resources.getString(s.f18910i);
        this.E = resources.getString(s.f18915n);
        this.F = resources.getString(s.f18914m);
        this.f18612c0 = -9223372036854775807L;
        this.f18614d0 = -9223372036854775807L;
    }

    public void setProgressUpdateListener(@Nullable d dVar) {
    }
}
