package com.mbridge.msdk.nativex.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.webkit.URLUtil;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.webkit.ProxyConfig;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.playercommon.VideoNativePlayer;
import com.mbridge.msdk.playercommon.VideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.videocommon.view.MyImageView;
import java.io.File;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes6.dex */
public class MediaViewPlayerView extends LinearLayout implements VideoPlayerStatusListener {
    private static Handler L = new Handler();
    private String A;
    private String B;
    private CampaignEx C;
    private com.mbridge.msdk.nativex.listener.a D;
    private Timer E;
    private com.mbridge.msdk.videocommon.download.a F;
    private VideoNativePlayer G;
    private h H;
    private AdSession I;
    private MediaEvents J;
    private boolean K;

    /* renamed from: a  reason: collision with root package name */
    private boolean f28358a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28359b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28360c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f28361d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28362e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28363f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f28364g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f28365h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28366i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28367j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28368k;

    /* renamed from: l  reason: collision with root package name */
    private volatile int f28369l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f28370m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28371n;

    /* renamed from: o  reason: collision with root package name */
    private TextureView f28372o;

    /* renamed from: p  reason: collision with root package name */
    private LinearLayout f28373p;

    /* renamed from: q  reason: collision with root package name */
    private Surface f28374q;

    /* renamed from: r  reason: collision with root package name */
    private ProgressBar f28375r;

    /* renamed from: s  reason: collision with root package name */
    private MyImageView f28376s;

    /* renamed from: t  reason: collision with root package name */
    private ImageView f28377t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f28378u;

    /* renamed from: v  reason: collision with root package name */
    private ImageView f28379v;

    /* renamed from: w  reason: collision with root package name */
    private ImageView f28380w;

    /* renamed from: x  reason: collision with root package name */
    private View f28381x;

    /* renamed from: y  reason: collision with root package name */
    private AnimationDrawable f28382y;

