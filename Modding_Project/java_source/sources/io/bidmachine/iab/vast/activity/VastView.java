package io.bidmachine.iab.vast.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.measurer.VastAdMeasurer;
import io.bidmachine.iab.mraid.e;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.vast.TrackingEvent;
import io.bidmachine.iab.vast.VastPlaybackListener;
import io.bidmachine.iab.vast.VideoType;
import io.bidmachine.iab.vast.processor.VastAd;
import io.bidmachine.iab.vast.tags.AppodealExtensionTag;
import io.bidmachine.iab.vast.tags.CompanionTag;
import io.bidmachine.iab.vast.tags.PostBannerTag;
import io.bidmachine.iab.vast.view.IabVideoTexture;
import io.bidmachine.iab.view.CloseableLayout;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import tm.b;
import tm.c;
/* loaded from: classes7.dex */
public class VastView extends RelativeLayout implements sm.d {
    private int A;
    private int B;
    private int C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    @NonNull
    private final List<View> O;
    @NonNull
    private final List<sm.i<? extends View>> P;
    @NonNull
    private final Runnable Q;
    @NonNull
    private final Runnable R;
    @NonNull
    private final a S;
    @NonNull
    private final a T;
    @NonNull
    private final LinkedList<Integer> U;
    private int V;
    private float W;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f54758a;
    @NonNull

    /* renamed from: a0  reason: collision with root package name */
    private final a f54759a0;
    @NonNull
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    IabVideoTexture f54760b;
    @NonNull

    /* renamed from: b0  reason: collision with root package name */
    private final TextureView.SurfaceTextureListener f54761b0;
    @NonNull
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    FrameLayout f54762c;
    @NonNull

    /* renamed from: c0  reason: collision with root package name */
    private final MediaPlayer.OnCompletionListener f54763c0;
    @Nullable
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    Surface f54764d;
    @NonNull

    /* renamed from: d0  reason: collision with root package name */
    private final MediaPlayer.OnErrorListener f54765d0;
    @NonNull
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    FrameLayout f54766e;
    @NonNull

    /* renamed from: e0  reason: collision with root package name */
    private final MediaPlayer.OnPreparedListener f54767e0;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    CloseableLayout f54768f;
    @NonNull

    /* renamed from: f0  reason: collision with root package name */
    private final MediaPlayer.OnVideoSizeChangedListener f54769f0;
    @Nullable
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    sm.e f54770g;
    @NonNull

    /* renamed from: g0  reason: collision with root package name */
    private c.a f54771g0;
    @Nullable
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    sm.f f54772h;
    @NonNull

    /* renamed from: h0  reason: collision with root package name */
    private final View.OnTouchListener f54773h0;
    @Nullable
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    sm.m f54774i;
    @NonNull

    /* renamed from: i0  reason: collision with root package name */
    private final WebChromeClient f54775i0;
    @Nullable
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    sm.k f54776j;
    @NonNull

