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
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes4.dex */
public class PlayerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final a f18638a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f18639b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f18640c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f18641d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f18642e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f18643f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final SubtitleView f18644g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f18645h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f18646i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final PlayerControlView f18647j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final FrameLayout f18648k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final FrameLayout f18649l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private l1 f18650m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f18651n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private PlayerControlView.e f18652o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f18653p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Drawable f18654q;

    /* renamed from: r  reason: collision with root package name */
    private int f18655r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f18656s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private CharSequence f18657t;

    /* renamed from: u  reason: collision with root package name */
    private int f18658u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f18659v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f18660w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f18661x;

    /* renamed from: y  reason: collision with root package name */
    private int f18662y;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class a implements l1.d, View.OnLayoutChangeListener, View.OnClickListener, PlayerControlView.e {

        /* renamed from: a  reason: collision with root package name */
        private final u1.b f18663a = new u1.b();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f18664b;

        public a() {
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void A(int i10) {
            PlayerView.this.H();
            PlayerView.this.K();
            PlayerView.this.J();
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void H(l1.e eVar, l1.e eVar2, int i10) {
            if (PlayerView.this.w() && PlayerView.this.f18660w) {
                PlayerView.this.u();
            }
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void U(v1 v1Var) {
            l1 l1Var = (l1) b7.a.e(PlayerView.this.f18650m);
            u1 currentTimeline = l1Var.getCurrentTimeline();
            if (currentTimeline.u()) {
                this.f18664b = null;
            } else if (!l1Var.e().c()) {
                this.f18664b = currentTimeline.k(l1Var.getCurrentPeriodIndex(), this.f18663a, true).f18536b;
            } else {
                Object obj = this.f18664b;
                if (obj != null) {
                    int f10 = currentTimeline.f(obj);
                    if (f10 != -1) {
                        if (l1Var.x() == currentTimeline.j(f10, this.f18663a).f18537c) {
                            return;
                        }
                    }
                    this.f18664b = null;
                }
            }
            PlayerView.this.L(false);
        }

        @Override // com.google.android.exoplayer2.ui.PlayerControlView.e
        public void i(int i10) {
            PlayerView.this.I();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayerView.this.F();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            PlayerView.o((TextureView) view, PlayerView.this.f18662y);
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void onRenderedFirstFrame() {
            if (PlayerView.this.f18640c != null) {
                PlayerView.this.f18640c.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void r(p6.f fVar) {
            if (PlayerView.this.f18644g != null) {
                PlayerView.this.f18644g.setCues(fVar.f64771a);
            }
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void u(c7.z zVar) {
            PlayerView.this.G();
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void w(boolean z10, int i10) {
            PlayerView.this.H();
            PlayerView.this.J();
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    private boolean A(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                y(this.f18639b, intrinsicWidth / intrinsicHeight);
                this.f18643f.setImageDrawable(drawable);
                this.f18643f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void B(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    private boolean C() {
        l1 l1Var = this.f18650m;
        if (l1Var == null) {
            return true;
        }
        int playbackState = l1Var.getPlaybackState();
        if (this.f18659v && (playbackState == 1 || playbackState == 4 || !this.f18650m.getPlayWhenReady())) {
            return true;
        }
        return false;
    }

    private void E(boolean z10) {
        int i10;
        if (!N()) {
            return;
        }
        PlayerControlView playerControlView = this.f18647j;
        if (z10) {
            i10 = 0;
        } else {
            i10 = this.f18658u;
        }
        playerControlView.setShowTimeoutMs(i10);
        this.f18647j.P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        if (N() && this.f18650m != null) {
            if (!this.f18647j.I()) {
                x(true);
            } else if (this.f18661x) {
                this.f18647j.F();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        c7.z zVar;
        float f10;
        l1 l1Var = this.f18650m;
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
        View view = this.f18641d;
        if (view instanceof TextureView) {
            if (f10 > 0.0f && (i12 == 90 || i12 == 270)) {
                f10 = 1.0f / f10;
            }
            if (this.f18662y != 0) {
                view.removeOnLayoutChangeListener(this.f18638a);
            }
            this.f18662y = i12;
            if (i12 != 0) {
                this.f18641d.addOnLayoutChangeListener(this.f18638a);
            }
            o((TextureView) this.f18641d, this.f18662y);
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f18639b;
        if (!this.f18642e) {
            f11 = f10;
        }
        y(aspectRatioFrameLayout, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r4.f18650m.getPlayWhenReady() == false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void H() {
        /*
            r4 = this;
            android.view.View r0 = r4.f18645h
            if (r0 == 0) goto L2b
            com.google.android.exoplayer2.l1 r0 = r4.f18650m
            r1 = 0
            if (r0 == 0) goto L20
            int r0 = r0.getPlaybackState()
            r2 = 2
            if (r0 != r2) goto L20
            int r0 = r4.f18655r
            r3 = 1
            if (r0 == r2) goto L21
            if (r0 != r3) goto L20
            com.google.android.exoplayer2.l1 r0 = r4.f18650m
            boolean r0 = r0.getPlayWhenReady()
            if (r0 == 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            android.view.View r0 = r4.f18645h
            if (r3 == 0) goto L26
            goto L28
        L26:
            r1 = 8
        L28:
            r0.setVisibility(r1)
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerView.H():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        PlayerControlView playerControlView = this.f18647j;
        String str = null;
        if (playerControlView != null && this.f18651n) {
            if (playerControlView.getVisibility() == 0) {
                if (this.f18661x) {
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
    public void J() {
        if (w() && this.f18660w) {
            u();
        } else {
            x(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        TextView textView = this.f18646i;
        if (textView != null) {
            CharSequence charSequence = this.f18657t;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f18646i.setVisibility(0);
                return;
            }
            l1 l1Var = this.f18650m;
            if (l1Var != null) {
                l1Var.d();
            }
            this.f18646i.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(boolean z10) {
        l1 l1Var = this.f18650m;
        if (l1Var != null && l1Var.g(30) && !l1Var.e().c()) {
            if (z10 && !this.f18656s) {
                p();
            }
            if (l1Var.e().d(2)) {
                t();
                return;
            }
            p();
            if (M() && (z(l1Var.z()) || A(this.f18654q))) {
                return;
            }
            t();
        } else if (!this.f18656s) {
            t();
            p();
        }
    }

    private boolean M() {
        if (this.f18653p) {
            b7.a.i(this.f18643f);
            return true;
        }
        return false;
    }

    private boolean N() {
        if (this.f18651n) {
            b7.a.i(this.f18647j);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(TextureView textureView, int i10) {
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

    private void p() {
        View view = this.f18640c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void q(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(m.f18843f));
        imageView.setBackgroundColor(resources.getColor(k.f18831a));
    }

    @RequiresApi(23)
    private static void r(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(m.f18843f, null));
        imageView.setBackgroundColor(resources.getColor(k.f18831a, null));
    }

    private void t() {
        ImageView imageView = this.f18643f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f18643f.setVisibility(4);
        }
    }

    @SuppressLint({"InlinedApi"})
    private boolean v(int i10) {
        if (i10 != 19 && i10 != 270 && i10 != 22 && i10 != 271 && i10 != 20 && i10 != 269 && i10 != 21 && i10 != 268 && i10 != 23) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        l1 l1Var = this.f18650m;
        if (l1Var != null && l1Var.isPlayingAd() && this.f18650m.getPlayWhenReady()) {
            return true;
        }
        return false;
    }

    private void x(boolean z10) {
        boolean z11;
        if ((!w() || !this.f18660w) && N()) {
            if (this.f18647j.I() && this.f18647j.getShowTimeoutMs() <= 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            boolean C = C();
            if (z10 || z11 || C) {
                E(C);
            }
        }
    }

    private boolean z(com.google.android.exoplayer2.z0 z0Var) {
        byte[] bArr = z0Var.f19438j;
        if (bArr == null) {
            return false;
        }
        return A(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    public void D() {
        E(C());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        l1 l1Var = this.f18650m;
        if (l1Var != null && l1Var.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean v10 = v(keyEvent.getKeyCode());
        if (v10 && N() && !this.f18647j.I()) {
            x(true);
            return true;
        } else if (!s(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            if (v10 && N()) {
                x(true);
            }
            return false;
        } else {
            x(true);
            return true;
        }
    }

    public List<com.google.android.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f18649l;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.f18647j;
        if (playerControlView != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(playerControlView, 1));
        }
        return ImmutableList.u(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) b7.a.j(this.f18648k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f18659v;
    }

    public boolean getControllerHideOnTouch() {
        return this.f18661x;
    }

    public int getControllerShowTimeoutMs() {
        return this.f18658u;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f18654q;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f18649l;
    }

    @Nullable
    public l1 getPlayer() {
        return this.f18650m;
    }

    public int getResizeMode() {
        b7.a.i(this.f18639b);
        return this.f18639b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f18644g;
    }

    public boolean getUseArtwork() {
        return this.f18653p;
    }

    public boolean getUseController() {
        return this.f18651n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f18641d;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (N() && this.f18650m != null) {
            x(true);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        F();
        return super.performClick();
    }

    public boolean s(KeyEvent keyEvent) {
        if (N() && this.f18647j.A(keyEvent)) {
            return true;
        }
        return false;
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        b7.a.i(this.f18639b);
        this.f18639b.setAspectRatioListener(bVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.f18659v = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.f18660w = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        b7.a.i(this.f18647j);
        this.f18661x = z10;
        I();
    }

    public void setControllerShowTimeoutMs(int i10) {
        b7.a.i(this.f18647j);
        this.f18658u = i10;
        if (this.f18647j.I()) {
            D();
        }
    }

    public void setControllerVisibilityListener(@Nullable PlayerControlView.e eVar) {
        b7.a.i(this.f18647j);
        PlayerControlView.e eVar2 = this.f18652o;
        if (eVar2 == eVar) {
            return;
        }
        if (eVar2 != null) {
            this.f18647j.J(eVar2);
        }
        this.f18652o = eVar;
        if (eVar != null) {
            this.f18647j.y(eVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        boolean z10;
        if (this.f18646i != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f18657t = charSequence;
        K();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f18654q != drawable) {
            this.f18654q = drawable;
            L(false);
        }
    }

    public void setErrorMessageProvider(@Nullable b7.j<? super PlaybackException> jVar) {
        if (jVar != null) {
            K();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        b7.a.i(this.f18647j);
        this.f18647j.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f18656s != z10) {
            this.f18656s = z10;
            L(false);
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
        l1 l1Var2 = this.f18650m;
        if (l1Var2 == l1Var) {
            return;
        }
        if (l1Var2 != null) {
            l1Var2.C(this.f18638a);
            if (l1Var2.g(27)) {
                View view = this.f18641d;
                if (view instanceof TextureView) {
                    l1Var2.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    l1Var2.clearVideoSurfaceView((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.f18644g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f18650m = l1Var;
        if (N()) {
            this.f18647j.setPlayer(l1Var);
        }
        H();
        K();
        L(true);
        if (l1Var != null) {
            if (l1Var.g(27)) {
                View view2 = this.f18641d;
                if (view2 instanceof TextureView) {
                    l1Var.setVideoTextureView((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    l1Var.setVideoSurfaceView((SurfaceView) view2);
                }
                G();
            }
            if (this.f18644g != null && l1Var.g(28)) {
                this.f18644g.setCues(l1Var.p().f64771a);
            }
            l1Var.F(this.f18638a);
            x(false);
            return;
        }
        u();
    }

    public void setRepeatToggleModes(int i10) {
        b7.a.i(this.f18647j);
        this.f18647j.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        b7.a.i(this.f18639b);
        this.f18639b.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.f18655r != i10) {
            this.f18655r = i10;
            H();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        b7.a.i(this.f18647j);
        this.f18647j.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        b7.a.i(this.f18647j);
        this.f18647j.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        b7.a.i(this.f18647j);
        this.f18647j.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        b7.a.i(this.f18647j);
        this.f18647j.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        b7.a.i(this.f18647j);
        this.f18647j.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        b7.a.i(this.f18647j);
        this.f18647j.setShowShuffleButton(z10);
    }

    public void setShutterBackgroundColor(int i10) {
        View view = this.f18640c;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setUseArtwork(boolean z10) {
        boolean z11;
        if (z10 && this.f18643f == null) {
            z11 = false;
        } else {
            z11 = true;
        }
        b7.a.g(z11);
        if (this.f18653p != z10) {
            this.f18653p = z10;
            L(false);
        }
    }

    public void setUseController(boolean z10) {
        boolean z11;
        boolean z12 = true;
        if (z10 && this.f18647j == null) {
            z11 = false;
        } else {
            z11 = true;
        }
        b7.a.g(z11);
        if (!z10 && !hasOnClickListeners()) {
            z12 = false;
        }
        setClickable(z12);
        if (this.f18651n == z10) {
            return;
        }
        this.f18651n = z10;
        if (N()) {
            this.f18647j.setPlayer(this.f18650m);
        } else {
            PlayerControlView playerControlView = this.f18647j;
            if (playerControlView != null) {
                playerControlView.F();
                this.f18647j.setPlayer(null);
            }
        }
        I();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f18641d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    public void u() {
        PlayerControlView playerControlView = this.f18647j;
        if (playerControlView != null) {
            playerControlView.F();
        }
    }

    protected void y(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
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
        this.f18638a = aVar;
        if (isInEditMode()) {
            this.f18639b = null;
            this.f18640c = null;
            this.f18641d = null;
            this.f18642e = false;
            this.f18643f = null;
            this.f18644g = null;
            this.f18645h = null;
            this.f18646i = null;
            this.f18647j = null;
            this.f18648k = null;
            this.f18649l = null;
            ImageView imageView = new ImageView(context);
            if (b7.s0.f2506a >= 23) {
                r(getResources(), imageView);
            } else {
                q(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i18 = q.f18892c;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, u.H, i10, 0);
            try {
                boolean hasValue = obtainStyledAttributes.hasValue(u.R);
                int color = obtainStyledAttributes.getColor(u.R, 0);
                int resourceId = obtainStyledAttributes.getResourceId(u.N, i18);
                boolean z18 = obtainStyledAttributes.getBoolean(u.T, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(u.J, 0);
                boolean z19 = obtainStyledAttributes.getBoolean(u.U, true);
                int i19 = obtainStyledAttributes.getInt(u.S, 1);
                int i20 = obtainStyledAttributes.getInt(u.O, 0);
                int i21 = obtainStyledAttributes.getInt(u.Q, 5000);
                boolean z20 = obtainStyledAttributes.getBoolean(u.L, true);
                boolean z21 = obtainStyledAttributes.getBoolean(u.I, true);
                i13 = obtainStyledAttributes.getInteger(u.P, 0);
                this.f18656s = obtainStyledAttributes.getBoolean(u.M, this.f18656s);
                boolean z22 = obtainStyledAttributes.getBoolean(u.K, true);
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
        this.f18639b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            B(aspectRatioFrameLayout, i12);
        }
        View findViewById = findViewById(o.O);
        this.f18640c = findViewById;
        if (findViewById != null && z13) {
            findViewById.setBackgroundColor(i15);
        }
        if (aspectRatioFrameLayout != null && i14 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i14 == 2) {
                this.f18641d = new TextureView(context);
            } else if (i14 == 3) {
                try {
                    int i22 = SphericalGLSurfaceView.f19236m;
                    this.f18641d = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    z17 = true;
                    this.f18641d.setLayoutParams(layoutParams);
                    this.f18641d.setOnClickListener(aVar);
                    this.f18641d.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f18641d, 0);
                    z16 = z17;
                } catch (Exception e10) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                }
            } else if (i14 != 4) {
                this.f18641d = new SurfaceView(context);
            } else {
                try {
                    int i23 = VideoDecoderGLSurfaceView.f19219b;
                    this.f18641d = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                } catch (Exception e11) {
                    throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                }
            }
            z17 = false;
            this.f18641d.setLayoutParams(layoutParams);
            this.f18641d.setOnClickListener(aVar);
            this.f18641d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f18641d, 0);
            z16 = z17;
        } else {
            this.f18641d = null;
            z16 = false;
        }
        this.f18642e = z16;
        this.f18648k = (FrameLayout) findViewById(o.f18860a);
        this.f18649l = (FrameLayout) findViewById(o.A);
        ImageView imageView2 = (ImageView) findViewById(o.f18861b);
        this.f18643f = imageView2;
        this.f18653p = z14 && imageView2 != null;
        if (i16 != 0) {
            this.f18654q = ContextCompat.getDrawable(getContext(), i16);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(o.R);
        this.f18644g = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(o.f18865f);
        this.f18645h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f18655r = i13;
        TextView textView = (TextView) findViewById(o.f18873n);
        this.f18646i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(o.f18869j);
        View findViewById3 = findViewById(o.f18870k);
        if (playerControlView != null) {
            this.f18647j = playerControlView;
            i17 = 0;
        } else if (findViewById3 != null) {
            i17 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f18647j = playerControlView2;
            playerControlView2.setId(o.f18869j);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            i17 = 0;
            this.f18647j = null;
        }
        PlayerControlView playerControlView3 = this.f18647j;
        this.f18658u = playerControlView3 != null ? i11 : i17;
        this.f18661x = z12;
        this.f18659v = z10;
        this.f18660w = z11;
        this.f18651n = (!z15 || playerControlView3 == null) ? i17 : 1;
        if (playerControlView3 != null) {
            playerControlView3.F();
            this.f18647j.y(aVar);
        }
        if (z15) {
            setClickable(true);
        }
        I();
    }
}
