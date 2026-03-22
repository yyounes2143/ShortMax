package com.inmobi.media;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.inmobi.media.C2953f8;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.f8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2953f8 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f24736a;

    /* renamed from: b  reason: collision with root package name */
    public final C3050l9 f24737b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f24738c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f24739d;

    /* renamed from: e  reason: collision with root package name */
    public final AudioAttributes f24740e;

    /* renamed from: f  reason: collision with root package name */
    public AudioFocusRequest f24741f;

    /* renamed from: g  reason: collision with root package name */
    public AudioManager.OnAudioFocusChangeListener f24742g;

    public C2953f8(Context context, C3050l9 audioFocusListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(audioFocusListener, "audioFocusListener");
        this.f24736a = context;
        this.f24737b = audioFocusListener;
        this.f24739d = new Object();
        AudioAttributes build = new AudioAttributes.Builder().setUsage(1).setContentType(2).setLegacyStreamType(3).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.f24740e = build;
    }

    public final void a() {
        synchronized (this.f24739d) {
            try {
                Object systemService = this.f24736a.getSystemService("audio");
                AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
                if (audioManager != null) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        AudioFocusRequest audioFocusRequest = this.f24741f;
                        if (audioFocusRequest != null) {
                            audioManager.abandonAudioFocusRequest(audioFocusRequest);
                        }
                    } else {
                        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.f24742g;
                        if (onAudioFocusChangeListener != null) {
                            audioManager.abandonAudioFocus(onAudioFocusChangeListener);
                        }
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final AudioManager.OnAudioFocusChangeListener b() {
        return new AudioManager.OnAudioFocusChangeListener() { // from class: ub.j4
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i10) {
                C2953f8.a(C2953f8.this, i10);
            }
        };
    }

    public final void c() {
        AudioManager audioManager;
        int i10;
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder onAudioFocusChangeListener;
        AudioFocusRequest build;
        synchronized (this.f24739d) {
            try {
                Object systemService = this.f24736a.getSystemService("audio");
                if (systemService instanceof AudioManager) {
                    audioManager = (AudioManager) systemService;
                } else {
                    audioManager = null;
                }
                if (audioManager != null) {
                    if (this.f24742g == null) {
                        this.f24742g = b();
                    }
                    if (Build.VERSION.SDK_INT >= 26) {
                        if (this.f24741f == null) {
                            o5.c.a();
                            audioAttributes = o5.a.a(2).setAudioAttributes(this.f24740e);
                            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener2 = this.f24742g;
                            Intrinsics.checkNotNull(onAudioFocusChangeListener2);
                            onAudioFocusChangeListener = audioAttributes.setOnAudioFocusChangeListener(onAudioFocusChangeListener2, new Handler(Looper.getMainLooper()));
                            build = onAudioFocusChangeListener.build();
                            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                            this.f24741f = build;
                        }
                        AudioFocusRequest audioFocusRequest = this.f24741f;
                        Intrinsics.checkNotNull(audioFocusRequest);
                        i10 = audioManager.requestAudioFocus(audioFocusRequest);
                    } else {
                        i10 = audioManager.requestAudioFocus(this.f24742g, 3, 2);
                    }
                } else {
                    i10 = 0;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i10 == 1) {
            C3050l9 c3050l9 = this.f24737b;
            c3050l9.i();
            C2938e9 c2938e9 = c3050l9.f24975n;
            if (c2938e9 != null && c2938e9.f24651d != null) {
                c2938e9.f24657j = false;
                c2938e9.f24656i.removeView(c2938e9.f24654g);
                c2938e9.f24656i.removeView(c2938e9.f24653f);
                c2938e9.a();
                return;
            }
            return;
        }
        C3050l9 c3050l92 = this.f24737b;
        c3050l92.h();
        C2938e9 c2938e92 = c3050l92.f24975n;
        if (c2938e92 != null && c2938e92.f24651d != null) {
            c2938e92.f24657j = true;
            c2938e92.f24656i.removeView(c2938e92.f24653f);
            c2938e92.f24656i.removeView(c2938e92.f24654g);
            c2938e92.b();
        }
    }

    public static final void a(C2953f8 this$0, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i10 == -2) {
            synchronized (this$0.f24739d) {
                this$0.f24738c = true;
                Unit unit = Unit.f60915a;
            }
            C3050l9 c3050l9 = this$0.f24737b;
            c3050l9.h();
            C2938e9 c2938e9 = c3050l9.f24975n;
            if (c2938e9 == null || c2938e9.f24651d == null) {
                return;
            }
            c2938e9.f24657j = true;
            c2938e9.f24656i.removeView(c2938e9.f24653f);
            c2938e9.f24656i.removeView(c2938e9.f24654g);
            c2938e9.b();
        } else if (i10 == -1) {
            synchronized (this$0.f24739d) {
                this$0.f24738c = false;
                Unit unit2 = Unit.f60915a;
            }
            C3050l9 c3050l92 = this$0.f24737b;
            c3050l92.h();
            C2938e9 c2938e92 = c3050l92.f24975n;
            if (c2938e92 == null || c2938e92.f24651d == null) {
                return;
            }
            c2938e92.f24657j = true;
            c2938e92.f24656i.removeView(c2938e92.f24653f);
            c2938e92.f24656i.removeView(c2938e92.f24654g);
            c2938e92.b();
        } else if (i10 != 1) {
        } else {
            synchronized (this$0.f24739d) {
                try {
                    if (this$0.f24738c) {
                        C3050l9 c3050l93 = this$0.f24737b;
                        if (c3050l93.isPlaying()) {
                            c3050l93.i();
                            C2938e9 c2938e93 = c3050l93.f24975n;
                            if (c2938e93 != null && c2938e93.f24651d != null) {
                                c2938e93.f24657j = false;
                                c2938e93.f24656i.removeView(c2938e93.f24654g);
                                c2938e93.f24656i.removeView(c2938e93.f24653f);
                                c2938e93.a();
                            }
                        }
                    }
                    this$0.f24738c = false;
                    Unit unit3 = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
