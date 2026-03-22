package com.mbridge.msdk.reward.controller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: RewardVideoControllerInitTask.java */
/* loaded from: classes6.dex */
public class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f28856a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28857b;

    public c(Context context, String str) {
        this.f28856a = context;
        this.f28857b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        CopyOnWriteArrayList<CampaignEx> c10;
        if (this.f28856a != null && !TextUtils.isEmpty(this.f28857b)) {
            try {
                com.mbridge.msdk.reward.report.a.a(this.f28856a, this.f28857b);
                n0.a();
                n0.a(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_RES));
                n0.a(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML));
                com.mbridge.msdk.videocommon.setting.b.b().b(this.f28857b);
                if (!r0.a().a("c_d_v_w_i", false) && !TextUtils.isEmpty(this.f28857b) && (c10 = com.mbridge.msdk.videocommon.cache.a.a().c(this.f28857b, 1)) != null && c10.size() > 0) {
                    com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f28856a, this.f28857b, c10, 94, (com.mbridge.msdk.videocommon.listener.a) null);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoControllerInitTask", "initRewardVideoController task ", e10);
                }
            }
        }
    }
}
