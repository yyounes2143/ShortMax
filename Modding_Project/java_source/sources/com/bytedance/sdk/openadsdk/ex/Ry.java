package com.bytedance.sdk.openadsdk.ex;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Ry implements com.bytedance.sdk.openadsdk.ex.ex.Pfn {
    private Boolean Pfn;
    private cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private JSONObject f13341ba;
    private JSONArray cFZ;
    private Boolean ex;
    private String oJ;

    /* renamed from: so  reason: collision with root package name */
    private JSONArray f13342so;
    private Boolean tB;

    public Ry(int i10, String str, cY cYVar) {
        Boolean bool = Boolean.FALSE;
        this.tB = bool;
        this.ex = bool;
        this.Pfn = bool;
        this.oJ = str;
        this.ZYk = cYVar;
        this.f13341ba = new JSONObject();
        this.cFZ = new JSONArray();
        this.f13342so = new JSONArray();
        oJ(this.f13341ba, "webview_source", Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean si() {
        if (!this.Pfn.booleanValue()) {
            if (!this.ex.booleanValue() || !this.tB.booleanValue()) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.Pfn
    public void BTZ() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.10
            @Override // java.lang.Runnable
            public void run() {
                if (!Ry.this.si()) {
                    return;
                }
                if (Ry.this.cFZ != null && Ry.this.cFZ.length() != 0) {
                    try {
                        Ry.this.f13341ba.put("native_switchBackgroundAndForeground", Ry.this.cFZ);
                    } catch (Exception unused) {
                    }
                }
                if (Ry.this.f13342so != null && Ry.this.f13342so.length() != 0) {
                    try {
                        Ry.this.f13341ba.put("intercept_source", Ry.this.f13342so);
                    } catch (Exception unused2) {
                    }
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("webview_time_track", Ry.this.f13341ba);
                } catch (JSONException e10) {
                    QSm.oJ("WebviewTimeTrack", "trySendTrackInfo json error", e10);
                }
                if (com.bytedance.sdk.openadsdk.core.jFA.ZYk().si() && Ry.this.f13341ba != null) {
                    JSONObject unused3 = Ry.this.f13341ba;
                }
                tB.ZYk(Ry.this.ZYk, Ry.this.oJ, "webview_time_track", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ZYk
    public void PiB() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.14
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "native_render_end", jSONObject);
                long currentTimeMillis2 = System.currentTimeMillis();
                JSONObject jSONObject2 = new JSONObject();
                Ry.this.oJ(jSONObject2, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis2));
                Ry ry2 = Ry.this;
                ry2.oJ(ry2.f13341ba, "render_success", jSONObject2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ZYk
    public void WcQ() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.15
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "no_native_render", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ex
    public void awB() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.16
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "render_failed", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.tB
    public void cFZ() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.30
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "native_endcard_show", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.Pfn
    public void dLZ() {
        this.tB = Boolean.TRUE;
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ex
    public void eZI() {
        try {
            com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.17
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                    Ry ry = Ry.this;
                    ry.oJ(ry.f13341ba, "render_did_finish", jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.tB
    public void jFA() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.3
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry.this.oJ(jSONObject, "type", "native_enterBackground");
                Ry ry = Ry.this;
                ry.oJ(ry.cFZ, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.tB
    public void kkU() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.4
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry.this.oJ(jSONObject, "type", "native_enterForeground");
                Ry ry = Ry.this;
                ry.oJ(ry.cFZ, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.tB
    public void so() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.2
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "native_endcard_close", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void Pfn() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.27
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "webview_load_start", (Object) jSONObject, false);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ex
    public void ZYk() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.12
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "render_success", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void ba() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.28
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "webview_load_success", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.oJ
    public void cFZ(final String str) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.22
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.tB
    public void ex() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.26
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "native_render_end", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ZYk
    public void tB() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.25
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "native_render_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.oJ
    public void Pfn(final String str) {
        try {
            com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.19
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                    Ry ry = Ry.this;
                    ry.oJ(ry.f13341ba, str, jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void ZYk(final String str, final long j10, final long j11, final int i10) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.6
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(str) && j11 >= j10) {
                    JSONObject jSONObject = new JSONObject();
                    Ry.this.oJ(jSONObject, "start_ts", Long.valueOf(j10));
                    Ry.this.oJ(jSONObject, "end_ts", Long.valueOf(j11));
                    Ry.this.oJ(jSONObject, "intercept_type", Integer.valueOf(i10));
                    Ry.this.oJ(jSONObject, "type", "intercept_js");
                    Ry.this.oJ(jSONObject, "url", str);
                    Ry.this.oJ(jSONObject, "duration", Long.valueOf(j11 - j10));
                    Ry ry = Ry.this;
                    ry.oJ(ry.f13342so, jSONObject);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.oJ
    public void ba(final String str) {
        try {
            com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.20
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                    Ry ry = Ry.this;
                    ry.oJ(ry.f13341ba, str, jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.oJ
    public void ex(final String str) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.18
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.oJ
    public void tB(final String str) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.11
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void ZYk(final String str) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.8
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry.this.oJ(jSONObject, "jsb", str);
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "webview_jsb_end", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.oJ
    public void tB(final int i10, final String str) {
        try {
            com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.21
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                    Ry.this.oJ(jSONObject, Module.ResponseKey.Code, Integer.valueOf(i10));
                    Ry ry = Ry.this;
                    ry.oJ(ry.f13341ba, str, jSONObject);
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void ZYk(final JSONObject jSONObject) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.9
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2;
                if (Ry.this.f13341ba != null && (jSONObject2 = jSONObject) != null) {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Ry ry = Ry.this;
                        ry.oJ(ry.f13341ba, next, jSONObject.opt(next));
                    }
                    Ry.this.ex = Boolean.TRUE;
                    Ry.this.BTZ();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.oJ
    public void ZYk(final int i10, final String str) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.13
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry.this.oJ(jSONObject, Module.ResponseKey.Code, Integer.valueOf(i10));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ex
    public void oJ() {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.1
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry ry = Ry.this;
                ry.oJ(jSONObject, "render_sequence", Integer.valueOf(ry.ZYk.uvK()));
                if (Ry.this.ZYk != null) {
                    if (Ry.this.ZYk.PdF() != null) {
                        if (Ry.this.ZYk.PdF().BTZ()) {
                            Ry.this.oJ(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ex()));
                            Ry.this.oJ(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ex()));
                        } else {
                            Ry.this.oJ(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().tB()));
                            Ry.this.oJ(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().tB()));
                        }
                    } else if (Ry.this.ZYk.BWx() != null) {
                        Ry.this.oJ(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ex()));
                        Ry.this.oJ(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ex()));
                    }
                }
                Ry ry2 = Ry.this;
                ry2.oJ(ry2.f13341ba, "render_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ex
    public void oJ(final int i10, final String str) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.23
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry.this.oJ(jSONObject, Module.ResponseKey.Code, Integer.valueOf(i10));
                String str2 = str;
                if (str2 != null) {
                    Ry.this.oJ(jSONObject, "reason", str2);
                }
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "render_error", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void oJ(final JSONObject jSONObject) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.29
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                Ry.this.oJ(jSONObject2, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(System.currentTimeMillis()));
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "webview_load_error", jSONObject2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void oJ(final String str, final long j10, final long j11, final int i10) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.5
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(str) && j11 >= j10) {
                    JSONObject jSONObject = new JSONObject();
                    Ry.this.oJ(jSONObject, "start_ts", Long.valueOf(j10));
                    Ry.this.oJ(jSONObject, "end_ts", Long.valueOf(j11));
                    Ry.this.oJ(jSONObject, "intercept_type", Integer.valueOf(i10));
                    Ry.this.oJ(jSONObject, "type", "intercept_html");
                    Ry.this.oJ(jSONObject, "url", str);
                    Ry.this.oJ(jSONObject, "duration", Long.valueOf(j11 - j10));
                    Ry ry = Ry.this;
                    ry.oJ(ry.f13342so, jSONObject);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void oJ(final String str) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.7
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry.this.oJ(jSONObject, "jsb", str);
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "webview_jsb_start", jSONObject);
            }
        });
    }

    protected Ry() {
        this.oJ = "embeded_ad";
        Boolean bool = Boolean.FALSE;
        this.tB = bool;
        this.ex = bool;
        this.Pfn = bool;
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.Pfn
    public void oJ(boolean z10) {
        this.Pfn = Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(JSONObject jSONObject, String str, Object obj, boolean z10) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z10) {
            try {
                if (jSONObject.has(str)) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        jSONObject.put(str, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(JSONObject jSONObject, String str, Object obj) {
        oJ(jSONObject, str, obj, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(JSONArray jSONArray, Object obj) {
        if (jSONArray != null && jSONArray.length() < 10) {
            try {
                jSONArray.put(obj);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ex.ex.ba
    public void oJ(final int i10) {
        com.bytedance.sdk.component.utils.jFA.oJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.Ry.24
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                Ry.this.oJ(jSONObject, CampaignEx.JSON_KEY_ST_TS, Long.valueOf(currentTimeMillis));
                Ry.this.oJ(jSONObject, "isWebViewCache", Integer.valueOf(i10));
                if (Ry.this.ZYk != null) {
                    if (Ry.this.ZYk.XQY()) {
                        Ry.this.oJ(jSONObject, "engine_version", "v3");
                    } else {
                        Ry.this.oJ(jSONObject, "engine_version", "v1");
                    }
                }
                Ry ry = Ry.this;
                ry.oJ(ry.f13341ba, "before_webview_request", jSONObject);
            }
        });
    }
}
