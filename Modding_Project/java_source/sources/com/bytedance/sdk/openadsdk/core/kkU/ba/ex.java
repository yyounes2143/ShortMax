package com.bytedance.sdk.openadsdk.core.kkU.ba;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    private final JSONObject BTZ;
    private com.bytedance.adsdk.ugeno.ZYk.tB Pfn;
    private boolean PiB;
    private boolean WcQ;
    private boolean awB;
    private final Context cFZ;
    private JSONObject dLZ;
    private JSONArray eZI;
    private com.bytedance.adsdk.ugeno.ZYk.tB ex;
    private final String jFA;
    private com.bytedance.sdk.openadsdk.core.widget.Pfn kkU;

    /* renamed from: so  reason: collision with root package name */
    private final cY f13158so;
    private com.bytedance.adsdk.ugeno.ZYk.tB tB;
    private int oJ = -1;
    private int ZYk = -1;

    /* renamed from: ba  reason: collision with root package name */
    private final String f13157ba = "UGenSwiperEvent";

    public ex(Context context, cY cYVar, String str, JSONObject jSONObject) {
        this.cFZ = context;
        this.f13158so = cYVar;
        this.jFA = str;
        this.BTZ = jSONObject;
    }

    public JSONObject ex() {
        return this.dLZ;
    }

    public void ZYk() {
        int i10;
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.Pfn;
        if (!(tBVar instanceof com.bytedance.adsdk.ugeno.tB) || (i10 = this.oJ) == -1) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.tB) tBVar).oJ(i10 - 1);
    }

    public void tB() {
        int i10;
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.Pfn;
        if (!(tBVar instanceof com.bytedance.adsdk.ugeno.tB) || (i10 = this.oJ) == -1) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.tB) tBVar).oJ(i10 + 1);
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> ex = tBVar.ex("swiperLayout");
        this.Pfn = ex;
        if (ex instanceof com.bytedance.adsdk.ugeno.tB) {
            this.eZI = this.BTZ.optJSONArray("dpa_data");
            this.tB = tBVar.ex("swiperLeftArrow");
            this.ex = tBVar.ex("swiperRightArrow");
            ((com.bytedance.adsdk.ugeno.tB) this.Pfn).oJ(new com.bytedance.adsdk.ugeno.ba.tB() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ba.ex.1
                @Override // com.bytedance.adsdk.ugeno.ba.tB
                public void oJ(boolean z10, int i10) {
                }

                @Override // com.bytedance.adsdk.ugeno.ba.tB
                public void oJ(boolean z10, int i10, float f10, int i11) {
                }

                @Override // com.bytedance.adsdk.ugeno.ba.tB
                public void oJ(boolean z10, int i10, int i11, boolean z11, boolean z12) {
                    ex.this.ZYk = i10;
                    ex.this.oJ = i11;
                    ex.this.PiB = z10;
                    ex.this.WcQ = z11;
                    ex.this.awB = z12;
                    ex.this.oJ(z10, z11, z12);
                    ex.this.oJ(i10);
                }
            });
        }
    }

    public void oJ() {
        oJ(this.PiB, this.WcQ, this.awB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(boolean z10, boolean z11, boolean z12) {
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.tB;
        if (tBVar == null || this.ex == null) {
            return;
        }
        View dLZ = tBVar.dLZ();
        View dLZ2 = this.ex.dLZ();
        JSONArray jSONArray = this.eZI;
        if (jSONArray != null && jSONArray.length() == 1) {
            dLZ.setVisibility(8);
            dLZ2.setVisibility(8);
        } else if (z10) {
        } else {
            if (z11) {
                if (dLZ instanceof TextView) {
                    oJ((TextView) dLZ, 90);
                }
                if (dLZ2 instanceof TextView) {
                    oJ((TextView) dLZ2, 255);
                }
            } else if (z12) {
                if (dLZ instanceof TextView) {
                    oJ((TextView) dLZ, 255);
                }
                if (dLZ2 instanceof TextView) {
                    oJ((TextView) dLZ2, 90);
                }
            } else {
                if (dLZ instanceof TextView) {
                    oJ((TextView) dLZ, 255);
                }
                if (dLZ2 instanceof TextView) {
                    oJ((TextView) dLZ2, 255);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TextureRenderKeys.KEY_IS_INDEX, i10);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13158so, this.jFA, "carousel_show", jSONObject);
    }

    private void oJ(TextView textView, int i10) {
        int currentTextColor = textView.getCurrentTextColor();
        textView.setTextColor(Color.argb(i10, Color.red(currentTextColor), Color.green(currentTextColor), Color.blue(currentTextColor)));
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.widget.Pfn pfn) {
        this.kkU = pfn;
    }

    public boolean oJ(PiB piB) {
        JSONObject optJSONObject;
        this.dLZ = null;
        int i10 = this.ZYk;
        if (i10 != -1 && i10 != 0) {
            try {
                JSONObject tB = piB.tB();
                if (tB != null && (optJSONObject = tB.optJSONObject("related_dpa_click")) != null) {
                    boolean optBoolean = optJSONObject.optBoolean("enableOpenExternalUrl");
                    int optInt = optJSONObject.optInt("landingStyle");
                    if (optBoolean && optInt != -1) {
                        if (this.eZI != null) {
                            String oJ = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(optJSONObject.optString("url"), this.eZI.optJSONObject(this.ZYk));
                            String oJ2 = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(optJSONObject.optString("fallback_url"), this.eZI.optJSONObject(this.ZYk));
                            optJSONObject.put("url", oJ);
                            optJSONObject.put("fallback_url", oJ2);
                            oJ(optJSONObject, this.eZI.optJSONObject(this.ZYk));
                        }
                        oJ(optJSONObject, piB.oJ().dLZ());
                        return true;
                    }
                    return false;
                }
            } catch (Throwable th2) {
                QSm.tB("UGenSwiperEvent", th2.getMessage());
            }
        }
        return false;
    }

    private void oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("clickInfo");
        this.dLZ = optJSONObject;
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    this.dLZ.putOpt(next, com.bytedance.adsdk.ugeno.tB.ZYk.oJ((String) this.dLZ.opt(next), jSONObject2));
                } catch (Throwable unused) {
                }
            }
            try {
                jSONObject.putOpt("clickInfo", this.dLZ);
            } catch (Throwable unused2) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0008, code lost:
        if (r4 != 3) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean oJ(int r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            r0 = 0
            r1 = 1
            if (r4 == r1) goto L1f
            r2 = 2
            if (r4 == r2) goto Lb
            r6 = 3
            if (r4 == r6) goto L1f
            goto L26
        Lb:
            boolean r4 = android.text.TextUtils.isEmpty(r5)
            if (r4 == 0) goto L18
            boolean r4 = android.text.TextUtils.isEmpty(r6)
            if (r4 == 0) goto L18
            goto L27
        L18:
            boolean r4 = com.bytedance.sdk.component.utils.Ry.oJ(r6)
            if (r4 != 0) goto L26
            goto L27
        L1f:
            boolean r4 = com.bytedance.sdk.component.utils.Ry.oJ(r5)
            if (r4 != 0) goto L26
            goto L27
        L26:
            r0 = r1
        L27:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.kkU.ba.ex.oJ(int, java.lang.String, java.lang.String):boolean");
    }

    private void oJ(JSONObject jSONObject, View view) {
        if (oJ(jSONObject.optInt("landingStyle"), jSONObject.optString("url"), jSONObject.optString("fallback_url"))) {
            Ry.oJ(oJ(view), this.cFZ instanceof Activity, jSONObject, this.f13158so, this.jFA, HyG.oJ(this.jFA), null, this.kkU);
        }
    }

    private Context oJ(View view) {
        Activity oJ = view != null ? com.bytedance.sdk.component.utils.ZYk.oJ(view) : null;
        return oJ == null ? this.cFZ : oJ;
    }
}
