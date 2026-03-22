package com.inmobi.media;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.ProgressBar;
import androidx.core.app.NotificationCompat;
import com.inmobi.media.C3050l9;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.l9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3050l9 extends TextureView implements MediaController.MediaPlayerControl {
    public static final String C = "l9";
    public final MediaPlayer.OnErrorListener A;
    public final TextureView$SurfaceTextureListenerC3034k9 B;

    /* renamed from: a  reason: collision with root package name */
    public Uri f24962a;

    /* renamed from: b  reason: collision with root package name */
    public Surface f24963b;

    /* renamed from: c  reason: collision with root package name */
    public G8 f24964c;

    /* renamed from: d  reason: collision with root package name */
    public int f24965d;

    /* renamed from: e  reason: collision with root package name */
    public int f24966e;

    /* renamed from: f  reason: collision with root package name */
    public int f24967f;

    /* renamed from: g  reason: collision with root package name */
    public int f24968g;

    /* renamed from: h  reason: collision with root package name */
    public int f24969h;

    /* renamed from: i  reason: collision with root package name */
    public InterfaceC2986h9 f24970i;

    /* renamed from: j  reason: collision with root package name */
    public InterfaceC2970g9 f24971j;

    /* renamed from: k  reason: collision with root package name */
    public InterfaceC2954f9 f24972k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f24973l;

    /* renamed from: m  reason: collision with root package name */
    public HandlerC3002i9 f24974m;

    /* renamed from: n  reason: collision with root package name */
    public C2938e9 f24975n;

    /* renamed from: o  reason: collision with root package name */
    public int f24976o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f24977p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f24978q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f24979r;

    /* renamed from: s  reason: collision with root package name */
    public Handler f24980s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f24981t;

    /* renamed from: u  reason: collision with root package name */
    public final C2953f8 f24982u;

    /* renamed from: v  reason: collision with root package name */
    public MediaPlayer.OnVideoSizeChangedListener f24983v;

    /* renamed from: w  reason: collision with root package name */
    public final C3018j9 f24984w;

    /* renamed from: x  reason: collision with root package name */
    public final MediaPlayer.OnCompletionListener f24985x;

    /* renamed from: y  reason: collision with root package name */
    public final MediaPlayer.OnInfoListener f24986y;

    /* renamed from: z  reason: collision with root package name */
    public final MediaPlayer.OnBufferingUpdateListener f24987z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050l9(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f24969h = Integer.MIN_VALUE;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.f24982u = new C2953f8(context2, this);
        requestLayout();
        invalidate();
        this.f24983v = new MediaPlayer.OnVideoSizeChangedListener() { // from class: ub.x4
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
                C3050l9.c(C3050l9.this, mediaPlayer, i10, i11);
            }
        };
        this.f24984w = new C3018j9(this);
        this.f24985x = new MediaPlayer.OnCompletionListener() { // from class: ub.y4
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                C3050l9.a(C3050l9.this, mediaPlayer);
            }
        };
        this.f24986y = new MediaPlayer.OnInfoListener() { // from class: ub.z4
            @Override // android.media.MediaPlayer.OnInfoListener
            public final boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
                return C3050l9.b(C3050l9.this, mediaPlayer, i10, i11);
            }
        };
        this.f24987z = new MediaPlayer.OnBufferingUpdateListener() { // from class: ub.a5
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
                C3050l9.a(C3050l9.this, mediaPlayer, i10);
            }
        };
        this.A = new MediaPlayer.OnErrorListener() { // from class: ub.b5
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                return C3050l9.a(C3050l9.this, mediaPlayer, i10, i11);
            }
        };
        this.B = new TextureView$SurfaceTextureListenerC3034k9(this);
    }

    public static final void a(C3050l9 this$0, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.d();
        } catch (Exception e10) {
            String TAG = C;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public static final boolean b(C3050l9 this$0, MediaPlayer mediaPlayer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (3 == i10) {
            this$0.a(8, 8);
            return true;
        }
        return true;
    }

    public static final void c(C3050l9 this$0, MediaPlayer mediaPlayer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f24966e = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this$0.f24967f = videoHeight;
        if (this$0.f24966e == 0 || videoHeight == 0) {
            return;
        }
        this$0.requestLayout();
    }

    public static final void e(C3050l9 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pause();
    }

    private final void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    private final void setVideoURI(Uri uri) {
        this.f24962a = uri;
        e();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canPause() {
        return this.f24977p;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekBackward() {
        return this.f24978q;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekForward() {
        return this.f24979r;
    }

    public final void d() {
        G8 g82 = this.f24964c;
        if (g82 != null) {
            g82.f23682a = 5;
        }
        if (g82 != null) {
            g82.f23683b = 5;
        }
        C2938e9 c2938e9 = this.f24975n;
        if (c2938e9 != null) {
            c2938e9.c();
        }
        HandlerC3002i9 handlerC3002i9 = this.f24974m;
        if (handlerC3002i9 != null) {
            handlerC3002i9.removeMessages(1);
        }
        Object tag = getTag();
        if (tag instanceof C2904c9) {
            C2904c9 c2904c9 = (C2904c9) tag;
            Object obj = c2904c9.f24597t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (!((Boolean) obj).booleanValue()) {
                c2904c9.f24597t.put("didCompleteQ4", Boolean.TRUE);
                InterfaceC2986h9 interfaceC2986h9 = this.f24970i;
                if (interfaceC2986h9 != null) {
                    ((C3272z8) interfaceC2986h9).a((byte) 3);
                }
            }
            c2904c9.f24597t.put("didSignalVideoCompleted", Boolean.TRUE);
            HashMap hashMap = c2904c9.f24597t;
            if (hashMap != null) {
                Boolean bool = Boolean.FALSE;
                hashMap.put("didCompleteQ1", bool);
                hashMap.put("didCompleteQ2", bool);
                hashMap.put("didCompleteQ3", bool);
                hashMap.put("didPause", bool);
                hashMap.put("didStartPlaying", bool);
                hashMap.put("didQ4Fire", bool);
            }
            if (c2904c9.B) {
                start();
                return;
            }
            this.f24982u.a();
            Object obj2 = c2904c9.f24597t.get("isFullScreen");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj2).booleanValue()) {
                a(8, 0);
            }
        }
    }

    public final void f() {
        Surface surface = this.f24963b;
        if (surface != null) {
            surface.release();
        }
        this.f24963b = null;
        g();
    }

    public final void g() {
        G8 g82;
        HandlerC3002i9 handlerC3002i9 = this.f24974m;
        if (handlerC3002i9 != null) {
            handlerC3002i9.removeMessages(1);
        }
        C2953f8 c2953f8 = this.f24982u;
        c2953f8.a();
        if (Build.VERSION.SDK_INT >= 26) {
            c2953f8.f24741f = null;
        }
        c2953f8.f24742g = null;
        Object tag = getTag();
        boolean z10 = tag instanceof C2904c9;
        if (z10) {
            ((C2904c9) tag).f24597t.put("seekPosition", Integer.valueOf(getCurrentPosition()));
        }
        G8 g83 = this.f24964c;
        if (g83 != null) {
            g83.f23682a = 0;
        }
        if (g83 != null) {
            g83.f23683b = 0;
        }
        if (g83 != null) {
            try {
                g83.reset();
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        }
        G8 g84 = this.f24964c;
        if (g84 != null) {
            g84.setOnPreparedListener(null);
            g84.setOnVideoSizeChangedListener(null);
            g84.setOnCompletionListener(null);
            g84.setOnErrorListener(null);
            g84.setOnInfoListener(null);
            g84.setOnBufferingUpdateListener(null);
        }
        if (z10) {
            Object obj = ((C2904c9) tag).f24597t.get("placementType");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Byte");
            if (((Byte) obj).byteValue() == 0 && (g82 = this.f24964c) != null) {
                g82.a();
            }
        } else {
            G8 g85 = this.f24964c;
            if (g85 != null) {
                g85.a();
            }
        }
        String TAG = C;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        this.f24964c = null;
    }

    @NotNull
    public final C2953f8 getAudioFocusManager$media_release() {
        return this.f24982u;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        if (this.f24965d == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f24965d = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return this.f24965d;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f24964c != null) {
            return this.f24976o;
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        G8 g82 = this.f24964c;
        if (g82 != null && a()) {
            return g82.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        G8 g82 = this.f24964c;
        if (g82 != null && a()) {
            return g82.getDuration();
        }
        return -1;
    }

    public final int getLastVolume() {
        return this.f24969h;
    }

    @NotNull
    public final MediaPlayer.OnVideoSizeChangedListener getMSizeChangedListener() {
        return this.f24983v;
    }

    @Nullable
    public final C2938e9 getMediaController() {
        return this.f24975n;
    }

    @Nullable
    public final G8 getMediaPlayer() {
        return this.f24964c;
    }

    public final boolean getPauseScheduled() {
        return this.f24981t;
    }

    @Nullable
    public final InterfaceC2970g9 getPlaybackEventListener() {
        return this.f24971j;
    }

    @Nullable
    public final InterfaceC2986h9 getQuartileCompletedListener() {
        return this.f24970i;
    }

    public final int getState() {
        G8 g82 = this.f24964c;
        if (g82 != null) {
            return g82.f23682a;
        }
        return 0;
    }

    public final int getVideoVolume() {
        if (isPlaying()) {
            return this.f24968g;
        }
        return -1;
    }

    public final int getVolume() {
        if (a()) {
            return this.f24968g;
        }
        return -1;
    }

    public final void h() {
        G8 g82 = this.f24964c;
        if (g82 != null) {
            this.f24968g = 0;
            g82.setVolume(0.0f, 0.0f);
            Object tag = getTag();
            if (tag instanceof C2904c9) {
                ((C2904c9) tag).f24597t.put("currentMediaVolume", 0);
            }
        }
    }

    public final void i() {
        G8 g82 = this.f24964c;
        if (g82 != null) {
            this.f24968g = 1;
            g82.setVolume(1.0f, 1.0f);
            Object tag = getTag();
            if (tag instanceof C2904c9) {
                ((C2904c9) tag).f24597t.put("currentMediaVolume", 15);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean isPlaying() {
        G8 g82;
        if (a() && (g82 = this.f24964c) != null && g82.isPlaying()) {
            return true;
        }
        return false;
    }

    public final void j() {
        G8 g82;
        if (a() && (g82 = this.f24964c) != null && g82.isPlaying()) {
            G8 g83 = this.f24964c;
            if (g83 != null) {
                g83.pause();
            }
            G8 g84 = this.f24964c;
            if (g84 != null) {
                g84.seekTo(0);
            }
            this.f24982u.a();
            Object tag = getTag();
            if (tag instanceof C2904c9) {
                C2904c9 c2904c9 = (C2904c9) tag;
                HashMap hashMap = c2904c9.f24597t;
                Boolean bool = Boolean.TRUE;
                hashMap.put("didPause", bool);
                c2904c9.f24597t.put("seekPosition", 0);
                c2904c9.f24597t.put("didCompleteQ4", bool);
            }
            G8 g85 = this.f24964c;
            if (g85 != null) {
                g85.f23682a = 4;
            }
            InterfaceC2970g9 interfaceC2970g9 = this.f24971j;
            if (interfaceC2970g9 != null) {
                ((A8) interfaceC2970g9).a((byte) 4);
            }
        }
        G8 g86 = this.f24964c;
        if (g86 != null) {
            g86.f23683b = 4;
        }
    }

    public final void k() {
        if (this.f24964c != null) {
            if (isPlaying()) {
                this.f24982u.c();
            } else {
                i();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0058, code lost:
        if (r1 > r6) goto L17;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f24966e     // Catch: java.lang.Exception -> L79
            int r0 = android.view.View.getDefaultSize(r0, r6)     // Catch: java.lang.Exception -> L79
            int r1 = r5.f24967f     // Catch: java.lang.Exception -> L79
            int r1 = android.view.View.getDefaultSize(r1, r7)     // Catch: java.lang.Exception -> L79
            int r2 = r5.f24966e     // Catch: java.lang.Exception -> L79
            if (r2 <= 0) goto L75
            int r2 = r5.f24967f     // Catch: java.lang.Exception -> L79
            if (r2 <= 0) goto L75
            int r0 = android.view.View.MeasureSpec.getMode(r6)     // Catch: java.lang.Exception -> L79
            int r6 = android.view.View.MeasureSpec.getSize(r6)     // Catch: java.lang.Exception -> L79
            int r1 = android.view.View.MeasureSpec.getMode(r7)     // Catch: java.lang.Exception -> L79
            int r7 = android.view.View.MeasureSpec.getSize(r7)     // Catch: java.lang.Exception -> L79
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L3c
            if (r1 != r2) goto L3c
            int r0 = r5.f24966e     // Catch: java.lang.Exception -> L79
            int r1 = r0 * r7
            int r2 = r5.f24967f     // Catch: java.lang.Exception -> L79
            int r3 = r6 * r2
            if (r1 >= r3) goto L36
            int r3 = r3 / r0
            goto L73
        L36:
            if (r1 <= r3) goto L5a
            int r0 = r1 / r2
        L3a:
            r1 = r7
            goto L75
        L3c:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L4e
            int r0 = r5.f24967f     // Catch: java.lang.Exception -> L79
            int r0 = r0 * r6
            int r2 = r5.f24966e     // Catch: java.lang.Exception -> L79
            int r0 = r0 / r2
            if (r1 != r3) goto L4b
            if (r0 <= r7) goto L4b
            goto L5a
        L4b:
            r1 = r0
        L4c:
            r0 = r6
            goto L75
        L4e:
            if (r1 != r2) goto L5e
            int r1 = r5.f24966e     // Catch: java.lang.Exception -> L79
            int r1 = r1 * r7
            int r2 = r5.f24967f     // Catch: java.lang.Exception -> L79
            int r1 = r1 / r2
            if (r0 != r3) goto L5c
            if (r1 <= r6) goto L5c
        L5a:
            r1 = r7
            goto L4c
        L5c:
            r0 = r1
            goto L3a
        L5e:
            int r2 = r5.f24966e     // Catch: java.lang.Exception -> L79
            int r4 = r5.f24967f     // Catch: java.lang.Exception -> L79
            if (r1 != r3) goto L6a
            if (r4 <= r7) goto L6a
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L6c
        L6a:
            r1 = r2
            r7 = r4
        L6c:
            if (r0 != r3) goto L5c
            if (r1 <= r6) goto L5c
            int r4 = r4 * r6
            int r3 = r4 / r2
        L73:
            r1 = r3
            goto L4c
        L75:
            r5.setMeasuredDimension(r0, r1)     // Catch: java.lang.Exception -> L79
            goto L80
        L79:
            java.lang.String r6 = com.inmobi.media.C3050l9.C
            java.lang.String r7 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3050l9.onMeasure(int, int):void");
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        G8 g82;
        if (a() && (g82 = this.f24964c) != null && g82.isPlaying()) {
            G8 g83 = this.f24964c;
            if (g83 != null) {
                g83.pause();
            }
            G8 g84 = this.f24964c;
            if (g84 != null) {
                g84.f23682a = 4;
            }
            this.f24982u.a();
            Object tag = getTag();
            if (tag instanceof C2904c9) {
                C2904c9 c2904c9 = (C2904c9) tag;
                c2904c9.f24597t.put("didPause", Boolean.TRUE);
                c2904c9.f24597t.put("seekPosition", Integer.valueOf(getCurrentPosition()));
            }
            InterfaceC2970g9 interfaceC2970g9 = this.f24971j;
            if (interfaceC2970g9 != null) {
                ((A8) interfaceC2970g9).a((byte) 2);
            }
        }
        G8 g85 = this.f24964c;
        if (g85 != null) {
            g85.f23683b = 4;
        }
        this.f24981t = false;
    }

    public final void setIsLockScreen(boolean z10) {
        this.f24973l = z10;
    }

    public final void setLastVolume(int i10) {
        this.f24969h = i10;
    }

    public final void setMSizeChangedListener(@NotNull MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        Intrinsics.checkNotNullParameter(onVideoSizeChangedListener, "<set-?>");
        this.f24983v = onVideoSizeChangedListener;
    }

    public final void setMediaController(@Nullable C2938e9 c2938e9) {
        C2938e9 mediaController;
        if (c2938e9 != null) {
            this.f24975n = c2938e9;
            if (this.f24964c != null && (mediaController = getMediaController()) != null) {
                mediaController.setMediaPlayer(this);
                mediaController.setEnabled(a());
                mediaController.d();
            }
        }
    }

    public final void setMediaErrorListener(@Nullable InterfaceC2954f9 interfaceC2954f9) {
        this.f24972k = interfaceC2954f9;
    }

    public final void setPlaybackEventListener(@Nullable InterfaceC2970g9 interfaceC2970g9) {
        this.f24971j = interfaceC2970g9;
    }

    public final void setQuartileCompletedListener(@Nullable InterfaceC2986h9 interfaceC2986h9) {
        this.f24970i = interfaceC2986h9;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.MediaController.MediaPlayerControl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void start() {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3050l9.start():void");
    }

    public final void b() {
        try {
            if (this.f24962a != null) {
                Uc.a(new Runnable() { // from class: ub.d5
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3050l9.a(C3050l9.this);
                    }
                });
            }
        } catch (Exception unused) {
            String TAG = C;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    public final void e() {
        byte b10;
        G8 a10;
        if (this.f24962a == null || this.f24963b == null) {
            return;
        }
        if (this.f24964c == null) {
            Object tag = getTag();
            C2904c9 c2904c9 = tag instanceof C2904c9 ? (C2904c9) tag : null;
            if (c2904c9 != null) {
                Object obj = c2904c9.f24597t.get("placementType");
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Byte");
                b10 = ((Byte) obj).byteValue();
            } else {
                b10 = 1;
            }
            if (1 == b10) {
                a10 = new G8();
            } else {
                Object obj2 = G8.f23679d;
                a10 = F8.a();
            }
            this.f24964c = a10;
            int i10 = this.f24965d;
            if (i10 != 0) {
                a10.setAudioSessionId(i10);
            } else {
                this.f24965d = a10.getAudioSessionId();
            }
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.c5
                @Override // java.lang.Runnable
                public final void run() {
                    C3050l9.b(C3050l9.this);
                }
            });
            return;
        }
        d(this);
    }

    public static final void b(final C3050l9 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            G8 g82 = this$0.f24964c;
            if (g82 != null) {
                Context applicationContext = this$0.getContext().getApplicationContext();
                Uri uri = this$0.f24962a;
                Intrinsics.checkNotNull(uri);
                g82.setDataSource(applicationContext, uri, (Map<String, String>) null);
            }
            ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
            Runnable runnable = new Runnable() { // from class: ub.w4
                @Override // java.lang.Runnable
                public final void run() {
                    C3050l9.c(C3050l9.this);
                }
            };
            executorC3096o7.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC3096o7.f25116a.post(runnable);
        } catch (IOException unused) {
            G8 g83 = this$0.f24964c;
            if (g83 != null) {
                g83.f23682a = -1;
            }
            if (g83 == null) {
                return;
            }
            g83.f23683b = -1;
        }
    }

    public static final void c(C3050l9 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        d(this$0);
    }

    public static final void a(C3050l9 this$0, MediaPlayer mediaPlayer, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f24976o = i10;
    }

    public final void c() {
        if (this.f24964c != null) {
            this.f24982u.a();
            h();
        }
    }

    public static final boolean a(C3050l9 this$0, MediaPlayer mediaPlayer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String TAG = C;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        InterfaceC2954f9 interfaceC2954f9 = this$0.f24972k;
        if (interfaceC2954f9 != null) {
            B8 b82 = (B8) interfaceC2954f9;
            T7 t72 = b82.f23514a.f23571b;
            if (!t72.f24195t && (t72 instanceof C2870a9)) {
                try {
                    ((C2870a9) t72).a(b82.f23515b, i10);
                } catch (Exception e10) {
                    D8 d82 = b82.f23514a;
                    InterfaceC3269z5 interfaceC3269z5 = d82.f23575f;
                    if (interfaceC3269z5 != null) {
                        String str = d82.f23576g;
                        ((A5) interfaceC3269z5).b(str, rf.a(e10, H6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in handling the onVideoError event; ")));
                    }
                }
            }
        }
        G8 g82 = this$0.f24964c;
        if (g82 != null) {
            g82.f23682a = -1;
        }
        if (g82 != null) {
            g82.f23683b = -1;
        }
        C2938e9 c2938e9 = this$0.f24975n;
        if (c2938e9 != null) {
            c2938e9.c();
        }
        this$0.b();
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void seekTo(int i10) {
    }

    public static final void a(C3050l9 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String diskUrl = String.valueOf(this$0.f24962a);
        C3058m1 a10 = Nc.a();
        a10.getClass();
        Intrinsics.checkNotNullParameter(diskUrl, "diskUrl");
        ArrayList a11 = T1.a(a10, "disk_uri=? ", new String[]{diskUrl}, null, null, "created_ts DESC ", 1, 12);
        C3008j c3008j = a11.isEmpty() ? null : (C3008j) a11.get(0);
        int nextInt = new Random().nextInt() & Integer.MAX_VALUE;
        long currentTimeMillis = System.currentTimeMillis();
        long currentTimeMillis2 = System.currentTimeMillis();
        if (c3008j != null) {
            String url = c3008j.f24869b;
            Intrinsics.checkNotNullParameter(url, "url");
            long currentTimeMillis3 = System.currentTimeMillis();
            if (url == null) {
                url = "";
            }
            Nc.a().a(new C3008j(nextInt, url, null, 0, currentTimeMillis, currentTimeMillis2, currentTimeMillis3, 0L));
        }
    }

    public static final void d(C3050l9 c3050l9) {
        G8 g82;
        C2938e9 mediaController;
        try {
            G8 g83 = c3050l9.f24964c;
            if (g83 != null) {
                g83.setOnPreparedListener(c3050l9.f24984w);
                g83.setOnVideoSizeChangedListener(c3050l9.f24983v);
                g83.setOnCompletionListener(c3050l9.f24985x);
                g83.setOnErrorListener(c3050l9.A);
                g83.setOnInfoListener(c3050l9.f24986y);
                g83.setOnBufferingUpdateListener(c3050l9.f24987z);
                g83.setSurface(c3050l9.f24963b);
            }
            if (L3.f23796a.J()) {
                G8 g84 = c3050l9.f24964c;
                if (g84 != null) {
                    g84.setAudioAttributes(c3050l9.f24982u.f24740e);
                }
            } else {
                G8 g85 = c3050l9.f24964c;
                if (g85 != null) {
                    g85.setAudioStreamType(3);
                }
            }
            G8 g86 = c3050l9.f24964c;
            if (g86 != null) {
                g86.prepareAsync();
            }
            c3050l9.f24976o = 0;
            G8 g87 = c3050l9.f24964c;
            if (g87 != null) {
                g87.f23682a = 1;
            }
            if (g87 != null && (mediaController = c3050l9.getMediaController()) != null) {
                mediaController.setMediaPlayer(c3050l9);
                mediaController.setEnabled(c3050l9.a());
                mediaController.d();
            }
            Object tag = c3050l9.getTag();
            if (tag instanceof C2904c9) {
                Object obj = ((C2904c9) tag).f24597t.get("shouldAutoPlay");
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                if (((Boolean) obj).booleanValue() && (g82 = c3050l9.f24964c) != null) {
                    g82.f23683b = 3;
                }
                Object obj2 = ((C2904c9) tag).f24597t.get("didCompleteQ4");
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                if (((Boolean) obj2).booleanValue()) {
                    c3050l9.a(8, 0);
                    return;
                }
            }
            c3050l9.a(0, 0);
        } catch (Exception e10) {
            G8 g88 = c3050l9.f24964c;
            if (g88 != null) {
                g88.f23682a = -1;
            }
            if (g88 != null) {
                g88.f23683b = -1;
            }
            c3050l9.A.onError(g88, 1, 0);
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void a(C2904c9 videoAsset) {
        G8 a10;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        this.f24966e = 0;
        this.f24967f = 0;
        Object obj = videoAsset.f24582e;
        Ve ve2 = obj instanceof Ve ? (Ve) obj : null;
        final Uri parse = Uri.parse((ve2 == null || (r0 = ((Ue) ve2).b()) == null) ? "" : "");
        this.f24962a = parse;
        Object obj2 = videoAsset.f24597t.get("placementType");
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Byte");
        if (1 == ((Byte) obj2).byteValue()) {
            a10 = new G8();
        } else {
            Object obj3 = G8.f23679d;
            a10 = F8.a();
        }
        this.f24964c = a10;
        int i10 = this.f24965d;
        if (i10 != 0) {
            a10.setAudioSessionId(i10);
        } else {
            this.f24965d = a10.getAudioSessionId();
        }
        setTag(videoAsset);
        this.f24974m = new HandlerC3002i9(this);
        setSurfaceTextureListener(this.B);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.v4
            @Override // java.lang.Runnable
            public final void run() {
                C3050l9.a(C3050l9.this, parse);
            }
        });
    }

    public static final void a(C3050l9 this$0, Uri uri) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            G8 g82 = this$0.f24964c;
            if (g82 != null) {
                g82.setDataSource(this$0.getContext().getApplicationContext(), uri, (Map<String, String>) null);
            }
        } catch (IOException unused) {
            G8 g83 = this$0.f24964c;
            if (g83 != null) {
                g83.f23682a = -1;
            }
            if (g83 == null) {
                return;
            }
            g83.f23683b = -1;
        }
    }

    public final boolean a() {
        G8 g82 = this.f24964c;
        if (g82 != null) {
            int i10 = g82.f23682a;
            return (i10 == -1 || i10 == 0 || i10 == 1) ? false : true;
        }
        return true;
    }

    public final void a(int i10) {
        if (this.f24981t || 4 == getState()) {
            return;
        }
        if (this.f24980s == null) {
            this.f24980s = new Handler(Looper.getMainLooper());
        }
        if (i10 > 0) {
            this.f24981t = true;
            c();
            Handler handler = this.f24980s;
            if (handler != null) {
                handler.postDelayed(new Runnable() { // from class: ub.e5
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3050l9.e(C3050l9.this);
                    }
                }, i10 * 1000);
                return;
            }
            return;
        }
        pause();
    }

    public final void a(int i10, int i11) {
        if (this.f24964c != null) {
            ViewParent parent = getParent();
            C3066m9 c3066m9 = parent instanceof C3066m9 ? (C3066m9) parent : null;
            ProgressBar progressBar = c3066m9 != null ? c3066m9.getProgressBar() : null;
            if (progressBar != null) {
                progressBar.setVisibility(i10);
            }
            ViewParent parent2 = getParent();
            C3066m9 c3066m92 = parent2 instanceof C3066m9 ? (C3066m9) parent2 : null;
            ImageView posterImage = c3066m92 != null ? c3066m92.getPosterImage() : null;
            if (posterImage == null) {
                return;
            }
            posterImage.setVisibility(i11);
        }
    }
}
