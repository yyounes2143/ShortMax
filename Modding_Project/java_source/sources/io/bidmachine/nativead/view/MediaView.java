package io.bidmachine.nativead.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.TrackingEvent;
import io.bidmachine.iab.vast.view.CircleCountdownView;
import io.bidmachine.nativead.view.MediaView;
import io.bidmachine.nativead.view.VideoPlayerActivity;
import java.io.File;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import np.d;
import np.e;
/* loaded from: classes8.dex */
public class MediaView extends RelativeLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener, VideoPlayerActivity.c {
    public static VideoPlayerActivity.c B;
    private NativeState A;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    mp.e f57953a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    mp.g f57954b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    mp.f f57955c;

    /* renamed from: d  reason: collision with root package name */
    boolean f57956d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f57957e;

    /* renamed from: f  reason: collision with root package name */
    private ProgressBar f57958f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f57959g;

    /* renamed from: h  reason: collision with root package name */
    private CircleCountdownView f57960h;

    /* renamed from: i  reason: collision with root package name */
    private MediaPlayer f57961i;

    /* renamed from: j  reason: collision with root package name */
    private TextureView f57962j;

    /* renamed from: k  reason: collision with root package name */
    private Timer f57963k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f57964l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f57965m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f57966n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f57967o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f57968p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f57969q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f57970r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f57971s;

    /* renamed from: t  reason: collision with root package name */
    private volatile boolean f57972t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f57973u;

    /* renamed from: v  reason: collision with root package name */
    private int f57974v;

    /* renamed from: w  reason: collision with root package name */
    private int f57975w;

    /* renamed from: x  reason: collision with root package name */
    private int f57976x;

