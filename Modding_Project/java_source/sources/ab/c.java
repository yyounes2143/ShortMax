package ab;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.mbridge.msdk.foundation.download.Command;
import db.d;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: l  reason: collision with root package name */
    private static final String f335l = "c";

    /* renamed from: a  reason: collision with root package name */
    private final GrsBaseInfo f336a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f337b;

    /* renamed from: c  reason: collision with root package name */
    private final ya.a f338c;

    /* renamed from: d  reason: collision with root package name */
    private d f339d;

    /* renamed from: i  reason: collision with root package name */
    private final cb.c f344i;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Future<d>> f340e = new ConcurrentHashMap(16);

    /* renamed from: f  reason: collision with root package name */
    private final List<d> f341f = new CopyOnWriteArrayList();

    /* renamed from: g  reason: collision with root package name */
    private final JSONArray f342g = new JSONArray();

    /* renamed from: h  reason: collision with root package name */
    private final List<String> f343h = new CopyOnWriteArrayList();

    /* renamed from: j  reason: collision with root package name */
    private String f345j = "";

    /* renamed from: k  reason: collision with root package name */
    private long f346k = 1;

    public c(cb.c cVar, ya.a aVar) {
        this.f344i = cVar;
        this.f336a = cVar.c();
        this.f337b = cVar.a();
        this.f338c = aVar;
        h();
        i();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x009b A[LOOP:0: B:3:0x0005->B:36:0x009b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0093 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private ab.d b(java.util.concurrent.ExecutorService r16, java.util.List<java.lang.String> r17, java.lang.String r18, ya.c r19) {
        /*
            r15 = this;
            r9 = r15
            r0 = 0
            r10 = 0
            r11 = r0
            r12 = r10
        L5:
            int r0 = r17.size()
            if (r12 >= r0) goto L9f
            r13 = r17
            java.lang.Object r0 = r13.get(r12)
            java.lang.String r0 = (java.lang.String) r0
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L8e
            ab.a r14 = new ab.a
            android.content.Context r5 = r9.f337b
            com.huawei.hms.framework.network.grs.GrsBaseInfo r7 = r9.f336a
            r1 = r14
            r2 = r0
            r3 = r12
            r4 = r15
            r6 = r18
            r8 = r19
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            java.util.concurrent.Callable r1 = r14.g()
            r2 = r16
            java.util.concurrent.Future r1 = r2.submit(r1)
            java.util.Map<java.lang.String, java.util.concurrent.Future<ab.d>> r3 = r9.f340e
            r3.put(r0, r1)
            r3 = 1
            long r4 = r9.f346k     // Catch: java.lang.InterruptedException -> L6a java.util.concurrent.ExecutionException -> L6c java.util.concurrent.TimeoutException -> L6e java.util.concurrent.CancellationException -> L86
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.InterruptedException -> L6a java.util.concurrent.ExecutionException -> L6c java.util.concurrent.TimeoutException -> L6e java.util.concurrent.CancellationException -> L86
            java.lang.Object r0 = r1.get(r4, r0)     // Catch: java.lang.InterruptedException -> L6a java.util.concurrent.ExecutionException -> L6c java.util.concurrent.TimeoutException -> L6e java.util.concurrent.CancellationException -> L86
            r1 = r0
            ab.d r1 = (ab.d) r1     // Catch: java.lang.InterruptedException -> L6a java.util.concurrent.ExecutionException -> L6c java.util.concurrent.TimeoutException -> L6e java.util.concurrent.CancellationException -> L86
            if (r1 == 0) goto L67
            boolean r0 = r1.D()     // Catch: java.lang.InterruptedException -> L54 java.util.concurrent.ExecutionException -> L57 java.util.concurrent.TimeoutException -> L63 java.util.concurrent.CancellationException -> L65
            if (r0 != 0) goto L5a
            boolean r0 = r1.B()     // Catch: java.lang.InterruptedException -> L54 java.util.concurrent.ExecutionException -> L57 java.util.concurrent.TimeoutException -> L63 java.util.concurrent.CancellationException -> L65
            if (r0 == 0) goto L67
            goto L5a
        L54:
            r0 = move-exception
            r11 = r1
            goto L76
        L57:
            r0 = move-exception
            r11 = r1
            goto L7e
        L5a:
            java.lang.String r0 = ab.c.f335l     // Catch: java.lang.InterruptedException -> L54 java.util.concurrent.ExecutionException -> L57 java.util.concurrent.TimeoutException -> L63 java.util.concurrent.CancellationException -> L65
            java.lang.String r4 = "grs request return body is not null and is OK."
            com.huawei.hms.framework.common.Logger.i(r0, r4)     // Catch: java.lang.InterruptedException -> L54 java.util.concurrent.ExecutionException -> L57 java.util.concurrent.TimeoutException -> L63 java.util.concurrent.CancellationException -> L65
            r11 = r1
            goto L91
        L63:
            r11 = r1
            goto L6e
        L65:
            r11 = r1
            goto L86
        L67:
            r11 = r1
        L68:
            r3 = r10
            goto L91
        L6a:
            r0 = move-exception
            goto L76
        L6c:
            r0 = move-exception
            goto L7e
        L6e:
            java.lang.String r0 = ab.c.f335l
            java.lang.String r1 = "the wait timed out"
            com.huawei.hms.framework.common.Logger.w(r0, r1)
            goto L68
        L76:
            java.lang.String r1 = ab.c.f335l
            java.lang.String r4 = "the current thread was interrupted while waiting"
            com.huawei.hms.framework.common.Logger.w(r1, r4, r0)
            goto L91
        L7e:
            java.lang.String r1 = ab.c.f335l
            java.lang.String r3 = "the computation threw an ExecutionException"
            com.huawei.hms.framework.common.Logger.w(r1, r3, r0)
            goto L68
        L86:
            java.lang.String r0 = ab.c.f335l
            java.lang.String r1 = "{requestServer} the computation was cancelled"
            com.huawei.hms.framework.common.Logger.i(r0, r1)
            goto L91
        L8e:
            r2 = r16
            goto L68
        L91:
            if (r3 == 0) goto L9b
            java.lang.String r0 = ab.c.f335l
            java.lang.String r1 = "needBreak is true so need break current circulation"
            com.huawei.hms.framework.common.Logger.v(r0, r1)
            goto L9f
        L9b:
            int r12 = r12 + 1
            goto L5
        L9f:
            ab.d r0 = r15.g(r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ab.c.b(java.util.concurrent.ExecutorService, java.util.List, java.lang.String, ya.c):ab.d");
    }

    private void f(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(str);
        String grsReqParamJoint = this.f336a.getGrsReqParamJoint(false, false, j(), this.f337b);
        if (!TextUtils.isEmpty(grsReqParamJoint)) {
            sb2.append("?");
            sb2.append(grsReqParamJoint);
        }
        this.f343h.add(sb2.toString());
    }

    private d g(d dVar) {
        String str;
        String str2;
        for (Map.Entry<String, Future<d>> entry : this.f340e.entrySet()) {
            if (dVar != null && (dVar.D() || dVar.B())) {
                break;
            }
            try {
                dVar = entry.getValue().get(40000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e10) {
                e = e10;
                str = f335l;
                str2 = "{checkResponse} when check result, find InterruptedException, check others";
                Logger.w(str, str2, e);
            } catch (CancellationException unused) {
                Logger.i(f335l, "{checkResponse} when check result, find CancellationException, check others");
            } catch (ExecutionException e11) {
                e = e11;
                str = f335l;
                str2 = "{checkResponse} when check result, find ExecutionException, check others";
                Logger.w(str, str2, e);
            } catch (TimeoutException unused2) {
                Logger.w(f335l, "{checkResponse} when check result, find TimeoutException, cancel current request task");
                if (!entry.getValue().isCancelled()) {
                    entry.getValue().cancel(true);
                }
            }
        }
        return dVar;
    }

    private void h() {
        cb.d a10 = bb.a.a(this.f337b);
        if (a10 == null) {
            Logger.w(f335l, "g*s***_se****er_conf*** maybe has a big error");
            return;
        }
        e(a10);
        List<String> a11 = a10.a();
        if (a11 != null && a11.size() > 0) {
            if (a11.size() <= 10) {
                String e10 = a10.e();
                if (a11.size() > 0) {
                    for (String str : a11) {
                        if (!str.startsWith("https://")) {
                            Logger.w(f335l, "grs server just support https scheme url,please check.");
                        } else {
                            f(e10, str);
                        }
                    }
                }
                Logger.v(f335l, "request to GRS server url is {%s}", this.f343h);
                return;
            }
            throw new IllegalArgumentException("grs_base_url's count is larger than MAX value 10");
        }
        Logger.v(f335l, "maybe grs_base_url config with [],please check.");
    }

    private void i() {
        String grsParasKey = this.f336a.getGrsParasKey(true, true, this.f337b);
        ya.c b10 = this.f338c.b();
        this.f345j = b10.a(grsParasKey + Command.HTTP_HEADER_ETAG, "");
    }

    private String j() {
        gb.a aVar;
        za.b d10 = za.b.d(this.f337b.getPackageName());
        if (d10 != null) {
            aVar = d10.a();
        } else {
            aVar = null;
        }
        if (aVar != null) {
            String b10 = aVar.b();
            Logger.v(f335l, "get appName from local assets is{%s}", b10);
            return b10;
        }
        return "";
    }

    public d a(ExecutorService executorService, String str, ya.c cVar) {
        int f10;
        if (this.f343h.isEmpty()) {
            return null;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        d b10 = b(executorService, this.f343h, str, cVar);
        if (b10 == null) {
            f10 = 0;
        } else {
            f10 = b10.f();
        }
        Logger.i(f335l, "use 2.0 interface return http's code is：{%d}", Integer.valueOf(f10));
        e.b(new ArrayList(this.f341f), SystemClock.elapsedRealtime() - elapsedRealtime, this.f342g, this.f337b);
        this.f341f.clear();
        return b10;
    }

    public String c() {
        return this.f345j;
    }

    public synchronized void d(d dVar) {
        try {
            this.f341f.add(dVar);
            d dVar2 = this.f339d;
            if (dVar2 == null || (!dVar2.D() && !this.f339d.B())) {
                if (dVar.C()) {
                    Logger.i(f335l, "GRS server open 503 limiting strategy.");
                    db.d.b(this.f336a.getGrsParasKey(true, true, this.f337b), new d.a(dVar.z(), SystemClock.elapsedRealtime()));
                    return;
                }
                if (dVar.B()) {
                    Logger.i(f335l, "GRS server open 304 Not Modified.");
                }
                if (!dVar.D() && !dVar.B()) {
                    Logger.v(f335l, "grsResponseResult has exception so need return");
                    return;
                }
                this.f339d = dVar;
                this.f338c.c(this.f336a, dVar, this.f337b, this.f344i);
                for (Map.Entry<String, Future<d>> entry : this.f340e.entrySet()) {
                    if (!entry.getKey().equals(dVar.A()) && !entry.getValue().isCancelled()) {
                        Logger.i(f335l, "future cancel");
                        entry.getValue().cancel(true);
                    }
                }
                return;
            }
            Logger.v(f335l, "grsResponseResult is ok");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void e(cb.d dVar) {
    }
}
