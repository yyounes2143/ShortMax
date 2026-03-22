package com.bytedance.sdk.component.oJ;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.sdk.component.oJ.cFZ;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class oJ {
    protected String Pfn;
    protected PiB ZYk;
    cFZ cFZ;
    protected Context oJ;
    protected so tB;
    protected Handler ex = new Handler(Looper.getMainLooper());

    /* renamed from: ba  reason: collision with root package name */
    protected volatile boolean f12802ba = false;

    /* renamed from: so  reason: collision with root package name */
    private final Map<String, cFZ> f12803so = new HashMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public void ZYk() {
        this.cFZ.oJ();
        for (cFZ cfz : this.f12803so.values()) {
            cfz.oJ();
        }
        this.ex.removeCallbacksAndMessages(null);
        this.f12802ba = true;
    }

    protected abstract void ZYk(kkU kku);

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeMethod(final String str) {
        if (this.f12802ba) {
            return;
        }
        this.ex.post(new Runnable() { // from class: com.bytedance.sdk.component.oJ.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                eZI ezi;
                if (!oJ.this.f12802ba) {
                    try {
                        ezi = oJ.this.oJ(new JSONObject(str));
                    } catch (Exception unused) {
                        ezi = null;
                    }
                    if (eZI.oJ(ezi)) {
                        Objects.toString(ezi);
                        if (ezi != null) {
                            oJ.this.ZYk(jr.oJ(new Ry(ezi.oJ, "Failed to parse invocation.")), ezi);
                            return;
                        }
                        return;
                    }
                    oJ.this.oJ(ezi);
                }
            }
        });
    }

    protected abstract Context oJ(kkU kku);

    protected abstract String oJ();

    protected abstract void oJ(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(String str, eZI ezi) {
        oJ(str);
    }

    protected final void oJ(eZI ezi) {
        String oJ;
        if (this.f12802ba || (oJ = oJ()) == null) {
            return;
        }
        cFZ ZYk = ZYk(ezi.cFZ);
        if (ZYk == null) {
            ezi.toString();
            if (this.ZYk != null) {
                oJ();
            }
            ZYk(jr.oJ(new Ry(-4, "Namespace " + ezi.cFZ + " unknown.")), ezi);
            return;
        }
        ba baVar = new ba();
        baVar.ZYk = oJ;
        baVar.oJ = this.oJ;
        baVar.tB = ZYk;
        try {
            cFZ.oJ oJ2 = ZYk.oJ(ezi, baVar);
            if (oJ2 == null) {
                ezi.toString();
                if (this.ZYk != null) {
                    oJ();
                }
                ZYk(jr.oJ(new Ry(-2, "Function " + ezi.ex + " is not registered.")), ezi);
                return;
            }
            if (oJ2.oJ) {
                ZYk(oJ2.ZYk, ezi);
            }
            if (this.ZYk != null) {
                oJ();
            }
        } catch (Exception e10) {
            ezi.toString();
            ZYk(jr.oJ(e10), ezi);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void ZYk(String str, eZI ezi) {
        JSONObject jSONObject;
        if (this.f12802ba || TextUtils.isEmpty(ezi.f12797ba)) {
            return;
        }
        if (!str.startsWith("{") || !str.endsWith("}")) {
            jFA.oJ(new IllegalArgumentException("Illegal callback data: ".concat(str)));
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        oJ(awB.oJ().oJ("__msg_type", TextureRenderKeys.KEY_IS_CALLBACK).oJ("__callback_id", ezi.f12797ba).oJ("__params", jSONObject).ZYk(), ezi);
    }

    private cFZ ZYk(String str) {
        if (!TextUtils.equals(str, this.Pfn) && !TextUtils.isEmpty(str)) {
            return this.f12803so.get(str);
        }
        return this.cFZ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void oJ(kkU kku, oq oqVar) {
        this.oJ = oJ(kku);
        this.tB = kku.ex;
        this.ZYk = kku.jFA;
        this.cFZ = new cFZ(kku, this, oqVar);
        this.Pfn = kku.dLZ;
        ZYk(kku);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public eZI oJ(JSONObject jSONObject) {
        String str;
        if (this.f12802ba) {
            return null;
        }
        String optString = jSONObject.optString("__callback_id");
        String optString2 = jSONObject.optString("func");
        if (oJ() == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("__msg_type");
            String str2 = "";
            Object opt = jSONObject.opt(MetricsSQLiteCacheKt.METRICS_PARAMS);
            if (opt != null) {
                if (opt instanceof JSONObject) {
                    str = String.valueOf((JSONObject) opt);
                    String string2 = jSONObject.getString("JSSDK");
                    String optString3 = jSONObject.optString("namespace");
                    return eZI.oJ().oJ(string2).ZYk(string).tB(optString2).ex(str).Pfn(optString).ba(optString3).cFZ(jSONObject.optString("__iframe_url")).oJ();
                } else if (opt instanceof String) {
                    str2 = (String) opt;
                } else {
                    str2 = String.valueOf(opt);
                }
            }
            str = str2;
            String string22 = jSONObject.getString("JSSDK");
            String optString32 = jSONObject.optString("namespace");
            return eZI.oJ().oJ(string22).ZYk(string).tB(optString2).ex(str).Pfn(optString).ba(optString32).cFZ(jSONObject.optString("__iframe_url")).oJ();
        } catch (JSONException unused) {
            return eZI.oJ(optString, -1);
        }
    }
}
