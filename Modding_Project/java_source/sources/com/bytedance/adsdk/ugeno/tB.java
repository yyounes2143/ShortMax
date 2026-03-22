package com.bytedance.adsdk.ugeno;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import com.adjust.sdk.Constants;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.core.BTZ;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
import org.json.JSONArray;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes3.dex */
public class tB extends com.bytedance.adsdk.ugeno.ZYk.oJ<com.bytedance.adsdk.ugeno.ba.ZYk> {
    private boolean BWx;
    private boolean JJ;
    private boolean MVA;
    private float NX;
    private String Qzd;
    private float XSu;
    private String YF;
    private com.bytedance.adsdk.ugeno.ZYk.tB ZMY;
    private float Zjw;
    private int Zzm;
    private float hwh;

    /* renamed from: ib  reason: collision with root package name */
    private float f11721ib;

    /* renamed from: oo  reason: collision with root package name */
    private float f11722oo;

    /* renamed from: rg  reason: collision with root package name */
    private JSONArray f11723rg;
    private int sQ;

    public tB(Context context) {
        super(context);
        this.BWx = true;
        this.JJ = true;
        this.hwh = 0.0f;
        this.f11721ib = 2000.0f;
        this.Qzd = Constants.NORMAL;
        this.MVA = true;
        this.sQ = Color.parseColor("#666666");
        this.Zzm = Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_TEXT_COLOR);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        JSONArray jSONArray = this.f11723rg;
        if (jSONArray != null && jSONArray.length() > 0) {
            ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).cFZ((int) this.NX).so((int) this.Zjw).jFA((int) this.XSu).tB(this.MVA).Pfn(this.Zzm).ba(this.sQ).tB(this.Qzd).ex(this.BWx).Pfn(this.f11722oo).oJ(this.JJ).ex((int) this.f11721ib).tB(this.MVA);
            for (int i10 = 0; i10 < this.f11723rg.length(); i10++) {
                BTZ btz = new BTZ(this.ZYk);
                btz.oJ(this.SCr);
                com.bytedance.adsdk.ugeno.ZYk.tB<View> ZYk = btz.ZYk(this.ZMY.LpP(), null);
                btz.ZYk(this.f11723rg.optJSONObject(i10));
                ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).oJ((com.bytedance.adsdk.ugeno.ba.ZYk) ZYk);
            }
            if (this.JJ) {
                ((com.bytedance.adsdk.ugeno.ba.ZYk) this.Pfn).tB();
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(JSONObject jSONObject) {
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public View oJ() {
        com.bytedance.adsdk.ugeno.ba.ZYk zYk = new com.bytedance.adsdk.ugeno.ba.ZYk(this.ZYk);
        this.Pfn = zYk;
        zYk.oJ((ex) this);
        return this.Pfn;
    }

    public void oJ(com.bytedance.adsdk.ugeno.ba.tB tBVar) {
        T t10 = this.Pfn;
        if (t10 != 0) {
            ((com.bytedance.adsdk.ugeno.ba.ZYk) t10).setOnPageChangeListener(tBVar);
        }
    }

    public void oJ(int i10) {
        T t10 = this.Pfn;
        if (t10 != 0) {
            ((com.bytedance.adsdk.ugeno.ba.ZYk) t10).PiB(i10);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        this.ZMY = tBVar;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        super.oJ(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1657957217:
                if (str.equals("delayStart")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1575751020:
                if (str.equals("indicatorColor")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1453344127:
                if (str.equals("nextMargin")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1306084975:
                if (str.equals("effect")) {
                    c10 = 3;
                    break;
                }
                break;
            case -962590849:
                if (str.equals(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)) {
                    c10 = 4;
                    break;
                }
                break;
            case -711999985:
                if (str.equals("indicator")) {
                    c10 = 5;
                    break;
                }
                break;
            case -202057851:
                if (str.equals("previousMargin")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3327652:
                if (str.equals("loop")) {
                    c10 = 7;
                    break;
                }
                break;
            case 109641799:
                if (str.equals("speed")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 857882560:
                if (str.equals("pageCount")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1097821469:
                if (str.equals("pageMargin")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1196931001:
                if (str.equals("indicatorSelectedColor")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1439562083:
                if (str.equals("autoplay")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1788817256:
                if (str.equals("dataList")) {
                    c10 = '\r';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.hwh = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 1:
                this.sQ = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                return;
            case 2:
                this.XSu = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 3:
                this.Qzd = str2;
                return;
            case 4:
                this.YF = str2;
                return;
            case 5:
                this.MVA = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            case 6:
                this.Zjw = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 7:
                this.BWx = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            case '\b':
                this.f11721ib = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 500.0f);
                return;
            case '\t':
                this.f11722oo = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 1.0f);
                return;
            case '\n':
                this.NX = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 11:
                this.Zzm = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                return;
            case '\f':
                this.JJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            case '\r':
                this.f11723rg = com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(str2, (JSONArray) null);
                return;
            default:
                return;
        }
    }
}
