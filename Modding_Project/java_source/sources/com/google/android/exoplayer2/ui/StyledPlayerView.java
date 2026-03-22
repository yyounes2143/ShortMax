package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class StyledPlayerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final a f18738a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f18739b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f18740c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f18741d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f18742e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f18743f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final SubtitleView f18744g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f18745h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f18746i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final StyledPlayerControlView f18747j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final FrameLayout f18748k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final FrameLayout f18749l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private l1 f18750m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f18751n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private b f18752o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private StyledPlayerControlView.m f18753p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f18754q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Drawable f18755r;

    /* renamed from: s  reason: collision with root package name */
    private int f18756s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f18757t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private CharSequence f18758u;

    /* renamed from: v  reason: collision with root package name */
    private int f18759v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f18760w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f18761x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f18762y;

    /* renamed from: z  reason: collision with root package name */
    private int f18763z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class a implements l1.d, View.OnLayoutChangeListener, View.OnClickListener, StyledPlayerControlView.m, StyledPlayerControlView.d {

        /* renamed from: a  reason: collision with root package name */
        private final u1.b f18764a = new u1.b();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f18765b;

        public a() {
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void A(int i10) {
            StyledPlayerView.this.L();
            StyledPlayerView.this.O();
            StyledPlayerView.this.N();
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void H(l1.e eVar, l1.e eVar2, int i10) {
            if (StyledPlayerView.this.y() && StyledPlayerView.this.f18761x) {
                StyledPlayerView.this.w();
            }
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void U(v1 v1Var) {
            l1 l1Var = (l1) b7.a.e(StyledPlayerView.this.f18750m);
            u1 currentTimeline = l1Var.getCurrentTimeline();
            if (currentTimeline.u()) {
                this.f18765b = null;
            } else if (!l1Var.e().c()) {
                this.f18765b = currentTimeline.k(l1Var.getCurrentPeriodIndex(), this.f18764a, true).f18536b;
            } else {
                Object obj = this.f18765b;
                if (obj != null) {
                    int f10 = currentTimeline.f(obj);
                    if (f10 != -1) {
                        if (l1Var.x() == currentTimeline.j(f10, this.f18764a).f18537c) {
                            return;
                        }
                    }
                    this.f18765b = null;
                }
            }
            StyledPlayerView.this.P(false);
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.m
        public void i(int i10) {
            StyledPlayerView.this.M();
            if (StyledPlayerView.this.f18752o != null) {
                StyledPlayerView.this.f18752o.a(i10);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StyledPlayerView.this.J();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            StyledPlayerView.q((TextureView) view, StyledPlayerView.this.f18763z);
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void onRenderedFirstFrame() {
            if (StyledPlayerView.this.f18740c != null) {
                StyledPlayerView.this.f18740c.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void r(p6.f fVar) {
            if (StyledPlayerView.this.f18744g != null) {
                StyledPlayerView.this.f18744g.setCues(fVar.f64771a);
            }
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void u(c7.z zVar) {
            StyledPlayerView.this.K();
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void w(boolean z10, int i10) {
            StyledPlayerView.this.L();
            StyledPlayerView.this.N();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.d
        public void x(boolean z10) {
            StyledPlayerView.h(StyledPlayerView.this);
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(int i10);
    }

    /* loaded from: classes4.dex */
    public interface c {
    }

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    private boolean D(com.google.android.exoplayer2.z0 z0Var) {
        byte[] bArr = z0Var.f19438j;
        if (bArr == null) {
            return false;
        }
        return E(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    private boolean E(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                A(this.f18739b, intrinsicWidth / intrinsicHeight);
                this.f18743f.setImageDrawable(drawable);
                this.f18743f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void F(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    private boolean G() {
        l1 l1Var = this.f18750m;
        if (l1Var == null) {
            return true;
        }
        int playbackState = l1Var.getPlaybackState();
        if (this.f18760w && !this.f18750m.getCurrentTimeline().u() && (playbackState == 1 || playbackState == 4 || !((l1) b7.a.e(this.f18750m)).getPlayWhenReady())) {
            return true;
        }
        return false;
    }

    private void I(boolean z10) {
        int i10;
        if (!R()) {
            return;
        }
        StyledPlayerControlView styledPlayerControlView = this.f18747j;
        if (z10) {
            i10 = 0;
        } else {
            i10 = this.f18759v;
        }
        styledPlayerControlView.setShowTimeoutMs(i10);
        this.f18747j.r0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        if (R() && this.f18750m != null) {
            if (!this.f18747j.f0()) {
                z(true);
            } else if (this.f18762y) {
                this.f18747j.b0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        c7.z zVar;
        float f10;
        l1 l1Var = this.f18750m;
        if (l1Var != null) {
            zVar = l1Var.v();
        } else {
            zVar = c7.z.f3329e;
        }
        int i10 = zVar.f3331a;
        int i11 = zVar.f3332b;
        int i12 = zVar.f3333c;
        float f11 = 0.0f;
        if (i11 != 0 && i10 != 0) {
            f10 = (i10 * zVar.f3334d) / i11;
        } else {
            f10 = 0.0f;
        }
        View view = this.f18741d;
        if (view instanceof TextureView) {
            if (f10 > 0.0f && (i12 == 90 || i12 == 270)) {
                f10 = 1.0f / f10;
            }
            if (this.f18763z != 0) {
                view.removeOnLayoutChangeListener(this.f18738a);
            }
            this.f18763z = i12;
            if (i12 != 0) {
                this.f18741d.addOnLayoutChangeListener(this.f18738a);
            }
            q((TextureView) this.f18741d, this.f18763z);
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f18739b;
        if (!this.f18742e) {
            f11 = f10;
        }
        A(aspectRatioFrameLayout, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r4.f18750m.getPlayWhenReady() == false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void L() {
        /*
            r4 = this;
            android.view.View r0 = r4.f18745h
            if (r0 == 0) goto L2b
            com.google.android.exoplayer2.l1 r0 = r4.f18750m
            r1 = 0
            if (r0 == 0) goto L20
            int r0 = r0.getPlaybackState()
            r2 = 2
            if (r0 != r2) goto L20
            int r0 = r4.f18756s
            r3 = 1
            if (r0 == r2) goto L21
            if (r0 != r3) goto L20
            com.google.android.exoplayer2.l1 r0 = r4.f18750m
            boolean r0 = r0.getPlayWhenReady()
            if (r0 == 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            android.view.View r0 = r4.f18745h
            if (r3 == 0) goto L26
            goto L28
        L26:
            r1 = 8
        L28:
            r0.setVisibility(r1)
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerView.L():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        StyledPlayerControlView styledPlayerControlView = this.f18747j;
        String str = null;
        if (styledPlayerControlView != null && this.f18751n) {
            if (styledPlayerControlView.f0()) {
                if (this.f18762y) {
                    str = getResources().getString(s.f18906e);
                }
                setContentDescription(str);
                return;
            }
            setContentDescription(getResources().getString(s.f18913l));
            return;
        }
        setContentDescription(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (y() && this.f18761x) {
            w();
        } else {
            z(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        TextView textView = this.f18746i;
        if (textView != null) {
            CharSequence charSequence = this.f18758u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f18746i.setVisibility(0);
                return;
            }
            l1 l1Var = this.f18750m;
            if (l1Var != null) {
                l1Var.d();
            }
            this.f18746i.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(boolean z10) {
        l1 l1Var = this.f18750m;
        if (l1Var != null && !l1Var.e().c()) {
            if (z10 && !this.f18757t) {
                r();
            }
            if (l1Var.e().d(2)) {
                v();
                return;
            }
            r();
            if (Q() && (D(l1Var.z()) || E(this.f18755r))) {
                return;
            }
            v();
        } else if (!this.f18757t) {
            v();
            r();
        }
    }

    private boolean Q() {
        if (this.f18754q) {
            b7.a.i(this.f18743f);
            return true;
        }
        return false;
    }

    private boolean R() {
        if (this.f18751n) {
            b7.a.i(this.f18747j);
            return true;
        }
        return false;
    }

    static /* synthetic */ c h(StyledPlayerView styledPlayerView) {
        styledPlayerView.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(TextureView textureView, int i10) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i10 != 0) {
            float f10 = width / 2.0f;
            float f11 = height / 2.0f;
            matrix.postRotate(i10, f10, f11);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f10, f11);
        }
        textureView.setTransform(matrix);
    }

    private void r() {
        View view = this.f18740c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void s(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(m.f18843f));
        imageView.setBackgroundColor(resources.getColor(k.f18831a));
    }

    @RequiresApi(23)
    private static void t(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(m.f18843f, null));
        imageView.setBackgroundColor(resources.getColor(k.f18831a, null));
    }

    private void v() {
        ImageView imageView = this.f18743f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f18743f.setVisibility(4);
        }
    }

    @SuppressLint({"InlinedApi"})
    private boolean x(int i10) {
        if (i10 != 19 && i10 != 270 && i10 != 22 && i10 != 271 && i10 != 20 && i10 != 269 && i10 != 21 && i10 != 268 && i10 != 23) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        l1 l1Var = this.f18750m;
        if (l1Var != null && l1Var.isPlayingAd() && this.f18750m.getPlayWhenReady()) {
            return true;
        }
        return false;
    }

    private void z(boolean z10) {
        boolean z11;
        if ((!y() || !this.f18761x) && R()) {
            if (this.f18747j.f0() && this.f18747j.getShowTimeoutMs() <= 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            boolean G = G();
            if (z10 || z11 || G) {
                I(G);
            }
        }
    }

    protected void A(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public void B() {
        View view = this.f18741d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void C() {
        View view = this.f18741d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    public void H() {
        I(G());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        l1 l1Var = this.f18750m;
        if (l1Var != null && l1Var.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean x10 = x(keyEvent.getKeyCode());
        if (x10 && R() && !this.f18747j.f0()) {
            z(true);
            return true;
        } else if (!u(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            if (x10 && R()) {
                z(true);
            }
            return false;
        } else {
            z(true);
            return true;
        }
    }

    public List<com.google.android.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f18749l;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        StyledPlayerControlView styledPlayerControlView = this.f18747j;
        if (styledPlayerControlView != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(styledPlayerControlView, 1));
        }
        return ImmutableList.u(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) b7.a.j(this.f18748k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f18760w;
    }

    public boolean getControllerHideOnTouch() {
        return this.f18762y;
    }

    public int getControllerShowTimeoutMs() {
        return this.f18759v;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f18755r;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f18749l;
    }

    @Nullable
    public l1 getPlayer() {
        return this.f18750m;
    }

    public int getResizeMode() {
        b7.a.i(this.f18739b);
        return this.f18739b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f18744g;
    }

    public boolean getUseArtwork() {
        return this.f18754q;
    }

    public boolean getUseController() {
        return this.f18751n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f18741d;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (R() && this.f18750m != null) {
            z(true);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        J();
        return super.performClick();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        b7.a.i(this.f18739b);
        this.f18739b.setAspectRatioListener(bVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.f18760w = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.f18761x = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18762y = z10;
        M();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(@Nullable StyledPlayerControlView.d dVar) {
        b7.a.i(this.f18747j);
        this.f18747j.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i10) {
        b7.a.i(this.f18747j);
        this.f18759v = i10;
        if (this.f18747j.f0()) {
            H();
        }
    }

    public void setControllerVisibilityListener(@Nullable b bVar) {
        setControllerVisibilityListener((StyledPlayerControlView.m) null);
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        boolean z10;
        if (this.f18746i != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f18758u = charSequence;
        O();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f18755r != drawable) {
            this.f18755r = drawable;
            P(false);
        }
    }

    public void setErrorMessageProvider(@Nullable b7.j<? super PlaybackException> jVar) {
        if (jVar != null) {
            O();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        b7.a.i(this.f18747j);
        this.f18747j.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setFullscreenButtonClickListener(@Nullable c cVar) {
        b7.a.i(this.f18747j);
        this.f18747j.setOnFullScreenModeChangedListener(this.f18738a);
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f18757t != z10) {
            this.f18757t = z10;
            P(false);
        }
    }

    public void setPlayer(@Nullable l1 l1Var) {
        boolean z10;
        boolean z11;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (l1Var != null && l1Var.s() != Looper.getMainLooper()) {
            z11 = false;
        } else {
            z11 = true;
        }
        b7.a.a(z11);
        l1 l1Var2 = this.f18750m;
        if (l1Var2 == l1Var) {
            return;
        }
        if (l1Var2 != null) {
            l1Var2.C(this.f18738a);
            View view = this.f18741d;
            if (view instanceof TextureView) {
                l1Var2.clearVideoTextureView((TextureView) view);
            } else if (view instanceof SurfaceView) {
                l1Var2.clearVideoSurfaceView((SurfaceView) view);
            }
        }
        SubtitleView subtitleView = this.f18744g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f18750m = l1Var;
        if (R()) {
            this.f18747j.setPlayer(l1Var);
        }
        L();
        O();
        P(true);
        if (l1Var != null) {
            if (l1Var.g(27)) {
                View view2 = this.f18741d;
                if (view2 instanceof TextureView) {
                    l1Var.setVideoTextureView((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    l1Var.setVideoSurfaceView((SurfaceView) view2);
                }
                K();
            }
            if (this.f18744g != null && l1Var.g(28)) {
                this.f18744g.setCues(l1Var.p().f64771a);
            }
            l1Var.F(this.f18738a);
            z(false);
            return;
        }
        w();
    }

    public void setRepeatToggleModes(int i10) {
        b7.a.i(this.f18747j);
        this.f18747j.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        b7.a.i(this.f18739b);
        this.f18739b.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.f18756s != i10) {
            this.f18756s = i10;
            L();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowShuffleButton(z10);
    }

    public void setShowSubtitleButton(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowSubtitleButton(z10);
    }

    public void setShowVrButton(boolean z10) {
        b7.a.i(this.f18747j);
        this.f18747j.setShowVrButton(z10);
    }

    public void setShutterBackgroundColor(@ColorInt int i10) {
        View view = this.f18740c;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setUseArtwork(boolean z10) {
        boolean z11;
        if (z10 && this.f18743f == null) {
            z11 = false;
        } else {
            z11 = true;
        }
        b7.a.g(z11);
        if (this.f18754q != z10) {
            this.f18754q = z10;
            P(false);
        }
    }

    public void setUseController(boolean z10) {
        boolean z11;
        boolean z12 = true;
        if (z10 && this.f18747j == null) {
            z11 = false;
        } else {
            z11 = true;
        }
        b7.a.g(z11);
        if (!z10 && !hasOnClickListeners()) {
            z12 = false;
        }
        setClickable(z12);
        if (this.f18751n == z10) {
            return;
        }
        this.f18751n = z10;
        if (R()) {
            this.f18747j.setPlayer(this.f18750m);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f18747j;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.b0();
                this.f18747j.setPlayer(null);
            }
        }
        M();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f18741d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    public boolean u(KeyEvent keyEvent) {
        if (R() && this.f18747j.U(keyEvent)) {
            return true;
        }
        return false;
    }

    public void w() {
        StyledPlayerControlView styledPlayerControlView = this.f18747j;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.b0();
        }
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void setControllerVisibilityListener(@Nullable StyledPlayerControlView.m mVar) {
        b7.a.i(this.f18747j);
        StyledPlayerControlView.m mVar2 = this.f18753p;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.f18747j.m0(mVar2);
        }
        this.f18753p = mVar;
        if (mVar != null) {
            this.f18747j.S(mVar);
        }
        setControllerVisibilityListener((b) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int i11;
        boolean z10;
        int i12;
        int i13;
        boolean z11;
        boolean z12;
        int i14;
        boolean z13;
        int i15;
        boolean z14;
        int i16;
        boolean z15;
        boolean z16;
        int i17;
        boolean z17;
        a aVar = new a();
        this.f18738a = aVar;
        if (isInEditMode()) {
            this.f18739b = null;
            this.f18740c = null;
            this.f18741d = null;
            this.f18742e = false;
            this.f18743f = null;
            this.f18744g = null;
            this.f18745h = null;
            this.f18746i = null;
            this.f18747j = null;
            this.f18748k = null;
            this.f18749l = null;
            ImageView imageView = new ImageView(context);
            if (b7.s0.f2506a >= 23) {
                t(getResources(), imageView);
            } else {
                s(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i18 = q.f18894e;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, u.f18987j0, i10, 0);
            try {
                boolean hasValue = obtainStyledAttributes.hasValue(u.f19007t0);
                int color = obtainStyledAttributes.getColor(u.f19007t0, 0);
                int resourceId = obtainStyledAttributes.getResourceId(u.f18999p0, i18);
                boolean z18 = obtainStyledAttributes.getBoolean(u.f19011v0, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(u.f18991l0, 0);
                boolean z19 = obtainStyledAttributes.getBoolean(u.f19013w0, true);
                int i19 = obtainStyledAttributes.getInt(u.f19009u0, 1);
                int i20 = obtainStyledAttributes.getInt(u.f19001q0, 0);
                int i21 = obtainStyledAttributes.getInt(u.f19005s0, 5000);
                boolean z20 = obtainStyledAttributes.getBoolean(u.f18995n0, true);
                boolean z21 = obtainStyledAttributes.getBoolean(u.f18989k0, true);
                i13 = obtainStyledAttributes.getInteger(u.f19003r0, 0);
                this.f18757t = obtainStyledAttributes.getBoolean(u.f18997o0, this.f18757t);
                boolean z22 = obtainStyledAttributes.getBoolean(u.f18993m0, true);
                obtainStyledAttributes.recycle();
                z12 = z20;
                z10 = z21;
                i12 = i20;
                z15 = z19;
                i16 = resourceId2;
                z14 = z18;
                i15 = color;
                z13 = hasValue;
                i14 = i19;
                i18 = resourceId;
                i11 = i21;
                z11 = z22;
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            i11 = 5000;
            z10 = true;
            i12 = 0;
            i13 = 0;
            z11 = true;
            z12 = true;
            i14 = 1;
            z13 = false;
            i15 = 0;
            z14 = true;
            i16 = 0;
            z15 = true;
        }
        LayoutInflater.from(context).inflate(i18, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(o.f18868i);
        this.f18739b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            F(aspectRatioFrameLayout, i12);
        }
        View findViewById = findViewById(o.O);
        this.f18740c = findViewById;
        if (findViewById != null && z13) {
            findViewById.setBackgroundColor(i15);
        }
        if (aspectRatioFrameLayout != null && i14 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i14 == 2) {
                this.f18741d = new TextureView(context);
            } else if (i14 == 3) {
                try {
                    int i22 = SphericalGLSurfaceView.f19236m;
                    this.f18741d = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    z17 = true;
                    this.f18741d.setLayoutParams(layoutParams);
                    this.f18741d.setOnClickListener(aVar);
                    this.f18741d.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f18741d, 0);
                    z16 = z17;
                } catch (Exception e10) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                }
            } else if (i14 != 4) {
                this.f18741d = new SurfaceView(context);
            } else {
                try {
                    int i23 = VideoDecoderGLSurfaceView.f19219b;
                    this.f18741d = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                } catch (Exception e11) {
                    throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                }
            }
            z17 = false;
            this.f18741d.setLayoutParams(layoutParams);
            this.f18741d.setOnClickListener(aVar);
            this.f18741d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f18741d, 0);
            z16 = z17;
        } else {
            this.f18741d = null;
            z16 = false;
        }
        this.f18742e = z16;
        this.f18748k = (FrameLayout) findViewById(o.f18860a);
        this.f18749l = (FrameLayout) findViewById(o.A);
        ImageView imageView2 = (ImageView) findViewById(o.f18861b);
        this.f18743f = imageView2;
        this.f18754q = z14 && imageView2 != null;
        if (i16 != 0) {
            this.f18755r = ContextCompat.getDrawable(getContext(), i16);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(o.R);
        this.f18744g = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(o.f18865f);
        this.f18745h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f18756s = i13;
        TextView textView = (TextView) findViewById(o.f18873n);
        this.f18746i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(o.f18869j);
        View findViewById3 = findViewById(o.f18870k);
        if (styledPlayerControlView != null) {
            this.f18747j = styledPlayerControlView;
            i17 = 0;
        } else if (findViewById3 != null) {
            i17 = 0;
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f18747j = styledPlayerControlView2;
            styledPlayerControlView2.setId(o.f18869j);
            styledPlayerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(styledPlayerControlView2, indexOfChild);
        } else {
            i17 = 0;
            this.f18747j = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f18747j;
        this.f18759v = styledPlayerControlView3 != null ? i11 : i17;
        this.f18762y = z12;
        this.f18760w = z10;
        this.f18761x = z11;
        this.f18751n = (!z15 || styledPlayerControlView3 == null) ? i17 : 1;
        if (styledPlayerControlView3 != null) {
            styledPlayerControlView3.c0();
            this.f18747j.S(aVar);
        }
        if (z15) {
            setClickable(true);
        }
        M();
    }
}
