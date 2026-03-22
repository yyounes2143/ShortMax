package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.os.Build;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.system.NoProGuard;
import com.ss.texturerender.TextureRenderKeys;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class CampaignUnit extends b implements Serializable, NoProGuard {
    private static final String TAG = "CampaignUnit";

    @Override // com.mbridge.msdk.foundation.entity.b
    public String assembCParams() {
        String str;
        String str2;
        StringBuffer stringBuffer = this.cParams;
        if (stringBuffer != null && stringBuffer.length() > 0) {
            return this.cParams.toString();
        }
        try {
            String d10 = com.mbridge.msdk.foundation.tools.f.d();
            Context d11 = com.mbridge.msdk.foundation.controller.c.m().d();
            String r10 = l0.r(d11);
            String q10 = l0.q(d11);
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                str = "";
                str2 = str;
            } else {
                str2 = String.valueOf(l0.s(d11));
                str = l0.n(d11) + TextureRenderKeys.KEY_IS_X + l0.m(d11);
            }
            StringBuffer stringBuffer2 = this.cParams;
            stringBuffer2.append(getAdType());
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty("1"));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(Build.VERSION.RELEASE));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(MBConfiguration.SDK_VERSION));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(l0.n()));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(str));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(Integer.valueOf(l0.F(com.mbridge.msdk.foundation.controller.c.m().d()))));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(l0.p(com.mbridge.msdk.foundation.controller.c.m().d())));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(str2));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(q10));
            stringBuffer2.append(nullToEmpty(r10));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(d10));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(l0.s()));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append("");
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(nullToEmpty(com.mbridge.msdk.foundation.same.a.V + "," + com.mbridge.msdk.foundation.same.a.f27025g));
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer2.append(l0.j());
            stringBuffer2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            this.cParams = stringBuffer2;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, th2.getMessage(), th2);
            }
        }
        return this.cParams.toString();
    }
}