    /* renamed from: j0  reason: collision with root package name */
    private final WebViewClient f54777j0;
    @Nullable
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    sm.j f54778k;
    @Nullable
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    sm.l f54779l;
    @Nullable
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    sm.g f54780m;
    @Nullable
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    MediaPlayer f54781n;
    @Nullable
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    View f54782o;
    @Nullable
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    CompanionTag f54783p;
    @Nullable
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    CompanionTag f54784q;
    @Nullable
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    ImageView f54785r;
    @Nullable
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    io.bidmachine.iab.mraid.e f54786s;
    @Nullable
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    io.bidmachine.iab.vast.a f54787t;
    @NonNull
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    B f54788u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private tm.i f54789v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private VastPlaybackListener f54790w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private VastAdMeasurer f54791x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private MraidAdMeasurer f54792y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private b0 f54793z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class PostBannerAdMeasurer implements MraidAdMeasurer {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final VastView f54808a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final MraidAdMeasurer f54809b;

        public PostBannerAdMeasurer(@NonNull VastView vastView, @NonNull MraidAdMeasurer mraidAdMeasurer) {
            this.f54808a = vastView;
            this.f54809b = mraidAdMeasurer;
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        /* renamed from: b */
        public void m(@NonNull WebView webView) {
            this.f54809b.m(webView);
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void c(@NonNull qm.a aVar) {
            this.f54809b.c(aVar);
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        /* renamed from: d */
        public void t0(@NonNull WebView webView) {
            this.f54809b.t0(webView);
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void l(@NonNull ViewGroup viewGroup) {
            this.f54809b.l(this.f54808a);
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void onAdClicked() {
            this.f54809b.onAdClicked();
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void onAdShown() {
            this.f54809b.onAdShown();
        }

        @Override // io.bidmachine.iab.measurer.MraidAdMeasurer
        @NonNull
        public String p(@NonNull String str) {
            return this.f54809b.p(str);
        }
    }

    /* loaded from: classes7.dex */
    private interface a {
        void a(int i10, int i11, float f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public final class a0 implements io.bidmachine.iab.mraid.f {
        private a0() {
        }

        @Override // io.bidmachine.iab.mraid.f
        public void b(@NonNull io.bidmachine.iab.mraid.e eVar) {
            VastView vastView = VastView.this;
            if (vastView.f54788u.f54803j) {
                vastView.setLoadingViewVisibility(false);
                eVar.x(VastView.this, false);
            }
        }

        @Override // io.bidmachine.iab.mraid.f
        public void d(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str, @NonNull sm.d dVar) {
            dVar.c();
            VastView vastView = VastView.this;
            vastView.H(vastView.f54784q, str);
        }

        @Override // io.bidmachine.iab.mraid.f
        public void e(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull qm.a aVar) {
            VastView.this.x(aVar);
        }

        @Override // io.bidmachine.iab.mraid.f
        public void g(@NonNull io.bidmachine.iab.mraid.e eVar) {
            VastView.this.l0();
        }

        @Override // io.bidmachine.iab.mraid.f
        public void h(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull qm.a aVar) {
            VastView.this.O(aVar);
        }

        @Override // io.bidmachine.iab.mraid.f
        public void i(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull qm.a aVar) {
            VastView.this.O(aVar);
        }

        /* synthetic */ a0(VastView vastView, m mVar) {
            this();
        }

        @Override // io.bidmachine.iab.mraid.f
        public void f(@NonNull io.bidmachine.iab.mraid.e eVar) {
        }

        @Override // io.bidmachine.iab.mraid.f
        public void a(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull PrivacySheetParams privacySheetParams) {
        }

        @Override // io.bidmachine.iab.mraid.f
        public void k(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str) {
        }

        @Override // io.bidmachine.iab.mraid.f
        public void c(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str, @NonNull sm.d dVar) {
        }

        @Override // io.bidmachine.iab.mraid.f
        public void j(@NonNull io.bidmachine.iab.mraid.e eVar, @NonNull String str, @NonNull sm.d dVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static abstract class b0 extends Thread {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<Context> f54811a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Uri f54812b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f54813c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Bitmap f54814d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f54815e;

        /* loaded from: classes7.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b0 b0Var = b0.this;
                b0Var.d(b0Var.f54814d);
            }
        }

        b0(@NonNull Context context, @Nullable Uri uri, @Nullable String str) {
            this.f54811a = new WeakReference<>(context);
            this.f54812b = uri;
            this.f54813c = str;
            if (str == null && (uri == null || TextUtils.isEmpty(uri.getPath()) || !new File(uri.getPath()).exists())) {
                d(null);
            } else {
                start();
            }
        }

        void c() {
            this.f54815e = true;
        }

        abstract void d(@Nullable Bitmap bitmap);

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Context context = this.f54811a.get();
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            if (context != null) {
                try {
                    Uri uri = this.f54812b;
                    if (uri != null) {
                        mediaMetadataRetriever.setDataSource(context, uri);
                    } else {
                        String str = this.f54813c;
                        if (str != null) {
                            mediaMetadataRetriever.setDataSource(str, new HashMap());
                        }
                    }
                    this.f54814d = mediaMetadataRetriever.getFrameAtTime((Long.parseLong(mediaMetadataRetriever.extractMetadata(9)) / 2) * 1000, 2);
                } catch (Exception e10) {
                    tm.d.b("MediaFrameRetriever", e10.getMessage(), new Object[0]);
                }
            }
            try {
                mediaMetadataRetriever.release();
            } catch (IOException e11) {
                tm.d.b("MediaFrameRetriever", e11.getMessage(), new Object[0]);
            }
            if (this.f54815e) {
                return;
            }
            sm.q.D(new a());
        }
    }

    /* loaded from: classes7.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastView.this.C0()) {
                VastView.this.b0();
            }
        }
    }

    /* loaded from: classes7.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (VastView.this.C0() && VastView.this.f54781n.isPlaying()) {
                    int duration = VastView.this.f54781n.getDuration();
                    int currentPosition = VastView.this.f54781n.getCurrentPosition();
                    if (currentPosition > 0) {
                        float f10 = (currentPosition * 100.0f) / duration;
                        VastView.this.S.a(duration, currentPosition, f10);
                        VastView.this.T.a(duration, currentPosition, f10);
                        VastView.this.f54759a0.a(duration, currentPosition, f10);
                        if (f10 > 105.0f) {
                            tm.d.b(VastView.this.f54758a, "Playback tracking: video hang detected", new Object[0]);
                            VastView.this.o0();
                        }
                    }
                }
            } catch (Exception e10) {
                tm.d.b(VastView.this.f54758a, "Playback tracking exception: %s", e10.getMessage());
            }
            VastView.this.postDelayed(this, 16L);
        }
    }

    /* loaded from: classes7.dex */
    class e implements a {
        e() {
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.a
        public void a(int i10, int i11, float f10) {
            sm.f fVar;
            VastView vastView = VastView.this;
            B b10 = vastView.f54788u;
            if (!b10.f54802i && b10.f54795b != 0.0f && vastView.D(vastView.f54787t)) {
                VastView vastView2 = VastView.this;
                float f11 = vastView2.f54788u.f54795b * 1000.0f;
                float f12 = i11;
                float f13 = f11 - f12;
                int i12 = (int) ((f12 * 100.0f) / f11);
                tm.d.a(vastView2.f54758a, "Skip percent: %s", Integer.valueOf(i12));
                if (i12 < 100 && (fVar = VastView.this.f54772h) != null) {
                    fVar.r(i12, (int) Math.ceil(f13 / 1000.0d));
                }
                if (f13 <= 0.0f) {
                    VastView vastView3 = VastView.this;
                    B b11 = vastView3.f54788u;
                    b11.f54795b = 0.0f;
                    b11.f54802i = true;
                    vastView3.setCloseControlsVisible(true);
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    class f implements a {
        f() {
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.a
        public void a(int i10, int i11, float f10) {
            float f11;
            VastView vastView = VastView.this;
            B b10 = vastView.f54788u;
            if (b10.f54801h && b10.f54796c == 3) {
                return;
            }
            if (vastView.f54787t.I() > 0 && i11 > VastView.this.f54787t.I() && VastView.this.f54787t.O() == VideoType.Rewarded) {
                VastView vastView2 = VastView.this;
                vastView2.f54788u.f54802i = true;
                vastView2.setCloseControlsVisible(true);
            }
            VastView vastView3 = VastView.this;
            int i12 = vastView3.f54788u.f54796c;
            if (f10 > i12 * 25.0f) {
                if (i12 == 3) {
                    tm.d.a(vastView3.f54758a, "Video at third quartile: (%s)", Float.valueOf(f10));
                    VastView.this.V(TrackingEvent.thirdQuartile);
                    if (VastView.this.f54790w != null) {
                        VastView.this.f54790w.E0();
                    }
                } else if (i12 == 0) {
                    tm.d.a(vastView3.f54758a, "Video at start: (%s)", Float.valueOf(f10));
                    VastView.this.V(TrackingEvent.start);
                    if (VastView.this.f54790w != null) {
                        VastPlaybackListener vastPlaybackListener = VastView.this.f54790w;
                        float f12 = i10;
                        if (VastView.this.f54788u.f54799f) {
                            f11 = 0.0f;
                        } else {
                            f11 = 1.0f;
                        }
                        vastPlaybackListener.x(f12, f11);
                    }
                } else if (i12 == 1) {
                    tm.d.a(vastView3.f54758a, "Video at first quartile: (%s)", Float.valueOf(f10));
                    VastView.this.V(TrackingEvent.firstQuartile);
                    if (VastView.this.f54790w != null) {
                        VastView.this.f54790w.g0();
                    }
                } else if (i12 == 2) {
                    tm.d.a(vastView3.f54758a, "Video at midpoint: (%s)", Float.valueOf(f10));
                    VastView.this.V(TrackingEvent.midpoint);
                    if (VastView.this.f54790w != null) {
                        VastView.this.f54790w.C0();
                    }
                }
                VastView.this.f54788u.f54796c++;
            }
        }
    }

    /* loaded from: classes7.dex */
    class g implements a {
        g() {
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.a
        public void a(int i10, int i11, float f10) {
            if (VastView.this.U.size() == 2 && ((Integer) VastView.this.U.getFirst()).intValue() > ((Integer) VastView.this.U.getLast()).intValue()) {
                tm.d.b(VastView.this.f54758a, "Playing progressing error: seek", new Object[0]);
                VastView.this.U.removeFirst();
            }
            if (VastView.this.U.size() == 19) {
                Integer num = (Integer) VastView.this.U.getFirst();
                int intValue = num.intValue();
                Integer num2 = (Integer) VastView.this.U.getLast();
                int intValue2 = num2.intValue();
                tm.d.a(VastView.this.f54758a, "Playing progressing position: last=%d, first=%d)", num2, num);
                if (intValue2 > intValue) {
                    VastView.this.U.removeFirst();
                } else {
                    VastView.J0(VastView.this);
                    if (VastView.this.V >= 3) {
                        VastView.this.X(qm.a.f("Playing progressing error: video hang detected"));
                        return;
                    }
                }
            }
            try {
                VastView.this.U.addLast(Integer.valueOf(i11));
                if (i10 != 0 && i11 > 0) {
                    VastView vastView = VastView.this;
                    if (vastView.f54779l != null) {
                        tm.d.a(vastView.f54758a, "Playing progressing percent: %s", Float.valueOf(f10));
                        if (VastView.this.W < f10) {
                            VastView.this.W = f10;
                            int i12 = i10 / 1000;
                            VastView.this.f54779l.r(f10, Math.min(i12, (int) Math.ceil(i11 / 1000.0f)), i12);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes7.dex */
    class i implements MediaPlayer.OnCompletionListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            tm.d.a(VastView.this.f54758a, "MediaPlayer - onCompletion", new Object[0]);
            VastView.this.o0();
        }
    }

    /* loaded from: classes7.dex */
    class j implements MediaPlayer.OnErrorListener {
        j() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            VastView.this.X(qm.a.f(String.format("MediaPlayer - onError: what - %s, extra - %s", Integer.valueOf(i10), Integer.valueOf(i11))));
            return true;
        }
    }

    /* loaded from: classes7.dex */
    class k implements MediaPlayer.OnPreparedListener {
        k() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            tm.d.a(VastView.this.f54758a, "MediaPlayer - onPrepared", new Object[0]);
            VastView vastView = VastView.this;
            if (!vastView.f54788u.f54803j) {
                vastView.V(TrackingEvent.creativeView);
                VastView.this.V(TrackingEvent.fullscreen);
                VastView.this.l1();
                VastView.this.setLoadingViewVisibility(false);
                VastView.this.J = true;
                if (!VastView.this.f54788u.f54800g) {
                    mediaPlayer.start();
                    VastView.this.d1();
                }
                VastView.this.j1();
                int i10 = VastView.this.f54788u.f54797d;
                if (i10 > 0) {
                    mediaPlayer.seekTo(i10);
                    VastView.this.V(TrackingEvent.resume);
                    if (VastView.this.f54790w != null) {
                        VastView.this.f54790w.f0();
                    }
                }
                VastView vastView2 = VastView.this;
                if (!vastView2.f54788u.f54806m) {
                    vastView2.K0();
                }
                VastView vastView3 = VastView.this;
                if (!vastView3.f54788u.f54804k) {
                    vastView3.s0();
                    if (VastView.this.f54787t.a0()) {
                        VastView.this.C(false);
                    }
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    class l implements MediaPlayer.OnVideoSizeChangedListener {
        l() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            tm.d.a(VastView.this.f54758a, "onVideoSizeChanged", new Object[0]);
            VastView.this.C = i10;
            VastView.this.D = i11;
            VastView.this.b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VastView.this.C0() || VastView.this.f54788u.f54803j) {
                VastView.this.b1();
            }
        }
    }

    /* loaded from: classes7.dex */
    class n implements c.a {
        n() {
        }

        @Override // tm.c.a
        public void a(boolean z10) {
            VastView.this.n1();
        }
    }

    /* loaded from: classes7.dex */
    class o implements View.OnTouchListener {
        o() {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0 || action == 1) {
                VastView.this.O.add(view);
                if (!view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes7.dex */
    class p extends WebChromeClient {
        p() {
        }

        private boolean a(JsResult jsResult) {
            jsResult.cancel();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            tm.d.a("JS alert", str2, new Object[0]);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            tm.d.a("JS confirm", str2, new Object[0]);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            tm.d.a("JS prompt", str2, new Object[0]);
            return a(jsPromptResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class r implements tm.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f54832a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CacheControl f54833b;

        r(boolean z10, CacheControl cacheControl) {
            this.f54832a = z10;
            this.f54833b = cacheControl;
        }

        @Override // tm.h
        public void a(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull VastAd vastAd) {
            VastView.this.o(aVar, vastAd, this.f54832a);
        }

        @Override // tm.h
        public void b(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull qm.a aVar2) {
            VastView vastView = VastView.this;
            vastView.Q(vastView.f54789v, aVar, qm.a.i(String.format("Error loading video after showing with %s - %s", this.f54833b, aVar2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            io.bidmachine.iab.vast.a aVar = VastView.this.f54787t;
            if (aVar != null && aVar.R()) {
                VastView vastView = VastView.this;
                if (!vastView.f54788u.f54805l && vastView.x0()) {
                    return;
                }
            }
            if (VastView.this.I) {
                VastView.this.h0();
            } else {
                VastView.this.u0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.T0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class y extends b0 {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ WeakReference f54841f;

        /* loaded from: classes7.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VastView.this.x0();
                VastView.this.h0();
            }
        }

        /* loaded from: classes7.dex */
        class b extends AnimatorListenerAdapter {
            b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                VastView.this.f54762c.setVisibility(8);
            }
        }

        /* loaded from: classes7.dex */
        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VastView.this.x0();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(Context context, Uri uri, String str, WeakReference weakReference) {
            super(context, uri, str);
            this.f54841f = weakReference;
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.b0
        void d(@Nullable Bitmap bitmap) {
            ImageView imageView = (ImageView) this.f54841f.get();
            if (imageView != null) {
                if (bitmap == null) {
                    imageView.setOnClickListener(new a());
                    return;
                }
                imageView.setImageBitmap(bitmap);
                imageView.setAlpha(0.0f);
                imageView.animate().alpha(1.0f).setDuration(100L).setListener(new b()).start();
                imageView.setOnClickListener(new c());
            }
        }
    }

    public VastView(@NonNull Context context) {
        this(context, null);
    }

    private void A(@NonNull tm.g gVar) {
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null) {
            aVar.X(gVar);
        }
    }

    private void B(@Nullable tm.i iVar, @Nullable io.bidmachine.iab.vast.a aVar, @NonNull qm.a aVar2) {
        if (iVar != null && aVar != null) {
            iVar.f(this, aVar, aVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(boolean z10) {
        PostBannerTag postBannerTag;
        if (!B0()) {
            return;
        }
        if (!z10) {
            CompanionTag n10 = this.f54787t.M().n(getAvailableWidth(), getAvailableHeight());
            if (this.f54784q != n10) {
                if (n10 != null && this.f54787t.b0()) {
                    this.B = sm.q.F(n10.r0(), n10.l0());
                } else {
                    this.B = this.A;
                }
                this.f54784q = n10;
                io.bidmachine.iab.mraid.e eVar = this.f54786s;
                if (eVar != null) {
                    eVar.n();
                    this.f54786s = null;
                }
            }
        }
        if (this.f54784q == null) {
            if (this.f54785r == null) {
                this.f54785r = j(getContext());
            }
        } else if (this.f54786s == null) {
            R0();
            String p02 = this.f54784q.p0();
            if (p02 != null) {
                AppodealExtensionTag j10 = this.f54787t.M().j();
                if (j10 != null) {
                    postBannerTag = j10.f();
                } else {
                    postBannerTag = null;
                }
                e.a k10 = io.bidmachine.iab.mraid.e.u().d(null).e(CacheControl.FullLoad).g(this.f54787t.D()).b(this.f54787t.Q()).j(false).c(this.f54792y).k(new a0(this, null));
                if (postBannerTag != null) {
                    k10.f(postBannerTag.b());
                    k10.h(postBannerTag.u());
                    k10.l(postBannerTag.v());
                    k10.o(postBannerTag.j());
                    k10.i(postBannerTag.a0());
                    k10.n(postBannerTag.k0());
                    if (postBannerTag.l0()) {
                        k10.b(true);
                    }
                    k10.p(postBannerTag.q());
                    k10.q(postBannerTag.n());
                }
                try {
                    io.bidmachine.iab.mraid.e a10 = k10.a(getContext());
                    this.f54786s = a10;
                    a10.t(p02);
                    return;
                } catch (Throwable th2) {
                    O(qm.a.j("Exception during companion creation", th2));
                    return;
                }
            }
            O(qm.a.a("Companion creative is null"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean D(@NonNull io.bidmachine.iab.vast.a aVar) {
        if (aVar.O() == VideoType.Rewarded && aVar.I() > 0) {
            return false;
        }
        return true;
    }

    private boolean E(@Nullable io.bidmachine.iab.vast.a aVar, @Nullable Boolean bool, boolean z10) {
        a1();
        if (!z10) {
            this.f54788u = new B();
        }
        if (bool != null) {
            this.f54788u.f54798e = bool.booleanValue();
        }
        this.f54787t = aVar;
        if (aVar == null) {
            h0();
            tm.d.b(this.f54758a, "VastRequest is null. Stop playing...", new Object[0]);
            return false;
        }
        VastAd M = aVar.M();
        if (M == null) {
            h0();
            tm.d.b(this.f54758a, "VastAd is null. Stop playing...", new Object[0]);
            return false;
        }
        CacheControl C = aVar.C();
        if (C == CacheControl.PartialLoad && !E0()) {
            n(aVar, M, C, z10);
            return true;
        } else if (C == CacheControl.Stream && !E0()) {
            n(aVar, M, C, z10);
            aVar.W(getContext().getApplicationContext(), null);
            return true;
        } else {
            o(aVar, M, z10);
            return true;
        }
    }

    private void G0() {
        tm.d.a(this.f54758a, "finishVideoPlaying", new Object[0]);
        a1();
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null && !aVar.P() && (this.f54787t.M().j() == null || this.f54787t.M().j().f().o0())) {
            if (D0()) {
                V(TrackingEvent.close);
            }
            setLoadingViewVisibility(false);
            P0();
            X0();
            return;
        }
        h0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean H(@Nullable CompanionTag companionTag, @Nullable String str) {
        VastAd vastAd;
        ArrayList<String> arrayList;
        List<String> list;
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        ArrayList arrayList2 = null;
        if (aVar != null) {
            vastAd = aVar.M();
        } else {
            vastAd = null;
        }
        if (vastAd != null) {
            arrayList = vastAd.z();
        } else {
            arrayList = null;
        }
        if (companionTag != null) {
            list = companionTag.k0();
        } else {
            list = null;
        }
        if (arrayList != null || list != null) {
            arrayList2 = new ArrayList();
            if (list != null) {
                arrayList2.addAll(list);
            }
            if (arrayList != null) {
                arrayList2.addAll(arrayList);
            }
        }
        return I(arrayList2, str);
    }

    private boolean I(@Nullable List<String> list, @Nullable String str) {
        tm.d.a(this.f54758a, "processClickThroughEvent: %s", str);
        this.f54788u.f54805l = true;
        if (str != null) {
            v(list);
            VastAdMeasurer vastAdMeasurer = this.f54791x;
            if (vastAdMeasurer != null) {
                vastAdMeasurer.onAdClicked();
            }
            if (this.f54789v != null && this.f54787t != null) {
                K0();
                setLoadingViewVisibility(true);
                this.f54789v.c(this, this.f54787t, this, str);
            }
            return true;
        }
        return false;
    }

    private void I0() {
        if (this.f54785r != null) {
            R0();
        } else {
            io.bidmachine.iab.mraid.e eVar = this.f54786s;
            if (eVar != null) {
                eVar.n();
                this.f54786s = null;
                this.f54784q = null;
            }
        }
        this.I = false;
    }

    static /* synthetic */ int J0(VastView vastView) {
        int i10 = vastView.V;
        vastView.V = i10 + 1;
        return i10;
    }

    private void K() {
        b0 b0Var = this.f54793z;
        if (b0Var != null) {
            b0Var.c();
            this.f54793z = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        if (C0() && !this.f54788u.f54800g) {
            tm.d.a(this.f54758a, "pausePlayback", new Object[0]);
            B b10 = this.f54788u;
            b10.f54800g = true;
            b10.f54797d = this.f54781n.getCurrentPosition();
            this.f54781n.pause();
            U();
            l();
            V(TrackingEvent.pause);
            VastPlaybackListener vastPlaybackListener = this.f54790w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.w0();
            }
        }
    }

    private void L(@NonNull TrackingEvent trackingEvent) {
        tm.d.a(this.f54758a, "Track Companion Event: %s", trackingEvent);
        CompanionTag companionTag = this.f54784q;
        if (companionTag != null) {
            w(companionTag.q0(), trackingEvent);
        }
    }

    private void M0() {
        tm.d.b(this.f54758a, "performVideoCloseClick", new Object[0]);
        a1();
        if (!this.K) {
            if (!this.f54788u.f54801h) {
                V(TrackingEvent.skip);
                VastPlaybackListener vastPlaybackListener = this.f54790w;
                if (vastPlaybackListener != null) {
                    vastPlaybackListener.h0();
                }
            }
            io.bidmachine.iab.vast.a aVar = this.f54787t;
            if (aVar != null && aVar.O() == VideoType.Rewarded) {
                VastPlaybackListener vastPlaybackListener2 = this.f54790w;
                if (vastPlaybackListener2 != null) {
                    vastPlaybackListener2.i0();
                }
                tm.i iVar = this.f54789v;
                if (iVar != null) {
                    iVar.e(this, this.f54787t);
                }
            }
            G0();
            return;
        }
        h0();
    }

    private void N0() {
        Uri uri;
        try {
            if (B0() && !this.f54788u.f54803j) {
                if (this.f54781n == null) {
                    MediaPlayer mediaPlayer = new MediaPlayer();
                    this.f54781n = mediaPlayer;
                    mediaPlayer.setLooping(false);
                    this.f54781n.setAudioStreamType(3);
                    this.f54781n.setOnCompletionListener(this.f54763c0);
                    this.f54781n.setOnErrorListener(this.f54765d0);
                    this.f54781n.setOnPreparedListener(this.f54767e0);
                    this.f54781n.setOnVideoSizeChangedListener(this.f54769f0);
                }
                this.f54781n.setSurface(this.f54764d);
                if (E0()) {
                    uri = this.f54787t.E();
                } else {
                    uri = null;
                }
                if (uri == null) {
                    setLoadingViewVisibility(true);
                    this.f54781n.setDataSource(this.f54787t.M().x().P());
                } else {
                    setLoadingViewVisibility(false);
                    this.f54781n.setDataSource(getContext(), uri);
                }
                this.f54781n.prepareAsync();
            }
        } catch (Exception e10) {
            tm.d.c(this.f54758a, e10);
            X(qm.a.j("Exception during preparing MediaPlayer", e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(@NonNull qm.a aVar) {
        io.bidmachine.iab.vast.a aVar2;
        tm.d.b(this.f54758a, "handleCompanionShowError - %s", aVar);
        A(tm.g.f67427m);
        B(this.f54789v, this.f54787t, aVar);
        if (this.f54784q != null) {
            I0();
            R(true);
            return;
        }
        tm.i iVar = this.f54789v;
        if (iVar != null && (aVar2 = this.f54787t) != null) {
            iVar.a(this, aVar2, z0());
        }
    }

    private void P(@Nullable b bVar) {
        if (bVar != null && !bVar.u().L().booleanValue()) {
            sm.f fVar = this.f54772h;
            if (fVar != null) {
                fVar.l();
                return;
            }
            return;
        }
        IabElementStyle iabElementStyle = null;
        if (this.f54772h == null) {
            sm.f fVar2 = new sm.f(null);
            this.f54772h = fVar2;
            this.P.add(fVar2);
        }
        if (bVar != null) {
            iabElementStyle = bVar.u();
        }
        this.f54772h.g(getContext(), this.f54766e, k(bVar, iabElementStyle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        View view = this.f54782o;
        if (view != null) {
            sm.q.J(view);
            this.f54782o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(@Nullable tm.i iVar, @Nullable io.bidmachine.iab.vast.a aVar, @NonNull qm.a aVar2) {
        B(iVar, aVar, aVar2);
        if (iVar != null && aVar != null) {
            iVar.a(this, aVar, false);
        }
    }

    private void R(boolean z10) {
        tm.i iVar;
        if (B0() && !this.I) {
            this.I = true;
            this.f54788u.f54803j = true;
            int i10 = getResources().getConfiguration().orientation;
            int i11 = this.B;
            if (i10 != i11 && (iVar = this.f54789v) != null) {
                iVar.b(this, this.f54787t, i11);
            }
            sm.l lVar = this.f54779l;
            if (lVar != null) {
                lVar.l();
            }
            sm.k kVar = this.f54776j;
            if (kVar != null) {
                kVar.l();
            }
            sm.m mVar = this.f54774i;
            if (mVar != null) {
                mVar.l();
            }
            l();
            if (this.f54788u.f54807n) {
                if (this.f54785r == null) {
                    this.f54785r = j(getContext());
                }
                this.f54785r.setImageBitmap(this.f54760b.getBitmap());
                addView(this.f54785r, new FrameLayout.LayoutParams(-1, -1));
                this.f54766e.bringToFront();
                return;
            }
            C(z10);
            if (this.f54784q == null) {
                setCloseControlsVisible(true);
                if (this.f54785r != null) {
                    this.f54793z = new y(getContext(), this.f54787t.E(), this.f54787t.M().x().P(), new WeakReference(this.f54785r));
                }
                addView(this.f54785r, new FrameLayout.LayoutParams(-1, -1));
            } else {
                setCloseControlsVisible(false);
                this.f54762c.setVisibility(8);
                P0();
                sm.g gVar = this.f54780m;
                if (gVar != null) {
                    gVar.o(8);
                }
                io.bidmachine.iab.mraid.e eVar = this.f54786s;
                if (eVar != null) {
                    if (eVar.q()) {
                        setLoadingViewVisibility(false);
                        this.f54786s.x(this, false);
                    } else {
                        setLoadingViewVisibility(true);
                    }
                } else {
                    setLoadingViewVisibility(false);
                    O(qm.a.f("CompanionInterstitial is null"));
                }
            }
            a1();
            this.f54766e.bringToFront();
            L(TrackingEvent.creativeView);
        }
    }

    private void R0() {
        if (this.f54785r != null) {
            K();
            removeView(this.f54785r);
            this.f54785r = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        if (!B0()) {
            return;
        }
        B b10 = this.f54788u;
        b10.f54803j = false;
        b10.f54797d = 0;
        I0();
        w0(this.f54787t.M().j());
        Z0("restartPlayback");
    }

    private void U() {
        removeCallbacks(this.R);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(@NonNull TrackingEvent trackingEvent) {
        VastAd vastAd;
        tm.d.a(this.f54758a, "Track Event: %s", trackingEvent);
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null) {
            vastAd = aVar.M();
        } else {
            vastAd = null;
        }
        if (vastAd != null) {
            w(vastAd.y(), trackingEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0() {
        B b10 = this.f54788u;
        if (!b10.f54806m) {
            if (C0()) {
                this.f54781n.start();
                this.f54781n.pause();
                setLoadingViewVisibility(false);
            } else if (!this.f54788u.f54803j) {
                Z0("resumePlayback (canAutoResume: false)");
            }
        } else if (b10.f54800g && this.E) {
            tm.d.a(this.f54758a, "resumePlayback", new Object[0]);
            this.f54788u.f54800g = false;
            if (C0()) {
                this.f54781n.start();
                l1();
                d1();
                setLoadingViewVisibility(false);
                V(TrackingEvent.resume);
                VastPlaybackListener vastPlaybackListener = this.f54790w;
                if (vastPlaybackListener != null) {
                    vastPlaybackListener.f0();
                }
            } else if (!this.f54788u.f54803j) {
                Z0("resumePlayback");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(@NonNull qm.a aVar) {
        tm.d.b(this.f54758a, "handlePlaybackError - %s", aVar);
        this.K = true;
        A(tm.g.f67426l);
        B(this.f54789v, this.f54787t, aVar);
        G0();
    }

    private void X0() {
        R(false);
    }

    private void Y(@Nullable b bVar) {
        if (bVar != null && bVar.g()) {
            this.P.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        setMute(!this.f54788u.f54799f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0() {
        int i10;
        int i11 = this.C;
        if (i11 != 0 && (i10 = this.D) != 0) {
            this.f54760b.setVideoSize(i11, i10);
        } else {
            tm.d.a(this.f54758a, "configureVideoSurface - skip: videoWidth or videoHeight is 0", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1() {
        for (sm.i<? extends View> iVar : this.P) {
            iVar.q();
        }
    }

    private void d0(@Nullable b bVar) {
        if (bVar != null && !bVar.v().L().booleanValue()) {
            sm.j jVar = this.f54778k;
            if (jVar != null) {
                jVar.l();
                return;
            }
            return;
        }
        IabElementStyle iabElementStyle = null;
        if (this.f54778k == null) {
            this.f54778k = new sm.j(null);
        }
        if (bVar != null) {
            iabElementStyle = bVar.v();
        }
        this.f54778k.g(getContext(), this, k(bVar, iabElementStyle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1() {
        g1();
        U();
        this.R.run();
    }

    private void g1() {
        this.U.clear();
        this.V = 0;
        this.W = 0.0f;
    }

    private int getAvailableHeight() {
        return (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private int getAvailableWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0() {
        io.bidmachine.iab.vast.a aVar;
        tm.d.b(this.f54758a, "handleClose", new Object[0]);
        V(TrackingEvent.close);
        tm.i iVar = this.f54789v;
        if (iVar != null && (aVar = this.f54787t) != null) {
            iVar.a(this, aVar, z0());
        }
    }

    private void h1() {
        boolean z10;
        boolean z11;
        int i10;
        int i11 = 0;
        if (!this.L) {
            z11 = false;
            z10 = false;
        } else {
            z10 = true;
            if (!D0() && !this.I) {
                z11 = true;
                z10 = false;
            } else {
                z11 = false;
            }
        }
        sm.e eVar = this.f54770g;
        if (eVar != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            eVar.o(i10);
        }
        sm.f fVar = this.f54772h;
        if (fVar != null) {
            if (!z11) {
                i11 = 8;
            }
            fVar.o(i11);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled", "ClickableViewAccessibility"})
    private View i(@NonNull Context context, @NonNull CompanionTag companionTag) {
        float f10;
        float f11;
        boolean y10 = sm.q.y(context);
        if (companionTag.r0() > 0) {
            f10 = companionTag.r0();
        } else if (y10) {
            f10 = 728.0f;
        } else {
            f10 = 320.0f;
        }
        int q10 = sm.q.q(context, f10);
        if (companionTag.l0() > 0) {
            f11 = companionTag.l0();
        } else if (y10) {
            f11 = 90.0f;
        } else {
            f11 = 50.0f;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(q10, sm.q.q(context, f11));
        WebView webView = new WebView(context);
        webView.setId(sm.q.s());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setScrollContainer(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setScrollBarStyle(33554432);
        webView.setFocusableInTouchMode(false);
        webView.setBackgroundColor(0);
        webView.setOnTouchListener(this.f54773h0);
        webView.setWebViewClient(this.f54777j0);
        webView.setWebChromeClient(this.f54775i0);
        String o02 = companionTag.o0();
        if (o02 != null) {
            webView.loadDataWithBaseURL("", o02, "text/html", "utf-8", null);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(sm.q.s());
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.addView(webView, new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    private void i0(@Nullable b bVar) {
        IabElementStyle iabElementStyle;
        if (bVar != null && !bVar.k().L().booleanValue()) {
            sm.k kVar = this.f54776j;
            if (kVar != null) {
                kVar.l();
                return;
            }
            return;
        }
        if (this.f54776j == null) {
            sm.k kVar2 = new sm.k(new v());
            this.f54776j = kVar2;
            this.P.add(kVar2);
        }
        if (bVar != null) {
            iabElementStyle = bVar.k();
        } else {
            iabElementStyle = null;
        }
        this.f54776j.g(getContext(), this.f54766e, k(bVar, iabElementStyle));
    }

    @NonNull
    private ImageView j(@NonNull Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1() {
        sm.k kVar;
        if (C0() && (kVar = this.f54776j) != null) {
            kVar.t(this.f54788u.f54799f);
            if (this.f54788u.f54799f) {
                this.f54781n.setVolume(0.0f, 0.0f);
                VastPlaybackListener vastPlaybackListener = this.f54790w;
                if (vastPlaybackListener != null) {
                    vastPlaybackListener.j0(0.0f);
                    return;
                }
                return;
            }
            this.f54781n.setVolume(1.0f, 1.0f);
            VastPlaybackListener vastPlaybackListener2 = this.f54790w;
            if (vastPlaybackListener2 != null) {
                vastPlaybackListener2.j0(1.0f);
            }
        }
    }

    private IabElementStyle k(@Nullable b bVar, @Nullable IabElementStyle iabElementStyle) {
        if (bVar == null) {
            return null;
        }
        if (iabElementStyle == null) {
            IabElementStyle iabElementStyle2 = new IabElementStyle();
            iabElementStyle2.o0(bVar.r());
            iabElementStyle2.P(bVar.d());
            return iabElementStyle2;
        }
        if (!iabElementStyle.J()) {
            iabElementStyle.o0(bVar.r());
        }
        if (!iabElementStyle.I()) {
            iabElementStyle.P(bVar.d());
        }
        return iabElementStyle;
    }

    private void l() {
        for (sm.i<? extends View> iVar : this.P) {
            iVar.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        io.bidmachine.iab.vast.a aVar;
        tm.d.b(this.f54758a, "handleCompanionClose", new Object[0]);
        L(TrackingEvent.close);
        tm.i iVar = this.f54789v;
        if (iVar != null && (aVar = this.f54787t) != null) {
            iVar.a(this, aVar, z0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l1() {
        if (!B0()) {
            return;
        }
        b1();
    }

    private void m(@NonNull TrackingEvent trackingEvent) {
        tm.d.a(this.f54758a, "Track Banner Event: %s", trackingEvent);
        CompanionTag companionTag = this.f54783p;
        if (companionTag != null) {
            w(companionTag.q0(), trackingEvent);
        }
    }

    private void n(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull VastAd vastAd, @NonNull CacheControl cacheControl, boolean z10) {
        aVar.Z(new r(z10, cacheControl));
        n0(vastAd.j());
        setPlaceholderViewVisible(true);
        setLoadingViewVisibility(true);
    }

    private void n0(@Nullable b bVar) {
        IabElementStyle iabElementStyle;
        IabElementStyle iabElementStyle2 = null;
        if (bVar != null) {
            iabElementStyle = bVar.u();
        } else {
            iabElementStyle = null;
        }
        this.f54768f.setCountDownStyle(k(bVar, iabElementStyle));
        if (A0()) {
            if (bVar != null) {
                iabElementStyle2 = bVar.b();
            }
            this.f54768f.setCloseStyle(k(bVar, iabElementStyle2));
            this.f54768f.setCloseClickListener(new s());
        }
        d0(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n1() {
        if (this.E && tm.c.e(getContext())) {
            if (this.F) {
                this.F = false;
                Z0("onWindowFocusChanged");
                return;
            } else if (!this.f54788u.f54803j) {
                V0();
                return;
            } else {
                setLoadingViewVisibility(false);
                return;
            }
        }
        K0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull VastAd vastAd, boolean z10) {
        boolean z11;
        int i10;
        AppodealExtensionTag j10 = vastAd.j();
        this.A = aVar.K();
        if (j10 != null && j10.s().L().booleanValue()) {
            this.f54783p = j10.Z();
        } else {
            this.f54783p = null;
        }
        if (this.f54783p == null) {
            this.f54783p = vastAd.k(getContext());
        }
        w0(j10);
        if (this.f54782o != null) {
            z11 = true;
        } else {
            z11 = false;
        }
        z(j10, z11);
        y(j10);
        P(j10);
        i0(j10);
        t0(j10);
        q0(j10);
        d0(j10);
        Y(j10);
        setLoadingViewVisibility(false);
        VastAdMeasurer vastAdMeasurer = this.f54791x;
        if (vastAdMeasurer != null) {
            vastAdMeasurer.l(this);
            this.f54791x.t0(this.f54760b);
        }
        tm.i iVar = this.f54789v;
        if (iVar != null) {
            if (this.f54788u.f54803j) {
                i10 = this.B;
            } else {
                i10 = this.A;
            }
            iVar.b(this, aVar, i10);
        }
        if (!z10) {
            this.f54788u.f54794a = aVar.H();
            B b10 = this.f54788u;
            b10.f54806m = this.M;
            b10.f54807n = this.N;
            if (j10 != null) {
                b10.f54799f = j10.a0();
            }
            this.f54788u.f54795b = aVar.G();
            VastAdMeasurer vastAdMeasurer2 = this.f54791x;
            if (vastAdMeasurer2 != null) {
                vastAdMeasurer2.m(this.f54760b);
                this.f54791x.onAdShown();
            }
            tm.i iVar2 = this.f54789v;
            if (iVar2 != null) {
                iVar2.d(this, aVar);
            }
        }
        setCloseControlsVisible(D(aVar));
        Z0("load (restoring: " + z10 + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        tm.d.a(this.f54758a, "handleComplete", new Object[0]);
        B b10 = this.f54788u;
        b10.f54802i = true;
        if (!this.K && !b10.f54801h) {
            b10.f54801h = true;
            VastPlaybackListener vastPlaybackListener = this.f54790w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.i0();
            }
            tm.i iVar = this.f54789v;
            if (iVar != null) {
                iVar.e(this, this.f54787t);
            }
            io.bidmachine.iab.vast.a aVar = this.f54787t;
            if (aVar != null && aVar.S() && !this.f54788u.f54805l) {
                x0();
            }
            V(TrackingEvent.complete);
        }
        if (this.f54788u.f54801h) {
            G0();
        }
    }

    private void q0(@Nullable b bVar) {
        if (bVar != null && !bVar.j().L().booleanValue()) {
            sm.l lVar = this.f54779l;
            if (lVar != null) {
                lVar.l();
                return;
            }
            return;
        }
        IabElementStyle iabElementStyle = null;
        if (this.f54779l == null) {
            sm.l lVar2 = new sm.l(null);
            this.f54779l = lVar2;
            this.P.add(lVar2);
        }
        if (bVar != null) {
            iabElementStyle = bVar.j();
        }
        this.f54779l.g(getContext(), this.f54766e, k(bVar, iabElementStyle));
        this.f54779l.r(0.0f, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        tm.d.a(this.f54758a, "handleImpressions", new Object[0]);
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null) {
            this.f54788u.f54804k = true;
            v(aVar.M().w());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCloseControlsVisible(boolean z10) {
        this.L = z10;
        h1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLoadingViewVisibility(boolean z10) {
        sm.j jVar = this.f54778k;
        if (jVar == null) {
            return;
        }
        if (z10) {
            jVar.o(0);
            this.f54778k.i();
            return;
        }
        jVar.o(8);
    }

    private void setMute(boolean z10) {
        TrackingEvent trackingEvent;
        this.f54788u.f54799f = z10;
        j1();
        if (this.f54788u.f54799f) {
            trackingEvent = TrackingEvent.mute;
        } else {
            trackingEvent = TrackingEvent.unmute;
        }
        V(trackingEvent);
    }

    private void setPlaceholderViewVisible(boolean z10) {
        float f10;
        CloseableLayout closeableLayout = this.f54768f;
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null) {
            f10 = aVar.J();
        } else {
            f10 = 3.0f;
        }
        closeableLayout.setCloseVisibility(z10, f10);
    }

    private void t0(@Nullable b bVar) {
        if (bVar != null && bVar.e().L().booleanValue()) {
            if (this.f54774i == null) {
                sm.m mVar = new sm.m(new w());
                this.f54774i = mVar;
                this.P.add(mVar);
            }
            this.f54774i.g(getContext(), this.f54766e, k(bVar, bVar.e()));
            return;
        }
        sm.m mVar2 = this.f54774i;
        if (mVar2 != null) {
            mVar2.l();
        }
    }

    private void v(@Nullable List<String> list) {
        if (!B0()) {
            return;
        }
        if (list != null && !list.isEmpty()) {
            this.f54787t.B(list, null);
        } else {
            tm.d.a(this.f54758a, "\turl list is null", new Object[0]);
        }
    }

    private void w(@Nullable Map<TrackingEvent, List<String>> map, @NonNull TrackingEvent trackingEvent) {
        if (map != null && !map.isEmpty()) {
            v(map.get(trackingEvent));
        } else {
            tm.d.a(this.f54758a, "Processing Event - fail: %s (tracking event map is null or empty)", trackingEvent);
        }
    }

    private void w0(@Nullable b bVar) {
        IabElementStyle iabElementStyle;
        IabElementStyle iabElementStyle2;
        if (bVar != null) {
            iabElementStyle = sm.a.f66397q.g(bVar.getVideoStyle());
        } else {
            iabElementStyle = sm.a.f66397q;
        }
        if (bVar != null && bVar.g()) {
            this.f54762c.setOnClickListener(new x());
        } else {
            this.f54762c.setOnClickListener(null);
            this.f54762c.setClickable(false);
        }
        this.f54762c.setBackgroundColor(iabElementStyle.i().intValue());
        P0();
        if (this.f54783p != null && !this.f54788u.f54803j) {
            this.f54782o = i(getContext(), this.f54783p);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(this.f54782o.getLayoutParams());
            if ("inline".equals(iabElementStyle.F())) {
                iabElementStyle2 = sm.a.f66392l;
                if (getResources().getConfiguration().orientation == 2) {
                    layoutParams.addRule(15);
                    layoutParams2.height = -1;
                    layoutParams2.addRule(10);
                    layoutParams2.addRule(12);
                    if (iabElementStyle.r().intValue() == 3) {
                        layoutParams.addRule(9);
                        layoutParams.addRule(0, this.f54782o.getId());
                        layoutParams2.addRule(11);
                    } else {
                        layoutParams.addRule(11);
                        layoutParams.addRule(1, this.f54782o.getId());
                        layoutParams2.addRule(9);
                    }
                } else {
                    layoutParams.addRule(14);
                    layoutParams2.width = -1;
                    layoutParams2.addRule(9);
                    layoutParams2.addRule(11);
                    if (iabElementStyle.G().intValue() == 48) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(2, this.f54782o.getId());
                        layoutParams2.addRule(12);
                    } else {
                        layoutParams.addRule(12);
                        layoutParams.addRule(3, this.f54782o.getId());
                        layoutParams2.addRule(10);
                    }
                }
            } else {
                IabElementStyle iabElementStyle3 = sm.a.f66391k;
                layoutParams.addRule(13);
                iabElementStyle2 = iabElementStyle3;
            }
            if (bVar != null) {
                iabElementStyle2 = iabElementStyle2.g(bVar.s());
            }
            iabElementStyle2.e(getContext(), this.f54782o);
            iabElementStyle2.d(getContext(), layoutParams2);
            iabElementStyle2.f(layoutParams2);
            this.f54782o.setBackgroundColor(iabElementStyle2.i().intValue());
            iabElementStyle.e(getContext(), this.f54762c);
            iabElementStyle.d(getContext(), layoutParams);
            this.f54762c.setLayoutParams(layoutParams);
            addView(this.f54782o, layoutParams2);
            m(TrackingEvent.creativeView);
            return;
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(13);
        this.f54762c.setLayoutParams(layoutParams3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(@NonNull qm.a aVar) {
        tm.d.b(this.f54758a, "handleCompanionExpired - %s", aVar);
        A(tm.g.f67427m);
        if (this.f54784q != null) {
            I0();
            C(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean x0() {
        tm.d.b(this.f54758a, "handleInfoClicked", new Object[0]);
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar == null) {
            return false;
        }
        return I(aVar.M().m(), this.f54787t.M().l());
    }

    private void y(@Nullable b bVar) {
        IabElementStyle iabElementStyle;
        if (bVar != null && !bVar.b().L().booleanValue()) {
            sm.e eVar = this.f54770g;
            if (eVar != null) {
                eVar.l();
                return;
            }
            return;
        }
        if (this.f54770g == null) {
            sm.e eVar2 = new sm.e(new u());
            this.f54770g = eVar2;
            this.P.add(eVar2);
        }
        if (bVar != null) {
            iabElementStyle = bVar.b();
        } else {
            iabElementStyle = null;
        }
        this.f54770g.g(getContext(), this.f54766e, k(bVar, iabElementStyle));
    }

    private void z(@Nullable b bVar, boolean z10) {
        IabElementStyle iabElementStyle;
        if (!z10 && (bVar == null || bVar.s().L().booleanValue())) {
            if (this.f54780m == null) {
                sm.g gVar = new sm.g(new t());
                this.f54780m = gVar;
                this.P.add(gVar);
            }
            if (bVar != null) {
                iabElementStyle = bVar.s();
            } else {
                iabElementStyle = null;
            }
            this.f54780m.g(getContext(), this.f54766e, k(bVar, iabElementStyle));
            return;
        }
        sm.g gVar2 = this.f54780m;
        if (gVar2 != null) {
            gVar2.l();
        }
    }

    public boolean A0() {
        return this.f54788u.f54798e;
    }

    public boolean B0() {
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null && aVar.M() != null) {
            return true;
        }
        return false;
    }

    public boolean C0() {
        if (this.f54781n != null && this.J) {
            return true;
        }
        return false;
    }

    public boolean D0() {
        B b10 = this.f54788u;
        if (!b10.f54802i && b10.f54795b != 0.0f) {
            return false;
        }
        return true;
    }

    public boolean E0() {
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null && aVar.v()) {
            return true;
        }
        return false;
    }

    public void Z0(String str) {
        tm.d.a(this.f54758a, "startPlayback: %s", str);
        if (!B0()) {
            return;
        }
        setPlaceholderViewVisible(false);
        if (this.f54788u.f54803j) {
            X0();
        } else if (this.E) {
            if (this.G) {
                a1();
                I0();
                b0();
                N0();
                tm.c.d(this, this.f54771g0);
            } else {
                this.H = true;
            }
            if (this.f54762c.getVisibility() != 0) {
                this.f54762c.setVisibility(0);
            }
        } else {
            this.F = true;
        }
    }

    public void a1() {
        this.f54788u.f54800g = false;
        if (this.f54781n != null) {
            tm.d.a(this.f54758a, "stopPlayback", new Object[0]);
            try {
                if (this.f54781n.isPlaying()) {
                    this.f54781n.stop();
                }
                this.f54781n.setSurface(null);
                this.f54781n.release();
            } catch (Exception e10) {
                tm.d.c(this.f54758a, e10);
            }
            this.f54781n = null;
            this.J = false;
            this.K = false;
            U();
            tm.c.f(this);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        this.f54766e.bringToFront();
    }

    @Override // sm.d
    public void c() {
        if (y0()) {
            setLoadingViewVisibility(false);
        } else if (!this.E) {
            K0();
        } else {
            V0();
        }
    }

    @Override // sm.d
    public void d() {
        if (y0()) {
            setLoadingViewVisibility(false);
        } else {
            V0();
        }
    }

    public void e0() {
        io.bidmachine.iab.mraid.e eVar = this.f54786s;
        if (eVar != null) {
            eVar.n();
            this.f54786s = null;
            this.f54784q = null;
        }
        this.f54789v = null;
        this.f54790w = null;
        this.f54791x = null;
        this.f54792y = null;
        b0 b0Var = this.f54793z;
        if (b0Var != null) {
            b0Var.c();
            this.f54793z = null;
        }
    }

    public boolean f0(@Nullable io.bidmachine.iab.vast.a aVar, @Nullable Boolean bool) {
        return E(aVar, bool, false);
    }

    @Nullable
    public tm.i getListener() {
        return this.f54789v;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.E) {
            Z0("onAttachedToWindow");
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (B0()) {
            w0(this.f54787t.M().j());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a1();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof z)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        z zVar = (z) parcelable;
        super.onRestoreInstanceState(zVar.getSuperState());
        B b10 = zVar.f54846a;
        if (b10 != null) {
            this.f54788u = b10;
        }
        io.bidmachine.iab.vast.a a10 = tm.f.a(this.f54788u.f54794a);
        if (a10 != null) {
            E(a10, null, true);
        }
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        if (C0()) {
            this.f54788u.f54797d = this.f54781n.getCurrentPosition();
        }
        z zVar = new z(super.onSaveInstanceState());
        zVar.f54846a = this.f54788u;
        return zVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        removeCallbacks(this.Q);
        post(this.Q);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        tm.d.a(this.f54758a, "onWindowFocusChanged: %s", Boolean.valueOf(z10));
        this.E = z10;
        n1();
    }

    public void setAdMeasurer(@Nullable VastAdMeasurer vastAdMeasurer) {
        this.f54791x = vastAdMeasurer;
    }

    public void setCanAutoResume(boolean z10) {
        this.M = z10;
        this.f54788u.f54806m = z10;
    }

    public void setCanIgnorePostBanner(boolean z10) {
        this.N = z10;
        this.f54788u.f54807n = z10;
    }

    public void setListener(@Nullable tm.i iVar) {
        this.f54789v = iVar;
    }

    public void setPlaybackListener(@Nullable VastPlaybackListener vastPlaybackListener) {
        this.f54790w = vastPlaybackListener;
    }

    public void setPostBannerAdMeasurer(@Nullable MraidAdMeasurer mraidAdMeasurer) {
        PostBannerAdMeasurer postBannerAdMeasurer;
        if (mraidAdMeasurer != null) {
            postBannerAdMeasurer = new PostBannerAdMeasurer(this, mraidAdMeasurer);
        } else {
            postBannerAdMeasurer = null;
        }
        this.f54792y = postBannerAdMeasurer;
    }

    public void u0() {
        if (this.f54768f.m() && this.f54768f.k()) {
            Q(this.f54789v, this.f54787t, qm.a.i("OnBackPress event fired"));
        } else if (!D0()) {
        } else {
            if (!y0()) {
                M0();
                return;
            }
            io.bidmachine.iab.vast.a aVar = this.f54787t;
            if (aVar != null && aVar.O() == VideoType.NonRewarded) {
                if (this.f54784q == null) {
                    h0();
                    return;
                }
                io.bidmachine.iab.mraid.e eVar = this.f54786s;
                if (eVar != null) {
                    eVar.o();
                } else {
                    l0();
                }
            }
        }
    }

    public boolean y0() {
        return this.f54788u.f54803j;
    }

    public boolean z0() {
        io.bidmachine.iab.vast.a aVar = this.f54787t;
        if (aVar != null && ((aVar.D() == 0.0f && this.f54788u.f54801h) || (this.f54787t.D() > 0.0f && this.f54788u.f54803j))) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class z extends View.BaseSavedState {
        public static final Parcelable.Creator<z> CREATOR = new a();
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        B f54846a;

        /* loaded from: classes7.dex */
        class a implements Parcelable.Creator<z> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public z createFromParcel(Parcel parcel) {
                return new z(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public z[] newArray(int i10) {
                return new z[i10];
            }
        }

        z(Parcel parcel) {
            super(parcel);
            this.f54846a = (B) parcel.readParcelable(B.class.getClassLoader());
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeParcelable(this.f54846a, 0);
        }

        z(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public VastView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* loaded from: classes7.dex */
    class q extends WebViewClient {
        q() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            webView.setBackgroundColor(0);
            webView.setLayerType(1, null);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            VastView.this.P0();
            return true;
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(24)
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest.hasGesture()) {
                VastView.this.O.add(webView);
            }
            return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (VastView.this.O.contains(webView)) {
                tm.d.a(VastView.this.f54758a, "banner clicked", new Object[0]);
                VastView vastView = VastView.this;
                vastView.H(vastView.f54783p, str);
                return true;
            }
            return true;
        }
    }

    public VastView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f54758a = "VastView-" + Integer.toHexString(hashCode());
        this.f54788u = new B();
        this.A = 0;
        this.B = 0;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = true;
        this.N = false;
        this.O = new ArrayList();
        this.P = new ArrayList();
        this.Q = new c();
        this.R = new d();
        this.S = new e();
        this.T = new f();
        this.U = new LinkedList<>();
        this.V = 0;
        this.W = 0.0f;
        this.f54759a0 = new g();
        h hVar = new h();
        this.f54761b0 = hVar;
        this.f54763c0 = new i();
        this.f54765d0 = new j();
        this.f54767e0 = new k();
        this.f54769f0 = new l();
        this.f54771g0 = new n();
        this.f54773h0 = new o();
        this.f54775i0 = new p();
        this.f54777j0 = new q();
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        setOnClickListener(new m());
        IabVideoTexture iabVideoTexture = new IabVideoTexture(context);
        this.f54760b = iabVideoTexture;
        iabVideoTexture.setSurfaceTextureListener(hVar);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f54762c = frameLayout;
        frameLayout.addView(this.f54760b, new FrameLayout.LayoutParams(-1, -1, 17));
        addView(this.f54762c, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f54766e = frameLayout2;
        frameLayout2.setBackgroundColor(0);
        addView(this.f54766e, new ViewGroup.LayoutParams(-1, -1));
        CloseableLayout closeableLayout = new CloseableLayout(getContext());
        this.f54768f = closeableLayout;
        closeableLayout.setBackgroundColor(0);
        addView(this.f54768f, new ViewGroup.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static class B implements Parcelable {
        public static final Parcelable.Creator<B> CREATOR = new a();
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        String f54794a;

        /* renamed from: b  reason: collision with root package name */
        float f54795b;

        /* renamed from: c  reason: collision with root package name */
        int f54796c;

        /* renamed from: d  reason: collision with root package name */
        int f54797d;

        /* renamed from: e  reason: collision with root package name */
        boolean f54798e;

        /* renamed from: f  reason: collision with root package name */
        boolean f54799f;

        /* renamed from: g  reason: collision with root package name */
        boolean f54800g;

        /* renamed from: h  reason: collision with root package name */
        boolean f54801h;

        /* renamed from: i  reason: collision with root package name */
        boolean f54802i;

        /* renamed from: j  reason: collision with root package name */
        boolean f54803j;

        /* renamed from: k  reason: collision with root package name */
        boolean f54804k;

        /* renamed from: l  reason: collision with root package name */
        boolean f54805l;

        /* renamed from: m  reason: collision with root package name */
        boolean f54806m;

        /* renamed from: n  reason: collision with root package name */
        boolean f54807n;

        /* loaded from: classes7.dex */
        class a implements Parcelable.Creator<B> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public B createFromParcel(Parcel parcel) {
                return new B(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public B[] newArray(int i10) {
                return new B[i10];
            }
        }

        B() {
            this.f54794a = null;
            this.f54795b = 5.0f;
            this.f54796c = 0;
            this.f54797d = 0;
            this.f54798e = true;
            this.f54799f = false;
            this.f54800g = false;
            this.f54801h = false;
            this.f54802i = false;
            this.f54803j = false;
            this.f54804k = false;
            this.f54805l = false;
            this.f54806m = true;
            this.f54807n = false;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f54794a);
            parcel.writeFloat(this.f54795b);
            parcel.writeInt(this.f54796c);
            parcel.writeInt(this.f54797d);
            parcel.writeByte(this.f54798e ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54799f ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54800g ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54801h ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54802i ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54803j ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54804k ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54805l ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54806m ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f54807n ? (byte) 1 : (byte) 0);
        }

        B(Parcel parcel) {
            this.f54794a = null;
            this.f54795b = 5.0f;
            this.f54796c = 0;
            this.f54797d = 0;
            this.f54798e = true;
            this.f54799f = false;
            this.f54800g = false;
            this.f54801h = false;
            this.f54802i = false;
            this.f54803j = false;
            this.f54804k = false;
            this.f54805l = false;
            this.f54806m = true;
            this.f54807n = false;
            this.f54794a = parcel.readString();
            this.f54795b = parcel.readFloat();
            this.f54796c = parcel.readInt();
            this.f54797d = parcel.readInt();
            this.f54798e = parcel.readByte() != 0;
            this.f54799f = parcel.readByte() != 0;
            this.f54800g = parcel.readByte() != 0;
            this.f54801h = parcel.readByte() != 0;
            this.f54802i = parcel.readByte() != 0;
            this.f54803j = parcel.readByte() != 0;
            this.f54804k = parcel.readByte() != 0;
            this.f54805l = parcel.readByte() != 0;
            this.f54806m = parcel.readByte() != 0;
            this.f54807n = parcel.readByte() != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class s implements CloseableLayout.a {
        s() {
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.a
        public void a() {
            VastView vastView = VastView.this;
            vastView.Q(vastView.f54789v, VastView.this.f54787t, qm.a.i("Close button clicked"));
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.a
        public void b() {
        }
    }

    /* loaded from: classes7.dex */
    class h implements TextureView.SurfaceTextureListener {
        h() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
            tm.d.a(VastView.this.f54758a, "onSurfaceTextureAvailable", new Object[0]);
            VastView.this.f54764d = new Surface(surfaceTexture);
            VastView.this.G = true;
            if (VastView.this.H) {
                VastView.this.H = false;
                VastView.this.Z0("onSurfaceTextureAvailable");
            } else if (VastView.this.C0()) {
                VastView vastView = VastView.this;
                vastView.f54781n.setSurface(vastView.f54764d);
                VastView.this.V0();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
            tm.d.a(VastView.this.f54758a, "onSurfaceTextureDestroyed", new Object[0]);
            VastView vastView = VastView.this;
            vastView.f54764d = null;
            vastView.G = false;
            if (VastView.this.C0()) {
                VastView.this.f54781n.setSurface(null);
                VastView.this.K0();
            }
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
            tm.d.a(VastView.this.f54758a, "onSurfaceTextureSizeChanged: %d/%d", Integer.valueOf(i10), Integer.valueOf(i11));
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
        }
    }
}
