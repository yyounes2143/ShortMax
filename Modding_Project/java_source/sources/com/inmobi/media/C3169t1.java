package com.inmobi.media;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.C3024k;
import com.inmobi.media.C3169t1;
import com.squareup.picasso.Callback;
import com.squareup.picasso.RequestCreator;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.t1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3169t1 implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public static final C3169t1 f25278a;

    /* renamed from: b  reason: collision with root package name */
    public static final Object f25279b;

    /* renamed from: c  reason: collision with root package name */
    public static AdConfig.AssetCacheConfig f25280c;

    /* renamed from: d  reason: collision with root package name */
    public static AdConfig.VastVideoConfig f25281d;

    /* renamed from: e  reason: collision with root package name */
    public static final ExecutorService f25282e;

    /* renamed from: f  reason: collision with root package name */
    public static final ThreadPoolExecutor f25283f;

    /* renamed from: g  reason: collision with root package name */
    public static HandlerC3106p1 f25284g;

    /* renamed from: h  reason: collision with root package name */
    public static HandlerThread f25285h;

    /* renamed from: i  reason: collision with root package name */
    public static final AtomicBoolean f25286i;

    /* renamed from: j  reason: collision with root package name */
    public static final AtomicBoolean f25287j;

    /* renamed from: k  reason: collision with root package name */
    public static final ConcurrentHashMap f25288k;

    /* renamed from: l  reason: collision with root package name */
    public static final ArrayList f25289l;

    /* renamed from: m  reason: collision with root package name */
    public static final AtomicBoolean f25290m;

    /* renamed from: n  reason: collision with root package name */
    public static final C3137r1 f25291n;

    /* renamed from: o  reason: collision with root package name */
    public static final C3153s1 f25292o;

    static {
        C3169t1 c3169t1 = new C3169t1();
        f25278a = c3169t1;
        String simpleName = C3169t1.class.getSimpleName();
        f25279b = new Object();
        f25286i = new AtomicBoolean(false);
        f25287j = new AtomicBoolean(false);
        f25289l = new ArrayList();
        f25290m = new AtomicBoolean(true);
        f25291n = C3137r1.f25221a;
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), c3169t1);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        AdConfig adConfig = (AdConfig) a10;
        f25280c = adConfig.getAssetCacheConfig();
        f25281d = adConfig.getVastVideo();
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool(new K5(simpleName.concat("-AP")));
        Intrinsics.checkNotNullExpressionValue(newCachedThreadPool, "newCachedThreadPool(...)");
        f25282e = newCachedThreadPool;
        int i10 = AbstractC3268z4.f25479a;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 5L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new K5(simpleName.concat("-AD")));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f25283f = threadPoolExecutor;
        HandlerThread handlerThread = new HandlerThread("assetFetcher");
        f25285h = handlerThread;
        D4.a(handlerThread, "assetFetcher");
        HandlerThread handlerThread2 = f25285h;
        Intrinsics.checkNotNull(handlerThread2);
        Looper looper = handlerThread2.getLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
        f25284g = new HandlerC3106p1(looper, c3169t1);
        f25288k = new ConcurrentHashMap(2, 0.9f, 2);
        f25292o = new C3153s1();
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            AdConfig adConfig = (AdConfig) config;
            f25280c = adConfig.getAssetCacheConfig();
            f25281d = adConfig.getVastVideo();
            return;
        }
        f25280c = null;
        f25281d = null;
    }

    public final void b(C3008j c3008j) {
        String locationOnDisk = c3008j.f24870c;
        AdConfig.AssetCacheConfig assetCacheConfig = f25280c;
        if (locationOnDisk == null || locationOnDisk.length() == 0 || assetCacheConfig == null) {
            return;
        }
        File file = new File(locationOnDisk);
        long min = Math.min((c3008j.f24874g - c3008j.f24872e) + System.currentTimeMillis(), (assetCacheConfig.getTimeToLive() * 1000) + System.currentTimeMillis());
        int nextInt = new Random().nextInt() & Integer.MAX_VALUE;
        long currentTimeMillis = System.currentTimeMillis();
        long currentTimeMillis2 = System.currentTimeMillis();
        String url = c3008j.f24869b;
        int maxRetries = assetCacheConfig.getMaxRetries();
        long j10 = c3008j.f24875h;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        if (url == null) {
            url = "";
        }
        C3008j c3008j2 = new C3008j(nextInt, url, locationOnDisk, maxRetries, currentTimeMillis, currentTimeMillis2, min, j10);
        c3008j2.f24872e = System.currentTimeMillis();
        Nc.a().a(c3008j2);
        long j11 = c3008j.f24872e;
        c3008j2.f24877j = AbstractC3040l.a(c3008j, file, j11, j11);
        c3008j2.f24876i = true;
        a(c3008j2, (byte) -1);
    }

    public final synchronized void c(String str) {
        int size = f25289l.size();
        for (int i10 = 0; i10 < size; i10++) {
            C3024k c3024k = (C3024k) f25289l.get(i10);
            Iterator it = c3024k.f24911h.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(((C3243xb) it.next()).f25434b, str)) {
                        c3024k.f24905b++;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
    }

    public final synchronized void d(String str) {
        int size = f25289l.size();
        for (int i10 = 0; i10 < size; i10++) {
            C3024k c3024k = (C3024k) f25289l.get(i10);
            Set set = c3024k.f24911h;
            HashSet hashSet = c3024k.f24908e;
            Iterator it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (Intrinsics.areEqual(((C3243xb) it.next()).f25434b, str)) {
                    if (!hashSet.contains(str)) {
                        c3024k.f24908e.add(str);
                        c3024k.f24904a++;
                    }
                }
            }
        }
    }

    public final synchronized void e() {
        try {
            ArrayList arrayList = new ArrayList();
            int size = f25289l.size();
            for (int i10 = 0; i10 < size; i10++) {
                C3024k c3024k = (C3024k) f25289l.get(i10);
                if (c3024k.f24904a == c3024k.f24911h.size()) {
                    try {
                        InterfaceC3185u1 interfaceC3185u1 = (InterfaceC3185u1) c3024k.f24907d.get();
                        if (interfaceC3185u1 != null) {
                            interfaceC3185u1.a(c3024k);
                        }
                        arrayList.add(c3024k);
                    } catch (Exception e10) {
                        Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                        S5 s52 = S5.f24132a;
                        S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                    }
                }
            }
            b(arrayList);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void a(C3008j c3008j) {
        int size = f25289l.size();
        for (int i10 = 0; i10 < size; i10++) {
            C3024k c3024k = (C3024k) f25289l.get(i10);
            Iterator it = c3024k.f24911h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (Intrinsics.areEqual(((C3243xb) it.next()).f25434b, c3008j.f24869b)) {
                    if (!c3024k.f24910g.contains(c3008j)) {
                        c3024k.f24910g.add(c3008j);
                    }
                }
            }
        }
    }

    public final void c() {
        if (f25290m.get()) {
            f25287j.set(false);
            if (T9.a(false) != null) {
                H7 f10 = Uc.f();
                C3137r1 c3137r1 = f25291n;
                f10.a(c3137r1);
                Uc.f().a(new int[]{10, 2, 1}, c3137r1);
                return;
            }
            synchronized (f25279b) {
                try {
                    if (f25286i.compareAndSet(false, true)) {
                        if (f25285h == null) {
                            HandlerThread handlerThread = new HandlerThread("assetFetcher");
                            f25285h = handlerThread;
                            D4.a(handlerThread, "assetFetcher");
                        }
                        if (f25284g == null) {
                            HandlerThread handlerThread2 = f25285h;
                            Intrinsics.checkNotNull(handlerThread2);
                            Looper looper = handlerThread2.getLooper();
                            Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
                            f25284g = new HandlerC3106p1(looper, this);
                        }
                        if (Nc.a().b().isEmpty()) {
                            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                            d();
                        } else {
                            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                            H7 f11 = Uc.f();
                            C3137r1 c3137r12 = f25291n;
                            f11.a(c3137r12);
                            Uc.f().a(new int[]{10, 2, 1}, c3137r12);
                            HandlerC3106p1 handlerC3106p1 = f25284g;
                            Intrinsics.checkNotNull(handlerC3106p1);
                            handlerC3106p1.sendEmptyMessage(1);
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void d() {
        if (f25290m.get()) {
            synchronized (f25279b) {
                try {
                    f25286i.set(false);
                    f25288k.clear();
                    HandlerThread handlerThread = f25285h;
                    if (handlerThread != null) {
                        handlerThread.getLooper().quit();
                        handlerThread.interrupt();
                        f25285h = null;
                        f25284g = null;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x012d, code lost:
        r19.f24879l = 4;
        r19.f24871d = 0;
        com.inmobi.media.C3056m.a(r6, r3, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0137, code lost:
        r18.f25014a.a(r19);
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0147, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0149, code lost:
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x014e, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0150, code lost:
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0155, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0157, code lost:
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x015c, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x015e, code lost:
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0163, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0165, code lost:
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x016a, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x016c, code lost:
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0179, code lost:
        r1.flush();
        r3.disconnect();
        r7 = android.os.SystemClock.elapsedRealtime();
        r12 = new com.inmobi.media.P9();
        r12.f23984f = r3.getHeaderFields();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x018e, code lost:
        r13 = r1;
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0198, code lost:
        r19.f24877j = com.inmobi.media.AbstractC3040l.a(r19, r6, r14, r7);
        r19.f24878k = r7 - r14;
        r1 = r9.f25014a;
        r2 = r6.getAbsolutePath();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "getAbsolutePath(...)");
        r1.a(r12, r2, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b4, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b5, code lost:
        r1 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b6, code lost:
        r2 = r16;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01ba, code lost:
        r2 = r13;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01bd, code lost:
        r2 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01c0, code lost:
        r2 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01c3, code lost:
        r2 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c6, code lost:
        r2 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01c9, code lost:
        r2 = r13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.inmobi.media.C3008j r19, com.inmobi.media.InterfaceC3074n1 r20) {
        /*
            Method dump skipped, instructions count: 629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3169t1.a(com.inmobi.media.j, com.inmobi.media.n1):boolean");
    }

    public final synchronized void b(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            f25289l.remove(arrayList.get(i10));
        }
    }

    public static void b() {
        ArrayList a10 = Nc.a().a();
        long j10 = 0;
        if (!a10.isEmpty()) {
            Iterator it = a10.iterator();
            while (it.hasNext()) {
                String str = ((C3008j) it.next()).f24870c;
                if (str != null) {
                    j10 += new File(str).length();
                }
            }
        }
        AdConfig.AssetCacheConfig assetCacheConfig = f25280c;
        Unit unit = null;
        if (assetCacheConfig != null) {
            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
            assetCacheConfig.getMaxCacheSize();
            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
            if (j10 > assetCacheConfig.getMaxCacheSize()) {
                C3058m1 a11 = Nc.a();
                a11.getClass();
                ArrayList a12 = T1.a(a11, null, null, null, null, "ts ASC ", 1, 15);
                C3008j asset = a12.isEmpty() ? null : (C3008j) a12.get(0);
                if (asset != null) {
                    if (f25290m.get()) {
                        C3058m1 a13 = Nc.a();
                        a13.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        a13.a("id = ?", new String[]{String.valueOf(asset.f24868a)});
                        String str2 = asset.f24870c;
                        if (str2 != null) {
                            File file = new File(str2);
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    }
                    b();
                }
            }
            unit = Unit.f60915a;
        }
        if (unit == null) {
            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
        }
    }

    public static final void b(C3024k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "$assetBatch");
        synchronized (f25278a) {
            ArrayList arrayList = f25289l;
            if (!arrayList.contains(assetBatch)) {
                arrayList.add(assetBatch);
            }
        }
        Intrinsics.checkNotNullExpressionValue("t1", "TAG");
        assetBatch.f24911h.size();
        for (C3243xb c3243xb : assetBatch.f24911h) {
            String str = c3243xb.f25434b;
            C3169t1 c3169t1 = f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
            C3008j a10 = Nc.a().a(str);
            if (a10 != null && a10.a()) {
                Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                c3169t1.b(a10);
            } else {
                a(str);
            }
        }
    }

    public static final void b(C3024k assetBatch, String adType) {
        Intrinsics.checkNotNullParameter(assetBatch, "$assetBatch");
        Intrinsics.checkNotNullParameter(adType, "$adType");
        synchronized (f25278a) {
            ArrayList arrayList = f25289l;
            if (!arrayList.contains(assetBatch)) {
                arrayList.add(assetBatch);
            }
        }
        Intrinsics.checkNotNullExpressionValue("t1", "TAG");
        assetBatch.f24911h.size();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (C3243xb c3243xb : assetBatch.f24911h) {
            String str = c3243xb.f25434b;
            int length = str.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            if (str.subSequence(i10, length + 1).toString().length() > 0 && c3243xb.f25433a == 2) {
                arrayList2.add(c3243xb.f25434b);
            } else {
                arrayList3.add(c3243xb.f25434b);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(arrayList2.size());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            try {
                Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Context d10 = Uc.d();
                if (d10 != null) {
                    C3258ya c3258ya = C3258ya.f25463a;
                    RequestCreator load = c3258ya.a(d10).load(str2);
                    Object a10 = c3258ya.a(new C3122q1(countDownLatch, str2, elapsedRealtime, adType));
                    load.fetch(a10 instanceof Callback ? (Callback) a10 : null);
                }
            } catch (Exception unused) {
                countDownLatch.countDown();
            }
        }
        try {
            countDownLatch.await();
            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
        } catch (InterruptedException unused2) {
        }
        C3169t1 c3169t1 = f25278a;
        c3169t1.e();
        c3169t1.a((byte) 0);
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            String str3 = (String) it2.next();
            C3169t1 c3169t12 = f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "TAG");
            C3008j a11 = Nc.a().a(str3);
            if (a11 != null && a11.a()) {
                Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                c3169t12.b(a11);
            } else {
                a(str3);
            }
        }
    }

    public final synchronized void a(C3008j c3008j, byte b10) {
        a(c3008j);
        f25288k.remove(c3008j.f24869b);
        if (b10 == -1) {
            d(c3008j.f24869b);
            e();
            return;
        }
        c(c3008j.f24869b);
        a(b10);
    }

    public static final void b(String remoteUrl) {
        Intrinsics.checkNotNullParameter(remoteUrl, "$remoteUrl");
        C3008j a10 = Nc.a().a(remoteUrl);
        if (a10 != null) {
            if (a10.a()) {
                f25278a.b(a10);
            } else if (a(a10, f25292o)) {
                Intrinsics.checkNotNullExpressionValue("t1", "TAG");
            } else {
                Intrinsics.checkNotNullExpressionValue("t1", "TAG");
            }
        }
    }

    public final synchronized void a(byte b10) {
        try {
            ArrayList arrayList = new ArrayList();
            int size = f25289l.size();
            for (int i10 = 0; i10 < size; i10++) {
                C3024k c3024k = (C3024k) f25289l.get(i10);
                if (c3024k.f24905b > 0) {
                    try {
                        InterfaceC3185u1 interfaceC3185u1 = (InterfaceC3185u1) c3024k.f24907d.get();
                        if (interfaceC3185u1 != null) {
                            interfaceC3185u1.a(c3024k, b10);
                        }
                        arrayList.add(c3024k);
                    } catch (Exception e10) {
                        Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                        S5 s52 = S5.f24132a;
                        S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                    }
                }
            }
            b(arrayList);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static void a() {
        if (f25290m.get()) {
            synchronized (f25279b) {
                try {
                    ArrayList a10 = Nc.a().a();
                    if (a10.isEmpty()) {
                        return;
                    }
                    Iterator it = a10.iterator();
                    while (it.hasNext()) {
                        C3008j asset = (C3008j) it.next();
                        asset.getClass();
                        if (System.currentTimeMillis() > asset.f24874g && f25290m.get()) {
                            C3058m1 a11 = Nc.a();
                            a11.getClass();
                            Intrinsics.checkNotNullParameter(asset, "asset");
                            a11.a("id = ?", new String[]{String.valueOf(asset.f24868a)});
                            String str = asset.f24870c;
                            if (str != null) {
                                File file = new File(str);
                                if (file.exists()) {
                                    file.delete();
                                }
                            }
                        }
                    }
                    b();
                    a(a10);
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void a(ArrayList arrayList) {
        File[] listFiles;
        File b10 = Uc.f24267a.b(Uc.d());
        if (!b10.exists() || (listFiles = b10.listFiles()) == null) {
            return;
        }
        for (File file : listFiles) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(file.getAbsolutePath(), ((C3008j) it.next()).f24870c)) {
                        break;
                    }
                } else {
                    Intrinsics.checkNotNullExpressionValue("t1", "TAG");
                    file.getAbsolutePath();
                    file.delete();
                    break;
                }
            }
        }
    }

    public static void a(final C3024k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (f25290m.get()) {
            f25282e.execute(new Runnable() { // from class: ub.o6
                @Override // java.lang.Runnable
                public final void run() {
                    C3169t1.b(C3024k.this);
                }
            });
        }
    }

    public static void a(final C3024k assetBatch, final String adType) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        Intrinsics.checkNotNullParameter(adType, "adType");
        if (f25290m.get()) {
            f25282e.execute(new Runnable() { // from class: ub.p6
                @Override // java.lang.Runnable
                public final void run() {
                    C3169t1.b(C3024k.this, adType);
                }
            });
        }
    }

    public static void a(final String url) {
        C3008j asset;
        AdConfig.AssetCacheConfig assetCacheConfig = f25280c;
        if (assetCacheConfig != null) {
            int nextInt = new Random().nextInt() & Integer.MAX_VALUE;
            long currentTimeMillis = System.currentTimeMillis();
            long currentTimeMillis2 = System.currentTimeMillis();
            int maxRetries = assetCacheConfig.getMaxRetries();
            long timeToLive = assetCacheConfig.getTimeToLive();
            Intrinsics.checkNotNullParameter(url, "url");
            asset = new C3008j(nextInt, url == null ? "" : url, null, maxRetries, currentTimeMillis, currentTimeMillis2, System.currentTimeMillis() + timeToLive, 0L);
        } else {
            asset = null;
        }
        if (Nc.a().a(url) == null && asset != null) {
            C3058m1 a10 = Nc.a();
            synchronized (a10) {
                Intrinsics.checkNotNullParameter(asset, "asset");
                a10.a(asset, "url = ?", new String[]{asset.f24869b});
            }
        }
        f25283f.execute(new Runnable() { // from class: ub.n6
            @Override // java.lang.Runnable
            public final void run() {
                C3169t1.b(url);
            }
        });
    }
}
