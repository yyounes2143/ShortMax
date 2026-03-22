package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
/* loaded from: classes3.dex */
public class ZYk extends tB implements com.bytedance.adsdk.ugeno.oJ.ZYk {
    private String dLZ;

    public ZYk(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk
    public void ZYk() {
        com.bytedance.adsdk.ugeno.ex.dLZ dlz;
        if ((TextUtils.equals(this.dLZ, CampaignEx.JSON_NATIVE_VIDEO_COMPLETE) || TextUtils.isEmpty(this.dLZ)) && (dlz = this.oJ) != null) {
            dlz.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar;
        com.bytedance.adsdk.ugeno.ZYk.tB ZYk;
        com.bytedance.adsdk.ugeno.oJ.oJ kkU;
        Map<String, String> map = this.Pfn;
        if (map != null && map.size() > 0) {
            String str = this.Pfn.get("name");
            this.dLZ = this.Pfn.get("state");
            if (!TextUtils.isEmpty(str) && (ZYk = (tBVar = this.ZYk).ZYk(tBVar)) != null && (kkU = ZYk.ba(str).kkU(str)) != null) {
                kkU.oJ(this);
            }
        }
        return false;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.ZYk
    public void oJ() {
        com.bytedance.adsdk.ugeno.ex.dLZ dlz;
        if ((TextUtils.equals(this.dLZ, "start") || TextUtils.isEmpty(this.dLZ)) && (dlz = this.oJ) != null) {
            dlz.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
        }
    }
}
