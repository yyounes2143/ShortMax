package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.VideoView;
import com.inmobi.media.C3207v7;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.v7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3207v7 extends VideoView implements MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3269z5 f25362a;

    /* renamed from: b  reason: collision with root package name */
    public C3175t7 f25363b;

    /* renamed from: c  reason: collision with root package name */
    public ViewGroup f25364c;

    /* renamed from: d  reason: collision with root package name */
    public InterfaceC3191u7 f25365d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f25366e;

    /* renamed from: f  reason: collision with root package name */
    public final WeakReference f25367f;

    /* renamed from: g  reason: collision with root package name */
    public int f25368g;

    /* renamed from: h  reason: collision with root package name */
    public String f25369h;

    /* renamed from: i  reason: collision with root package name */
    public String f25370i;

    /* renamed from: j  reason: collision with root package name */
    public int f25371j;

    /* renamed from: k  reason: collision with root package name */
    public int f25372k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3207v7(Activity activity, InterfaceC3269z5 interfaceC3269z5) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f25362a = interfaceC3269z5;
        setZOrderOnTop(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (Build.VERSION.SDK_INT < 28) {
            setDrawingCacheEnabled(true);
        }
        this.f25368g = 100;
        this.f25371j = -1;
        this.f25372k = 0;
        this.f25367f = new WeakReference(activity);
        Uc.a(activity, this);
    }

    public static final void a(C3207v7 this$0, MediaPlayer mediaPlayer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", ">>> onVideoSizeChanged");
        }
        if (this$0.f25363b == null) {
            C3175t7 c3175t7 = new C3175t7(this$0.getContext());
            this$0.f25363b = c3175t7;
            c3175t7.setAnchorView(this$0);
            this$0.setMediaController(this$0.f25363b);
            this$0.requestLayout();
            this$0.requestFocus();
        }
    }

    public final void b() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", "Release the media render view");
        }
        stopPlayback();
        ViewGroup viewGroup4 = this.f25364c;
        if (viewGroup4 != null) {
            ViewParent parent = viewGroup4.getParent();
            if (parent instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) parent;
            } else {
                viewGroup2 = null;
            }
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.f25364c);
            }
            ViewParent parent2 = getParent();
            if (parent2 instanceof ViewGroup) {
                viewGroup3 = (ViewGroup) parent2;
            } else {
                viewGroup3 = null;
            }
            if (viewGroup3 != null) {
                viewGroup3.removeView(this);
            }
            setBackgroundColor(0);
            this.f25364c = null;
        }
        setMediaController(null);
        this.f25363b = null;
        InterfaceC3191u7 interfaceC3191u7 = this.f25365d;
        if (interfaceC3191u7 != null) {
            Intrinsics.checkNotNullParameter(this, "mp");
            InterfaceC3269z5 interfaceC3269z52 = ((E7) interfaceC3191u7).f23621a.f23646b;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("MraidMediaProcessor", ">>> onPlayerCompleted");
            }
            ViewGroup viewContainer = getViewContainer();
            if (viewContainer != null) {
                ViewParent parent3 = viewContainer.getParent();
                if (parent3 instanceof ViewGroup) {
                    viewGroup = (ViewGroup) parent3;
                } else {
                    viewGroup = null;
                }
                if (viewGroup != null) {
                    viewGroup.removeView(viewContainer);
                }
            }
            setViewContainer(null);
        }
    }

    public final int getCurrentAudioVolume() {
        return this.f25368g;
    }

    @Override // android.view.View
    @Nullable
    public final String getId() {
        return this.f25369h;
    }

    @Nullable
    public final InterfaceC3191u7 getListener() {
        return this.f25365d;
    }

    public final int getMCurrentPosition() {
        return this.f25372k;
    }

    @Nullable
    public final String getPlaybackUrl() {
        return this.f25370i;
    }

    public final int getPreviousPosition() {
        return this.f25371j;
    }

    @Nullable
    public final ViewGroup getViewContainer() {
        return this.f25364c;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        activity.getApplication().unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f25367f.get() != null && Intrinsics.areEqual(this.f25367f.get(), activity)) {
            this.f25366e = false;
            start();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Activity activity2 = (Activity) this.f25367f.get();
        if (activity2 != null && Intrinsics.areEqual(activity2, activity)) {
            this.f25366e = true;
            if (getCurrentPosition() != 0) {
                this.f25372k = getCurrentPosition();
            }
            pause();
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mp2) {
        Intrinsics.checkNotNullParameter(mp2, "mp");
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", ">>> onCompletion");
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mp2, int i10, int i11) {
        Intrinsics.checkNotNullParameter(mp2, "mp");
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b("MediaRenderView", ">>> onError (" + i10 + ", " + i11 + ')');
        }
        b();
        return false;
    }

    @Override // android.widget.VideoView, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        getHolder().setSizeFromLayout();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mp2) {
        Intrinsics.checkNotNullParameter(mp2, "mp");
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", ">>> onPrepared");
        }
        mp2.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: ub.q7
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
                C3207v7.a(C3207v7.this, mediaPlayer, i10, i11);
            }
        });
        int i10 = this.f25372k;
        if (i10 < getDuration()) {
            this.f25372k = i10;
            seekTo(i10);
        }
        InterfaceC3191u7 interfaceC3191u7 = this.f25365d;
        if (interfaceC3191u7 != null) {
            Intrinsics.checkNotNullParameter(this, "mp");
            InterfaceC3269z5 interfaceC3269z52 = ((E7) interfaceC3191u7).f23621a.f23646b;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("MraidMediaProcessor", ">>> onPlayerPrepared");
            }
        }
        start();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i10) {
        Context d10;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onVisibilityChanged(view, i10);
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", ">>> onVisibilityChanged (" + i10 + ')');
        }
        if (i10 == 0 && (d10 = Uc.d()) != null) {
            setBackground(new BitmapDrawable(d10.getResources(), (Bitmap) null));
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", ">>> onWindowVisibilityChanged (" + i10 + ')');
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", "Pause media playback");
        }
        super.pause();
    }

    public final void setCurrentAudioVolume(int i10) {
        this.f25368g = i10;
    }

    public final void setId(@Nullable String str) {
        this.f25369h = str;
    }

    public final void setListener(@Nullable InterfaceC3191u7 interfaceC3191u7) {
        this.f25365d = interfaceC3191u7;
    }

    public final void setMCurrentPosition(int i10) {
        this.f25372k = i10;
    }

    public final void setPlaybackData(@NotNull String url) {
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        byte[] bytes = url.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bytes) {
            if (((byte) (b10 & ByteCompanionObject.MIN_VALUE)) > 0) {
                sb2.append("%");
                char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
                sb2.append(new String(new char[]{cArr[(b10 >> 4) & 15], cArr[(byte) (b10 & 15)]}));
            } else {
                sb2.append((char) b10);
            }
        }
        try {
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            byte[] bytes2 = sb3.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "this as java.lang.String).getBytes(charset)");
            str = new String(bytes2, Charsets.f61161f);
        } catch (UnsupportedEncodingException unused) {
            str = "";
        }
        this.f25370i = str;
        this.f25369h = "anonymous";
    }

    public final void setPlaybackUrl(@Nullable String str) {
        this.f25370i = str;
    }

    public final void setPreviousPosition(int i10) {
        this.f25371j = i10;
    }

    public final void setViewContainer(@Nullable ViewGroup viewGroup) {
        this.f25364c = viewGroup;
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void start() {
        if (this.f25366e) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f25362a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("MediaRenderView", "Start media playback");
        }
        super.start();
    }

    public final void a() {
        setVideoPath(this.f25370i);
        setOnCompletionListener(this);
        setOnPreparedListener(this);
        setOnErrorListener(this);
        if (this.f25363b == null) {
            C3175t7 c3175t7 = new C3175t7(getContext());
            this.f25363b = c3175t7;
            c3175t7.setAnchorView(this);
            setMediaController(this.f25363b);
        }
    }

    public final void setAudioMuted(boolean z10) {
    }

    public final void setPlayerPrepared(boolean z10) {
    }
}
