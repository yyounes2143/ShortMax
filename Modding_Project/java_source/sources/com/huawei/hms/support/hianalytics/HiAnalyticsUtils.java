package com.huawei.hms.support.hianalytics;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hianalytics.util.HiAnalyticTools;
import com.huawei.hms.stats.HiAnalyticsOfCpUtils;
import com.huawei.hms.stats.HianalyticsExist;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.AnalyticsSwitchHolder;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class HiAnalyticsUtils {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f22264c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f22265d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static HiAnalyticsUtils f22266e;

    /* renamed from: a  reason: collision with root package name */
    private int f22267a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f22268b = HianalyticsExist.isHianalyticsExist();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22269a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22270b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f22271c;

        a(Context context, String str, Map map) {
            this.f22269a = context;
            this.f22270b = str;
            this.f22271c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            HiAnalyticsUtils.getInstance().onEvent(this.f22269a, this.f22270b, this.f22271c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22273a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22274b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f22275c;

        b(Context context, String str, String str2) {
            this.f22273a = context;
            this.f22274b = str;
            this.f22275c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            HiAnalyticsUtils.getInstance().onEvent2(this.f22273a, this.f22274b, this.f22275c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22277a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22278b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f22279c;

        c(Context context, String str, Map map) {
            this.f22277a = context;
            this.f22278b = str;
            this.f22279c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            HiAnalyticsUtils.getInstance().onNewEvent(this.f22277a, this.f22278b, this.f22279c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22281a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22282b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f22283c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f22284d;

        d(Context context, String str, Map map, int i10) {
            this.f22281a = context;
            this.f22282b = str;
            this.f22283c = map;
            this.f22284d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            HiAnalyticsUtils.getInstance().onNewEvent(this.f22281a, this.f22282b, this.f22283c, this.f22284d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22286a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22287b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f22288c;

        e(Context context, String str, Map map) {
            this.f22286a = context;
            this.f22287b = str;
            this.f22288c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            HiAnalyticsUtils.getInstance().onReport(this.f22286a, this.f22287b, this.f22288c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22290a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22291b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f22292c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f22293d;

        f(Context context, String str, Map map, int i10) {
            this.f22290a = context;
            this.f22291b = str;
            this.f22292c = map;
            this.f22293d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            HiAnalyticsUtils.getInstance().onReport(this.f22290a, this.f22291b, this.f22292c, this.f22293d);
        }
    }

    private HiAnalyticsUtils() {
    }

    private static LinkedHashMap<String, String> a(Map<String, String> map) {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    private void b(Context context) {
        synchronized (f22265d) {
            try {
                int i10 = this.f22267a;
                if (i10 < 60) {
                    this.f22267a = i10 + 1;
                } else {
                    this.f22267a = 0;
                    if (!this.f22268b) {
                        hb.a.f();
                    } else {
                        HiAnalyticsOfCpUtils.onReport(context, 0);
                        HiAnalyticsOfCpUtils.onReport(context, 1);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void c(Context context, String str, Map map) {
        try {
            com.huawei.hms.stats.a.c().a(new e(context.getApplicationContext(), str, map));
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<addOnReportToCache> failed. " + th2.getMessage());
        }
    }

    public static HiAnalyticsUtils getInstance() {
        HiAnalyticsUtils hiAnalyticsUtils;
        synchronized (f22264c) {
            try {
                if (f22266e == null) {
                    f22266e = new HiAnalyticsUtils();
                }
                hiAnalyticsUtils = f22266e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hiAnalyticsUtils;
    }

    public static String versionCodeToName(String str) {
        if (!TextUtils.isEmpty(str) && (str.length() == 8 || str.length() == 9)) {
            try {
                Integer.parseInt(str);
                return Integer.parseInt(str.substring(0, str.length() - 7)) + "." + Integer.parseInt(str.substring(str.length() - 7, str.length() - 5)) + "." + Integer.parseInt(str.substring(str.length() - 5, str.length() - 3)) + "." + Integer.parseInt(str.substring(str.length() - 3));
            } catch (NumberFormatException unused) {
            }
        }
        return "";
    }

    public void enableLog(Context context) {
        HMSLog.i("HiAnalyticsUtils", "Enable Log");
        if (!this.f22268b) {
            hb.a.a();
        } else {
            HiAnalyticTools.enableLog(context);
        }
    }

    public boolean getInitFlag() {
        if (!this.f22268b) {
            return hb.a.b();
        }
        return HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }

    public int getOobeAnalyticsState(Context context) {
        if (context == null) {
            return 0;
        }
        int a10 = a(context);
        if (a10 == 1) {
            return a10;
        }
        Bundle bundle = new Bundle();
        bundle.putString("hms_cp_bundle_key", "content://com.huawei.hms.contentprovider" + DomExceptionUtils.SEPARATOR + "com.huawei.hms.privacy.HmsAnalyticsStateProvider");
        try {
            Bundle call = context.getApplicationContext().getContentResolver().call(Uri.parse("content://com.huawei.hms.contentprovider"), "getAnalyticsState", (String) null, bundle);
            if (call != null) {
                a10 = call.getInt("SWITCH_IS_CHECKED");
                HMSLog.i("HiAnalyticsUtils", "get hms analyticsOobe state " + a10);
                return a10;
            }
            return a10;
        } catch (IllegalArgumentException unused) {
            HMSLog.i("HiAnalyticsUtils", "getOobeAnalyticsState IllegalArgumentException ");
            return a10;
        } catch (SecurityException unused2) {
            HMSLog.i("HiAnalyticsUtils", "getOobeAnalyticsState SecurityException ");
            return a10;
        } catch (Exception unused3) {
            HMSLog.i("HiAnalyticsUtils", "getOobeAnalyticsState Exception ");
            return a10;
        }
    }

    public boolean hasError(Context context) {
        return AnalyticsSwitchHolder.isAnalyticsDisabled(context);
    }

    public void onBuoyEvent(Context context, String str, String str2) {
        onEvent2(context, str, str2);
    }

    public void onEvent(Context context, String str, Map<String, String> map) {
        boolean z10;
        int andRefreshAnalyticsState = AnalyticsSwitchHolder.getAndRefreshAnalyticsState(context);
        if (map != null && !map.isEmpty() && context != null) {
            boolean initFlag = getInitFlag();
            if (andRefreshAnalyticsState != 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (a(initFlag, z10, map)) {
                a(context, str, map);
            }
            if (andRefreshAnalyticsState == 1 && initFlag) {
                if (!this.f22268b) {
                    hb.a.d(0, str, a(map));
                    hb.a.d(1, str, a(map));
                } else {
                    HiAnalyticsOfCpUtils.onEvent(context, 0, str, a(map));
                    HiAnalyticsOfCpUtils.onEvent(context, 1, str, a(map));
                }
                b(context);
                return;
            }
            return;
        }
        HMSLog.e("HiAnalyticsUtils", "<onEvent> map or context is null, state: " + andRefreshAnalyticsState);
    }

    public void onEvent2(Context context, String str, String str2) {
        int andRefreshAnalyticsState = AnalyticsSwitchHolder.getAndRefreshAnalyticsState(context);
        if (context == null) {
            HMSLog.e("HiAnalyticsUtils", "<onEvent2> context is null, state: " + andRefreshAnalyticsState);
            return;
        }
        boolean initFlag = getInitFlag();
        if (!initFlag && andRefreshAnalyticsState != 2 && a(str2)) {
            a(context, str, str2);
        }
        if (andRefreshAnalyticsState == 1 && initFlag) {
            if (!this.f22268b) {
                hb.a.e(context, str, str2);
            } else {
                HiAnalyticsOfCpUtils.onEvent(context, str, str2);
            }
        }
    }

    public void onNewEvent(Context context, String str, Map map) {
        int andRefreshAnalyticsState = AnalyticsSwitchHolder.getAndRefreshAnalyticsState(context);
        if (map != null && !map.isEmpty() && context != null) {
            boolean initFlag = getInitFlag();
            if (a(initFlag, andRefreshAnalyticsState != 2, map)) {
                b(context, str, map);
            }
            if (andRefreshAnalyticsState == 1 && initFlag) {
                if (!this.f22268b) {
                    hb.a.d(0, str, a(map));
                    hb.a.d(1, str, a(map));
                } else {
                    HiAnalyticsOfCpUtils.onEvent(context, 0, str, a(map));
                    HiAnalyticsOfCpUtils.onEvent(context, 1, str, a(map));
                }
                b(context);
                return;
            }
            return;
        }
        HMSLog.e("HiAnalyticsUtils", "<onNewEvent> map or context is null, state: " + andRefreshAnalyticsState);
    }

    public void onReport(Context context, String str, Map map) {
        int andRefreshAnalyticsState = AnalyticsSwitchHolder.getAndRefreshAnalyticsState(context);
        if (map != null && !map.isEmpty() && context != null) {
            boolean initFlag = getInitFlag();
            if (a(initFlag, andRefreshAnalyticsState != 2, map)) {
                c(context, str, map);
            }
            if (andRefreshAnalyticsState == 1 && initFlag) {
                if (!this.f22268b) {
                    hb.a.g(0, str, a(map));
                    hb.a.g(1, str, a(map));
                    return;
                }
                HiAnalyticsOfCpUtils.onStreamEvent(context, 0, str, a(map));
                HiAnalyticsOfCpUtils.onStreamEvent(context, 1, str, a(map));
                return;
            }
            return;
        }
        HMSLog.e("HiAnalyticsUtils", "<onReport> map or context is null, state: " + andRefreshAnalyticsState);
    }

    public void enableLog() {
        HMSLog.i("HiAnalyticsUtils", "Enable Log");
        if (!this.f22268b) {
            hb.a.a();
        } else {
            HMSLog.i("HiAnalyticsUtils", "cp needs to pass in the context, this method is not supported");
        }
    }

    private int a(Context context) {
        int i10 = 0;
        try {
            i10 = Settings.Secure.getInt(context.getContentResolver(), "hw_app_analytics_state");
            HMSLog.i("HiAnalyticsUtils", "getOobeStateForSettings value is " + i10);
            return i10;
        } catch (Settings.SettingNotFoundException e10) {
            HMSLog.i("HiAnalyticsUtils", "Settings.SettingNotFoundException " + e10.getMessage());
            return i10;
        }
    }

    private boolean a(boolean z10, boolean z11, Map<?, ?> map) {
        return !z10 && z11 && b(map);
    }

    private boolean b(Map<?, ?> map) {
        try {
            long j10 = 0;
            for (Object obj : map.values()) {
                if (obj instanceof String) {
                    j10 += ((String) obj).getBytes(Charset.forName("UTF-8")).length;
                }
            }
            return j10 <= 512;
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<isValidSize map> Exception: " + th2.getMessage());
            return false;
        }
    }

    private boolean a(String str) {
        if (str == null) {
            return false;
        }
        try {
            return str.getBytes(Charset.forName("UTF-8")).length <= 512;
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<isValidSize String> Exception: " + th2.getMessage());
            return false;
        }
    }

    public void onReport(Context context, String str, Map map, int i10) {
        if (i10 != 0 && i10 != 1) {
            HMSLog.e("HiAnalyticsUtils", "<onReport with type> Data reporting type is not supported");
            return;
        }
        int andRefreshAnalyticsState = AnalyticsSwitchHolder.getAndRefreshAnalyticsState(context);
        if (map != null && !map.isEmpty() && context != null) {
            boolean initFlag = getInitFlag();
            if (a(initFlag, andRefreshAnalyticsState != 2, map)) {
                b(context, str, map, i10);
            }
            if (andRefreshAnalyticsState == 1 && initFlag) {
                if (!this.f22268b) {
                    hb.a.g(i10, str, a(map));
                    return;
                } else {
                    HiAnalyticsOfCpUtils.onStreamEvent(context, i10, str, a(map));
                    return;
                }
            }
            return;
        }
        HMSLog.e("HiAnalyticsUtils", "<onReport with type> map or context is null, state: " + andRefreshAnalyticsState);
    }

    private void a(Context context, String str, Map<String, String> map) {
        try {
            com.huawei.hms.stats.a.c().a(new a(context.getApplicationContext(), str, map));
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<addOnEventToCache> failed. " + th2.getMessage());
        }
    }

    public void onNewEvent(Context context, String str, Map map, int i10) {
        if (i10 != 0 && i10 != 1) {
            HMSLog.e("HiAnalyticsUtils", "<onNewEvent with type> Data reporting type is not supported");
            return;
        }
        int andRefreshAnalyticsState = AnalyticsSwitchHolder.getAndRefreshAnalyticsState(context);
        if (map != null && !map.isEmpty() && context != null) {
            boolean initFlag = getInitFlag();
            if (a(initFlag, andRefreshAnalyticsState != 2, map)) {
                a(context, str, map, i10);
            }
            if (andRefreshAnalyticsState == 1 && initFlag) {
                if (!this.f22268b) {
                    hb.a.d(i10, str, a(map));
                } else {
                    HiAnalyticsOfCpUtils.onEvent(context, i10, str, a(map));
                }
                b(context);
                return;
            }
            return;
        }
        HMSLog.e("HiAnalyticsUtils", "<onNewEvent with type> map or context is null, state: " + andRefreshAnalyticsState);
    }

    private void b(Context context, String str, Map map) {
        try {
            com.huawei.hms.stats.a.c().a(new c(context.getApplicationContext(), str, map));
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<addOnNewEventToCache> failed. " + th2.getMessage());
        }
    }

    private void a(Context context, String str, String str2) {
        try {
            com.huawei.hms.stats.a.c().a(new b(context.getApplicationContext(), str, str2));
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<addOnEvent2ToCache> Failed. " + th2.getMessage());
        }
    }

    private void b(Context context, String str, Map map, int i10) {
        try {
            com.huawei.hms.stats.a.c().a(new f(context.getApplicationContext(), str, map, i10));
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<addOnReportToCache with type> failed. " + th2.getMessage());
        }
    }

    private void a(Context context, String str, Map map, int i10) {
        try {
            com.huawei.hms.stats.a.c().a(new d(context.getApplicationContext(), str, map, i10));
        } catch (Throwable th2) {
            HMSLog.e("HiAnalyticsUtils", "<addOnNewEventToCache with type> failed. " + th2.getMessage());
        }
    }
}
