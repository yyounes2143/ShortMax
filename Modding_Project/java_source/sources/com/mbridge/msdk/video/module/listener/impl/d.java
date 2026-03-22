package com.mbridge.msdk.video.module.listener.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* compiled from: ContainerViewStatisticsListener.java */
/* loaded from: classes6.dex */
public class d extends k {
    public d(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i10, z10);
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        super.a(i10, obj);
        if (this.f31161a) {
            try {
                CampaignEx campaignEx = this.f31162b;
                if (campaignEx != null && campaignEx.getDynamicTempCode() == 5) {
                    a(obj.toString());
                }
            } catch (Exception unused) {
            }
            if (i10 != 105 && i10 != 106 && i10 != 113) {
                if (i10 != 122) {
                    switch (i10) {
                        case 109:
                            a(2);
                            b(2);
                            return;
                        case 110:
                            a(1);
                            b(1);
                            return;
                        case 111:
                            b(1);
                            return;
                        default:
                            return;
                    }
                }
                g();
                return;
            }
            com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b);
            if (i10 != 105) {
                String noticeUrl = this.f31162b.getNoticeUrl();
                if (!TextUtils.isEmpty(noticeUrl)) {
                    if (!noticeUrl.contains(com.mbridge.msdk.foundation.same.a.f27031m)) {
                        noticeUrl = noticeUrl + ContainerUtils.FIELD_DELIMITER + com.mbridge.msdk.foundation.same.a.f27031m + "=2";
                    } else {
                        noticeUrl = noticeUrl.replace(com.mbridge.msdk.foundation.same.a.f27031m + ContainerUtils.KEY_VALUE_DELIMITER + Uri.parse(noticeUrl).getQueryParameter(com.mbridge.msdk.foundation.same.a.f27031m), com.mbridge.msdk.foundation.same.a.f27031m + "=2");
                    }
                }
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b, this.f31167g, noticeUrl, true, false, com.mbridge.msdk.click.retry.a.f26108o);
            }
        }
    }
}
