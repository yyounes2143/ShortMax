package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: GeckoConfig.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: r  reason: collision with root package name */
    private static IThreadPoolCallback f11313r;

    /* renamed from: s  reason: collision with root package name */
    private static ThreadPoolExecutor f11314s;

    /* renamed from: a  reason: collision with root package name */
    private final Context f11315a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.geckox.a.a.c f11316b;

    /* renamed from: c  reason: collision with root package name */
    private final IStatisticMonitor f11317c;

    /* renamed from: d  reason: collision with root package name */
    private final INetWork f11318d;

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f11319e;

    /* renamed from: f  reason: collision with root package name */
    private final List<String> f11320f;

    /* renamed from: g  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.geckox.a.a.a f11321g;

    /* renamed from: h  reason: collision with root package name */
    private final Long f11322h;

    /* renamed from: i  reason: collision with root package name */
    private final String f11323i;

    /* renamed from: j  reason: collision with root package name */
    private final String f11324j;

    /* renamed from: k  reason: collision with root package name */
    private final String f11325k;

    /* renamed from: l  reason: collision with root package name */
    private final String f11326l;

    /* renamed from: m  reason: collision with root package name */
    private final String f11327m;

    /* renamed from: n  reason: collision with root package name */
    private final File f11328n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f11329o;

    /* renamed from: p  reason: collision with root package name */
    private final long f11330p;

    /* renamed from: q  reason: collision with root package name */
    private JSONObject f11331q;

    /* compiled from: GeckoConfig.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private INetWork f11332a;

        /* renamed from: b  reason: collision with root package name */
        private List<String> f11333b;

        /* renamed from: c  reason: collision with root package name */
        private List<String> f11334c;

        /* renamed from: d  reason: collision with root package name */
        private Context f11335d;

        /* renamed from: e  reason: collision with root package name */
        private com.bykv.vk.openvk.preload.geckox.a.a.c f11336e;

        /* renamed from: f  reason: collision with root package name */
        private IStatisticMonitor f11337f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f11338g = true;

        /* renamed from: h  reason: collision with root package name */
        private com.bykv.vk.openvk.preload.geckox.a.a.a f11339h;

        /* renamed from: i  reason: collision with root package name */
        private Long f11340i;

        /* renamed from: j  reason: collision with root package name */
        private String f11341j;

        /* renamed from: k  reason: collision with root package name */
        private String f11342k;

        /* renamed from: l  reason: collision with root package name */
        private String f11343l;

        /* renamed from: m  reason: collision with root package name */
        private File f11344m;

        /* renamed from: n  reason: collision with root package name */
        private String f11345n;

        /* renamed from: o  reason: collision with root package name */
        private String f11346o;

        /* renamed from: p  reason: collision with root package name */
        private long f11347p;

        public a(Context context) {
            this.f11335d = context.getApplicationContext();
        }

        public final a a(String... strArr) {
            this.f11334c = Arrays.asList(strArr);
            return this;
        }

        public final a b(String... strArr) {
            this.f11333b = Arrays.asList(strArr);
            return this;
        }

        public final a c(String str) {
            this.f11343l = str;
            return this;
        }

        public final a a(INetWork iNetWork) {
            this.f11332a = iNetWork;
            return this;
        }

        public final a b() {
            this.f11340i = 38L;
            return this;
        }

        public final a a(long j10) {
            this.f11347p = j10;
            return this;
        }

        public final a b(String str) {
            this.f11342k = str;
            return this;
        }

        public final a a(IStatisticMonitor iStatisticMonitor) {
            this.f11337f = iStatisticMonitor;
            return this;
        }

        public final a a() {
            this.f11338g = false;
            return this;
        }

        public final a a(com.bykv.vk.openvk.preload.geckox.a.a.a aVar) {
            this.f11339h = aVar;
            return this;
        }

        public final a a(String str) {
            this.f11341j = str;
            return this;
        }

        public final a a(File file) {
            this.f11344m = file;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b(a aVar, byte b10) {
        this(aVar);
    }

    public static Executor g() {
        return t();
    }

    public static Executor h() {
        return t();
    }

    public static ExecutorService t() {
        ExecutorService executorService;
        IThreadPoolCallback iThreadPoolCallback = f11313r;
        if (iThreadPoolCallback != null) {
            executorService = iThreadPoolCallback.getThreadPool();
        } else {
            executorService = null;
        }
        if (executorService != null) {
            return executorService;
        }
        if (f11314s == null) {
            synchronized (b.class) {
                try {
                    if (f11314s == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                        f11314s = threadPoolExecutor;
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f11314s;
    }

    public final Context a() {
        return this.f11315a;
    }

    public final com.bykv.vk.openvk.preload.geckox.a.a.a b() {
        return this.f11321g;
    }

    public final boolean c() {
        return this.f11329o;
    }

    public final List<String> d() {
        return this.f11320f;
    }

    public final List<String> e() {
        return this.f11319e;
    }

    public final JSONObject f() {
        return this.f11331q;
    }

    public final INetWork i() {
        return this.f11318d;
    }

    public final String j() {
        return this.f11325k;
    }

    public final long k() {
        return this.f11322h.longValue();
    }

    public final String l() {
        return this.f11327m;
    }

    public final String m() {
        return this.f11326l;
    }

    public final File n() {
        return this.f11328n;
    }

    public final String o() {
        return this.f11323i;
    }

    public final com.bykv.vk.openvk.preload.geckox.a.a.c p() {
        return this.f11316b;
    }

    public final IStatisticMonitor q() {
        return this.f11317c;
    }

    public final String r() {
        return this.f11324j;
    }

    public final long s() {
        return this.f11330p;
    }

    private b(a aVar) {
        Context context = aVar.f11335d;
        this.f11315a = context;
        if (context != null) {
            List<String> list = aVar.f11333b;
            this.f11319e = list;
            this.f11320f = aVar.f11334c;
            this.f11316b = aVar.f11336e;
            this.f11321g = aVar.f11339h;
            Long l10 = aVar.f11340i;
            this.f11322h = l10;
            if (!TextUtils.isEmpty(aVar.f11341j)) {
                this.f11323i = aVar.f11341j;
            } else {
                this.f11323i = com.bykv.vk.openvk.preload.geckox.utils.a.a(context);
            }
            String str = aVar.f11342k;
            this.f11324j = str;
            this.f11326l = aVar.f11345n;
            this.f11327m = aVar.f11346o;
            this.f11330p = aVar.f11347p;
            if (aVar.f11344m != null) {
                this.f11328n = aVar.f11344m;
            } else {
                this.f11328n = new File(context.getFilesDir(), "gecko_offline_res_x");
            }
            String str2 = aVar.f11343l;
            this.f11325k = str2;
            if (!TextUtils.isEmpty(str2)) {
                if (list == null || list.isEmpty()) {
                    throw new IllegalArgumentException("access key empty");
                }
                if (l10 != null) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f11318d = aVar.f11332a;
                        this.f11317c = aVar.f11337f;
                        this.f11329o = aVar.f11338g;
                        return;
                    }
                    throw new IllegalArgumentException("deviceId key empty");
                }
                throw new IllegalArgumentException("appId == null");
            }
            throw new IllegalArgumentException("host == null");
        }
        throw new IllegalArgumentException("context == null");
    }

    public final void a(JSONObject jSONObject) {
        this.f11331q = jSONObject;
    }

    public static void a(IThreadPoolCallback iThreadPoolCallback) {
        f11313r = iThreadPoolCallback;
    }
}
