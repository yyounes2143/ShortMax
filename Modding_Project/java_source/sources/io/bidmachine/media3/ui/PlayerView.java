package io.bidmachine.media3.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.AttachedSurfaceControl;
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
import android.window.SurfaceSyncGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.PlaybackException;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.exoplayer.image.ImageOutput;
import io.bidmachine.media3.exoplayer.video.VideoDecoderGLSurfaceView;
import io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import io.bidmachine.media3.ui.AspectRatioFrameLayout;
import io.bidmachine.media3.ui.PlayerControlView;
import io.bidmachine.media3.ui.PlayerView;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import zm.a;
import zm.a0;
import zm.w;
/* loaded from: classes8.dex */
public class PlayerView extends FrameLayout {
    private boolean A;
    @Nullable
    private CharSequence B;
    private int C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;

    /* renamed from: a  reason: collision with root package name */
    private final c f57611a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f57612b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f57613c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f57614d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f57615e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final f f57616f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final ImageView f57617g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final ImageView f57618h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final SubtitleView f57619i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final View f57620j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final TextView f57621k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final PlayerControlView f57622l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final FrameLayout f57623m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final FrameLayout f57624n;

    /* renamed from: o  reason: collision with root package name */
    private final Handler f57625o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Class<?> f57626p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final Method f57627q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final Object f57628r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private zm.w f57629s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f57630t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private d f57631u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private PlayerControlView.m f57632v;

    /* renamed from: w  reason: collision with root package name */
    private int f57633w;

    /* renamed from: x  reason: collision with root package name */
    private int f57634x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private Drawable f57635y;

    /* renamed from: z  reason: collision with root package name */
    private int f57636z;

    @RequiresApi(34)
    /* loaded from: classes8.dex */
    private static class b {
        public static void a(SurfaceView surfaceView) {
            surfaceView.setSurfaceLifecycle(2);
        }
    }

    /* loaded from: classes8.dex */
    private final class c implements w.d, View.OnClickListener, PlayerControlView.m, PlayerControlView.d {

        /* renamed from: a  reason: collision with root package name */
        private final a0.b f57637a = new a0.b();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f57638b;

        public c() {
        }

        @Override // zm.w.d
        public void A(int i10) {
            PlayerView.this.Z();
            PlayerView.this.c0();
            PlayerView.this.b0();
        }

        @Override // zm.w.d
        public void C(bn.b bVar) {
            if (PlayerView.this.f57619i != null) {
                PlayerView.this.f57619i.setCues(bVar.f2737a);
            }
        }

        @Override // zm.w.d
        public void D(int i10, int i11) {
            if (cn.m0.f3614a == 34 && (PlayerView.this.f57614d instanceof SurfaceView) && PlayerView.this.G) {
                final PlayerView playerView = PlayerView.this;
                ((f) cn.a.e(PlayerView.this.f57616f)).f(PlayerView.this.f57625o, (SurfaceView) PlayerView.this.f57614d, new Runnable() { // from class: io.bidmachine.media3.ui.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlayerView.this.invalidate();
                    }
                });
            }
        }

        @Override // zm.w.d
        public void P(w.e eVar, w.e eVar2, int i10) {
            if (PlayerView.this.K() && PlayerView.this.E) {
                PlayerView.this.G();
            }
        }

        @Override // zm.w.d
        public void T(zm.e0 e0Var) {
            zm.a0 a0Var;
            zm.w wVar = (zm.w) cn.a.e(PlayerView.this.f57629s);
            if (wVar.g(17)) {
                a0Var = wVar.getCurrentTimeline();
            } else {
                a0Var = zm.a0.f71731a;
            }
            if (a0Var.q()) {
                this.f57638b = null;
            } else if (wVar.g(30) && !wVar.e().b()) {
                this.f57638b = a0Var.g(wVar.getCurrentPeriodIndex(), this.f57637a, true).f71741b;
            } else {
                Object obj = this.f57638b;
                if (obj != null) {
                    int b10 = a0Var.b(obj);
                    if (b10 != -1) {
                        if (wVar.x() == a0Var.f(b10, this.f57637a).f71742c) {
                            return;
                        }
                    }
                    this.f57638b = null;
                }
            }
            PlayerView.this.d0(false);
        }

