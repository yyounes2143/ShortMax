package com.bytedance.sdk.openadsdk.core.kkU.ZYk.tB;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.core.BTZ;
import com.bytedance.adsdk.ugeno.ex;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.adsdk.ugeno.ZYk.oJ<oJ> {
    private JSONArray BWx;
    private int JJ;
    private int YF;

    public ZYk(Context context) {
        super(context);
        this.YF = 0;
        this.JJ = 0;
    }

    private void ex() {
        for (int i10 = 0; i10 < ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.size(); i10++) {
            tB<View> tBVar = ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.get(i10);
            if (tBVar != null) {
                BTZ btz = new BTZ(this.ZYk);
                btz.oJ(this.SCr);
                ((oJ) this.Pfn).oJ(btz.oJ(tBVar.LpP(), this.ex, (JSONObject) null));
            }
        }
    }

    private void tB() {
        List<tB<View>> list = ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ;
        if (list != null && !list.isEmpty()) {
            tB<View> tBVar = ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.get(0);
            if (this.BWx == null) {
                return;
            }
            for (int i10 = 0; i10 < this.BWx.length(); i10++) {
                BTZ btz = new BTZ(this.ZYk);
                btz.oJ(this.SCr);
                try {
                    JSONObject optJSONObject = this.BWx.optJSONObject(i10);
                    if (optJSONObject != null) {
                        if (optJSONObject.has("$chunk")) {
                            this.ex.put("$item", optJSONObject.optJSONArray("$chunk"));
                        } else {
                            this.ex.put("$item", optJSONObject);
                        }
                        ((oJ) this.Pfn).oJ(btz.oJ(tBVar.LpP(), this.ex, (JSONObject) null));
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        T t10 = this.Pfn;
        if (!(t10 instanceof oJ)) {
            return;
        }
        ((oJ) t10).setOrientation(this.YF);
        ((oJ) this.Pfn).oJ(this);
        if (this.JJ == 1) {
            ex();
        } else {
            tB();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T extends android.view.View, android.view.View] */
    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public View oJ() {
        try {
            oJ oJVar = new oJ(this.ZYk);
            this.Pfn = oJVar;
            oJVar.oJ((ex) this);
        } catch (Throwable unused) {
            this.Pfn = new View(this.ZYk);
        }
        return this.Pfn;
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
            case -1367379379:
                if (str.equals("driveMode")) {
                    c10 = 0;
                    break;
                }
                break;
            case -962590849:
                if (str.equals(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)) {
                    c10 = 1;
                    break;
                }
                break;
            case 1788817256:
                if (str.equals("dataList")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.JJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0);
                return;
            case 1:
                if (TextUtils.equals(str2, "vertical")) {
                    this.YF = 1;
                    return;
                } else {
                    this.YF = 0;
                    return;
                }
            case 2:
                this.BWx = com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(str2, (JSONArray) null);
                return;
            default:
                return;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public void oJ(tB tBVar) {
        if (tBVar == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.add(tBVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public void oJ(tB tBVar, ViewGroup.LayoutParams layoutParams) {
        if (tBVar == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.add(tBVar);
    }
}
