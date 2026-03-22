package com.apm.insight.entity;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.adjust.sdk.Constants;
import com.apm.insight.e;
import com.apm.insight.l.k;
import com.apm.insight.l.l;
import com.apm.insight.runtime.o;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Header {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f6874a = {TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, "manifest_version_code", TTVideoEngineInterface.PLAY_API_KEY_APPID, TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE};

    /* renamed from: d  reason: collision with root package name */
    private static String f6875d = null;

    /* renamed from: e  reason: collision with root package name */
    private static int f6876e = -1;

    /* renamed from: f  reason: collision with root package name */
    private static int f6877f = -1;

    /* renamed from: b  reason: collision with root package name */
    private Context f6878b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f6879c = new JSONObject();

    public Header(Context context) {
        this.f6878b = context;
    }

    public static Header a(Context context) {
        Header header = new Header(context);
        JSONObject jSONObject = header.f6879c;
        try {
            jSONObject.put("sdk_version", 20089);
            jSONObject.put("sdk_version_name", "2008-20250701130429");
        } catch (Exception unused) {
        }
        return header;
    }

    @Keep
    public static void addOtherHeader(JSONObject jSONObject) {
        DisplayMetrics displayMetrics;
        Object obj;
        if (jSONObject == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            if (com.apm.insight.l.d.b()) {
                sb2.append("MIUI-");
            } else if (com.apm.insight.l.d.c()) {
                sb2.append("FLYME-");
            } else {
                String a10 = com.apm.insight.l.d.a();
                if (com.apm.insight.l.d.a(a10)) {
                    sb2.append("EMUI-");
                }
                if (!TextUtils.isEmpty(a10)) {
                    sb2.append(a10);
                    sb2.append("-");
                }
            }
            sb2.append(Build.VERSION.INCREMENTAL);
            if (sb2.length() > 0) {
                jSONObject.put("rom", sb2.toString());
            }
            jSONObject.put("rom_version", l.a());
        } catch (Throwable unused) {
        }
        try {
            int i10 = e.g().getResources().getDisplayMetrics().densityDpi;
            if (i10 != 120) {
                if (i10 != 240) {
                    if (i10 != 320) {
                        obj = "mdpi";
                    } else {
                        obj = "xhdpi";
                    }
                } else {
                    obj = "hdpi";
                }
            } else {
                obj = "ldpi";
            }
            jSONObject.put("density_dpi", i10);
            jSONObject.put("display_density", obj);
            jSONObject.put("resolution", displayMetrics.heightPixels + TextureRenderKeys.KEY_IS_X + displayMetrics.widthPixels);
        } catch (Exception unused2) {
        }
        try {
            String language = e.g().getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(MediaFormat.KEY_LANGUAGE, language);
            }
            int rawOffset = TimeZone.getDefault().getRawOffset() / Constants.ONE_HOUR;
            if (rawOffset < -12) {
                rawOffset = -12;
            }
            if (rawOffset > 12) {
                rawOffset = 12;
            }
            jSONObject.put("timezone", rawOffset);
        } catch (Exception unused3) {
        }
        try {
            jSONObject.put("os", "Android");
            jSONObject.put("device_id", e.c().a());
            String str = Build.VERSION.RELEASE;
            if (!str.contains(".")) {
                str = str + ".0";
            }
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, str);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            String str2 = Build.MODEL;
            String str3 = Build.BRAND;
            if (str2 == null) {
                str2 = str3;
            } else if (str3 != null && !str2.contains(str3)) {
                str2 = str3 + ' ' + str2;
            }
            jSONObject.put("device_model", str2);
            jSONObject.put("device_brand", str3);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put("cpu_abi", g());
            Context g10 = e.g();
            String packageName = g10.getPackageName();
            jSONObject.put("package", packageName);
            PackageInfo packageInfo = g10.getPackageManager().getPackageInfo(packageName, 0);
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null) {
                int i11 = applicationInfo.labelRes;
                if (i11 > 0) {
                    jSONObject.put("display_name", g10.getString(i11));
                } else {
                    jSONObject.put("display_name", g10.getPackageManager().getApplicationLabel(packageInfo.applicationInfo));
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        d.a(jSONObject);
    }

    public static void addRuntimeHeader(JSONObject jSONObject) {
        try {
            jSONObject.put("access", k.a(e.g()));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) e.g().getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!TextUtils.isEmpty(networkOperatorName)) {
                    jSONObject.put("carrier", networkOperatorName);
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (!TextUtils.isEmpty(networkOperator)) {
                    jSONObject.put("mcc_mnc", networkOperator);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static Header b(Context context) {
        Header a10 = a(context);
        a(a10);
        b(a10);
        a10.c();
        a10.d();
        a10.e();
        return a10;
    }

    private static String g() {
        if (f6875d == null) {
            try {
                StringBuilder sb2 = new StringBuilder();
                if (Build.SUPPORTED_ABIS.length > 0) {
                    int i10 = 0;
                    while (true) {
                        String[] strArr = Build.SUPPORTED_ABIS;
                        if (i10 >= strArr.length) {
                            break;
                        }
                        sb2.append(strArr[i10]);
                        if (i10 != strArr.length - 1) {
                            sb2.append(", ");
                        }
                        i10++;
                    }
                } else {
                    sb2 = new StringBuilder(Build.CPU_ABI);
                }
                if (TextUtils.isEmpty(sb2.toString())) {
                    f6875d = "unknown";
                }
                f6875d = sb2.toString();
            } catch (Exception e10) {
                com.apm.insight.a.b((Throwable) e10);
                f6875d = "unknown";
            }
        }
        return f6875d;
    }

    public final JSONObject c() {
        return a(e.a().a());
    }

    public final JSONObject d() {
        try {
            this.f6879c.put("device_id", e.c().a());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return this.f6879c;
    }

    public final JSONObject e() {
        try {
            long f10 = e.a().f();
            if (f10 > 0) {
                this.f6879c.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, f10);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return this.f6879c;
    }

    public final JSONObject f() {
        return this.f6879c;
    }

    public static boolean c(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return true;
        }
        return (jSONObject.opt("app_version") == null && jSONObject.opt("version_name") == null) || jSONObject.opt(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE) == null || jSONObject.opt(TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE) == null;
    }

    public static boolean d(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            String optString = jSONObject.optString(TTVideoEngineInterface.PLAY_API_KEY_APPID);
            if (TextUtils.isEmpty(optString)) {
                return true;
            }
            try {
                return Integer.parseInt(optString) <= 0;
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    public static Header a(long j10) {
        Header a10;
        o a11 = o.a();
        if (j10 == 0) {
            j10 = System.currentTimeMillis();
        }
        JSONObject a12 = a11.a(j10);
        if (a12 != null && a12.length() != 0) {
            try {
                if (!a12.has(TTVideoEngineInterface.PLAY_API_KEY_APPID)) {
                    a12.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, 4444);
                }
            } catch (Exception unused) {
            }
            a10 = new Header(e.g());
        } else {
            a10 = a(e.g());
            a10.c();
            try {
                a10.f6879c.put("errHeader", 1);
            } catch (Throwable unused2) {
            }
        }
        b(a10);
        a10.a(a12);
        return a10;
    }

    public static boolean b() {
        if (f6877f == -1) {
            f6877f = g().contains("86") ? 1 : 0;
        }
        return f6877f == 1;
    }

    public static boolean b(JSONObject jSONObject) {
        return jSONObject.optInt("unauthentic_version", 0) == 1;
    }

    public static void b(Header header) {
        if (header == null) {
            return;
        }
        addOtherHeader(header.f6879c);
    }

    public static boolean a() {
        if (f6876e == -1) {
            f6876e = g().contains("64") ? 1 : 0;
        }
        return f6876e == 1;
    }

    public final JSONObject a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return this.f6879c;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                this.f6879c.put(next, jSONObject.opt(next));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return this.f6879c;
    }

    public final JSONObject a(@Nullable Map<String, Object> map) {
        if (map == null) {
            return this.f6879c;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!this.f6879c.has(entry.getKey())) {
                this.f6879c.put(entry.getKey(), entry.getValue());
            }
        }
        String[] strArr = f6874a;
        for (int i10 = 0; i10 < 4; i10++) {
            String str = strArr[i10];
            if (map.containsKey(str)) {
                this.f6879c.put(str, Integer.parseInt(String.valueOf(map.get(str))));
            }
        }
        if (map.containsKey(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE) && !map.containsKey("manifest_version_code")) {
            try {
                this.f6879c.put("manifest_version_code", Integer.parseInt(String.valueOf(map.get(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE))));
            } catch (Throwable unused) {
            }
        }
        if (map.containsKey("iid")) {
            this.f6879c.put("udid", map.get("iid"));
            this.f6879c.remove("iid");
        }
        if (map.containsKey("version_name")) {
            this.f6879c.put("app_version", map.get("version_name"));
            this.f6879c.remove("version_name");
        }
        return this.f6879c;
    }

    public static Header a(Header header) {
        addRuntimeHeader(header.f6879c);
        return header;
    }
}
