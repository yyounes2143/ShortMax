package com.bytedance.sdk.openadsdk.ex;

import android.text.TextUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements com.bytedance.sdk.component.ba.oJ.ex.oJ.ZYk {
    private final AtomicBoolean BTZ;
    private String Id;
    private long Pfn;
    private JSONObject PiB;
    private com.bytedance.sdk.openadsdk.ex.ZYk.oJ QSm;
    private String RZ;
    private String Ry;
    private String WcQ;
    protected final JSONObject ZYk;
    private String awB;

    /* renamed from: ba  reason: collision with root package name */
    private final String f13346ba;
    private int cFZ;
    private int cY;
    private String eZI;
    private long ex;
    private int jFA;

    /* renamed from: jr  reason: collision with root package name */
    private String f13347jr;
    public final String oJ;

    /* renamed from: oq  reason: collision with root package name */
    private String f13348oq;

    /* renamed from: si  reason: collision with root package name */
    private String f13349si;

    /* renamed from: so  reason: collision with root package name */
    private int f13350so;
    private boolean tB;
    private static final Set<String> kkU = new HashSet(Arrays.asList("insight_log"));
    private static final Map<String, String> dLZ = new HashMap<String, String>() { // from class: com.bytedance.sdk.openadsdk.ex.oJ.1
        {
            put("id", "extra_id");
            put("source", "extra_source");
            put("url", "extra_url");
            put("toolType", "extra_tool_type");
            put("storeOpenType", "store_open_type");
            put("errorCode", GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE);
            put("md5", "extra_md5");
            put("areaType", "area_type");
            put("rectInfo", "rect_info");
        }
    };

    /* renamed from: com.bytedance.sdk.openadsdk.ex.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0233oJ {
        private final int BTZ;
        private String Pfn;
        private String PiB;
        private String QSm;
        private boolean RZ;
        private int Ry;
        private com.bytedance.sdk.openadsdk.ex.ZYk.ZYk WcQ;
        private String ZYk;
        private com.bytedance.sdk.openadsdk.ex.ZYk.oJ awB;

        /* renamed from: ba  reason: collision with root package name */
        private String f13354ba;
        private String cFZ;
        private String dLZ;
        private final long eZI;
        private String ex;
        private String jFA;
        private JSONObject kkU;
        public int oJ;

        /* renamed from: si  reason: collision with root package name */
        private int f13355si;

        /* renamed from: so  reason: collision with root package name */
        private String f13356so;
        private String tB;

        public C0233oJ(long j10, cY cYVar) {
            this.f13355si = -1;
            this.Ry = -1;
            this.oJ = -1;
            if (cYVar != null) {
                this.RZ = Ln.ZYk(cYVar);
                this.f13355si = cYVar.NO();
                this.Ry = cYVar.LS();
                this.oJ = cYVar.Dc();
            }
            this.eZI = j10;
            this.BTZ = com.bytedance.sdk.component.utils.Ry.tB(com.bytedance.sdk.openadsdk.core.si.oJ());
        }

        public C0233oJ Pfn(String str) {
            this.f13356so = str;
            return this;
        }

        public C0233oJ ZYk(String str) {
            this.tB = str;
            return this;
        }

        public C0233oJ ba(String str) {
            this.jFA = str;
            return this;
        }

        public C0233oJ cFZ(String str) {
            this.cFZ = str;
            return this;
        }

        public C0233oJ ex(String str) {
            this.Pfn = str;
            return this;
        }

        public C0233oJ so(String str) {
            this.QSm = str;
            return this;
        }

        public C0233oJ tB(String str) {
            this.ex = str;
            return this;
        }

        public C0233oJ oJ(String str) {
            this.PiB = str;
            return this;
        }

        public C0233oJ oJ(JSONObject jSONObject) {
            if (jSONObject == null) {
                return this;
            }
            this.kkU = jSONObject;
            return this;
        }

        public void oJ(com.bytedance.sdk.openadsdk.ex.ZYk.oJ oJVar) {
            com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ(this.ex, this.QSm, this.cFZ, this.tB);
            this.awB = oJVar;
            final oJ oJVar2 = new oJ(this);
            try {
                com.bytedance.sdk.openadsdk.ex.ZYk.ZYk zYk = this.WcQ;
                if (zYk != null) {
                    zYk.oJ(oJVar2.ZYk, this.eZI);
                } else {
                    new com.bytedance.sdk.openadsdk.ex.ZYk.tB().oJ(oJVar2.ZYk, this.eZI);
                }
            } catch (Throwable unused) {
            }
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                ofl.tB(new com.bytedance.sdk.component.so.so("dispatchEvent") { // from class: com.bytedance.sdk.openadsdk.ex.oJ.oJ.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(oJVar2);
                    }
                });
            } else {
                com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(oJVar2);
            }
        }
    }

    public oJ(String str, JSONObject jSONObject) {
        this.f13346ba = "adiff";
        this.BTZ = new AtomicBoolean(false);
        this.PiB = new JSONObject();
        this.oJ = str;
        this.ZYk = jSONObject;
    }

    private boolean ZYk(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 111399750:
                if (str.equals("umeng")) {
                    c10 = 0;
                    break;
                }
                break;
            case 278118976:
                if (str.equals("event_v1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 278118978:
                if (str.equals("event_v3")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1844205361:
                if (str.equals("app_union")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    private void ba() {
        JSONObject jSONObject = this.PiB;
        if (jSONObject == null) {
            if (!oJ(this.f13349si, this.eZI, this.Id)) {
                return;
            }
        } else {
            String optString = jSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            String optString2 = this.PiB.optString("category");
            String optString3 = this.PiB.optString("log_extra");
            if (oJ(this.f13349si, this.eZI, this.Id)) {
                if (!TextUtils.isEmpty(optString) && TextUtils.equals(optString, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    return;
                }
                if (!TextUtils.isEmpty(optString2) && !ZYk(optString2)) {
                    return;
                }
            } else if ((!TextUtils.isEmpty(optString) && !TextUtils.equals(optString, MBridgeConstans.ENDCARD_URL_TYPE_PL)) || (!TextUtils.isEmpty(this.f13349si) && !TextUtils.equals(this.f13349si, MBridgeConstans.ENDCARD_URL_TYPE_PL))) {
                if ((!TextUtils.isEmpty(this.eZI) && ZYk(this.eZI)) || (!TextUtils.isEmpty(optString2) && ZYk(optString2))) {
                    if (TextUtils.isEmpty(this.Id) && TextUtils.isEmpty(optString3)) {
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.ex = com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ.incrementAndGet();
    }

    private void cFZ() throws JSONException {
        this.ZYk.putOpt("app_log_url", this.f13347jr);
        this.ZYk.putOpt(ITTVideoEngineEventSource.KEY_TAG, this.WcQ);
        this.ZYk.putOpt("label", this.awB);
        this.ZYk.putOpt("category", this.eZI);
        if (!TextUtils.isEmpty(this.f13349si)) {
            try {
                this.ZYk.putOpt(AppMeasurementSdk.ConditionalUserProperty.VALUE, Long.valueOf(Long.parseLong(this.f13349si)));
            } catch (NumberFormatException unused) {
                this.ZYk.putOpt(AppMeasurementSdk.ConditionalUserProperty.VALUE, 0L);
            }
        }
        if (!TextUtils.isEmpty(this.RZ)) {
            try {
                this.ZYk.putOpt("ext_value", Long.valueOf(Long.parseLong(this.RZ)));
            } catch (Exception unused2) {
            }
        }
        if (!TextUtils.isEmpty(this.Id)) {
            this.ZYk.putOpt("log_extra", this.Id);
        }
        if (!TextUtils.isEmpty(this.f13348oq)) {
            try {
                this.ZYk.putOpt("ua_policy", Integer.valueOf(Integer.parseInt(this.f13348oq)));
            } catch (NumberFormatException unused3) {
            }
        }
        oJ(this.ZYk, this.awB);
        try {
            this.ZYk.putOpt("nt", Integer.valueOf(this.cY));
        } catch (Exception unused4) {
        }
        Iterator<String> keys = this.PiB.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.ZYk.putOpt(next, this.PiB.opt(next));
        }
    }

    private boolean oJ(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, MBridgeConstans.ENDCARD_URL_TYPE_PL) || TextUtils.isEmpty(str3)) {
            return false;
        }
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case 111399750:
                if (str2.equals("umeng")) {
                    c10 = 0;
                    break;
                }
                break;
            case 278118976:
                if (str2.equals("event_v1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 278118978:
                if (str2.equals("event_v3")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1844205361:
                if (str2.equals("app_union")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    public boolean Pfn() {
        Set<String> dLZ2;
        if (this.ZYk == null || (dLZ2 = com.bytedance.sdk.openadsdk.core.si.ex().dLZ()) == null) {
            return false;
        }
        String optString = this.ZYk.optString("label");
        if (TextUtils.isEmpty(optString)) {
            if (TextUtils.isEmpty(this.awB)) {
                return false;
            }
            return dLZ2.contains(this.awB);
        }
        return dLZ2.contains(optString);
    }

    public String ex() {
        return this.oJ;
    }

    public JSONObject tB() {
        if (this.BTZ.get()) {
            return this.ZYk;
        }
        try {
            cFZ();
        } catch (Throwable unused) {
        }
        if (this.ZYk.has("ad_extra_data")) {
            Object opt = this.ZYk.opt("ad_extra_data");
            if (opt != null) {
                try {
                    if (opt instanceof JSONObject) {
                        this.ZYk.put("ad_extra_data", oJ((JSONObject) opt).toString());
                    } else if (opt instanceof String) {
                        this.ZYk.put("ad_extra_data", oJ(new JSONObject((String) opt)).toString());
                    }
                } catch (JSONException e10) {
                    QSm.tB("AdEvent", "json error", e10.getMessage());
                }
            }
            this.BTZ.set(true);
            return this.ZYk;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adiff", this.oJ);
            if (this.tB) {
                jSONObject.put("interaction_method", this.cFZ);
                jSONObject.put("real_interaction_method", this.f13350so);
                jSONObject.put("image_mode", this.jFA);
            }
            this.ZYk.put("ad_extra_data", jSONObject.toString());
        } catch (JSONException e11) {
            QSm.tB("AdEvent", "json error", e11.getMessage());
        }
        this.BTZ.set(true);
        return this.ZYk;
        return this.ZYk;
    }

    private void ZYk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        for (String str : dLZ.keySet()) {
            try {
                if (jSONObject.has(str)) {
                    Object opt = jSONObject.opt(str);
                    jSONObject.remove(str);
                    jSONObject.put(dLZ.get(str), opt);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private JSONObject oJ(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("adiff")) {
                jSONObject.put("adiff", this.oJ);
            }
            if (this.tB) {
                if (!jSONObject.has("interaction_method")) {
                    jSONObject.put("interaction_method", this.cFZ);
                }
                if (!jSONObject.has("real_interaction_method")) {
                    jSONObject.put("real_interaction_method", this.f13350so);
                }
                if (!jSONObject.has("image_mode")) {
                    jSONObject.put("image_mode", this.jFA);
                }
            }
            if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("replace_log_extra_key", false)) {
                ZYk(jSONObject);
            }
            jSONObject.put("pangle_client_unique_id", "pangle-" + this.oJ + "-" + System.currentTimeMillis());
            return jSONObject;
        } catch (Throwable th2) {
            QSm.tB("AdEvent", th2.getMessage() == null ? "error " : th2.getMessage());
            return jSONObject;
        }
    }

    oJ(C0233oJ c0233oJ) {
        this.f13346ba = "adiff";
        this.BTZ = new AtomicBoolean(false);
        this.PiB = new JSONObject();
        if (!TextUtils.isEmpty(c0233oJ.ZYk)) {
            this.oJ = c0233oJ.ZYk;
        } else {
            this.oJ = Xe.oJ();
        }
        this.QSm = c0233oJ.awB;
        this.Id = c0233oJ.f13354ba;
        this.WcQ = c0233oJ.tB;
        this.awB = c0233oJ.ex;
        if (!TextUtils.isEmpty(c0233oJ.Pfn)) {
            this.eZI = c0233oJ.Pfn;
        } else {
            this.eZI = "app_union";
        }
        this.f13348oq = c0233oJ.dLZ;
        this.f13349si = c0233oJ.f13356so;
        this.RZ = c0233oJ.jFA;
        this.Ry = c0233oJ.cFZ;
        this.cY = c0233oJ.BTZ;
        this.f13347jr = c0233oJ.PiB;
        this.PiB = c0233oJ.kkU = c0233oJ.kkU != null ? c0233oJ.kkU : new JSONObject();
        JSONObject jSONObject = new JSONObject();
        this.ZYk = jSONObject;
        if (!TextUtils.isEmpty(c0233oJ.PiB)) {
            try {
                jSONObject.put("app_log_url", c0233oJ.PiB);
            } catch (JSONException e10) {
                QSm.tB("AdEvent", e10.getMessage());
            }
        }
        this.cFZ = c0233oJ.f13355si;
        this.f13350so = c0233oJ.Ry;
        this.jFA = c0233oJ.oJ;
        this.tB = c0233oJ.RZ;
        this.Pfn = System.currentTimeMillis();
        ba();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ.ZYk
    public long ZYk() {
        return this.ex;
    }

    public JSONObject oJ(boolean z10) {
        JSONObject tB = tB();
        try {
            if (z10) {
                JSONObject jSONObject = new JSONObject(tB.toString());
                JSONObject optJSONObject = jSONObject.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
                if (optJSONObject != null) {
                    optJSONObject.remove("app_log_url");
                }
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(tB.toString());
            jSONObject2.remove("app_log_url");
            return jSONObject2;
        } catch (JSONException e10) {
            QSm.tB("AdEvent", e10.getMessage());
            return tB;
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ.ZYk
    public JSONObject oJ(String str) {
        return tB();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ.ZYk
    public long oJ() {
        return this.Pfn;
    }

    private static void oJ(JSONObject jSONObject, String str) {
        try {
            Set<String> set = kkU;
            if (!set.contains(str) && !set.contains(jSONObject.get("label"))) {
                jSONObject.putOpt("is_ad_event", "1");
            }
        } catch (Throwable th2) {
            QSm.tB("AdEvent", th2);
        }
    }
}
