package com.inmobi.media;

import android.content.Context;
import android.media.AudioManager;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C3151s;
import com.inmobi.media.InterfaceC3269z5;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.s  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3151s {

    /* renamed from: b  reason: collision with root package name */
    public static AudioManager f25255b;

    /* renamed from: c  reason: collision with root package name */
    public static C3072n f25256c;

    /* renamed from: f  reason: collision with root package name */
    public static ScheduledFuture f25259f;

    /* renamed from: h  reason: collision with root package name */
    public static C3120q f25261h;

    /* renamed from: a  reason: collision with root package name */
    public static final C3151s f25254a = new C3151s();

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicBoolean f25257d = new AtomicBoolean(false);

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicReference f25258e = new AtomicReference(null);

    /* renamed from: g  reason: collision with root package name */
    public static final Set f25260g = Collections.synchronizedSet(new LinkedHashSet());

    public static void a(final InterfaceC3269z5 interfaceC3269z5, final Ib listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.g6
            @Override // java.lang.Runnable
            public final void run() {
                C3151s.b(InterfaceC3269z5.this, listener);
            }
        });
    }

    public static final void b(InterfaceC3269z5 interfaceC3269z5, Ib listener) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("AdAudioTracker", "Adding audio volume change listener. Existing listeners - " + f25260g.size());
        }
        Set<WeakReference> listeners = f25260g;
        Intrinsics.checkNotNullExpressionValue(listeners, "listeners");
        for (WeakReference weakReference : listeners) {
            if (weakReference.get() == null) {
                f25260g.remove(weakReference);
            }
        }
        Set set = f25260g;
        boolean isEmpty = set.isEmpty();
        set.add(new WeakReference(listener));
        Float f10 = (Float) f25258e.get();
        Float valueOf = f10 != null ? Float.valueOf(B2.a(f10.floatValue() * 100.0f)) : null;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = listener.f23743a;
        gestureDetector$OnGestureListenerC2941ec.c("window.mraidview.broadcastEvent('audioVolumeChange', " + valueOf + ");");
        if (!isEmpty) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("AdAudioTracker", "Resuming audio volume change listener");
                return;
            }
            return;
        }
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("AdAudioTracker", "Starting audio volume change listener");
        }
        Context d10 = Uc.d();
        if (d10 == null) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("AdAudioTracker", "Context is null. Cannot start audio volume tracking");
            }
            a((Float) null);
            return;
        }
        LinkedHashMap linkedHashMap = O2.f23923a;
        Throwable g10 = Result.g(C2.a(new r(interfaceC3269z5, d10, ((AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getMraid3Config().getMuteChangeInterval())));
        if (g10 != null) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("AdAudioTracker", "Error starting audio volume tracking - " + g10.getMessage());
            }
            a((Float) null);
        }
    }

    public static void c(final InterfaceC3269z5 interfaceC3269z5, final Ib listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.j6
            @Override // java.lang.Runnable
            public final void run() {
                C3151s.d(InterfaceC3269z5.this, listener);
            }
        });
    }

    public static final void d(InterfaceC3269z5 interfaceC3269z5, Ib listener) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("AdAudioTracker", "Removing audio volume change listener");
        }
        Set<WeakReference> listeners = f25260g;
        Intrinsics.checkNotNullExpressionValue(listeners, "listeners");
        for (WeakReference weakReference : listeners) {
            if (Intrinsics.areEqual(weakReference.get(), listener)) {
                f25260g.remove(weakReference);
            }
        }
        if (f25260g.isEmpty()) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("AdAudioTracker", "Stopping audio volume change listener");
            }
            Context d10 = Uc.d();
            if (d10 == null) {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).b("AdAudioTracker", "Context is null. Cannot stop audio volume tracking");
                }
                a((Float) null);
            } else if (!f25257d.compareAndSet(true, false)) {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).c("AdAudioTracker", "Audio volume tracking is already stopped");
                }
            } else {
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).c("AdAudioTracker", "Stopping audio volume tracking");
                }
                Throwable g10 = Result.g(C2.a(new C3104p(d10)));
                if (g10 == null || interfaceC3269z5 == null) {
                    return;
                }
                ((A5) interfaceC3269z5).b("AdAudioTracker", "Error cleaning up audio volume tracker - " + g10.getMessage());
            }
        }
    }

    public static final void e() {
        if (f25257d.get() && b()) {
            a(Float.valueOf(0.0f));
        }
    }

    public static void a(long j10) {
        f25259f = ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).scheduleWithFixedDelay(new Runnable() { // from class: ub.h6
            @Override // java.lang.Runnable
            public final void run() {
                C3151s.e();
            }
        }, 0L, j10, TimeUnit.MILLISECONDS);
    }

    public static void c() {
        if (!L3.f23796a.H()) {
            a((Float) null);
        } else {
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.i6
                @Override // java.lang.Runnable
                public final void run() {
                    C3151s.d();
                }
            });
        }
    }

    public final synchronized float a() {
        float f10;
        try {
            boolean b10 = b();
            AudioManager audioManager = f25255b;
            int streamVolume = audioManager != null ? audioManager.getStreamVolume(3) : 0;
            AudioManager audioManager2 = f25255b;
            int streamMaxVolume = audioManager2 != null ? audioManager2.getStreamMaxVolume(3) : 0;
            if (!b10 && streamVolume >= 0) {
                if (streamVolume > streamMaxVolume) {
                    f10 = 1.0f;
                } else if (streamMaxVolume != 0) {
                    f10 = streamVolume / streamMaxVolume;
                }
            }
            f10 = 0.0f;
        } catch (Throwable th2) {
            throw th2;
        }
        return f10;
    }

    public static void a(Float f10) {
        if (Intrinsics.areEqual((Float) f25258e.getAndSet(f10), f10)) {
            return;
        }
        for (WeakReference weakReference : f25260g) {
            Ib ib2 = (Ib) weakReference.get();
            if (ib2 != null) {
                Float valueOf = f10 != null ? Float.valueOf(B2.a(f10.floatValue() * 100.0f)) : null;
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = ib2.f23743a;
                gestureDetector$OnGestureListenerC2941ec.c("window.mraidview.broadcastEvent('audioVolumeChange', " + valueOf + ");");
            }
        }
    }

    public static final void d() {
        a(Float.valueOf(f25254a.a()));
    }

    public static boolean b() {
        if (L3.f23796a.H()) {
            AudioManager audioManager = f25255b;
            if (audioManager != null && audioManager.isStreamMute(3)) {
                return true;
            }
        } else {
            AudioManager audioManager2 = f25255b;
            if (audioManager2 != null && audioManager2.getStreamVolume(3) == 0) {
                return true;
            }
        }
        return Uc.o();
    }
}
