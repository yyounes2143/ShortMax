package com.apm.insight.h;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.apm.insight.e;
import com.apm.insight.l.f;
import com.apm.insight.l.j;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.n;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.huawei.hms.framework.common.ContainerUtils;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* compiled from: NpthSoData.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, String> f6943a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f6944b;

    public b(File file) {
        String a10;
        File c10 = j.c(file);
        if (!c10.exists() || c10.length() == 0 || (a10 = NativeImpl.a(c10.getAbsolutePath())) == null) {
            return;
        }
        String[] split = a10.split("\n");
        this.f6944b = new HashMap();
        for (String str : split) {
            String[] split2 = str.split(ContainerUtils.KEY_VALUE_DELIMITER);
            if (split2.length == 2) {
                this.f6944b.put(split2[0], split2[1]);
            }
        }
    }

    public static String a(String str) {
        return e.g().getFilesDir() + "/apminsight/selflib/lib" + str + ".so";
    }

    public static void b(final String str) {
        m.a().a(new Runnable() { // from class: com.apm.insight.h.b.1

            /* renamed from: a  reason: collision with root package name */
            private boolean f6945a = false;

            @Override // java.lang.Runnable
            public final void run() {
                String str2;
                b.b();
                if (!b.c(str)) {
                    n.a("updateSo", str);
                    File file = new File(b.a(str));
                    file.getParentFile().mkdirs();
                    if (file.exists()) {
                        file.delete();
                    }
                    String str3 = "doUnpackLibrary: " + str;
                    if (e.i().isDebugMode()) {
                        Log.w("npth", str3);
                    }
                    try {
                        str2 = c.a(e.g(), str, file);
                    } catch (Throwable th2) {
                        n.a("updateSoError", str);
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                        str2 = null;
                    }
                    if (str2 == null) {
                        b.f6943a.put(file.getName(), "2008-20250701130429");
                        try {
                            f.a(new File(e.g().getFilesDir() + "/apminsight/selflib/" + str + ".ver"), "2008-20250701130429", false);
                        } catch (Throwable unused) {
                        }
                        n.a("updateSoSuccess", str);
                    } else if (!this.f6945a) {
                        this.f6945a = true;
                        n.a("updateSoPostRetry", str);
                        m.a().a(this, 3000L);
                    } else {
                        n.a("updateSoFailed", str);
                    }
                }
            }
        });
    }

    public final boolean d() {
        Map<String, String> map = this.f6944b;
        if (map == null || map.isEmpty() || TextUtils.isEmpty(this.f6944b.get("process_name")) || TextUtils.isEmpty(this.f6944b.get("crash_thread_name")) || TextUtils.isEmpty(this.f6944b.get("pid")) || TextUtils.isEmpty(this.f6944b.get(ScarConstants.TOKEN_ID_KEY)) || TextUtils.isEmpty(this.f6944b.get(MetricsSQLiteCacheKt.METRICS_START_TIME)) || TextUtils.isEmpty(this.f6944b.get("crash_time")) || TextUtils.isEmpty(this.f6944b.get("signal_line"))) {
            return false;
        }
        return true;
    }

    @Nullable
    public final String e() {
        return this.f6944b.get("signal_line");
    }

    public final Map<String, String> f() {
        return this.f6944b;
    }

    public static String a() {
        return e.g().getFilesDir() + "/apminsight/selflib/";
    }

    static /* synthetic */ void b() {
        if (f6943a == null) {
            f6943a = new HashMap<>();
            File file = new File(e.g().getFilesDir(), "/apminsight/selflib/");
            String[] list = file.list();
            if (list != null) {
                for (String str : list) {
                    if (str.endsWith(".ver")) {
                        try {
                            f6943a.put(str.substring(0, str.length() - 4), f.a(file.getAbsolutePath() + DomExceptionUtils.SEPARATOR + str, "\n"));
                        } catch (Throwable th2) {
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                        }
                    } else if (!str.endsWith(".so")) {
                        f.a(new File(file, str));
                    }
                }
            }
        }
    }

    static /* synthetic */ boolean c(String str) {
        return "2008-20250701130429".equals(f6943a.get(str)) && new File(a(str)).exists();
    }
}
