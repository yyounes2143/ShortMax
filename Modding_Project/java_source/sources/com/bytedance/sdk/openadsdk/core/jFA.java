package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.tB.cFZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA {
    private static boolean PiB = false;
    public static final Set<String> ZYk = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.jFA.1
        {
            add("8025677");
            add("5001121");
        }
    };
    public static PiB oJ;
    private int BTZ;
    private String Pfn;
    private volatile ConcurrentHashMap<String, cFZ.oJ> Ry;
    private String WcQ;
    private boolean awB;
    @NonNull

    /* renamed from: ba  reason: collision with root package name */
    private String f13147ba;
    private int cFZ;
    private Integer dLZ;
    private String eZI;
    @NonNull
    private String ex;
    private int jFA;
    private Bitmap kkU;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.BTZ.tB.tB f13148si;
    @Nullable

    /* renamed from: so  reason: collision with root package name */
    private String f13149so;
    private boolean tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        private static final jFA oJ = new jFA();
    }

    public static boolean Id() {
        return PiB;
    }

    public static int Pfn() {
        try {
            String oJ2 = oJ("domain_index", Long.MAX_VALUE);
            if (TextUtils.isEmpty(oJ2)) {
                return 0;
            }
            return Integer.valueOf(oJ2).intValue();
        } catch (Throwable th2) {
            th2.getMessage();
            return 0;
        }
    }

    @NonNull
    public static jFA ZYk() {
        return oJ.oJ;
    }

    public static int ba() {
        try {
            String oJ2 = oJ("config_fail_times", Long.MAX_VALUE);
            if (TextUtils.isEmpty(oJ2)) {
                return 0;
            }
            return Integer.valueOf(oJ2).intValue();
        } catch (Throwable th2) {
            th2.getMessage();
            return 0;
        }
    }

    public static void cY() {
        if (Build.VERSION.SDK_INT == 26 && "MI 6".equals(Build.MODEL)) {
            PiB = true;
        }
    }

    public boolean BTZ() {
        int i10 = this.BTZ;
        return i10 < -1 || i10 > 1;
    }

    @Nullable
    public String PiB() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("sp_global_file", "extra_data", null);
        }
        return this.f13149so;
    }

    public String QSm() {
        if (!TextUtils.isEmpty(this.eZI)) {
            return this.eZI;
        }
        String oJ2 = com.bytedance.sdk.openadsdk.utils.BTZ.oJ();
        this.eZI = oJ2;
        if (!TextUtils.isEmpty(oJ2)) {
            return this.eZI;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.utils.BTZ.oJ(valueOf);
        this.eZI = valueOf;
        return valueOf;
    }

    public boolean RZ() {
        return "com.union_test.internationad".equals(HyG.ba());
    }

    public boolean Ry() {
        return "5001121".contains(this.ex);
    }

    public com.bytedance.sdk.openadsdk.core.BTZ.tB.tB WcQ() {
        if (this.f13148si == null) {
            this.f13148si = new com.bytedance.sdk.openadsdk.core.BTZ.tB.tB(10, 8);
        }
        return this.f13148si;
    }

    public boolean awB() {
        return true;
    }

    public String cFZ() {
        String str = this.Pfn;
        if (str != null) {
            return str;
        }
        String oJ2 = oJ("mediation_info", Long.MAX_VALUE);
        this.Pfn = oJ2;
        if (oJ2 == null) {
            this.Pfn = "";
        }
        return this.Pfn;
    }

    public int dLZ() {
        return this.BTZ;
    }

    public Bitmap eZI() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return com.bytedance.sdk.component.utils.ex.oJ(com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("sp_global_file", "pause_icon", null));
        }
        return this.kkU;
    }

    @Nullable
    public String ex() {
        if (TextUtils.isEmpty(this.ex)) {
            String oJ2 = oJ("app_id", Long.MAX_VALUE);
            if (!TextUtils.isEmpty(oJ2)) {
                this.ex = oJ2;
            }
        }
        return this.ex;
    }

    public int jFA() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_icon_id", "icon_id", 0);
        }
        return this.cFZ;
    }

    public String jr() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("sp_global_file", "adx_id", "");
        }
        return this.WcQ;
    }

    public int kkU() {
        Integer num = this.dLZ;
        if (num != null) {
            return num.intValue();
        }
        return com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_privacy", "tt_gdpr", -1);
    }

    public void oq() {
        try {
            if (this.Ry != null && this.Ry.size() == 0) {
                this.Ry = null;
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public boolean si() {
        return ZYk.contains(this.ex);
    }

    @NonNull
    public String so() {
        if (TextUtils.isEmpty(this.f13147ba)) {
            this.f13147ba = oJ(si.oJ());
        }
        return this.f13147ba;
    }

    public boolean tB() {
        return com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_file", "sdk_activate_init", true);
    }

    private jFA() {
        this.tB = false;
        this.jFA = 0;
        this.kkU = null;
        this.dLZ = null;
        this.BTZ = -1;
        this.Ry = null;
    }

    private static JSONObject BTZ(String str) {
        String ZYk2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("sp_global_file", str, null);
        if (TextUtils.isEmpty(ZYk2)) {
            return null;
        }
        try {
            return new JSONObject(ZYk2);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.GlobalInfo", e10.getMessage());
            return null;
        }
    }

    private static void dLZ(String str) {
        if (TextUtils.isEmpty(str) || str.length() <= 1000) {
            return;
        }
        PiB piB = oJ;
        if (piB != null) {
            piB.fail(4000, "Data is very long, the longest is 1000");
        }
        com.bytedance.sdk.component.utils.QSm.tB("TTAD.GlobalInfo", "Data is very long, the longest is 1000");
    }

    public void ZYk(boolean z10) {
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_file", "sdk_activate_init", Boolean.valueOf(z10));
    }

    public void tB(int i10) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_icon_id", "icon_id", Integer.valueOf(i10));
        }
        this.cFZ = i10;
    }

    public static void ZYk(int i10) {
        if (i10 >= 0) {
            oJ("config_fail_times", String.valueOf(i10));
        }
    }

    public static void oJ(PiB piB) {
        oJ = piB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jFA(String str) {
        if (!TextUtils.isEmpty(this.f13149so)) {
            try {
                HashMap hashMap = new HashMap();
                JSONArray jSONArray = new JSONArray(this.f13149so);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    if (optJSONObject != null) {
                        String optString = optJSONObject.optString("name");
                        if (!TextUtils.isEmpty(optString)) {
                            hashMap.put(optString, optJSONObject);
                        }
                    }
                }
                JSONArray jSONArray2 = new JSONArray(str);
                for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                    JSONObject optJSONObject2 = jSONArray2.optJSONObject(i11);
                    if (optJSONObject2 != null) {
                        String optString2 = optJSONObject2.optString("name");
                        String optString3 = optJSONObject2.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString3)) {
                            hashMap.put(optString2, optJSONObject2);
                        }
                    }
                }
                Collection<JSONObject> values = hashMap.values();
                JSONArray jSONArray3 = new JSONArray();
                for (JSONObject jSONObject : values) {
                    jSONArray3.put(jSONObject);
                }
                this.f13149so = jSONArray3.toString();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        } else {
            this.f13149so = str;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_file", "extra_data", this.f13149so);
        }
    }

    private static void kkU(String str) {
        PiB piB;
        if (TextUtils.isEmpty(str) && (piB = oJ) != null) {
            piB.fail(4000, "appid cannot be empty");
        }
        com.bytedance.sdk.component.utils.QSm.tB("TTAD.GlobalInfo", "appid cannot be empty");
    }

    public void ZYk(String str) {
        this.Pfn = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        oJ("mediation_info", str);
    }

    public boolean oJ() {
        return this.awB;
    }

    public void so(String str) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_file", "adx_id", str);
        }
        this.WcQ = str;
    }

    public static boolean cFZ(String str) {
        return (TextUtils.isEmpty(str) || !com.bytedance.sdk.openadsdk.utils.HL.oJ || str.contains("sp_full_screen_video") || str.contains("sp_reward_video") || str.contains("tt_openad") || str.contains("pag_sp_bad_par")) ? false : true;
    }

    public void Pfn(int i10) {
        this.BTZ = i10;
    }

    public void ba(int i10) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_file", "title_bar_theme", Integer.valueOf(i10));
        }
        this.jFA = i10;
    }

    public void oJ(boolean z10) {
        this.awB = z10;
    }

    public void tB(@Nullable final String str) {
        dLZ(str);
        if (com.bytedance.sdk.openadsdk.utils.ofl.ba()) {
            WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.jFA.3
                @Override // java.lang.Runnable
                public void run() {
                    jFA.this.jFA(str);
                }
            });
        } else {
            jFA(str);
        }
    }

    public static void oJ(int i10) {
        if (i10 >= 0) {
            oJ("domain_index", String.valueOf(i10));
        }
    }

    public cFZ.oJ Pfn(String str) {
        try {
            if (this.Ry == null || str == null) {
                return null;
            }
            return this.Ry.get(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void ex(final int i10) {
        if (i10 == 1) {
            i10 = 0;
        } else if (i10 == 0) {
            i10 = 1;
        }
        if (i10 == 0 || i10 == 1 || i10 == -1) {
            final Integer num = this.dLZ;
            if (num == null || num.intValue() != i10) {
                this.dLZ = Integer.valueOf(i10);
                if (!com.bytedance.sdk.openadsdk.utils.ofl.ba()) {
                    oJ(num, i10);
                } else {
                    WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.jFA.2
                        @Override // java.lang.Runnable
                        public void run() {
                            jFA.this.oJ(num, i10);
                        }
                    });
                }
            }
        }
    }

    public void oJ(@NonNull String str) {
        kkU(str);
        this.ex = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        oJ("app_id", str);
        com.bytedance.sdk.openadsdk.core.settings.PiB.ib().ex(7);
    }

    public void ba(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                com.bytedance.sdk.openadsdk.tB.kkU.oJ(6, str);
            } else if (this.Ry != null) {
                this.Ry.remove(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void tB(boolean z10) {
        this.tB = z10;
    }

    public static Pair<String, Long> ex(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject BTZ = BTZ(str);
            if (BTZ == null) {
                return null;
            }
            return new Pair<>(BTZ.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE), Long.valueOf(BTZ.getLong(CrashHianalyticsData.TIME)));
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.GlobalInfo", e10.getMessage());
            return null;
        }
    }

    private String oJ(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Integer num, int i10) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_privacy", "tt_gdpr", Integer.valueOf(i10));
            com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oJ(4, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_privacy", "tt_gdpr", -1) != i10) {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_privacy", "tt_gdpr", Integer.valueOf(i10));
            com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oJ(4, true);
        }
    }

    public static void oJ(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, str2);
            jSONObject.put(CrashHianalyticsData.TIME, System.currentTimeMillis());
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("sp_global_file", str, jSONObject.toString());
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.GlobalInfo", e10.getMessage());
        }
    }

    public static String oJ(String str, long j10) {
        JSONObject BTZ;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            BTZ = BTZ(str);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.GlobalInfo", e10.getMessage());
        }
        if (BTZ == null) {
            return null;
        }
        if (System.currentTimeMillis() - BTZ.getLong(CrashHianalyticsData.TIME) <= j10) {
            return BTZ.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        }
        return null;
    }

    public void oJ(String str, cFZ.oJ oJVar) {
        try {
            if (TextUtils.isEmpty(str) || oJVar == null) {
                return;
            }
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                com.bytedance.sdk.openadsdk.tB.kkU.oJ(6, str, oJVar);
                return;
            }
            if (this.Ry == null) {
                synchronized (jFA.class) {
                    try {
                        if (this.Ry == null) {
                            this.Ry = new ConcurrentHashMap<>();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (this.Ry != null) {
                this.Ry.put(str, oJVar);
            }
        } catch (Throwable unused) {
        }
    }
}
