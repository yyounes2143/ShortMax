package com.bytedance.sdk.openadsdk.core.kkU.ex;

import android.app.Activity;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.eZI;
import com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ;
import com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.XAo;
import com.bytedance.sdk.openadsdk.core.kkU.ex.oJ;
import com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk implements eZI, oJ.InterfaceC0220oJ {
    protected static int oJ = 8;
    private String BTZ;
    private final com.bytedance.sdk.openadsdk.core.kkU.so.oJ Pfn;
    private View PiB;
    private boolean QSm = true;
    private long RZ;
    private long Ry;
    private float WcQ;
    private oJ ZYk;
    private float awB;

    /* renamed from: ba  reason: collision with root package name */
    private String f13167ba;
    private String cFZ;
    private com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ dLZ;
    private float eZI;
    private final cY ex;
    private JSONObject jFA;
    private final com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk kkU;

    /* renamed from: si  reason: collision with root package name */
    private float f13168si;

    /* renamed from: so  reason: collision with root package name */
    private String f13169so;
    private final Activity tB;

    public ZYk(Activity activity, cY cYVar, com.bytedance.sdk.openadsdk.core.kkU.so.oJ oJVar, String str, com.bytedance.sdk.openadsdk.core.kkU.cFZ.ZYk zYk) {
        this.tB = activity;
        this.BTZ = str;
        this.ex = cYVar;
        this.kkU = zYk;
        this.Pfn = oJVar;
    }

    private void ZYk() {
        int sQ = this.ex.sQ();
        if (sQ != 2 && sQ != 3) {
            if (sQ == 4) {
                cFZ.oJ(this.tB, this.BTZ).tB(this.ex);
                return;
            } else if (sQ != 5) {
                return;
            } else {
                HyG.ZYk(this.tB, this.ex.uq());
                return;
            }
        }
        if (sQ == 3) {
            String Oof = this.ex.Oof();
            if (!TextUtils.isEmpty(Oof) && Oof.contains("play.google.com/store")) {
                if (ex.oJ(this.tB, Oof, Oof.substring(Oof.indexOf("?id=") + 4), this.BTZ, this.ex)) {
                    return;
                }
            }
        }
        Activity activity = this.tB;
        cY cYVar = this.ex;
        int oJ2 = HyG.oJ(this.BTZ);
        String str = this.BTZ;
        XAo.oJ(activity, cYVar, oJ2, null, null, str, cFZ.oJ(this.tB, str), true, 0);
    }

    public void oJ() {
        if (this.ex == null) {
            this.kkU.oJ(1, "material is null", "net");
        } else if (this.Pfn == null) {
            this.kkU.oJ(1, "material ugen template is null", "net");
        } else {
            this.ZYk = new oJ(this.tB);
            this.f13169so = this.Pfn.tB();
            this.f13167ba = this.Pfn.oJ();
            this.cFZ = this.Pfn.ZYk();
            this.jFA = this.ex.mf();
            this.kkU.oJ(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
            com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, this.f13169so, this.f13167ba, this.cFZ, "", new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk.1
                @Override // com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ
                public void oJ(JSONObject jSONObject, String str) {
                    ZYk zYk = ZYk.this;
                    zYk.oJ(jSONObject, zYk.jFA);
                    ZYk.this.kkU.ZYk(str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ
                public void oJ(int i10, String str, String str2) {
                    ZYk.this.kkU.oJ(i10, str, str2);
                }
            });
        }
    }

    public void oJ(View view) {
        this.PiB = view;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ oJVar) {
        this.dLZ = oJVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        this.ZYk.oJ((oJ.InterfaceC0220oJ) this);
        this.ZYk.oJ((eZI) this);
        this.kkU.oJ();
        this.ZYk.oJ(jSONObject, jSONObject2, new com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ex.ZYk.2
            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex
            public void oJ(int i10, String str) {
                if (ZYk.this.kkU != null) {
                    ZYk.this.kkU.oJ(i10, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex
            public void oJ(tB<View> tBVar) {
                if (ZYk.this.kkU != null) {
                    ZYk.this.kkU.oJ(tBVar);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ex.oJ.InterfaceC0220oJ
    public void oJ(PiB piB) {
        String optString = piB.tB().optString("type");
        optString.hashCode();
        char c10 = 65535;
        switch (optString.hashCode()) {
            case -314498168:
                if (optString.equals("privacy")) {
                    c10 = 0;
                    break;
                }
                break;
            case 94756344:
                if (optString.equals("close")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1820422063:
                if (optString.equals("creative")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                if (this.tB == null || TextUtils.isEmpty(si.ex().nke())) {
                    return;
                }
                TTWebsiteActivity.oJ(this.tB, this.ex, this.BTZ);
                return;
            case 1:
                com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ oJVar = this.dLZ;
                if (oJVar != null) {
                    oJVar.ZYk();
                    return;
                }
                return;
            case 2:
                if (this.tB == null || this.ex == null) {
                    return;
                }
                ZYk();
                Activity activity = this.tB;
                if (activity instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk) activity).ba();
                }
                oJ(piB, this.ex);
                return;
            default:
                return;
        }
    }

    private void oJ(PiB piB, cY cYVar) {
        int[] iArr;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("down_x", this.WcQ);
            jSONObject.put("down_y", this.awB);
            jSONObject.put("down_time", this.Ry);
            jSONObject.put("up_x", this.eZI);
            jSONObject.put("up_y", this.f13168si);
            jSONObject.put("up_time", this.RZ);
            View dLZ = piB.oJ().dLZ();
            int i10 = 1;
            if (dLZ != null) {
                JSONObject jSONObject2 = new JSONObject();
                dLZ.getLocationOnScreen(new int[2]);
                jSONObject2.put("width", dLZ.getWidth());
                jSONObject2.put("height", dLZ.getHeight());
                jSONObject2.put(TtmlNode.LEFT, iArr[0]);
                jSONObject2.put("top", iArr[1]);
                jSONObject.put("rectInfo", jSONObject2);
            }
            View view = this.PiB;
            if (view != null) {
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                jSONObject.put("button_x", iArr2[0]);
                jSONObject.put("button_y", iArr2[1]);
                jSONObject.put("button_width", this.PiB.getWidth());
                jSONObject.put("button_height", this.PiB.getHeight());
            }
            View findViewById = this.tB.findViewById(16908290);
            if (findViewById != null) {
                int[] iArr3 = new int[2];
                findViewById.getLocationOnScreen(iArr3);
                jSONObject.put("ad_x", iArr3[0]);
                jSONObject.put("ad_y", iArr3[1]);
                jSONObject.put("width", findViewById.getWidth());
                jSONObject.put("height", findViewById.getHeight());
            }
            jSONObject.put("click_area_type", piB.oJ().mu());
            jSONObject.put("brick_id", piB.oJ().UN());
            jSONObject.put("endcard_id", this.f13167ba);
            jSONObject.put("click_scence", 2);
            if (!this.QSm) {
                i10 = 2;
            }
            jSONObject.put("user_behavior_type", i10);
            com.bytedance.sdk.openadsdk.core.kkU.cFZ.oJ oJVar = this.dLZ;
            if (oJVar != null) {
                jSONObject.put("endcard_type", oJVar.oJ());
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.BTZ, "click", jSONObject);
        } catch (JSONException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.eZI
    public void oJ(tB tBVar, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Ry = System.currentTimeMillis();
            this.WcQ = motionEvent.getRawX();
            this.awB = motionEvent.getRawY();
            this.QSm = true;
        } else if (action != 1) {
            if (action != 2) {
                return;
            }
            if (Math.abs(motionEvent.getRawX() - this.WcQ) >= oJ || Math.abs(motionEvent.getRawY() - this.awB) >= oJ) {
                this.QSm = false;
            }
        } else {
            this.eZI = motionEvent.getRawX();
            this.f13168si = motionEvent.getRawY();
            if (Math.abs(this.eZI - this.WcQ) >= oJ || Math.abs(this.f13168si - this.awB) >= oJ) {
                this.QSm = false;
            }
            this.RZ = System.currentTimeMillis();
        }
    }
}
