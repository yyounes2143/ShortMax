package com.mbridge.msdk.reward.adapter;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
/* compiled from: RewardVideoRequestParams.java */
/* loaded from: classes6.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f28754a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28755b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28756c;

    /* renamed from: d  reason: collision with root package name */
    private final com.mbridge.msdk.videocommon.setting.c f28757d;

    /* renamed from: e  reason: collision with root package name */
    private final String f28758e;

    public e(String str, String str2, boolean z10, com.mbridge.msdk.videocommon.setting.c cVar, String str3) {
        this.f28754a = str;
        this.f28755b = str2;
        this.f28756c = z10;
        this.f28757d = cVar;
        this.f28758e = str3;
    }

    public com.mbridge.msdk.foundation.same.net.wrapper.e a(boolean z10, String str, int i10, String str2, String str3, String str4, String str5, boolean z11, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        String str6;
        String str7;
        String str8;
        String str9;
        String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
        String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.c.m().b() + com.mbridge.msdk.foundation.controller.c.m().c());
        if (z10) {
            i12 = 2;
        } else {
            i12 = 3;
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.f28757d;
        if (cVar != null) {
            i13 = cVar.e();
            i14 = this.f28757d.b();
        } else {
            i13 = 0;
            i14 = 0;
        }
        String a10 = com.mbridge.msdk.foundation.same.buffer.b.a(this.f28755b, AdmobPreloadConfig.REWARD);
        if (this.f28756c) {
            i15 = 287;
        } else {
            i15 = 94;
        }
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "app_id", b10);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PROPERTIES_UNIT_ID, this.f28755b);
        if (!TextUtils.isEmpty(this.f28754a)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PLACEMENT_ID, this.f28754a);
        }
        String str10 = "";
        if (com.mbridge.msdk.util.b.a()) {
            if (str4 == null) {
                str8 = "";
            } else {
                str8 = str4;
            }
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ttc_ids", str8);
            if (str3 == null) {
                str9 = "";
            } else {
                str9 = str3;
            }
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "install_ids", str9);
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "sign", md5);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "req_type", String.valueOf(i12));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_num", String.valueOf(i13));
        if (this.f28756c) {
            i14 = 1;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "tnum", String.valueOf(i14));
        String str11 = "1";
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f27190g, a10);
        String str12 = com.mbridge.msdk.foundation.same.net.wrapper.e.f27191h;
        if (str == null) {
            str6 = "";
        } else {
            str6 = str;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, str12, str6);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_AD_SOURCE_ID, String.valueOf(1));
        String str13 = com.mbridge.msdk.foundation.same.net.wrapper.e.f27192i;
        if (str2 == null) {
            str7 = "";
        } else {
            str7 = str2;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, str13, str7);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_type", String.valueOf(i15));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, TypedValues.CycleType.S_WAVE_OFFSET, String.valueOf(i10));
        if (!TextUtils.isEmpty(str5)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, BidResponsed.KEY_TOKEN, str5);
        }
        if (this.f28756c) {
            if (i11 != com.mbridge.msdk.foundation.same.a.I && i11 != com.mbridge.msdk.foundation.same.a.H) {
                com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ivrwd", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            } else {
                com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ivrwd", "1");
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar2 = this.f28757d;
        if (cVar2 != null && !TextUtils.isEmpty(cVar2.a())) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "u_stid", this.f28757d.a());
        }
        com.mbridge.msdk.videocommon.setting.a c10 = com.mbridge.msdk.videocommon.setting.b.b().c();
        if (c10 != null && !TextUtils.isEmpty(c10.a())) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "r_stid", c10.a());
        }
        if (!z11) {
            str11 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "rw_plus", str11);
        String d10 = u0.d(this.f28755b);
        if (!TextUtils.isEmpty(d10)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, j.f27256b, d10);
        }
        String str14 = this.f28758e;
        if (str14 != null) {
            str10 = str14;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, str10);
        return eVar;
    }
}
