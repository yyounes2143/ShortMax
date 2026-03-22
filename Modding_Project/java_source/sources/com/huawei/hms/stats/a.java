package com.huawei.hms.stats;

import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtils;
import com.huawei.hms.support.log.HMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: AnalyticsCacheManager.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    private static final a f22204f = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Object f22205a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private boolean f22206b = false;

    /* renamed from: c  reason: collision with root package name */
    private final List<Runnable> f22207c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final Handler f22208d = new Handler(Looper.getMainLooper());

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f22209e = new RunnableC0319a();

    /* compiled from: AnalyticsCacheManager.java */
    /* renamed from: com.huawei.hms.stats.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0319a implements Runnable {
        RunnableC0319a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSLog.i("AnalyticsCacheManager", "Timeout execCacheBi.");
            if (!HiAnalyticsUtils.getInstance().getInitFlag()) {
                a.this.a();
            } else {
                a.this.b();
            }
        }
    }

    private a() {
    }

    public static a c() {
        return f22204f;
    }

    public void a(Runnable runnable) {
        synchronized (this.f22205a) {
            try {
                if (runnable == null) {
                    return;
                }
                if (this.f22206b) {
                    return;
                }
                if (this.f22207c.size() >= 60) {
                    return;
                }
                this.f22207c.add(runnable);
                this.f22208d.removeCallbacks(this.f22209e);
                this.f22208d.postDelayed(this.f22209e, 10000L);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        synchronized (this.f22205a) {
            HMSLog.i("AnalyticsCacheManager", "execCacheBi: cache size: " + this.f22207c.size());
            this.f22206b = true;
            Iterator<Runnable> it = this.f22207c.iterator();
            while (it.hasNext()) {
                it.next().run();
                it.remove();
            }
            this.f22206b = false;
        }
    }

    public void a() {
        synchronized (this.f22205a) {
            HMSLog.i("AnalyticsCacheManager", "clear AnalyticsCache.");
            this.f22207c.clear();
        }
    }
}