    /* renamed from: y  reason: collision with root package name */
    private int f57977y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f57978z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaView.this.f57970r = true;
            MediaView.this.W();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10;
            mp.g gVar = MediaView.this.f57954b;
            if (gVar != null && gVar.n() != null) {
                io.bidmachine.core.a.d("Video has been clicked");
                MediaView mediaView = MediaView.this;
                MediaView.B = mediaView;
                mediaView.f57973u = true;
                if (MediaView.this.J() && MediaView.this.f57961i.isPlaying()) {
                    i10 = MediaView.this.f57961i.getCurrentPosition();
                } else {
                    i10 = 0;
                }
                MediaView.this.O();
                io.bidmachine.core.g.o0(MediaView.this.getContext(), VideoPlayerActivity.e(MediaView.this.getContext(), MediaView.this.f57954b.n().getPath(), i10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class c implements e.b {
        c() {
        }

        @Override // np.e.b
        public void a(@NonNull np.e eVar, Uri uri) {
            io.bidmachine.core.a.d("MediaView video is loaded");
            MediaView.this.f57954b.j(uri);
            MediaView.this.P();
        }

        @Override // np.e.b
        public void b(@NonNull np.e eVar) {
            io.bidmachine.core.a.d("MediaView video is not loaded");
            MediaView.this.Z(NativeState.Image);
            MediaView.this.f57971s = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class d implements d.b {
        d() {
        }

        @Override // np.d.b
        public void a(@NonNull np.d dVar, Uri uri, io.bidmachine.iab.vast.a aVar) {
            io.bidmachine.core.a.d("MediaView video is loaded");
            MediaView.this.f57954b.j(uri);
            MediaView.this.f57954b.b(aVar);
            MediaView.this.P();
        }

        @Override // np.d.b
        public void b(@NonNull np.d dVar) {
            io.bidmachine.core.a.d("MediaView video is not loaded");
            MediaView.this.Z(NativeState.Image);
            MediaView.this.f57971s = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaView.this.B();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MediaView.this.f57970r = false;
                MediaView.this.B();
                MediaView.this.Z(NativeState.Image);
                MediaView.this.V();
                MediaView.this.f57972t = true;
                MediaView.this.f57971s = false;
                MediaView.this.Q();
            } catch (Exception e10) {
                io.bidmachine.core.a.m(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MediaView.this.J()) {
                if (MediaView.this.f57966n) {
                    MediaView.this.f57961i.setVolume(1.0f, 1.0f);
                    MediaView.this.f57966n = false;
                } else {
                    MediaView.this.f57961i.setVolume(0.0f, 0.0f);
                    MediaView.this.f57966n = true;
                }
                MediaView.this.X();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class h extends TimerTask {

        /* loaded from: classes8.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MediaView.this.O();
                if (MediaView.this.f57973u) {
                    MediaView.this.V();
                }
            }
        }

        /* loaded from: classes8.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MediaView.this.W();
            }
        }

        h() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String f(int i10) {
            return String.format("Video started: %s%%", Integer.valueOf(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String g(int i10) {
            return String.format("Video at first quartile: %s%%", Integer.valueOf(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String h(int i10) {
            return String.format("Video at midpoint: %s%%", Integer.valueOf(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String i(int i10) {
            return String.format("Video at third quartile: %s%%", Integer.valueOf(i10));
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            final int currentPosition;
            try {
                if (MediaView.this.f57972t) {
                    MediaView.this.C();
                } else if (!MediaView.this.I()) {
                    io.bidmachine.core.g.Z(new a());
                } else {
                    try {
                        if (MediaView.this.J() && !MediaView.this.f57972t && MediaView.this.f57961i.isPlaying()) {
                            if (MediaView.this.f57974v == 0) {
                                MediaView mediaView = MediaView.this;
                                mediaView.f57974v = mediaView.f57961i.getDuration();
                            }
                            if (MediaView.this.f57974v != 0 && (currentPosition = (MediaView.this.f57961i.getCurrentPosition() * 100) / MediaView.this.f57974v) >= MediaView.this.f57975w * 25) {
                                if (MediaView.this.f57975w == 0) {
                                    io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.nativead.view.b
                                        @Override // hr.b
                                        public final Object get() {
                                            String f10;
                                            f10 = MediaView.h.f(currentPosition);
                                            return f10;
                                        }
                                    });
                                    MediaView.this.R(TrackingEvent.start);
                                } else if (MediaView.this.f57975w == 1) {
                                    io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.nativead.view.c
                                        @Override // hr.b
                                        public final Object get() {
                                            String g10;
                                            g10 = MediaView.h.g(currentPosition);
                                            return g10;
                                        }
                                    });
                                    MediaView.this.R(TrackingEvent.firstQuartile);
                                } else if (MediaView.this.f57975w == 2) {
                                    io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.nativead.view.d
                                        @Override // hr.b
                                        public final Object get() {
                                            String h10;
                                            h10 = MediaView.h.h(currentPosition);
                                            return h10;
                                        }
                                    });
                                    MediaView.this.R(TrackingEvent.midpoint);
                                } else if (MediaView.this.f57975w == 3) {
                                    io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.nativead.view.e
                                        @Override // hr.b
                                        public final Object get() {
                                            String i10;
                                            i10 = MediaView.h.i(currentPosition);
                                            return i10;
                                        }
                                    });
                                    MediaView.this.R(TrackingEvent.thirdQuartile);
                                }
                                MediaView.p(MediaView.this);
                            }
                        }
                        io.bidmachine.core.a.d("MediaView is on screen");
                        io.bidmachine.core.g.Z(new b());
                    } catch (IllegalStateException unused) {
                        MediaView.this.C();
                    }
                }
            } catch (Throwable unused2) {
                MediaView.this.C();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class i {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f57989a;

        static {
            int[] iArr = new int[NativeState.values().length];
            f57989a = iArr;
            try {
                iArr[NativeState.Image.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f57989a[NativeState.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f57989a[NativeState.Playing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f57989a[NativeState.Paused.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MediaView(Context context) {
        super(context);
        this.f57956d = false;
        this.f57966n = true;
        this.f57976x = 0;
        this.f57977y = 0;
        this.f57978z = true;
        this.A = NativeState.Image;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f57961i != null) {
            try {
                if (!this.f57972t) {
                    if (this.f57961i.isPlaying()) {
                        this.f57961i.stop();
                    }
                    this.f57961i.reset();
                }
                this.f57961i.setOnCompletionListener(null);
                this.f57961i.setOnErrorListener(null);
                this.f57961i.setOnPreparedListener(null);
                this.f57961i.setOnVideoSizeChangedListener(null);
                this.f57961i.release();
            } catch (Exception e10) {
                io.bidmachine.core.a.m(e10);
            }
            this.f57961i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        io.bidmachine.core.g.Z(new f());
    }

    private void D() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f57961i = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this);
        this.f57961i.setOnErrorListener(this);
        this.f57961i.setOnPreparedListener(this);
        this.f57961i.setOnVideoSizeChangedListener(this);
        this.f57961i.setAudioStreamType(3);
        a0();
    }

    private void E() {
        Context context = getContext();
        float C = io.bidmachine.core.g.C(context);
        int round = Math.round(40.0f * C);
        int round2 = Math.round(C * 8.0f);
        CircleCountdownView circleCountdownView = new CircleCountdownView(context);
        this.f57960h = circleCountdownView;
        circleCountdownView.setColors(sm.a.f66381a, sm.a.f66383c);
        this.f57960h.setPadding(round2, round2, round2, round2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(round, round);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        this.f57960h.setLayoutParams(layoutParams);
        X();
        this.f57960h.setOnClickListener(new g());
        addView(this.f57960h);
    }

    private void G(@NonNull Runnable runnable) {
        op.b.a().execute(runnable);
    }

    private void H(@Nullable List<String> list) {
        if (list == null) {
            return;
        }
        for (String str : list) {
            io.bidmachine.core.g.n0(str, op.b.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I() {
        boolean globalVisibleRect = getGlobalVisibleRect(new Rect());
        boolean isShown = isShown();
        boolean hasWindowFocus = hasWindowFocus();
        if (globalVisibleRect && isShown && hasWindowFocus) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J() {
        if (!this.f57972t && this.f57961i != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String K(int i10, boolean z10) {
        return String.format("MediaView videoPlayerActivityClosed, position: %s, finished: %s", Integer.valueOf(i10), Boolean.valueOf(z10));
    }

    private void L() {
        if (!this.f57965m) {
            R(TrackingEvent.complete);
            this.f57965m = true;
            io.bidmachine.core.a.d("MediaView: video finished");
        }
    }

    private void M() {
        if (!this.f57964l) {
            S();
            this.f57964l = true;
            io.bidmachine.core.a.d("MediaView: video started");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        try {
            if (J() && this.f57961i.isPlaying()) {
                this.f57961i.pause();
            }
            if (this.A != NativeState.Loading) {
                Z(NativeState.Paused);
            }
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        mp.g gVar;
        try {
            if (!this.f57967o && (gVar = this.f57954b) != null && gVar.n() != null && !this.f57968p && !this.f57972t) {
                this.f57961i.setDataSource(getContext(), this.f57954b.n());
                this.f57961i.prepareAsync();
                this.f57968p = true;
            }
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        mp.g gVar = this.f57954b;
        if (gVar != null && gVar.c() != null) {
            this.f57954b.c().X(tm.g.f67426l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(@NonNull TrackingEvent trackingEvent) {
        mp.f fVar;
        mp.g gVar = this.f57954b;
        if (gVar != null && gVar.c() != null && this.f57954b.c().M() != null) {
            H(this.f57954b.c().M().y().get(trackingEvent));
        }
        if (trackingEvent == TrackingEvent.complete && (fVar = this.f57955c) != null) {
            fVar.h();
        }
    }

    private void S() {
        mp.g gVar = this.f57954b;
        if (gVar != null && gVar.c() != null && this.f57954b.c().M() != null) {
            H(this.f57954b.c().M().w());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        try {
            if (this.f57961i == null) {
                D();
            }
            if (!this.f57967o) {
                P();
            }
            if (J() && this.f57967o && this.f57969q && I()) {
                if (!this.f57961i.isPlaying()) {
                    this.f57961i.start();
                    M();
                    if (this.f57963k == null) {
                        U();
                    }
                }
                if (this.f57961i.getCurrentPosition() > 0) {
                    NativeState nativeState = this.A;
                    NativeState nativeState2 = NativeState.Playing;
                    if (nativeState != nativeState2) {
                        Z(nativeState2);
                    }
                }
            }
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
            C();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        CircleCountdownView circleCountdownView = this.f57960h;
        if (circleCountdownView != null) {
            if (this.f57966n) {
                circleCountdownView.setImage(sm.a.a("iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAwFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALOy8QAAAAQHRSTlMAT5vPRxSr/1OTn4c4s9cYEMu/XwTDu3fbYwjvt+NA8wwg3/fHKOdLj/tbPDBv03+jl4sca2d7NCTrLINDr6dz72VdRQAAA8FJREFUeAHt2dWW6zgURdEd3GFmZqZi7O7//6rmW7ZiK2VHkYo8X0MreI5GENAiEAgEAoFAIBAIhSORcBSfRSzOf8VjOFMimUpncDFZ/i+XxzkKRZJkKYrLKJNKRZUq/xdJVKAONaoV1WlpNFtQ1qZaUYd23R5U9alUVOlTlBxATZVKRUMeG/WgpE61ojEF6i9SJaJWNKHTKAMF05lSUYgu+vMPLFrQxXJlpGhdLm/gsG3TxVZ/UbRLkrsejhX2bkkL3UVb/meZgLekQ0VrUb7P/43z8JZ0Ba1F67eia7i5qfFY01DRBO5uxxQte2aK2pCYFimaDc0UQaaSpCgyMFIEuT1FcZgowglbiu5MFOGU1ZJ27ZiBIpyUEIvC0F+E0+5pt3zQX4R3xGk3gfYivGOwo11TU5EPj23aPBVMFk0e4CJBuz0MFpHh2DvnT3YrBotIjjZweF7SZg5zRSQ5LsMhSZsslKV4XDSAK9kGXXiizRCKFnSouhdRVnRHmzQ8qzRrI0p4KZIO0VabllkFHuWLFPgukk+IJG1C8KhEqhXxl9EAoudzFv47UrGIbw6njv0ReFOjalGfb9YQlWlTgCdtqhatraISRK2x/w8Recmi0IkPaNp/kHpRCaIX/1sRL1s0hCBKy7LlP0i9aA9BgTYZfUHyohxEEVrKGoPkRTH5j/WtziBp0Vx+jt1rDZIVvcgHwZXeIElRHIIVLQe9QZKiEgQ9Wkp6gyRFOwg2vscrL1w0kv8TMtIYJC/KQXBDS1djkLxoqucVUijSH6RUtKZlpx6kXhTS8rVXKLqlJaUepF6UpOVaPUi9qErLncagmdeiPi2vGoOmHos2tIlpDILHojtautAZ5LEoS8tveoM8FbX6tNThSYPngLeikP9DB154DngpEq/RhjeFEc8A/0UHeDSN0D/4L1rBq0q92qdP8F00HkDNgqfAd9HvgM4i+C6KQmsR/BZ1Aa1F8Fv0B/QWwWdRrgC9RfBZNAD0FsFvETQX4bMV4bMV4bMV4bMV4bMV4bMV4bMV4ZMVtSHxyo8pKsLd/IkfU5SEm1iKFqNFy0c4VZpP5AcVNeEU2pE0XXQ3JsluAsdazRwtBosGq/19tIVjqyeSxovk7kl+pqIH8nMVxen01JxRlIQxT3So3jinyBqm8NjyvgI4ihYwpU9RceM6aaswpUO79l0FEIqMB73SMl4UZNvIAsak33KSefl+tIY5t22SnL2IOWJREia1Qvf3vRZcPE74r9QAn0TlNvvUiEcRCAQCgUAgEAgEdPgLbm7XQrhD8bcAAAAASUVORK5CYII="));
            } else {
                circleCountdownView.setImage(sm.a.a("iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAw1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAcKsgAAAAQXRSTlMABFeXn38wGNP/u0AMw8tP11+/3/eTOPNH+0tnc3fvb+tDi49TEKMcY8drKCCvFJt7qyQ047eHCCw8g89bp9vns9m2qsEAAAOSSURBVHgB7drVYuNKEEXR03YMJ0aBQXHAYWbm/P9PXZyZBimOHiTVQK9H4zZDFTzP8zzP8zzP83JQtfpSo4mfRqvNfy138HPo9vhNf4CfQYPaMFAQF9IUdSAtpm3UhSza5O+kmBb5O6nPtGgMOQNmmEwhp84MSQ0VUCuz1bGCQ62tM8MGSlebk+RwE67WVlbSNkq2xf8lO0jZbWQk7SmUaZvfxS3kS6pX00NuIct+SNdBNT08RLajmLakU0kP1/GJ40Pa5idV9JD4jBrR1u5W0UN8rkHbaRU9xAIbtM0q6CEWqSU0rZ+V30MstGMXnZffQyx2Qcu49B7iC5c09UvvIb7QbdN0UHYP8ZWrdRrmuyX3EIbDa2TYoalRcg9hIM/PkLZMw40qt8cJYtREynFCw6DcHjeIcfDF+W/L7UkFkRtw7c5pOCm1xw3KLprRcIfc1MFyxMXyBHEGx/06tfk9cmr1SRYRlFzDMaJhBzmFLCiIURe2BxrqyGfGwoK4B8chtTbyWS4wiI+wBTTsIpf1IoNC2O5jagPkwiKDOFjwBN2SCAphe6J2KBHEE1im1JJ7iaAGLLs0jCWChrA9UwskgngGy4jakUjQCiwNag2RoCdYZtTqIkGXsLxQ2xMJCmHpUAtFgtqwNKk9iwRFsJxQi0SCbmDZt46SCBrC8uA+mv5JfQpLjdqrSNAWLAfUzkWCBj/bR8c+LNvUNiSCItgOpb9+bMHSTah1JIIeYOnQsCsQ1IftgtozBIIC2G6pbQsEPStY1IRaDbm8FRm0AtsODS3k8lRg0C0WPGJvyGc3KizovQXbCQ1LyOn4uaigKRx3NATIS631JkUEPcGh3qlNulX/6bkNV42GUdV/C6d77iMaHqr94zy5+GJodljtaGG+iZT9mIaXSocvp/tIe6Vhfl/heGq4iQwdmraqHOApZGjd0DDZlx5xqpCmNfEh8IimNyU9Jg9omUovEjzGNJ1Kr1o8TmiKT4SXUXYSWi6E13UCp6enRBeasErbTUt05evskrZJE6igqI9sK3M6akAVRSNk6S7R1QCqKEqukKaCiK5ToJKig6ycN6aEXZRrFpPkzQ5c90dvTLtUKFv3pXExvYfrJWKGbQUh28yy9nOtwCcHENNj2voAciZM+diHILrWA4gSv3tc7/J3j61u5jTOIG5/zm/eN+7xM7i+4b/eAoWfRHf1I1wawPM8z/M8z/M872/KUtAsVj+VvQAAAABJRU5ErkJggg=="));
            }
        }
    }

    private void Y() {
        int width = getWidth();
        int height = getHeight();
        if (width != 0 && height != 0 && this.f57978z && this.f57976x != 0 && this.f57977y != 0) {
            this.f57978z = false;
            ViewGroup.LayoutParams layoutParams = this.f57962j.getLayoutParams();
            int i10 = this.f57976x;
            int i11 = this.f57977y;
            if (i10 > i11) {
                layoutParams.width = width;
                layoutParams.height = (width * i11) / i10;
            } else {
                layoutParams.width = (i10 * height) / i11;
                layoutParams.height = height;
            }
            this.f57962j.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(@NonNull NativeState nativeState) {
        this.A = nativeState;
        int i10 = i.f57989a[nativeState.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        ImageView imageView = this.f57957e;
                        if (imageView != null) {
                            imageView.setVisibility(0);
                            this.f57957e.bringToFront();
                        }
                        if (this.f57971s) {
                            this.f57959g.setVisibility(0);
                            this.f57959g.bringToFront();
                            this.f57962j.setVisibility(4);
                            this.f57958f.setVisibility(4);
                            this.f57960h.setVisibility(4);
                            return;
                        }
                        return;
                    }
                    return;
                }
                ImageView imageView2 = this.f57957e;
                if (imageView2 != null) {
                    imageView2.setVisibility(4);
                }
                if (this.f57971s) {
                    this.f57962j.setVisibility(0);
                    this.f57962j.bringToFront();
                    this.f57960h.setVisibility(0);
                    this.f57960h.bringToFront();
                    X();
                    this.f57958f.setVisibility(4);
                    this.f57959g.setVisibility(4);
                    return;
                }
                return;
            }
            ImageView imageView3 = this.f57957e;
            if (imageView3 != null) {
                imageView3.setVisibility(0);
                this.f57957e.bringToFront();
            }
            if (this.f57971s) {
                this.f57958f.setVisibility(0);
                this.f57958f.bringToFront();
                this.f57962j.setVisibility(4);
                this.f57959g.setVisibility(4);
                this.f57960h.setVisibility(4);
                return;
            }
            return;
        }
        ImageView imageView4 = this.f57957e;
        if (imageView4 != null) {
            imageView4.setVisibility(0);
            this.f57957e.bringToFront();
        }
        if (this.f57971s) {
            this.f57962j.setVisibility(4);
            this.f57958f.setVisibility(4);
            this.f57959g.setVisibility(4);
            this.f57960h.setVisibility(4);
        }
    }

    private void a0() {
        if (J()) {
            if (this.f57966n) {
                this.f57961i.setVolume(0.0f, 0.0f);
            } else {
                this.f57961i.setVolume(1.0f, 1.0f);
            }
        }
    }

    private void b0() {
        L();
        V();
        O();
        if (J()) {
            this.f57961i.seekTo(0);
        }
        this.f57973u = true;
    }

    static /* synthetic */ int p(MediaView mediaView) {
        int i10 = mediaView.f57975w;
        mediaView.f57975w = i10 + 1;
        return i10;
    }

    public void A(@NonNull mp.e eVar, @NonNull mp.g gVar, @NonNull mp.f fVar) {
        this.f57953a = eVar;
        this.f57954b = gVar;
        this.f57955c = fVar;
        if (gVar.n() != null || !TextUtils.isEmpty(eVar.g()) || !TextUtils.isEmpty(eVar.o())) {
            this.f57971s = true;
        }
        F();
    }

    void F() {
        if (!this.f57956d) {
            this.f57956d = true;
            ImageView imageView = new ImageView(getContext());
            this.f57957e = imageView;
            imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f57957e.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.f57957e.setAdjustViewBounds(true);
            addView(this.f57957e);
            if (this.f57971s) {
                int round = Math.round(io.bidmachine.core.g.C(getContext()) * 50.0f);
                this.f57958f = new ProgressBar(getContext(), null, 16842874);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(round, round);
                layoutParams.addRule(13, -1);
                this.f57958f.setLayoutParams(layoutParams);
                this.f57958f.setBackgroundColor(Color.parseColor("#6b000000"));
                this.f57958f.setVisibility(4);
                addView(this.f57958f);
                ImageView imageView2 = new ImageView(getContext());
                this.f57959g = imageView2;
                imageView2.setImageResource(17301540);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(round, round);
                layoutParams2.addRule(13, -1);
                this.f57959g.setLayoutParams(layoutParams2);
                this.f57959g.setOnClickListener(new a());
                this.f57959g.setVisibility(4);
                addView(this.f57959g);
                TextureView textureView = new TextureView(getContext());
                this.f57962j = textureView;
                textureView.setSurfaceTextureListener(this);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(13);
                this.f57962j.setLayoutParams(layoutParams3);
                this.f57962j.setOnClickListener(new b());
                addView(this.f57962j);
                E();
                D();
                mp.g gVar = this.f57954b;
                if (gVar != null && gVar.n() != null && this.f57954b.n().getPath() != null && new File(this.f57954b.n().getPath()).exists()) {
                    this.f57970r = true;
                } else if (this.f57953a != null) {
                    Z(NativeState.Loading);
                    if (!TextUtils.isEmpty(this.f57953a.g())) {
                        G(new np.e(getContext(), new c(), this.f57953a.g()));
                    } else if (!TextUtils.isEmpty(this.f57953a.o())) {
                        G(new np.d(getContext(), new d(), this.f57953a.o()));
                    }
                }
            } else {
                Z(NativeState.Image);
            }
        }
        if (this.f57954b != null) {
            op.a.d(getContext(), this.f57957e, this.f57954b.getImageUri(), this.f57954b.d());
        }
    }

    public void N() {
        io.bidmachine.core.a.d("MediaView: onViewAppearOnScreen");
        this.f57969q = true;
        if (this.f57970r) {
            W();
        } else if (this.A != NativeState.Loading) {
            Z(NativeState.Paused);
        }
    }

    public void T() {
        new Thread(new e()).start();
    }

    public void U() {
        if (!this.f57971s) {
            return;
        }
        Timer timer = new Timer();
        this.f57963k = timer;
        timer.schedule(new h(), 0L, 500);
    }

    public void V() {
        Timer timer = this.f57963k;
        if (timer != null) {
            timer.cancel();
            this.f57963k = null;
        }
    }

    @Override // io.bidmachine.nativead.view.VideoPlayerActivity.c
    public void a(final int i10, final boolean z10) {
        io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.nativead.view.a
            @Override // hr.b
            public final Object get() {
                String K;
                K = MediaView.K(i10, z10);
                return K;
            }
        });
        try {
            if (z10) {
                b0();
            } else if (J()) {
                this.f57961i.seekTo(i10);
            }
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
        B = null;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        b0();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
        io.bidmachine.core.a.d("MediaView: onError");
        C();
        return true;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        Y();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (mode != 1073741824) {
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(size, measuredWidth);
            } else {
                size = measuredWidth;
            }
        }
        int i12 = (int) (size * 0.5625f);
        if (mode2 == 1073741824 && size2 < i12) {
            size = (int) (size2 * 1.7777778f);
        } else {
            size2 = i12;
        }
        if (Math.abs(size2 - measuredHeight) >= 2 || Math.abs(size - measuredWidth) >= 2) {
            getLayoutParams().width = size;
            getLayoutParams().height = size2;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        io.bidmachine.core.a.d("MediaView: onPrepared");
        this.f57967o = true;
        if (this.f57970r) {
            W();
        } else {
            Z(NativeState.Paused);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
        try {
            if (this.f57961i == null) {
                D();
            }
            this.f57961i.setSurface(new Surface(surfaceTexture));
            P();
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
            Z(NativeState.Image);
            this.f57971s = false;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        this.f57976x = i10;
        this.f57977y = i11;
        this.f57978z = true;
        Y();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        if (i10 == 0) {
            if (this.f57970r) {
                W();
            }
        } else {
            O();
        }
        super.onWindowVisibilityChanged(i10);
    }

    public void setNativeAdObject(@NonNull mp.d dVar) {
        A(dVar, dVar, dVar);
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57956d = false;
        this.f57966n = true;
        this.f57976x = 0;
        this.f57977y = 0;
        this.f57978z = true;
        this.A = NativeState.Image;
    }

    public MediaView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f57956d = false;
        this.f57966n = true;
        this.f57976x = 0;
        this.f57977y = 0;
        this.f57978z = true;
        this.A = NativeState.Image;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
    }
}
