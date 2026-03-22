package com.inmobi.media;

import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.C3043l2;
import com.inmobi.media.C3234x2;
import com.ss.ttm.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.x2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3234x2 implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public static final C3234x2 f25412a = new C3234x2();

    /* renamed from: b  reason: collision with root package name */
    public static ThreadPoolExecutor f25413b;

    /* renamed from: c  reason: collision with root package name */
    public static HandlerC3107p2 f25414c;

    /* renamed from: d  reason: collision with root package name */
    public static HandlerThread f25415d;

    /* renamed from: e  reason: collision with root package name */
    public static List f25416e;

    /* renamed from: f  reason: collision with root package name */
    public static final AtomicBoolean f25417f;

    /* renamed from: g  reason: collision with root package name */
    public static AdConfig.ImaiConfig f25418g;

    /* renamed from: h  reason: collision with root package name */
    public static final AtomicBoolean f25419h;

    /* renamed from: i  reason: collision with root package name */
    public static final Object f25420i;

    /* renamed from: j  reason: collision with root package name */
    public static final LinkedHashMap f25421j;

    /* renamed from: k  reason: collision with root package name */
    public static final C3186u2 f25422k;

    /* renamed from: l  reason: collision with root package name */
    public static final ms.i f25423l;

    /* renamed from: m  reason: collision with root package name */
    public static final C3218w2 f25424m;

    static {
        String TAG = C3234x2.class.getSimpleName();
        f25416e = new ArrayList();
        f25417f = new AtomicBoolean(false);
        f25419h = new AtomicBoolean(true);
        f25420i = new Object();
        f25421j = new LinkedHashMap();
        f25422k = C3186u2.f25316a;
        f25423l = kotlin.c.b(C3202v2.f25350a);
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        Uc.a(new Runnable() { // from class: ub.i8
            @Override // java.lang.Runnable
            public final void run() {
                C3234x2.a();
            }
        });
        f25424m = new C3218w2();
    }

    public static final HashMap a(C3234x2 c3234x2, C3043l2 c3043l2) {
        c3234x2.getClass();
        HashMap hashMap = new HashMap();
        try {
            AdConfig.ImaiConfig imaiConfig = f25418g;
            int maxRetries = ((imaiConfig != null ? imaiConfig.getMaxRetries() : 0) - c3043l2.f24948f) + 1;
            if (maxRetries > 0) {
                hashMap.put("X-im-retry-count", String.valueOf(maxRetries));
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("x2", "TAG");
        }
        return hashMap;
    }

    public static final /* synthetic */ String f() {
        return "x2";
    }

    public static void i() {
        try {
            AtomicBoolean atomicBoolean = f25417f;
            atomicBoolean.set(false);
            synchronized (f25420i) {
                if (!atomicBoolean.get()) {
                    HandlerThread handlerThread = f25415d;
                    if (handlerThread != null) {
                        handlerThread.getLooper().quit();
                        handlerThread.interrupt();
                    }
                    f25415d = null;
                    f25414c = null;
                }
                Unit unit = Unit.f60915a;
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("x2", "TAG");
        }
    }

    public final boolean g() {
        return ((Boolean) f25423l.getValue()).booleanValue();
    }

    public final void h() {
        HandlerThread handlerThread;
        try {
            if (T9.a(false) != null) {
                return;
            }
            synchronized (f25420i) {
                AtomicBoolean atomicBoolean = f25417f;
                if (atomicBoolean.compareAndSet(false, true)) {
                    Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                    if (f25415d == null) {
                        HandlerThread handlerThread2 = new HandlerThread("pingHandlerThread");
                        f25415d = handlerThread2;
                        D4.a(handlerThread2, "pingHandlerThread");
                    }
                    if (f25414c == null && (handlerThread = f25415d) != null) {
                        Looper looper = handlerThread.getLooper();
                        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
                        f25414c = new HandlerC3107p2(looper);
                    }
                    C3059m2 b10 = Nc.b();
                    if (b10 != null && T1.a(b10, null, null, 63) != 0) {
                        Message obtain = Message.obtain();
                        obtain.what = 1;
                        HandlerC3107p2 handlerC3107p2 = f25414c;
                        if (handlerC3107p2 != null) {
                            handlerC3107p2.sendMessage(obtain);
                        }
                    }
                    Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                    atomicBoolean.set(false);
                    i();
                }
                Unit unit = Unit.f60915a;
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("x2", "TAG");
        }
    }

    public static final void b(C3234x2 c3234x2, C3043l2 c3043l2) {
        c3234x2.getClass();
        LinkedHashMap linkedHashMap = f25421j;
        Z1 z12 = (Z1) linkedHashMap.get(Integer.valueOf(c3043l2.f24943a));
        if (z12 != null) {
            z12.a(c3043l2);
        }
        linkedHashMap.remove(Integer.valueOf(c3043l2.f24943a));
    }

    public static final void c(C3234x2 c3234x2, C3043l2 click) {
        c3234x2.getClass();
        int i10 = click.f24948f;
        if (i10 > 0) {
            click.f24948f = i10 - 1;
            click.f24949g = System.currentTimeMillis();
            C3059m2 b10 = Nc.b();
            b10.getClass();
            Intrinsics.checkNotNullParameter(click, "click");
            b10.b(click, "id = ?", new String[]{String.valueOf(click.f24943a)});
        }
    }

    public static final /* synthetic */ void a(C3234x2 c3234x2) {
        c3234x2.getClass();
        i();
    }

    public static /* synthetic */ void b(C3234x2 c3234x2, String str, boolean z10, Z1 z12, InterfaceC3269z5 interfaceC3269z5, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z12 = null;
        }
        c3234x2.b(str, z10, z12, interfaceC3269z5);
    }

    public static final void a() {
        C3234x2 c3234x2 = f25412a;
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            Intrinsics.checkNotNullExpressionValue("x2", "TAG");
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 5L, timeUnit, linkedBlockingQueue, new K5("x2"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            f25413b = threadPoolExecutor;
            HandlerThread handlerThread = new HandlerThread("pingHandlerThread");
            f25415d = handlerThread;
            D4.a(handlerThread, "pingHandlerThread");
            HandlerThread handlerThread2 = f25415d;
            Intrinsics.checkNotNull(handlerThread2);
            Looper looper = handlerThread2.getLooper();
            Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
            f25414c = new HandlerC3107p2(looper);
            LinkedHashMap linkedHashMap = O2.f23923a;
            Config a10 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), c3234x2);
            Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
            f25418g = ((AdConfig) a10).getImaiConfig();
            Uc.f().a(new int[]{10, 11, 2, 1}, f25422k);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("x2", "TAG");
        }
    }

    public final void b(@NotNull final String url, final boolean z10, @Nullable final Z1 z12, @Nullable final InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(url, "url");
        Ua ua2 = AbstractC3250y2.f25446a;
        AbstractC3250y2.a(new Runnable() { // from class: ub.h8
            @Override // java.lang.Runnable
            public final void run() {
                C3234x2.b(url, z10, interfaceC3269z5, z12);
            }
        }, Ta.f24218b);
    }

    public static final void b(String url, boolean z10, InterfaceC3269z5 interfaceC3269z5, Z1 z12) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f25412a.g()) {
                AdConfig.ImaiConfig imaiConfig = f25418g;
                C3043l2 c3043l2 = new C3043l2(url, null, z10, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY);
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                    ((A5) interfaceC3269z5).a("x2", "Received click (" + url + ") for pinging over HTTP");
                }
                a(c3043l2, z12, interfaceC3269z5);
            }
        } catch (Exception e10) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("x2", rf.a(e10, H6.a("x2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
        }
    }

    public static final void c(String url, boolean z10, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f25412a.g()) {
                AdConfig.ImaiConfig imaiConfig = f25418g;
                C3043l2 c3043l2 = new C3043l2(url, null, z10, true, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY);
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                    ((A5) interfaceC3269z5).c("x2", "Received click (" + url + ") for pinging in WebView");
                }
                a(c3043l2, (Z1) null, interfaceC3269z5);
            }
        } catch (Exception e10) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("x2", rf.a(e10, H6.a("x2", "TAG", "SDK encountered unexpected error in pinging click over WebView; ")));
            }
        }
    }

    public final void b(@NotNull final String url, final boolean z10, @Nullable final InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(url, "url");
        Ua ua2 = AbstractC3250y2.f25446a;
        AbstractC3250y2.a(new Runnable() { // from class: ub.j8
            @Override // java.lang.Runnable
            public final void run() {
                C3234x2.c(url, z10, interfaceC3269z5);
            }
        }, Ta.f24219c);
    }

    @Override // com.inmobi.media.N2
    public void a(@NotNull Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        AdConfig adConfig = config instanceof AdConfig ? (AdConfig) config : null;
        f25418g = adConfig != null ? adConfig.getImaiConfig() : null;
    }

    public final void a(@NotNull String url, boolean z10, @Nullable InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(url, "url");
        a(url, z10, (Z1) null, interfaceC3269z5);
    }

    public static /* synthetic */ void a(C3234x2 c3234x2, String str, boolean z10, Z1 z12, InterfaceC3269z5 interfaceC3269z5, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z12 = null;
        }
        c3234x2.a(str, z10, z12, interfaceC3269z5);
    }

    public final void a(@NotNull final String url, final boolean z10, @Nullable final Z1 z12, @Nullable final InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(url, "url");
        Ua ua2 = AbstractC3250y2.f25446a;
        AbstractC3250y2.a(new Runnable() { // from class: ub.f8
            @Override // java.lang.Runnable
            public final void run() {
                C3234x2.a(url, z10, interfaceC3269z5, z12);
            }
        }, Ta.f24219c);
    }

    public static final void a(String url, boolean z10, InterfaceC3269z5 interfaceC3269z5, Z1 z12) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f25412a.g()) {
                AdConfig.ImaiConfig imaiConfig = f25418g;
                C3043l2 c3043l2 = new C3043l2(url, null, z10, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY);
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                    ((A5) interfaceC3269z5).a("x2", "Received click (" + url + ") for pinging over HTTP");
                }
                a(c3043l2, z12, interfaceC3269z5);
            }
        } catch (Exception e10) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("x2", rf.a(e10, H6.a("x2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
        }
    }

    public static /* synthetic */ void a(C3234x2 c3234x2, String str, Map map, boolean z10, Z1 z12, Ta ta2, InterfaceC3269z5 interfaceC3269z5, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z12 = null;
        }
        c3234x2.a(str, map, z10, z12, ta2, interfaceC3269z5);
    }

    public final void a(@NotNull final String url, @Nullable final Map<String, String> map, final boolean z10, @Nullable final Z1 z12, @NotNull Ta priority, @Nullable final InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Ua ua2 = AbstractC3250y2.f25446a;
        AbstractC3250y2.a(new Runnable() { // from class: ub.g8
            @Override // java.lang.Runnable
            public final void run() {
                C3234x2.a(url, map, z10, interfaceC3269z5, z12);
            }
        }, priority);
    }

    public static final void a(String url, Map map, boolean z10, InterfaceC3269z5 interfaceC3269z5, Z1 z12) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f25412a.g()) {
                AdConfig.ImaiConfig imaiConfig = f25418g;
                C3043l2 c3043l2 = new C3043l2(url, map, z10, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT);
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                    ((A5) interfaceC3269z5).a("x2", "Received click (" + url + ") for pinging over HTTP");
                }
                a(c3043l2, z12, interfaceC3269z5);
            }
        } catch (Exception e10) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("x2", rf.a(e10, H6.a("x2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public static void a(final C3043l2 click, Z1 z12, final InterfaceC3269z5 interfaceC3269z5) {
        HandlerC3107p2 handlerC3107p2 = f25414c;
        if (handlerC3107p2 != null) {
            handlerC3107p2.f25130a = interfaceC3269z5;
        }
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("x2", "TAG");
            ((A5) interfaceC3269z5).c("x2", "record Click");
        }
        AdConfig.ImaiConfig imaiConfig = f25418g;
        if (imaiConfig != null) {
            C3059m2 b10 = Nc.b();
            int maxDbEvents = imaiConfig.getMaxDbEvents();
            synchronized (b10) {
                try {
                    Intrinsics.checkNotNullParameter(click, "click");
                    if (T1.a(b10, null, null, 63) >= maxDbEvents) {
                        Intrinsics.checkNotNullExpressionValue("m2", "TAG");
                        C3043l2 click2 = (C3043l2) b10.b("ts= (SELECT MIN(ts) FROM click LIMIT 1)", null);
                        if (click2 != null) {
                            Intrinsics.checkNotNullExpressionValue("m2", "TAG");
                            f25412a.a(click, "DB_OVERLOAD");
                            Intrinsics.checkNotNullParameter(click2, "click");
                            b10.a("id = ?", new String[]{String.valueOf(click2.f24943a)});
                        }
                    }
                    b10.a(click);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z12 != null) {
                f25421j.put(Integer.valueOf(click.f24943a), z12);
            }
        }
        if (T9.a(false) != null) {
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                ((A5) interfaceC3269z5).b("x2", "No network available. Saving click for later processing ...");
            }
            f25417f.set(false);
            i();
            return;
        }
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("x2", "TAG", "submit click - ");
            a10.append(click.f24943a);
            ((A5) interfaceC3269z5).a("x2", a10.toString());
        }
        ThreadPoolExecutor threadPoolExecutor = f25413b;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.submit(new Runnable() { // from class: ub.k8
                @Override // java.lang.Runnable
                public final void run() {
                    C3234x2.a(C3043l2.this, interfaceC3269z5);
                }
            });
        }
    }

    public static final void a(C3043l2 click, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(click, "$click");
        SystemClock.elapsedRealtime();
        if (click.f24947e) {
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("x2", "TAG");
                ((A5) interfaceC3269z5).c("x2", "ping in web view");
            }
            new C3138r2(f25424m, interfaceC3269z5).a(click);
            return;
        }
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("x2", "TAG");
            ((A5) interfaceC3269z5).c("x2", "ping in http executor");
        }
        new C3154s2(f25424m, interfaceC3269z5).a(click);
    }

    public final void a(@NotNull C3043l2 click, @NotNull String error) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(error, "error");
        LinkedHashMap linkedHashMap = f25421j;
        Z1 z12 = (Z1) linkedHashMap.get(Integer.valueOf(click.f24943a));
        if (z12 != null) {
            z12.a(click, error);
        }
        linkedHashMap.remove(Integer.valueOf(click.f24943a));
    }
}