        @Override // io.bidmachine.media3.ui.PlayerControlView.m
        public void i(int i10) {
            PlayerView.this.a0();
            if (PlayerView.this.f57631u != null) {
                PlayerView.this.f57631u.a(i10);
            }
        }

        @Override // zm.w.d
        public void m(zm.i0 i0Var) {
            if (!i0Var.equals(zm.i0.f71955e) && PlayerView.this.f57629s != null && PlayerView.this.f57629s.getPlaybackState() != 1) {
                PlayerView.this.Y();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayerView.this.X();
        }

        @Override // zm.w.d
        public void onRenderedFirstFrame() {
            if (PlayerView.this.f57613c != null) {
                PlayerView.this.f57613c.setVisibility(4);
                if (PlayerView.this.C()) {
                    PlayerView.this.H();
                } else {
                    PlayerView.this.E();
                }
            }
        }

        @Override // zm.w.d
        public void w(boolean z10, int i10) {
            PlayerView.this.Z();
            PlayerView.this.b0();
        }

        @Override // io.bidmachine.media3.ui.PlayerControlView.d
        public void x(boolean z10) {
            PlayerView.p(PlayerView.this);
        }
    }

    /* loaded from: classes8.dex */
    public interface d {
        void a(int i10);
    }

    /* loaded from: classes8.dex */
    public interface e {
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    @RequiresApi(23)
    private static void A(Context context, Resources resources, ImageView imageView) {
        imageView.setImageDrawable(cn.m0.a0(context, resources, t0.f57848a));
        imageView.setBackgroundColor(resources.getColor(r0.f57841a, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean C() {
        zm.w wVar = this.f57629s;
        if (wVar != null && this.f57628r != null && wVar.g(30) && wVar.e().c(4)) {
            return true;
        }
        return false;
    }

    private boolean D() {
        zm.w wVar = this.f57629s;
        if (wVar != null && wVar.g(30) && wVar.e().c(2)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        H();
        ImageView imageView = this.f57617g;
        if (imageView != null) {
            imageView.setImageResource(17170445);
        }
    }

    private void F() {
        ImageView imageView = this.f57618h;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f57618h.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        ImageView imageView = this.f57617g;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    @SuppressLint({"InlinedApi"})
    private boolean I(int i10) {
        if (i10 != 19 && i10 != 270 && i10 != 22 && i10 != 271 && i10 != 20 && i10 != 269 && i10 != 21 && i10 != 268 && i10 != 23) {
            return false;
        }
        return true;
    }

    private boolean J() {
        Drawable drawable;
        ImageView imageView = this.f57617g;
        if (imageView == null || (drawable = imageView.getDrawable()) == null || drawable.getAlpha() == 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean K() {
        zm.w wVar = this.f57629s;
        if (wVar != null && wVar.g(16) && this.f57629s.isPlayingAd() && this.f57629s.getPlayWhenReady()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object L(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals("onImageAvailable")) {
            P((Bitmap) objArr[1]);
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(Bitmap bitmap) {
        setImage(new BitmapDrawable(getResources(), bitmap));
        if (!D()) {
            W();
            y();
        }
    }

    private void N(boolean z10) {
        boolean z11;
        if ((!K() || !this.E) && g0()) {
            if (this.f57622l.c0() && this.f57622l.getShowTimeoutMs() <= 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            boolean T = T();
            if (z10 || z11 || T) {
                V(T);
            }
        }
    }

    private void P(final Bitmap bitmap) {
        this.f57625o.post(new Runnable() { // from class: io.bidmachine.media3.ui.f0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerView.this.M(bitmap);
            }
        });
    }

    private boolean Q(@Nullable zm.w wVar) {
        byte[] bArr;
        if (wVar == null || !wVar.g(18) || (bArr = wVar.z().f72152i) == null) {
            return false;
        }
        return R(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    private boolean R(@Nullable Drawable drawable) {
        if (this.f57618h != null && drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float f10 = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.f57633w == 2) {
                    f10 = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                O(this.f57612b, f10);
                this.f57618h.setScaleType(scaleType);
                this.f57618h.setImageDrawable(drawable);
                this.f57618h.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void S(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    private boolean T() {
        zm.w wVar = this.f57629s;
        if (wVar == null) {
            return true;
        }
        int playbackState = wVar.getPlaybackState();
        if (this.D && ((!this.f57629s.g(17) || !this.f57629s.getCurrentTimeline().q()) && (playbackState == 1 || playbackState == 4 || !((zm.w) cn.a.e(this.f57629s)).getPlayWhenReady()))) {
            return true;
        }
        return false;
    }

    private void V(boolean z10) {
        int i10;
        if (!g0()) {
            return;
        }
        PlayerControlView playerControlView = this.f57622l;
        if (z10) {
            i10 = 0;
        } else {
            i10 = this.C;
        }
        playerControlView.setShowTimeoutMs(i10);
        this.f57622l.m0();
    }

    private void W() {
        ImageView imageView = this.f57617g;
        if (imageView != null) {
            imageView.setVisibility(0);
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        if (g0() && this.f57629s != null) {
            if (!this.f57622l.c0()) {
                N(true);
            } else if (this.F) {
                this.f57622l.Y();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        zm.i0 i0Var;
        float f10;
        zm.w wVar = this.f57629s;
        if (wVar != null) {
            i0Var = wVar.v();
        } else {
            i0Var = zm.i0.f71955e;
        }
        int i10 = i0Var.f71959a;
        int i11 = i0Var.f71960b;
        float f11 = 0.0f;
        if (i11 != 0 && i10 != 0) {
            f10 = (i10 * i0Var.f71962d) / i11;
        } else {
            f10 = 0.0f;
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f57612b;
        if (!this.f57615e) {
            f11 = f10;
        }
        O(aspectRatioFrameLayout, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r4.f57629s.getPlayWhenReady() == false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Z() {
        /*
            r4 = this;
            android.view.View r0 = r4.f57620j
            if (r0 == 0) goto L2b
            zm.w r0 = r4.f57629s
            r1 = 0
            if (r0 == 0) goto L20
            int r0 = r0.getPlaybackState()
            r2 = 2
            if (r0 != r2) goto L20
            int r0 = r4.f57636z
            r3 = 1
            if (r0 == r2) goto L21
            if (r0 != r3) goto L20
            zm.w r0 = r4.f57629s
            boolean r0 = r0.getPlayWhenReady()
            if (r0 == 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            android.view.View r0 = r4.f57620j
            if (r3 == 0) goto L26
            goto L28
        L26:
            r1 = 8
        L28:
            r0.setVisibility(r1)
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.ui.PlayerView.Z():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        PlayerControlView playerControlView = this.f57622l;
        String str = null;
        if (playerControlView != null && this.f57630t) {
            if (playerControlView.c0()) {
                if (this.F) {
                    str = getResources().getString(z0.f57920e);
                }
                setContentDescription(str);
                return;
            }
            setContentDescription(getResources().getString(z0.f57927l));
            return;
        }
        setContentDescription(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0() {
        if (K() && this.E) {
            G();
        } else {
            N(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        TextView textView = this.f57621k;
        if (textView != null) {
            CharSequence charSequence = this.B;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f57621k.setVisibility(0);
                return;
            }
            zm.w wVar = this.f57629s;
            if (wVar != null) {
                wVar.d();
            }
            this.f57621k.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(boolean z10) {
        boolean z11;
        zm.w wVar = this.f57629s;
        boolean z12 = false;
        if (wVar != null && wVar.g(30) && !wVar.e().b()) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!this.A && (!z11 || z10)) {
            F();
            y();
            E();
        }
        if (!z11) {
            return;
        }
        boolean D = D();
        boolean C = C();
        if (!D && !C) {
            y();
            E();
        }
        View view = this.f57613c;
        if (view != null && view.getVisibility() == 4 && J()) {
            z12 = true;
        }
        if (C && !D && z12) {
            y();
            W();
        } else if (D && !C && z12) {
            E();
        }
        if (!D && !C && f0() && (Q(wVar) || R(this.f57635y))) {
            return;
        }
        F();
    }

    private void e0() {
        Drawable drawable;
        ImageView imageView = this.f57617g;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            float f10 = intrinsicWidth / intrinsicHeight;
            ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
            if (this.f57634x == 1) {
                f10 = getWidth() / getHeight();
                scaleType = ImageView.ScaleType.CENTER_CROP;
            }
            if (this.f57617g.getVisibility() == 0) {
                O(this.f57612b, f10);
            }
            this.f57617g.setScaleType(scaleType);
        }
    }

    private boolean f0() {
        if (this.f57633w != 0) {
            cn.a.i(this.f57618h);
            return true;
        }
        return false;
    }

    private boolean g0() {
        if (this.f57630t) {
            cn.a.i(this.f57622l);
            return true;
        }
        return false;
    }

    static /* synthetic */ e p(PlayerView playerView) {
        playerView.getClass();
        return null;
    }

    private void setImage(Drawable drawable) {
        ImageView imageView = this.f57617g;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        e0();
    }

    private void setImageOutput(zm.w wVar) {
        Class<?> cls = this.f57626p;
        if (cls != null && cls.isAssignableFrom(wVar.getClass())) {
            try {
                ((Method) cn.a.e(this.f57627q)).invoke(wVar, cn.a.e(this.f57628r));
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    private void x(zm.w wVar) {
        Class<?> cls = this.f57626p;
        if (cls != null && cls.isAssignableFrom(wVar.getClass())) {
            try {
                ((Method) cn.a.e(this.f57627q)).invoke(wVar, null);
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    private void y() {
        View view = this.f57613c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void z(Context context, Resources resources, ImageView imageView) {
        imageView.setImageDrawable(cn.m0.a0(context, resources, t0.f57848a));
        imageView.setBackgroundColor(resources.getColor(r0.f57841a));
    }

    public boolean B(KeyEvent keyEvent) {
        if (g0() && this.f57622l.U(keyEvent)) {
            return true;
        }
        return false;
    }

    public void G() {
        PlayerControlView playerControlView = this.f57622l;
        if (playerControlView != null) {
            playerControlView.Y();
        }
    }

    protected void O(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public void U() {
        V(T());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        f fVar;
        super.dispatchDraw(canvas);
        if (cn.m0.f3614a == 34 && (fVar = this.f57616f) != null && this.G) {
            fVar.e();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        zm.w wVar = this.f57629s;
        if (wVar != null && wVar.g(16) && this.f57629s.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean I = I(keyEvent.getKeyCode());
        if (I && g0() && !this.f57622l.c0()) {
            N(true);
            return true;
        } else if (!B(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            if (I && g0()) {
                N(true);
            }
            return false;
        } else {
            N(true);
            return true;
        }
    }

    public List<zm.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f57624n;
        if (frameLayout != null) {
            arrayList.add(new a.C0988a(frameLayout, 4).b("Transparent overlay does not impact viewability").a());
        }
        PlayerControlView playerControlView = this.f57622l;
        if (playerControlView != null) {
            arrayList.add(new a.C0988a(playerControlView, 1).a());
        }
        return ImmutableList.u(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) cn.a.j(this.f57623m, "exo_ad_overlay must be present for ad playback");
    }

    public int getArtworkDisplayMode() {
        return this.f57633w;
    }

    public boolean getControllerAutoShow() {
        return this.D;
    }

    public boolean getControllerHideOnTouch() {
        return this.F;
    }

    public int getControllerShowTimeoutMs() {
        return this.C;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f57635y;
    }

    public int getImageDisplayMode() {
        return this.f57634x;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f57624n;
    }

    @Nullable
    public zm.w getPlayer() {
        return this.f57629s;
    }

    public int getResizeMode() {
        cn.a.i(this.f57612b);
        return this.f57612b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f57619i;
    }

    @Deprecated
    public boolean getUseArtwork() {
        if (this.f57633w != 0) {
            return true;
        }
        return false;
    }

    public boolean getUseController() {
        return this.f57630t;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f57614d;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (g0() && this.f57629s != null) {
            N(true);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        X();
        return super.performClick();
    }

    public void setArtworkDisplayMode(int i10) {
        boolean z10;
        if (i10 != 0 && this.f57618h == null) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.g(z10);
        if (this.f57633w != i10) {
            this.f57633w = i10;
            d0(false);
        }
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        cn.a.i(this.f57612b);
        this.f57612b.setAspectRatioListener(bVar);
    }

    public void setControllerAnimationEnabled(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setAnimationEnabled(z10);
    }

    public void setControllerAutoShow(boolean z10) {
        this.D = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.E = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        cn.a.i(this.f57622l);
        this.F = z10;
        a0();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(@Nullable PlayerControlView.d dVar) {
        cn.a.i(this.f57622l);
        this.f57622l.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i10) {
        cn.a.i(this.f57622l);
        this.C = i10;
        if (this.f57622l.c0()) {
            U();
        }
    }

    public void setControllerVisibilityListener(@Nullable d dVar) {
        if (dVar != null) {
            setControllerVisibilityListener((PlayerControlView.m) null);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        boolean z10;
        if (this.f57621k != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.B = charSequence;
        c0();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f57635y != drawable) {
            this.f57635y = drawable;
            d0(false);
        }
    }

    public void setEnableComposeSurfaceSyncWorkaround(boolean z10) {
        this.G = z10;
    }

    public void setErrorMessageProvider(@Nullable zm.l<? super PlaybackException> lVar) {
        if (lVar != null) {
            c0();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        cn.a.i(this.f57622l);
        this.f57622l.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setFullscreenButtonClickListener(@Nullable e eVar) {
        cn.a.i(this.f57622l);
        this.f57622l.setOnFullScreenModeChangedListener(this.f57611a);
    }

    public void setFullscreenButtonState(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.s0(z10);
    }

    public void setImageDisplayMode(int i10) {
        boolean z10;
        if (this.f57617g != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (this.f57634x != i10) {
            this.f57634x = i10;
            e0();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.A != z10) {
            this.A = z10;
            d0(false);
        }
    }

    public void setPlayer(@Nullable zm.w wVar) {
        boolean z10;
        boolean z11;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (wVar != null && wVar.s() != Looper.getMainLooper()) {
            z11 = false;
        } else {
            z11 = true;
        }
        cn.a.a(z11);
        zm.w wVar2 = this.f57629s;
        if (wVar2 == wVar) {
            return;
        }
        if (wVar2 != null) {
            wVar2.B(this.f57611a);
            if (wVar2.g(27)) {
                View view = this.f57614d;
                if (view instanceof TextureView) {
                    wVar2.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    wVar2.clearVideoSurfaceView((SurfaceView) view);
                }
            }
            x(wVar2);
        }
        SubtitleView subtitleView = this.f57619i;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f57629s = wVar;
        if (g0()) {
            this.f57622l.setPlayer(wVar);
        }
        Z();
        c0();
        d0(true);
        if (wVar != null) {
            if (wVar.g(27)) {
                View view2 = this.f57614d;
                if (view2 instanceof TextureView) {
                    wVar.setVideoTextureView((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    wVar.setVideoSurfaceView((SurfaceView) view2);
                }
                if (!wVar.g(30) || wVar.e().d(2)) {
                    Y();
                }
            }
            if (this.f57619i != null && wVar.g(28)) {
                this.f57619i.setCues(wVar.p().f2737a);
            }
            wVar.C(this.f57611a);
            setImageOutput(wVar);
            N(false);
            return;
        }
        G();
    }

    public void setRepeatToggleModes(int i10) {
        cn.a.i(this.f57622l);
        this.f57622l.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        cn.a.i(this.f57612b);
        this.f57612b.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.f57636z != i10) {
            this.f57636z = i10;
            Z();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowFastForwardButton(z10);
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowNextButton(z10);
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowPlayButtonIfPlaybackIsSuppressed(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowShuffleButton(z10);
    }

    public void setShowSubtitleButton(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowSubtitleButton(z10);
    }

    public void setShowVrButton(boolean z10) {
        cn.a.i(this.f57622l);
        this.f57622l.setShowVrButton(z10);
    }

    public void setShutterBackgroundColor(@ColorInt int i10) {
        View view = this.f57613c;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    @Deprecated
    public void setUseArtwork(boolean z10) {
        setArtworkDisplayMode(!z10 ? 1 : 0);
    }

    public void setUseController(boolean z10) {
        boolean z11;
        boolean z12 = true;
        if (z10 && this.f57622l == null) {
            z11 = false;
        } else {
            z11 = true;
        }
        cn.a.g(z11);
        if (!z10 && !hasOnClickListeners()) {
            z12 = false;
        }
        setClickable(z12);
        if (this.f57630t == z10) {
            return;
        }
        this.f57630t = z10;
        if (g0()) {
            this.f57622l.setPlayer(this.f57629s);
        } else {
            PlayerControlView playerControlView = this.f57622l;
            if (playerControlView != null) {
                playerControlView.Y();
                this.f57622l.setPlayer(null);
            }
        }
        a0();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f57614d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void setControllerVisibilityListener(@Nullable PlayerControlView.m mVar) {
        cn.a.i(this.f57622l);
        PlayerControlView.m mVar2 = this.f57632v;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.f57622l.j0(mVar2);
        }
        this.f57632v = mVar;
        if (mVar != null) {
            this.f57622l.S(mVar);
            setControllerVisibilityListener((d) null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int i11;
        int i12;
        boolean z10;
        boolean z11;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z12;
        int i18;
        boolean z13;
        int i19;
        boolean z14;
        boolean z15;
        a aVar;
        boolean z16;
        Class<ExoPlayer> cls;
        Object obj;
        Method method;
        int i20;
        c cVar = new c();
        this.f57611a = cVar;
        this.f57625o = new Handler(Looper.getMainLooper());
        if (isInEditMode()) {
            this.f57612b = null;
            this.f57613c = null;
            this.f57614d = null;
            this.f57615e = false;
            this.f57616f = null;
            this.f57617g = null;
            this.f57618h = null;
            this.f57619i = null;
            this.f57620j = null;
            this.f57621k = null;
            this.f57622l = null;
            this.f57623m = null;
            this.f57624n = null;
            this.f57626p = null;
            this.f57627q = null;
            this.f57628r = null;
            ImageView imageView = new ImageView(context);
            if (cn.m0.f3614a >= 23) {
                A(context, getResources(), imageView);
            } else {
                z(context, getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i21 = x0.f57908d;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b1.f57707k0, i10, 0);
            try {
                boolean hasValue = obtainStyledAttributes.hasValue(b1.f57731w0);
                int color = obtainStyledAttributes.getColor(b1.f57731w0, 0);
                int resourceId = obtainStyledAttributes.getResourceId(b1.f57723s0, i21);
                boolean z17 = obtainStyledAttributes.getBoolean(b1.f57735y0, true);
                int i22 = obtainStyledAttributes.getInt(b1.f57709l0, 1);
                int resourceId2 = obtainStyledAttributes.getResourceId(b1.f57713n0, 0);
                int i23 = obtainStyledAttributes.getInt(b1.f57719q0, 0);
                boolean z18 = obtainStyledAttributes.getBoolean(b1.f57737z0, true);
                int i24 = obtainStyledAttributes.getInt(b1.f57733x0, 1);
                int i25 = obtainStyledAttributes.getInt(b1.f57725t0, 0);
                i11 = obtainStyledAttributes.getInt(b1.f57729v0, 5000);
                boolean z19 = obtainStyledAttributes.getBoolean(b1.f57717p0, true);
                z15 = obtainStyledAttributes.getBoolean(b1.f57711m0, true);
                int integer = obtainStyledAttributes.getInteger(b1.f57727u0, 0);
                this.A = obtainStyledAttributes.getBoolean(b1.f57721r0, this.A);
                boolean z20 = obtainStyledAttributes.getBoolean(b1.f57715o0, true);
                obtainStyledAttributes.recycle();
                i15 = resourceId2;
                z11 = z19;
                z14 = z20;
                z13 = z17;
                i12 = resourceId;
                z10 = z18;
                z12 = hasValue;
                i16 = i25;
                i13 = i23;
                i19 = i22;
                i18 = color;
                i17 = i24;
                i14 = integer;
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            i11 = 5000;
            i12 = i21;
            z10 = true;
            z11 = true;
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
            i17 = 1;
            z12 = false;
            i18 = 0;
            z13 = true;
            i19 = 1;
            z14 = true;
            z15 = true;
        }
        LayoutInflater.from(context).inflate(i12, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(v0.f57883i);
        this.f57612b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            S(aspectRatioFrameLayout, i16);
        }
        View findViewById = findViewById(v0.P);
        this.f57613c = findViewById;
        if (findViewById != null && z12) {
            findViewById.setBackgroundColor(i18);
        }
        if (aspectRatioFrameLayout != null && i17 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i17 == 2) {
                this.f57614d = new TextureView(context);
            } else if (i17 == 3) {
                try {
                    int i26 = SphericalGLSurfaceView.f57320m;
                    this.f57614d = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    z16 = true;
                    this.f57614d.setLayoutParams(layoutParams);
                    this.f57614d.setOnClickListener(cVar);
                    this.f57614d.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f57614d, 0);
                    aVar = null;
                } catch (Exception e10) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                }
            } else if (i17 != 4) {
                SurfaceView surfaceView = new SurfaceView(context);
                if (cn.m0.f3614a >= 34) {
                    b.a(surfaceView);
                }
                this.f57614d = surfaceView;
            } else {
                try {
                    int i27 = VideoDecoderGLSurfaceView.f57150b;
                    this.f57614d = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                } catch (Exception e11) {
                    throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                }
            }
            z16 = false;
            this.f57614d.setLayoutParams(layoutParams);
            this.f57614d.setOnClickListener(cVar);
            this.f57614d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f57614d, 0);
            aVar = null;
        } else {
            aVar = null;
            this.f57614d = null;
            z16 = false;
        }
        this.f57615e = z16;
        this.f57616f = cn.m0.f3614a == 34 ? new f() : null;
        this.f57623m = (FrameLayout) findViewById(v0.f57875a);
        this.f57624n = (FrameLayout) findViewById(v0.B);
        this.f57617g = (ImageView) findViewById(v0.f57895u);
        this.f57634x = i13;
        try {
            cls = ExoPlayer.class;
            ImageOutput imageOutput = ImageOutput.f56373a;
            method = cls.getMethod("setImageOutput", ImageOutput.class);
            obj = Proxy.newProxyInstance(ImageOutput.class.getClassLoader(), new Class[]{ImageOutput.class}, new InvocationHandler() { // from class: io.bidmachine.media3.ui.e0
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj2, Method method2, Object[] objArr) {
                    Object L;
                    L = PlayerView.this.L(obj2, method2, objArr);
                    return L;
                }
            });
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            obj = null;
            method = null;
        }
        this.f57626p = cls;
        this.f57627q = method;
        this.f57628r = obj;
        ImageView imageView2 = (ImageView) findViewById(v0.f57876b);
        this.f57618h = imageView2;
        this.f57633w = (!z13 || i19 == 0 || imageView2 == null) ? 0 : 0;
        if (i15 != 0) {
            this.f57635y = ContextCompat.getDrawable(getContext(), i15);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(v0.S);
        this.f57619i = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(v0.f57880f);
        this.f57620j = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f57636z = i14;
        TextView textView = (TextView) findViewById(v0.f57888n);
        this.f57621k = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(v0.f57884j);
        View findViewById3 = findViewById(v0.f57885k);
        if (playerControlView != null) {
            this.f57622l = playerControlView;
            i20 = 0;
        } else if (findViewById3 != null) {
            i20 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f57622l = playerControlView2;
            playerControlView2.setId(v0.f57884j);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            i20 = 0;
            this.f57622l = null;
        }
        PlayerControlView playerControlView3 = this.f57622l;
        this.C = playerControlView3 != null ? i11 : i20;
        this.F = z11;
        this.D = z15;
        this.E = z14;
        this.f57630t = (!z10 || playerControlView3 == null) ? i20 : 1;
        if (playerControlView3 != null) {
            playerControlView3.Z();
            this.f57622l.S(this.f57611a);
        }
        if (z10) {
            setClickable(true);
        }
        a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(34)
    /* loaded from: classes8.dex */
    public static final class f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        SurfaceSyncGroup f57640a;

        private f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(SurfaceView surfaceView, Runnable runnable) {
            AttachedSurfaceControl rootSurfaceControl;
            boolean add;
            rootSurfaceControl = surfaceView.getRootSurfaceControl();
            if (rootSurfaceControl == null) {
                return;
            }
            SurfaceSyncGroup a10 = i0.a("exo-sync-b-334901521");
            this.f57640a = a10;
            add = a10.add(rootSurfaceControl, new Runnable() { // from class: io.bidmachine.media3.ui.p0
                @Override // java.lang.Runnable
                public final void run() {
                    PlayerView.f.c();
                }
            });
            cn.a.g(add);
            runnable.run();
            rootSurfaceControl.applyTransactionOnDraw(j0.a());
        }

        public void e() {
            SurfaceSyncGroup surfaceSyncGroup = this.f57640a;
            if (surfaceSyncGroup != null) {
                surfaceSyncGroup.markSyncReady();
                this.f57640a = null;
            }
        }

        public void f(Handler handler, final SurfaceView surfaceView, final Runnable runnable) {
            handler.post(new Runnable() { // from class: io.bidmachine.media3.ui.o0
                @Override // java.lang.Runnable
                public final void run() {
                    PlayerView.f.this.d(surfaceView, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c() {
        }
    }
}
