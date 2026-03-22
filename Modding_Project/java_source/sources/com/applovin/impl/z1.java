package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.a1;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.b6;
import com.applovin.impl.j8;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class z1 extends v1 implements AppLovinCommunicatorSubscriber {
    private final a2 M;
    private MediaPlayer N;
    private final View O;
    protected final AppLovinVideoView P;
    protected final com.applovin.impl.a Q;
    protected final com.applovin.impl.adview.g R;
    protected i0 S;
    protected final ImageView T;
    protected com.applovin.impl.adview.l U;
    protected final ProgressBar V;
    protected ProgressBar W;
    protected ImageView X;
    private final e Y;
    private final d Z;

    /* renamed from: a0  reason: collision with root package name */
    private final Handler f10668a0;

    /* renamed from: b0  reason: collision with root package name */
    private final Handler f10669b0;

    /* renamed from: c0  reason: collision with root package name */
    protected final a1 f10670c0;

    /* renamed from: d0  reason: collision with root package name */
    protected final a1 f10671d0;

    /* renamed from: e0  reason: collision with root package name */
    private final boolean f10672e0;

    /* renamed from: f0  reason: collision with root package name */
    protected boolean f10673f0;

    /* renamed from: g0  reason: collision with root package name */
    protected long f10674g0;

    /* renamed from: h0  reason: collision with root package name */
    private int f10675h0;

    /* renamed from: i0  reason: collision with root package name */
    private int f10676i0;

    /* renamed from: j0  reason: collision with root package name */
    protected boolean f10677j0;

    /* renamed from: k0  reason: collision with root package name */
    private boolean f10678k0;

    /* renamed from: l0  reason: collision with root package name */
    private final AtomicBoolean f10679l0;

    /* renamed from: m0  reason: collision with root package name */
    private final AtomicBoolean f10680m0;

    /* renamed from: n0  reason: collision with root package name */
    private long f10681n0;

    /* renamed from: o0  reason: collision with root package name */
    private long f10682o0;

    /* loaded from: classes2.dex */
    class a implements a1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f10683a;

        a(int i10) {
            this.f10683a = i10;
        }

        @Override // com.applovin.impl.a1.b
        public void a() {
            z1 z1Var = z1.this;
            if (z1Var.S != null) {
                long seconds = this.f10683a - TimeUnit.MILLISECONDS.toSeconds(z1Var.P.getCurrentPosition());
                if (seconds <= 0) {
                    z1.this.f10174v = true;
                } else if (z1.this.P()) {
                    z1.this.S.setProgress((int) seconds);
                }
            }
        }

        @Override // com.applovin.impl.a1.b
        public boolean b() {
            return z1.this.P();
        }
    }

    /* loaded from: classes2.dex */
    class b implements a1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Integer f10685a;

        b(Integer num) {
            this.f10685a = num;
        }

        @Override // com.applovin.impl.a1.b
        public void a() {
            z1 z1Var = z1.this;
            if (z1Var.f10677j0) {
                z1Var.V.setVisibility(8);
                return;
            }
            z1.this.V.setProgress((int) ((z1Var.P.getCurrentPosition() / ((float) z1.this.f10674g0)) * this.f10685a.intValue()));
        }

        @Override // com.applovin.impl.a1.b
        public boolean b() {
            return !z1.this.f10677j0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements a1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f10687a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Integer f10688b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Long f10689c;

        c(long j10, Integer num, Long l10) {
            this.f10687a = j10;
            this.f10688b = num;
            this.f10689c = l10;
        }

        @Override // com.applovin.impl.a1.b
        public void a() {
            z1.this.W.setProgress((int) ((((float) z1.this.f10170r) / ((float) this.f10687a)) * this.f10688b.intValue()));
            z1.this.f10170r += this.f10689c.longValue();
        }

        @Override // com.applovin.impl.a1.b
        public boolean b() {
            if (z1.this.f10170r < this.f10687a) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    private class d implements j8.a {
        private d() {
        }

        @Override // com.applovin.impl.j8.a
        public void a(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Closing ad from video button...");
            }
            z1.this.a("video_button");
        }

        @Override // com.applovin.impl.j8.a
        public void b(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Clicking through from video button...");
            }
            z1.this.a(lVar.getAndClearLastClickEvent(), (Bundle) null);
        }

        @Override // com.applovin.impl.j8.a
        public void c(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Fully Watched from video button...");
            }
            z1.this.J = true;
        }

        @Override // com.applovin.impl.j8.a
        public void d(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Skipping video from video button...");
            }
            z1.this.S();
        }

        /* synthetic */ d(z1 z1Var, a aVar) {
            this();
        }

        @Override // com.applovin.impl.j8.a
        public void a(com.applovin.impl.adview.l lVar, Bundle bundle) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Attempting to launch Direct Download from video button...");
            }
            z1.this.a(lVar.getAndClearLastClickEvent(), bundle);
        }

        @Override // com.applovin.impl.j8.a
        public void b(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Attempting to report a template error from video button...");
            }
            h7.c(uri, z1.this.f10161i.getController().g(), z1.this.f10154b);
        }

        @Override // com.applovin.impl.j8.a
        public void a(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Attempting to load a url from video button...");
            }
            h7.a(uri, z1.this.f10161i.getController(), z1.this.f10154b);
        }
    }

    /* loaded from: classes2.dex */
    private class e implements MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnCompletionListener, AppLovinTouchToClickListener.OnClickListener {
        private e() {
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, MotionEvent motionEvent) {
            z1.this.a(motionEvent, (Bundle) null);
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "Video completed");
            }
            z1.this.f10678k0 = true;
            z1 z1Var = z1.this;
            if (!z1Var.f10172t) {
                z1Var.R();
            } else if (z1Var.g()) {
                z1.this.z();
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            z1 z1Var = z1.this;
            z1Var.g("Video view error (" + i10 + "," + i11 + ")");
            z1.this.P.start();
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = z1.this.f10155c;
                oVar2.a("AppLovinFullscreenActivity", "MediaPlayer Info: (" + i10 + ", " + i11 + ")");
            }
            if (i10 == 701) {
                z1.this.Q();
                return false;
            } else if (i10 == 3) {
                z1.this.f10670c0.b();
                z1 z1Var = z1.this;
                if (z1Var.R != null) {
                    z1Var.O();
                }
                z1.this.D();
                return false;
            } else if (i10 == 702) {
                z1.this.D();
                return false;
            } else {
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            z1.this.N = mediaPlayer;
            mediaPlayer.setOnInfoListener(z1.this.Y);
            mediaPlayer.setOnErrorListener(z1.this.Y);
            float f10 = !z1.this.f10673f0 ? 1 : 0;
            mediaPlayer.setVolume(f10, f10);
            z1.this.f10173u = (int) TimeUnit.MILLISECONDS.toSeconds(mediaPlayer.getDuration());
            z1.this.d(mediaPlayer.getDuration());
            z1.this.N();
            com.applovin.impl.sdk.o oVar = z1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                z1.this.f10155c.a("AppLovinFullscreenActivity", "MediaPlayer prepared: " + z1.this.N);
            }
        }

        /* synthetic */ e(z1 z1Var, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    private class f implements View.OnClickListener {
        private f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z1 z1Var = z1.this;
            if (view == z1Var.R) {
                z1Var.S();
            } else if (view == z1Var.T) {
                z1Var.T();
            } else if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = z1.this.f10155c;
                oVar.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }

        /* synthetic */ f(z1 z1Var, a aVar) {
            this();
        }
    }

    public z1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.M = new a2(this.f10153a, this.f10156d, this.f10154b);
        this.X = null;
        e eVar = new e(this, null);
        this.Y = eVar;
        d dVar = new d(this, null);
        this.Z = dVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f10668a0 = handler;
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f10669b0 = handler2;
        a1 a1Var = new a1(handler, this.f10154b);
        this.f10670c0 = a1Var;
        this.f10671d0 = new a1(handler2, this.f10154b);
        boolean O0 = this.f10153a.O0();
        this.f10672e0 = O0;
        this.f10673f0 = k7.e(this.f10154b);
        this.f10676i0 = -1;
        this.f10679l0 = new AtomicBoolean();
        this.f10680m0 = new AtomicBoolean();
        this.f10681n0 = -2L;
        this.f10682o0 = 0L;
        if (bVar.hasVideoUrl()) {
            AppLovinVideoView appLovinVideoView = new AppLovinVideoView(activity);
            this.P = appLovinVideoView;
            appLovinVideoView.setOnPreparedListener(eVar);
            appLovinVideoView.setOnCompletionListener(eVar);
            appLovinVideoView.setOnErrorListener(eVar);
            bVar.h().putString("video_view_address", b8.a(appLovinVideoView));
            View view = new View(activity);
            this.O = view;
            boolean z10 = false;
            view.setBackgroundColor(Color.argb(254, 0, 0, 0));
            if (((Boolean) kVar.a(v4.f10283k1)).booleanValue()) {
                view.setOnTouchListener(new AppLovinTouchToClickListener(kVar, v4.f10258h0, activity, eVar));
            } else {
                appLovinVideoView.setOnTouchListener(new AppLovinTouchToClickListener(kVar, v4.f10258h0, activity, eVar));
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.qg
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        boolean a10;
                        a10 = z1.a(view2, motionEvent);
                        return a10;
                    }
                });
            }
            f fVar = new f(this, null);
            if (bVar.n0() >= 0) {
                com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.e0(), activity);
                this.R = gVar;
                gVar.setVisibility(8);
                gVar.setOnClickListener(fVar);
            } else {
                this.R = null;
            }
            if (a(this.f10673f0, kVar)) {
                ImageView imageView = new ImageView(activity);
                this.T = imageView;
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setClickable(true);
                imageView.setOnClickListener(fVar);
                e(this.f10673f0);
            } else {
                this.T = null;
            }
            String k02 = bVar.k0();
            if (StringUtils.isValidString(k02)) {
                j8 j8Var = new j8(kVar);
                j8Var.a(new WeakReference(dVar));
                com.applovin.impl.adview.l lVar = new com.applovin.impl.adview.l(bVar.j0(), bVar, j8Var, activity);
                this.U = lVar;
                lVar.a(k02);
            } else {
                this.U = null;
            }
            if (O0) {
                com.applovin.impl.a aVar = new com.applovin.impl.a(activity, ((Integer) kVar.a(v4.f10268i2)).intValue(), 16842874);
                this.Q = aVar;
                aVar.setColor(Color.parseColor("#75FFFFFF"));
                aVar.setBackgroundColor(Color.parseColor("#00000000"));
                aVar.setVisibility(8);
                AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
            } else {
                this.Q = null;
            }
            int b10 = b();
            if (((Boolean) kVar.a(v4.S1)).booleanValue() && b10 > 0) {
                z10 = true;
            }
            if (this.S == null && z10) {
                this.S = new i0(activity);
                int t10 = bVar.t();
                this.S.setTextColor(t10);
                this.S.setTextSize(((Integer) kVar.a(v4.R1)).intValue());
                this.S.setFinishedStrokeColor(t10);
                this.S.setFinishedStrokeWidth(((Integer) kVar.a(v4.Q1)).intValue());
                this.S.setMax(b10);
                this.S.setProgress(b10);
                a1Var.a("COUNTDOWN_CLOCK", TimeUnit.SECONDS.toMillis(1L), new a(b10));
            }
            if (bVar.u0()) {
                Integer num = (Integer) kVar.a(v4.f10252g2);
                ProgressBar progressBar = new ProgressBar(activity, null, 16842872);
                this.V = progressBar;
                a(progressBar, bVar.t0(), num.intValue());
                a1Var.a("PROGRESS_BAR", ((Long) kVar.a(v4.f10244f2)).longValue(), new b(num));
                return;
            }
            this.V = null;
            return;
        }
        throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
    }

    private void L() {
        com.applovin.impl.adview.l lVar;
        final boolean z10;
        a8 l02 = this.f10153a.l0();
        if (l02 != null && l02.j() && !this.f10677j0 && (lVar = this.U) != null) {
            if (lVar.getVisibility() == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            final long h10 = l02.h();
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.hg
                @Override // java.lang.Runnable
                public final void run() {
                    z1.this.b(z10, h10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        if (this.f10677j0) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f10155c.k("AppLovinFullscreenActivity", "Skip video resume - postitial shown");
            }
        } else if (this.f10154b.n0().isApplicationPaused()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f10155c.k("AppLovinFullscreenActivity", "Skip video resume - app paused");
            }
        } else if (this.f10676i0 >= 0) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f10155c;
                oVar.a("AppLovinFullscreenActivity", "Resuming video at position " + this.f10676i0 + "ms for MediaPlayer: " + this.N);
            }
            this.P.seekTo(this.f10676i0);
            this.P.start();
            this.f10670c0.b();
            this.f10676i0 = -1;
            a(new Runnable() { // from class: com.applovin.impl.jg
                @Override // java.lang.Runnable
                public final void run() {
                    z1.this.H();
                }
            }, 250L);
        } else if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.a("AppLovinFullscreenActivity", "Invalid last video position");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        if (this.f10680m0.compareAndSet(false, true)) {
            a(this.R, this.f10153a.n0(), new Runnable() { // from class: com.applovin.impl.kg
                @Override // java.lang.Runnable
                public final void run() {
                    z1.this.I();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    private void e(boolean z10) {
        if (o0.e()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f10156d.getDrawable(z10 ? R.drawable.applovin_ic_unmute_to_mute : R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.T.setScaleType(ImageView.ScaleType.FIT_XY);
                this.T.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        ImageViewUtils.setImageUri(this.T, z10 ? this.f10153a.Q() : this.f10153a.i0(), this.f10154b);
    }

    private void f(boolean z10) {
        this.f10675h0 = B();
        if (z10) {
            this.P.pause();
        } else {
            this.P.stopPlayback();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(String str) {
        l8.a(this.U, str, "AppLovinFullscreenActivity", this.f10154b);
    }

    protected void N() {
        long Z;
        long millis;
        long j10 = 0;
        if (this.f10153a.Y() >= 0 || this.f10153a.Z() >= 0) {
            if (this.f10153a.Y() >= 0) {
                Z = this.f10153a.Y();
            } else {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.f10153a;
                long j11 = this.f10674g0;
                if (j11 > 0) {
                    j10 = j11;
                }
                if (aVar.j1()) {
                    int t12 = (int) ((com.applovin.impl.sdk.ad.a) this.f10153a).t1();
                    if (t12 > 0) {
                        millis = TimeUnit.SECONDS.toMillis(t12);
                    } else {
                        int s10 = (int) aVar.s();
                        if (s10 > 0) {
                            millis = TimeUnit.SECONDS.toMillis(s10);
                        }
                    }
                    j10 += millis;
                }
                Z = (long) (j10 * (this.f10153a.Z() / 100.0d));
            }
            c(Z);
        }
    }

    protected boolean P() {
        if (!this.f10174v && !this.f10677j0 && this.P.isPlaying()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Q() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.ng
            @Override // java.lang.Runnable
            public final void run() {
                z1.this.J();
            }
        });
    }

    public void R() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.a("AppLovinFullscreenActivity", "Showing postitial...");
        }
        f(this.f10153a.q1());
        long W = this.f10153a.W();
        if (W > 0) {
            this.f10170r = 0L;
            Long l10 = (Long) this.f10154b.a(v4.f10308n2);
            Integer num = (Integer) this.f10154b.a(v4.f10332q2);
            ProgressBar progressBar = new ProgressBar(this.f10156d, null, 16842872);
            this.W = progressBar;
            a(progressBar, this.f10153a.V(), num.intValue());
            this.f10671d0.a("POSTITIAL_PROGRESS_BAR", l10.longValue(), new c(W, num, l10));
            this.f10671d0.b();
        }
        this.M.a(this.f10163k, this.f10162j, this.f10161i, this.W);
        a("javascript:al_onPoststitialShow(" + this.f10177y + "," + this.f10178z + ");", this.f10153a.H());
        if (this.f10163k != null) {
            if (this.f10153a.s() >= 0) {
                a(this.f10163k, this.f10153a.s(), new Runnable() { // from class: com.applovin.impl.mg
                    @Override // java.lang.Runnable
                    public final void run() {
                        z1.this.K();
                    }
                });
            } else {
                this.f10163k.setVisibility(0);
            }
        }
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.g gVar = this.f10163k;
        if (gVar != null) {
            arrayList.add(new e4(gVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.k kVar = this.f10162j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.f10162j;
            arrayList.add(new e4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        ProgressBar progressBar2 = this.W;
        if (progressBar2 != null) {
            arrayList.add(new e4(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        this.f10153a.getAdEventTracker().b(this.f10161i, arrayList);
        o();
        this.f10677j0 = true;
    }

    public void S() {
        this.f10681n0 = SystemClock.elapsedRealtime() - this.f10682o0;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.a("AppLovinFullscreenActivity", "Attempting to skip video with skip time: " + this.f10681n0 + "ms");
        }
        C();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void T() {
        MediaPlayer mediaPlayer = this.N;
        if (mediaPlayer == null) {
            return;
        }
        try {
            float f10 = this.f10673f0 ? 1.0f : 0.0f;
            mediaPlayer.setVolume(f10, f10);
            boolean z10 = !this.f10673f0;
            this.f10673f0 = z10;
            e(z10);
            a(this.f10673f0, 0L);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(long j10) {
        this.f10674g0 = j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g(String str) {
        String str2;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.b("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.f10153a);
        }
        if (this.f10679l0.compareAndSet(false, true)) {
            if (((Boolean) this.f10154b.a(v4.O0)).booleanValue()) {
                this.f10154b.H().d(this.f10153a, com.applovin.impl.sdk.k.o());
            }
            AppLovinAdDisplayListener appLovinAdDisplayListener = this.F;
            if (appLovinAdDisplayListener instanceof k2) {
                ((k2) appLovinAdDisplayListener).onAdDisplayFailed(str);
            }
            if (this.f10153a instanceof l7) {
                str2 = "handleVastVideoError";
            } else {
                str2 = "handleVideoError";
            }
            this.f10154b.E().a(str2, str, this.f10153a);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", str2);
            CollectionUtils.putStringIfValid("error_message", str, hashMap);
            this.f10154b.g().a(c2.f7666s, this.f10153a, hashMap);
            a("media_error");
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdPresenter";
    }

    @Override // com.applovin.impl.v1
    protected void l() {
        super.a(B(), this.f10672e0, E(), this.f10681n0);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            if (messageData.getLong("ad_id") == this.f10153a.getAdIdNumber() && this.f10672e0) {
                int i10 = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string != null || r0.a(i10)) && !this.f10678k0 && !this.P.isPlaying()) {
                    g("Video cache error during stream. ResponseCode=" + i10 + ", exception=" + string);
                }
            }
        }
    }

    @Override // com.applovin.impl.v1
    public void q() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "Destroying video components");
        }
        try {
            if (((Boolean) this.f10154b.a(v4.f10280j6)).booleanValue()) {
                l8.b(this.U);
                this.U = null;
            }
            if (this.f10672e0) {
                AppLovinCommunicator.getInstance(this.f10156d).unsubscribe(this, "video_caching_failed");
            }
            AppLovinVideoView appLovinVideoView = this.P;
            if (appLovinVideoView != null) {
                appLovinVideoView.pause();
                this.P.stopPlayback();
            }
            MediaPlayer mediaPlayer = this.N;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("AppLovinFullscreenActivity", "Unable to destroy presenter", th2);
        }
        super.q();
    }

    @Override // com.applovin.impl.v1
    public void u() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.a("AppLovinFullscreenActivity", "Pausing video");
        }
        this.f10676i0 = this.P.getCurrentPosition();
        this.P.pause();
        this.f10670c0.c();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.a("AppLovinFullscreenActivity", "Paused video at position " + this.f10676i0 + "ms");
        }
    }

    @Override // com.applovin.impl.v1
    public void v() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.v1
    protected void z() {
        this.M.a(this.f10164l);
        this.f10169q = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        com.applovin.impl.a aVar = this.Q;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        com.applovin.impl.a aVar = this.Q;
        if (aVar != null) {
            aVar.a();
            final com.applovin.impl.a aVar2 = this.Q;
            Objects.requireNonNull(aVar2);
            a(new Runnable() { // from class: com.applovin.impl.ig
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.b();
                }
            }, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        this.f10681n0 = -1L;
        this.f10682o0 = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J() {
        com.applovin.impl.a aVar = this.Q;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K() {
        this.f10169q = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int B() {
        long currentPosition = this.P.getCurrentPosition();
        if (this.f10678k0) {
            return 100;
        }
        if (currentPosition > 0) {
            return (int) ((((float) currentPosition) / ((float) this.f10674g0)) * 100.0f);
        }
        return this.f10675h0;
    }

    public void C() {
        this.f10177y++;
        if (this.f10153a.E()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f10155c.a("AppLovinFullscreenActivity", "Dismissing ad on video skip...");
            }
            a("video_skip");
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.a("AppLovinFullscreenActivity", "Skipping video...");
        }
        R();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.og
            @Override // java.lang.Runnable
            public final void run() {
                z1.this.G();
            }
        });
    }

    protected boolean E() {
        if (this.J && this.f10153a.n1()) {
            return true;
        }
        return F();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean F() {
        return B() >= this.f10153a.p0();
    }

    @Override // com.applovin.impl.v1
    public void b(boolean z10) {
        super.b(z10);
        if (z10) {
            b(0L);
            if (this.f10677j0) {
                this.f10671d0.b();
            }
        } else if (this.f10677j0) {
            this.f10671d0.c();
        } else {
            u();
        }
    }

    @Override // com.applovin.impl.v1
    public void d() {
        super.d();
        z();
    }

    @Override // com.applovin.impl.v1
    public void a(ViewGroup viewGroup) {
        String str;
        this.M.a(this.T, this.R, this.U, this.Q, this.V, this.S, this.P, this.O, this.f10161i, this.f10162j, this.X, viewGroup);
        if (o0.h() && (str = this.f10154b.o0().getExtraParameters().get("audio_focus_request")) != null) {
            this.P.setAudioFocusRequest(Integer.parseInt(str));
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (((Boolean) this.f10154b.a(v4.L5)).booleanValue() || !a(!this.f10672e0)) {
            this.P.setVideoURI(this.f10153a.v0());
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            com.applovin.impl.adview.k kVar = this.f10162j;
            if (kVar != null) {
                kVar.b();
            }
            this.P.start();
            if (this.f10672e0) {
                Q();
            }
            this.f10161i.renderAd(this.f10153a);
            if (this.R != null) {
                this.f10154b.r0().a(new p6(this.f10154b, "scheduleSkipButton", new Runnable() { // from class: com.applovin.impl.lg
                    @Override // java.lang.Runnable
                    public final void run() {
                        z1.this.O();
                    }
                }), b6.b.TIMEOUT, this.f10153a.o0(), true);
            }
            super.c(this.f10673f0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z10, long j10) {
        if (z10) {
            b8.a(this.U, j10, (Runnable) null);
        } else {
            b8.b(this.U, j10, (Runnable) null);
        }
    }

    @Override // com.applovin.impl.v1
    public void e() {
        super.e();
        this.M.a(this.U);
        this.M.a((View) this.R);
        if (!g() || this.f10677j0) {
            z();
        }
    }

    @Override // com.applovin.impl.v1
    public void b(long j10) {
        a(new Runnable() { // from class: com.applovin.impl.gg
            @Override // java.lang.Runnable
            public final void run() {
                z1.this.M();
            }
        }, j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.v1
    public void a(final String str, long j10) {
        super.a(str, j10);
        if (this.U == null || j10 < 0 || !StringUtils.isValidString(str)) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.pg
            @Override // java.lang.Runnable
            public final void run() {
                z1.this.h(str);
            }
        }, j10);
    }

    private void a(ProgressBar progressBar, int i10, int i11) {
        progressBar.setMax(i11);
        progressBar.setPadding(0, 0, 0, 0);
        if (o0.e()) {
            progressBar.setProgressTintList(ColorStateList.valueOf(i10));
        }
    }

    @Override // com.applovin.impl.v1
    public void a(String str) {
        this.f10670c0.a();
        this.f10671d0.a();
        this.f10668a0.removeCallbacksAndMessages(null);
        this.f10669b0.removeCallbacksAndMessages(null);
        if (!((Boolean) this.f10154b.a(v4.D6)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar = this.f10153a;
            if (bVar != null) {
                bVar.a(str);
            }
            l();
        }
        super.a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(MotionEvent motionEvent, Bundle bundle) {
        Context context;
        if (this.f10153a.N0()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f10155c.a("AppLovinFullscreenActivity", "Clicking through video");
            }
            Uri m02 = this.f10153a.m0();
            if (m02 != null) {
                if (!((Boolean) this.f10154b.a(v4.f10385x)).booleanValue() || (context = this.f10156d) == null) {
                    AppLovinAdView appLovinAdView = this.f10161i;
                    context = appLovinAdView != null ? appLovinAdView.getContext() : com.applovin.impl.sdk.k.o();
                }
                this.f10154b.k().trackAndLaunchVideoClick(this.f10153a, m02, motionEvent, bundle, this, context);
                q2.a(this.E, this.f10153a);
                this.f10178z++;
                return;
            }
            return;
        }
        L();
    }

    private static boolean a(boolean z10, com.applovin.impl.sdk.k kVar) {
        if (((Boolean) kVar.a(v4.X1)).booleanValue()) {
            if (!((Boolean) kVar.a(v4.Y1)).booleanValue() || z10) {
                return true;
            }
            return ((Boolean) kVar.a(v4.f10202a2)).booleanValue();
        }
        return false;
    }
}