    /* renamed from: z  reason: collision with root package name */
    private AlphaAnimation f28383z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (MediaViewPlayerView.this.f28368k) {
                    MediaViewPlayerView.this.closeSound();
                    if (MediaViewPlayerView.this.D != null) {
                        MediaViewPlayerView.this.D.b();
                    }
                } else {
                    MediaViewPlayerView.this.openSound();
                    if (MediaViewPlayerView.this.D != null) {
                        MediaViewPlayerView.this.D.a();
                    }
                }
            } catch (Throwable th2) {
                p0.b("MediaViewPlayerView", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                MediaViewPlayerView.this.pause();
                MediaViewPlayerView.this.f28377t.setVisibility(0);
                MediaViewPlayerView.this.n();
                MediaViewPlayerView.this.c();
                if (MediaViewPlayerView.this.D != null) {
                    MediaViewPlayerView.this.D.c();
                }
                MediaViewPlayerView.this.f28362e = true;
            } catch (Throwable th2) {
                p0.b("MediaViewPlayerView", th2.getMessage(), th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaViewPlayerView.this.onClickPlayButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MediaViewPlayerView.this.c();
                MediaViewPlayerView.this.f();
            } catch (Exception e10) {
                p0.b("MediaViewPlayerView", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class g extends TimerTask {
        g() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                MediaViewPlayerView.this.gonePauseView();
            } catch (Throwable th2) {
                p0.b("MediaViewPlayerView", th2.getMessage(), th2);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        private MediaViewPlayerView f28391a;

        public h(MediaViewPlayerView mediaViewPlayerView) {
            this.f28391a = mediaViewPlayerView;
        }

        public void a() {
            try {
                MediaViewPlayerView mediaViewPlayerView = this.f28391a;
                if (mediaViewPlayerView != null && !mediaViewPlayerView.f28367j) {
                    p0.c("MediaViewPlayerView", "play end and display endcardView");
                    this.f28391a.m();
                }
            } catch (Exception e10) {
                p0.b("MediaViewPlayerView", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class i implements TextureView.SurfaceTextureListener {
        private i() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            try {
                MediaViewPlayerView.this.f28374q = new Surface(surfaceTexture);
                MediaViewPlayerView.this.f28364g = true;
                MediaViewPlayerView.this.f28366i = true;
                if (MediaViewPlayerView.this.f28361d) {
                    if (MediaViewPlayerView.this.f28365h) {
                        MediaViewPlayerView.this.f28360c = false;
                        MediaViewPlayerView.this.f28365h = false;
                    }
                    if (!MediaViewPlayerView.this.isComplete() && !MediaViewPlayerView.this.f28362e) {
                        MediaViewPlayerView.this.startOrPlayVideo();
                        return;
                    }
                    MediaViewPlayerView.this.m();
                } else if (MediaViewPlayerView.this.f28359b) {
                    if (MediaViewPlayerView.this.hasPrepare() && MediaViewPlayerView.this.isComplete()) {
                        MediaViewPlayerView.this.m();
                        return;
                    }
                    MediaViewPlayerView.this.startOrPlayVideo();
                } else {
                    if (MediaViewPlayerView.this.hasPrepare() && !MediaViewPlayerView.this.isComplete()) {
                        MediaViewPlayerView.this.startOrPlayVideo();
                        return;
                    }
                    MediaViewPlayerView.this.m();
                }
            } catch (Exception e10) {
                p0.b("MediaViewPlayerView", e10.getMessage());
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            try {
                if (MediaViewPlayerView.this.G != null && MediaViewPlayerView.this.G.isPlayIng()) {
                    MediaViewPlayerView.this.pause();
                }
                MediaViewPlayerView.this.f28360c = true;
                MediaViewPlayerView.this.f28364g = false;
            } catch (Throwable th2) {
                p0.b("MediaViewPlayerView", th2.getMessage());
            }
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            p0.c("MediaViewPlayerView", "onSurfaceTextureSizeChanged ");
        }

        /* synthetic */ i(MediaViewPlayerView mediaViewPlayerView, a aVar) {
            this();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public MediaViewPlayerView(Context context) {
        super(context);
        this.f28358a = false;
        this.f28359b = false;
        this.f28360c = false;
        this.f28361d = false;
        this.f28362e = false;
        this.f28363f = false;
        this.f28364g = false;
        this.f28365h = true;
        this.f28366i = false;
        this.f28367j = true;
        this.f28368k = false;
        this.f28369l = -1;
        this.f28370m = true;
        this.f28371n = true;
        this.I = null;
        this.J = null;
        this.K = false;
        g();
    }

    private String getPlayUrl() {
        CampaignEx campaignEx;
        String str;
        try {
            campaignEx = this.C;
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
        if (campaignEx == null) {
            return null;
        }
        try {
            if (this.F == null) {
                if (campaignEx.getAdType() != 287 && this.C.getAdType() != 94) {
                    str = this.C.getId() + this.C.getVideoUrlEncode() + this.C.getBidToken();
                    this.F = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.A, str);
                }
                str = this.C.getRequestId() + this.C.getId() + this.C.getVideoUrlEncode();
                this.F = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.A, str);
            }
        } catch (Exception e11) {
            p0.b("MediaViewPlayerView", e11.getMessage());
        }
        com.mbridge.msdk.videocommon.download.a aVar = this.F;
        if (aVar != null && aVar.j() == 5) {
            String k10 = this.F.k();
            if (new File(k10).exists()) {
                return k10;
            }
        }
        String videoUrlEncode = this.C.getVideoUrlEncode();
        if (!z0.b(videoUrlEncode)) {
            return null;
        }
        return videoUrlEncode;
    }

    public void closeSound() {
        this.f28368k = false;
        try {
            if (this.G != null) {
                this.f28379v.setImageResource(h0.a(getContext(), "mbridge_nativex_sound_close", "drawable"));
                this.G.closeSound();
            }
            try {
                MediaEvents mediaEvents = this.J;
                if (mediaEvents != null) {
                    mediaEvents.volumeChange(0.0f);
                }
            } catch (IllegalArgumentException e10) {
                p0.a("OMSDK", e10.getMessage());
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public boolean curIsFullScreen() {
        return this.f28361d;
    }

    public Campaign getCampaign() {
        return this.C;
    }

    public boolean getIsActiviePause() {
        return this.f28362e;
    }

    public void gonePauseView() {
        Handler handler = L;
        if (handler != null) {
            handler.post(new e());
        }
    }

    public boolean halfLoadingViewisVisible() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                if (videoNativePlayer.loadingViewIsVisible()) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    public boolean hasPrepare() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                return videoNativePlayer.hasPrepare();
            }
            return false;
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    public boolean initPlayerViewData(String str, CampaignEx campaignEx, boolean z10, VideoPlayerStatusListener videoPlayerStatusListener, com.mbridge.msdk.videocommon.download.a aVar, String str2) {
        try {
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
            this.f28358a = false;
        }
        if (TextUtils.isEmpty(str) || campaignEx == null) {
            return false;
        }
        this.B = str;
        this.f28359b = z10;
        this.C = campaignEx;
        this.F = aVar;
        this.A = str2;
        this.G.initParameter(campaignEx.getVideoUrlEncode(), true, this.f28367j, this.f28376s, videoPlayerStatusListener);
        h();
        this.f28358a = true;
        return true;
    }

    public boolean isComplete() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                return videoNativePlayer.isComplete();
            }
            return false;
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    public boolean isPlaying() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                return videoNativePlayer.isPlaying();
            }
            return false;
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    public void onClickPlayButton() {
        com.mbridge.msdk.nativex.listener.a aVar;
        try {
            e();
            f();
            setIsComplete(false);
            if (this.f28363f) {
                this.G.play();
            } else if (hasPrepare() && !this.f28360c) {
                p0.c("MediaViewPlayerView", "startOrPlayVideo() hasPrepare():" + hasPrepare() + " mIsNeedToRepeatPrepare:" + this.f28360c);
                startOrPlayVideo();
            } else {
                p0.c("MediaViewPlayerView", "点击播放 playVideo()");
                this.G.replaySameSource(getContext(), this.B, this.f28374q);
            }
            if (this.f28362e && (aVar = this.D) != null) {
                aVar.d();
            }
            this.f28362e = false;
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    public void onClickPlayerView() {
        ImageView imageView;
        try {
            MyImageView myImageView = this.f28376s;
            if ((myImageView != null && myImageView.getVisibility() == 0) || !isPlaying() || (imageView = this.f28378u) == null) {
                return;
            }
            if (imageView.getVisibility() == 0) {
                gonePauseView();
                a();
                return;
            }
            AlphaAnimation alphaAnimation = this.f28383z;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
            this.f28383z = alphaAnimation2;
            alphaAnimation2.setDuration(300L);
            this.f28383z.setInterpolator(new DecelerateInterpolator());
            this.f28383z.setAnimationListener(new d());
            n();
            this.f28381x.startAnimation(this.f28383z);
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onPlayCompleted() {
        if (this.D != null && !TextUtils.isEmpty(this.B)) {
            this.D.a(this.B);
        }
        h hVar = this.H;
        if (hVar != null) {
            hVar.a();
            return;
        }
        try {
            if (!this.f28367j) {
                this.f28360c = true;
                m();
            }
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onPlayError(String str) {
        try {
            this.f28360c = true;
            m();
            if (!this.K) {
                this.G.play(getContext(), this.B, this.f28374q);
                this.K = true;
            }
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onPlayProgress(int i10, int i11) {
        try {
            e();
            l();
            this.f28362e = false;
            this.f28360c = false;
            this.f28369l = i10;
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onPlayProgressMS(int i10, int i11) {
        a(i10, i11);
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onPlaySetDataSourceError(String str) {
        try {
            this.f28360c = true;
            b();
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onPlayStarted(int i10) {
        if (this.D != null && !TextUtils.isEmpty(this.B)) {
            this.D.b(this.B);
        }
    }

    public void openSound() {
        this.f28368k = true;
        try {
            if (this.G != null) {
                this.f28379v.setImageResource(h0.a(getContext(), "mbridge_nativex_sound_open", "drawable"));
                this.G.openSound();
            }
            try {
                MediaEvents mediaEvents = this.J;
                if (mediaEvents != null) {
                    mediaEvents.volumeChange(1.0f);
                }
            } catch (IllegalArgumentException e10) {
                p0.a("OMSDK", e10.getMessage());
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void pause() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.pause();
                this.f28363f = true;
            }
            if (this.J != null) {
                p0.b("omsdk", "mediaviewplayerview pause");
                this.J.pause();
            }
            d();
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void playVideo() {
        MediaEvents mediaEvents;
        try {
            if (!this.f28358a || this.G == null) {
                return;
            }
            if (!this.f28364g) {
                m();
                return;
            }
            if ((!TextUtils.isEmpty(this.B) && this.B.startsWith(ProxyConfig.MATCH_HTTP)) || this.B.startsWith("https")) {
                this.B = getPlayUrl();
            }
            e();
            this.G.play(getContext(), this.B, this.f28374q);
            if ((this.f28363f || this.f28362e) && (mediaEvents = this.J) != null) {
                this.f28363f = false;
                mediaEvents.resume();
            }
            if (this.f28368k) {
                this.G.openSound();
            } else {
                this.G.closeSound();
            }
            this.f28360c = false;
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void registerView(AdSession adSession) {
        this.I = adSession;
        if (adSession != null) {
            adSession.registerAdView(this);
            LinearLayout linearLayout = this.f28373p;
            FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
            adSession.addFriendlyObstruction(linearLayout, friendlyObstructionPurpose, null);
            adSession.addFriendlyObstruction(this.f28375r, friendlyObstructionPurpose, null);
            MyImageView myImageView = this.f28376s;
            FriendlyObstructionPurpose friendlyObstructionPurpose2 = FriendlyObstructionPurpose.VIDEO_CONTROLS;
            adSession.addFriendlyObstruction(myImageView, friendlyObstructionPurpose2, null);
            adSession.addFriendlyObstruction(this.f28377t, friendlyObstructionPurpose2, null);
            adSession.addFriendlyObstruction(this.f28378u, friendlyObstructionPurpose2, null);
            adSession.addFriendlyObstruction(this.f28379v, friendlyObstructionPurpose, null);
        }
    }

    public void release() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.releasePlayer();
                this.G = null;
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void setAllowLoopPlay(boolean z10) {
        this.f28367j = z10;
    }

    public void setEnterFullScreen() {
        try {
            p0.c("MediaViewPlayerView", "setEnterFullScreen");
            this.f28361d = true;
            this.f28365h = true;
            this.f28379v.setVisibility(0);
            d();
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    public void setExitFullScreen() {
        try {
            this.f28361d = false;
            this.f28360c = false;
            this.f28379v.setVisibility(8);
            l();
            e();
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    public void setIsActivePause(boolean z10) {
        this.f28362e = z10;
    }

    public void setIsComplete(boolean z10) {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.setIsComplete(z10);
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void setIsFrontDesk(boolean z10) {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.setIsFrontDesk(z10);
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void setMediaViewPlayListener(h hVar) {
        this.H = hVar;
    }

    public void setOnMediaViewPlayerViewListener(com.mbridge.msdk.nativex.listener.a aVar) {
        this.D = aVar;
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.J = mediaEvents;
    }

    public void showPlayView() {
        this.f28377t.setVisibility(0);
    }

    public void showProgressView(boolean z10) {
        int i10;
        this.f28371n = z10;
        ProgressBar progressBar = this.f28375r;
        if (progressBar != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 4;
            }
            progressBar.setVisibility(i10);
        }
    }

    public void showSoundIndicator(boolean z10) {
        this.f28370m = z10;
        if (z10) {
            l();
        } else {
            d();
        }
    }

    public void startOrPlayVideo() {
        try {
            if (!this.f28364g) {
                m();
            } else if (!hasPrepare()) {
                playVideo();
            } else {
                o();
            }
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    public void stop() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.stop();
            }
            d();
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    public void unregisterView() {
        AdSession adSession = this.I;
        if (adSession != null) {
            adSession.removeAllFriendlyObstructions();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f28377t.getVisibility() != 0) {
            this.f28381x.setVisibility(8);
        }
    }

    private void g() {
        try {
            j();
            i();
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    private void h() {
        try {
            CampaignEx campaignEx = this.C;
            if (campaignEx == null) {
                return;
            }
            String imageUrl = campaignEx.getImageUrl();
            if (z0.a(imageUrl) || getContext() == null) {
                return;
            }
            if (com.mbridge.msdk.foundation.same.image.b.a(getContext()).c(imageUrl)) {
                Bitmap b10 = com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).b(imageUrl);
                MyImageView myImageView = this.f28376s;
                if (myImageView != null && b10 != null) {
                    myImageView.setImageUrl(imageUrl);
                    this.f28376s.setImageBitmap(b10);
                    this.f28376s.setVisibility(0);
                }
            } else {
                com.mbridge.msdk.foundation.same.image.b.a(getContext()).a(imageUrl, new f());
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void i() {
        VideoNativePlayer videoNativePlayer = new VideoNativePlayer();
        this.G = videoNativePlayer;
        videoNativePlayer.setSelfVideoFeedsPlayerListener(this);
    }

    private void j() {
        try {
            View inflate = LayoutInflater.from(getContext()).inflate(h0.a(getContext(), "mbridge_nativex_playerview", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
            if (inflate != null) {
                this.f28373p = (LinearLayout) inflate.findViewById(h0.a(getContext(), "mbridge_ll_loading", "id"));
                TextureView textureView = (TextureView) inflate.findViewById(h0.a(getContext(), "mbridge_textureview", "id"));
                this.f28372o = textureView;
                textureView.setKeepScreenOn(true);
                this.f28372o.setSurfaceTextureListener(new i(this, null));
                this.f28375r = (ProgressBar) inflate.findViewById(h0.a(getContext(), "mbridge_progress", "id"));
                this.f28376s = (MyImageView) inflate.findViewById(h0.a(getContext(), "mbridge_iv_playend_pic", "id"));
                this.f28377t = (ImageView) inflate.findViewById(h0.a(getContext(), "mbridge_iv_play", "id"));
                this.f28378u = (ImageView) inflate.findViewById(h0.a(getContext(), "mbridge_iv_pause", "id"));
                this.f28379v = (ImageView) inflate.findViewById(h0.a(getContext(), "mbridge_iv_sound", "id"));
                this.f28381x = inflate.findViewById(h0.a(getContext(), "mbridge_view_cover", "id"));
                ImageView imageView = (ImageView) inflate.findViewById(h0.a(getContext(), "mbridge_iv_sound_animation", "id"));
                this.f28380w = imageView;
                AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getDrawable();
                this.f28382y = animationDrawable;
                animationDrawable.start();
                k();
                addView(inflate, -1, -1);
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void k() {
        this.f28379v.setOnClickListener(new a());
        this.f28378u.setOnClickListener(new b());
        this.f28377t.setOnClickListener(new c());
    }

    private void l() {
        ImageView imageView;
        if (this.f28361d || (imageView = this.f28380w) == null || imageView.getVisibility() == 0 || !this.f28370m) {
            return;
        }
        this.f28380w.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            this.f28376s.setVisibility(0);
            this.f28377t.setVisibility(0);
            n();
            c();
            this.f28375r.setVisibility(8);
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.f28381x.setVisibility(0);
    }

    private void o() {
        MediaEvents mediaEvents;
        try {
            if (this.G == null) {
                return;
            }
            e();
            if (this.f28366i) {
                this.G.start(this.f28374q);
                this.f28366i = false;
            } else {
                this.G.start();
            }
            if ((this.f28363f || this.f28362e) && (mediaEvents = this.J) != null) {
                this.f28363f = false;
                mediaEvents.resume();
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        a();
        this.E = new Timer();
        this.E.schedule(new g(), 2000L);
    }

    private void b() {
        try {
            if (URLUtil.isNetworkUrl(this.B)) {
                return;
            }
            String videoUrlEncode = this.C.getVideoUrlEncode();
            if (z0.b(videoUrlEncode)) {
                this.B = videoUrlEncode;
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f28378u.setVisibility(8);
    }

    private void d() {
        if (this.f28380w.getVisibility() == 0) {
            this.f28380w.setVisibility(8);
        }
    }

    private void e() {
        try {
            this.f28376s.setVisibility(8);
            this.f28377t.setVisibility(8);
            f();
            showProgressView(this.f28371n);
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void a(int i10, int i11) {
        try {
            ProgressBar progressBar = this.f28375r;
            if (progressBar == null || progressBar.getVisibility() != 0) {
                return;
            }
            if (i11 > 0) {
                this.f28375r.setMax(i11);
            }
            if (i10 >= 0) {
                this.f28375r.setProgress(i10 + 1);
            }
        } catch (Throwable th2) {
            p0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void a() {
        try {
            Handler handler = L;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            Timer timer = this.E;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e10) {
            p0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onBufferingEnd() {
    }

    public MediaViewPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28358a = false;
        this.f28359b = false;
        this.f28360c = false;
        this.f28361d = false;
        this.f28362e = false;
        this.f28363f = false;
        this.f28364g = false;
        this.f28365h = true;
        this.f28366i = false;
        this.f28367j = true;
        this.f28368k = false;
        this.f28369l = -1;
        this.f28370m = true;
        this.f28371n = true;
        this.I = null;
        this.J = null;
        this.K = false;
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements Animation.AnimationListener {
        d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            MediaViewPlayerView.this.f28378u.setVisibility(0);
            MediaViewPlayerView.this.p();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onBufferingStart(String str) {
    }

    @Override // com.mbridge.msdk.playercommon.VideoPlayerStatusListener
    public void onBufferingTimeOut(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class f implements com.mbridge.msdk.foundation.same.image.c {
        f() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (MediaViewPlayerView.this.f28376s != null && bitmap != null) {
                MediaViewPlayerView.this.f28376s.setImageUrl(str);
                MediaViewPlayerView.this.f28376s.setImageBitmap(bitmap);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }
}
