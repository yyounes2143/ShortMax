package com.huawei.hms.framework.network.grs;

import ab.g;
import ab.h;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.foundation.download.Command;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import ya.c;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: i  reason: collision with root package name */
    private static final String f22168i = "c";

    /* renamed from: j  reason: collision with root package name */
    private static final ExecutorService f22169j = ExecutorsUtils.newSingleThreadExecutor("GRS_GrsClient-Init");

    /* renamed from: k  reason: collision with root package name */
    private static long f22170k = 0;

    /* renamed from: a  reason: collision with root package name */
    private GrsBaseInfo f22171a;

    /* renamed from: b  reason: collision with root package name */
    private Context f22172b;

    /* renamed from: c  reason: collision with root package name */
    private g f22173c;

    /* renamed from: d  reason: collision with root package name */
    private ya.a f22174d;

    /* renamed from: e  reason: collision with root package name */
    private c f22175e;

    /* renamed from: f  reason: collision with root package name */
    private c f22176f;

    /* renamed from: g  reason: collision with root package name */
    private xa.a f22177g;

    /* renamed from: h  reason: collision with root package name */
    private FutureTask<Boolean> f22178h;

    /* renamed from: com.huawei.hms.framework.network.grs.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class CallableC0318a implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22179a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GrsBaseInfo f22180b;

        CallableC0318a(Context context, GrsBaseInfo grsBaseInfo) {
            this.f22179a = context;
            this.f22180b = grsBaseInfo;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Boolean call() {
            a.this.f22173c = new g();
            a aVar = a.this;
            Context context = this.f22179a;
            aVar.f22175e = new c(context, GrsApp.getInstance().getBrand("_") + "share_pre_grs_conf_");
            a aVar2 = a.this;
            Context context2 = this.f22179a;
            aVar2.f22176f = new c(context2, GrsApp.getInstance().getBrand("_") + "share_pre_grs_services_");
            a aVar3 = a.this;
            aVar3.f22174d = new ya.a(aVar3.f22175e, a.this.f22176f, a.this.f22173c);
            a aVar4 = a.this;
            aVar4.f22177g = new xa.a(aVar4.f22171a, a.this.f22174d, a.this.f22173c, a.this.f22176f);
            if (za.b.d(this.f22179a.getPackageName()) == null) {
                new za.b(this.f22179a, true);
            }
            String d10 = new cb.c(this.f22180b, this.f22179a).d();
            String str = a.f22168i;
            Logger.v(str, "scan serviceSet is: " + d10);
            String a10 = a.this.f22176f.a("services", "");
            String a11 = h.a(a10, d10);
            if (!TextUtils.isEmpty(a11)) {
                a.this.f22176f.f("services", a11);
                String str2 = a.f22168i;
                Logger.i(str2, "postList is:" + StringUtils.anonymizeMessage(a11));
                String str3 = a.f22168i;
                Logger.i(str3, "currentServices:" + StringUtils.anonymizeMessage(a10));
                if (!a11.equals(a10)) {
                    a.this.f22173c.g(a.this.f22171a.getGrsParasKey(true, true, this.f22179a));
                    a.this.f22173c.f(new cb.c(this.f22180b, this.f22179a), null, null, a.this.f22176f, a.this.f22171a.getQueryTimeout());
                }
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - a.f22170k;
            if (a.f22170k == 0 || TimeUnit.MILLISECONDS.toHours(elapsedRealtime) > 24) {
                Logger.i(a.f22168i, "Try to clear unUsed sp data.");
                long unused = a.f22170k = SystemClock.elapsedRealtime();
                a aVar5 = a.this;
                aVar5.n(aVar5.f22175e.b());
            }
            a.this.f22174d.h(this.f22180b, this.f22179a);
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, GrsBaseInfo grsBaseInfo) {
        this.f22178h = null;
        this.f22172b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        j(grsBaseInfo);
        GrsBaseInfo grsBaseInfo2 = this.f22171a;
        FutureTask<Boolean> futureTask = new FutureTask<>(new CallableC0318a(this.f22172b, grsBaseInfo2));
        this.f22178h = futureTask;
        f22169j.execute(futureTask);
        Logger.i(f22168i, "GrsClient Instance is init, GRS SDK version: %s, GrsBaseInfoParam: app_name=%s, reg_country=%s, ser_country=%s, issue_country=%s ,queryTimeout=%d", db.a.a(), grsBaseInfo2.getAppName(), grsBaseInfo.getRegCountry(), grsBaseInfo.getSerCountry(), grsBaseInfo.getIssueCountry(), Integer.valueOf(grsBaseInfo.getQueryTimeout()));
    }

    private void j(GrsBaseInfo grsBaseInfo) {
        try {
            this.f22171a = grsBaseInfo.m4701clone();
        } catch (CloneNotSupportedException e10) {
            Logger.w(f22168i, "GrsClient catch CloneNotSupportedException", e10);
            this.f22171a = grsBaseInfo.copy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(Map<String, ?> map) {
        if (map != null && !map.isEmpty()) {
            Set<String> keySet = map.keySet();
            for (String str : keySet) {
                if (str.endsWith(this.f22172b.getPackageName() + CrashHianalyticsData.TIME)) {
                    String a10 = this.f22175e.a(str, "");
                    long j10 = 0;
                    if (!TextUtils.isEmpty(a10) && a10.matches("\\d+")) {
                        try {
                            j10 = Long.parseLong(a10);
                        } catch (NumberFormatException e10) {
                            Logger.w(f22168i, "convert expire time from String to Long catch NumberFormatException.", e10);
                        }
                    }
                    String substring = str.substring(0, str.length() - 4);
                    String str2 = substring + Command.HTTP_HEADER_ETAG;
                    if (!s(j10) || !keySet.contains(substring) || !keySet.contains(str2)) {
                        Logger.i(f22168i, "init interface auto clear some invalid sp's data: " + str);
                        this.f22175e.d(substring);
                        this.f22175e.d(str);
                        this.f22175e.d(str2);
                    }
                }
            }
            return;
        }
        Logger.v(f22168i, "sp's content is empty.");
    }

    private boolean s(long j10) {
        if (System.currentTimeMillis() - j10 <= 604800000) {
            return true;
        }
        return false;
    }

    private boolean y() {
        String str;
        String str2;
        FutureTask<Boolean> futureTask = this.f22178h;
        if (futureTask == null) {
            return false;
        }
        try {
            return futureTask.get(8L, TimeUnit.SECONDS).booleanValue();
        } catch (InterruptedException e10) {
            e = e10;
            str = f22168i;
            str2 = "init compute task interrupted.";
            Logger.w(str, str2, e);
            return false;
        } catch (CancellationException unused) {
            Logger.i(f22168i, "init compute task canceled.");
            return false;
        } catch (ExecutionException e11) {
            e = e11;
            str = f22168i;
            str2 = "init compute task failed.";
            Logger.w(str, str2, e);
            return false;
        } catch (TimeoutException unused2) {
            Logger.w(f22168i, "init compute task timed out");
            return false;
        } catch (Exception e12) {
            e = e12;
            str = f22168i;
            str2 = "init compute task occur unknown Exception";
            Logger.w(str, str2, e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d(String str, String str2, int i10) {
        if (this.f22171a != null && str != null && str2 != null) {
            if (!y()) {
                return null;
            }
            return this.f22177g.d(str, str2, this.f22172b, i10);
        }
        Logger.w(f22168i, "invalid para!");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> e(String str, int i10) {
        if (this.f22171a != null && str != null) {
            if (y()) {
                return this.f22177g.f(str, this.f22172b, i10);
            }
            return new HashMap();
        }
        Logger.w(f22168i, "invalid para!");
        return new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        if (!y()) {
            return;
        }
        String grsParasKey = this.f22171a.getGrsParasKey(true, true, this.f22172b);
        this.f22175e.d(grsParasKey);
        c cVar = this.f22175e;
        cVar.d(grsParasKey + CrashHianalyticsData.TIME);
        c cVar2 = this.f22175e;
        cVar2.d(grsParasKey + Command.HTTP_HEADER_ETAG);
        this.f22173c.g(grsParasKey);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(String str, IQueryUrlsCallBack iQueryUrlsCallBack, int i10) {
        if (iQueryUrlsCallBack == null) {
            Logger.w(f22168i, "IQueryUrlsCallBack is must not null for process continue.");
        } else if (this.f22171a != null && str != null) {
            if (y()) {
                this.f22177g.j(str, iQueryUrlsCallBack, this.f22172b, i10);
                return;
            }
            Logger.i(f22168i, "grs init task has not completed.");
            iQueryUrlsCallBack.onCallBackFail(-7);
        } else {
            iQueryUrlsCallBack.onCallBackFail(-6);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack, int i10) {
        if (iQueryUrlCallBack == null) {
            Logger.w(f22168i, "IQueryUrlCallBack is must not null for process continue.");
        } else if (this.f22171a != null && str != null && str2 != null) {
            if (y()) {
                this.f22177g.k(str, str2, iQueryUrlCallBack, this.f22172b, i10);
                return;
            }
            Logger.i(f22168i, "grs init task has not completed.");
            iQueryUrlCallBack.onCallBackFail(-7);
        } else {
            iQueryUrlCallBack.onCallBackFail(-6);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass() || !(obj instanceof a)) {
            return false;
        }
        return this.f22171a.compare(((a) obj).f22171a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r() {
        GrsBaseInfo grsBaseInfo;
        Context context;
        if (!y() || (grsBaseInfo = this.f22171a) == null || (context = this.f22172b) == null) {
            return false;
        }
        this.f22174d.d(grsBaseInfo, context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(GrsBaseInfo grsBaseInfo) {
        this.f22178h = null;
        j(grsBaseInfo);
    }
}
