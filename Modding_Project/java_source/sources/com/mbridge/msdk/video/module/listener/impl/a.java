package com.mbridge.msdk.video.module.listener.impl;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: CommonContainerNotifyListener.java */
/* loaded from: classes6.dex */
public class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private Activity f31148a;

    /* renamed from: b  reason: collision with root package name */
    private CampaignEx f31149b;

    public a(Activity activity, CampaignEx campaignEx) {
        this.f31148a = activity;
        this.f31149b = campaignEx;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        super.a(i10, obj);
        if (i10 == 106 && this.f31148a != null && this.f31149b != null) {
            try {
                Intent intent = new Intent();
                intent.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
                String a10 = com.mbridge.msdk.click.c.a(this.f31149b.getClickURL(), "-999", "-999");
                if (!TextUtils.isEmpty(a10)) {
                    intent.setData(Uri.parse(a10));
                    this.f31148a.startActivity(intent);
                }
            } catch (Throwable th2) {
                p0.b("NotifyListener", th2.getMessage(), th2);
            }
            this.f31148a.finish();
        }
    }
}
