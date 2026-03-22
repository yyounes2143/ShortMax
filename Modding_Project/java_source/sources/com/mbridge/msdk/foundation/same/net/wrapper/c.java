package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.net.Aa;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.out.CustomInfoManager;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.network.k;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
/* compiled from: CommonAsyncHttpRequest.java */
/* loaded from: classes5.dex */
public class c {
    private static final String TAG = "c";
    protected Context mContext;

    public c(Context context) {
        if (context == null) {
            this.mContext = com.mbridge.msdk.foundation.controller.c.m().d();
        } else {
            this.mContext = context.getApplicationContext();
        }
    }

    private String asUrlParams(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            StringBuilder sb2 = new StringBuilder();
            try {
                for (String str : map.keySet()) {
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = map.get(str);
                        if (TextUtils.isEmpty(str2)) {
                            str2 = "";
                        }
                        sb2.append(ContainerUtils.FIELD_DELIMITER);
                        sb2.append(str);
                        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                        sb2.append(str2);
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b(TAG, e10.getMessage());
                }
                sb2 = null;
            }
            if (sb2 != null && sb2.length() > 0) {
                return sb2.toString();
            }
        }
        return null;
    }

    private static com.mbridge.msdk.tracker.network.h<?> createRequest(int i10, int i11, String str, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return null;
            }
            return new com.mbridge.msdk.tracker.network.i(i11, str, str2, j10, new i(bVar));
        }
        return new k(i11, str, str2, j10, new i(bVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b0 A[Catch: Exception -> 0x00dc, TRY_ENTER, TryCatch #1 {Exception -> 0x00dc, blocks: (B:37:0x00b0, B:39:0x00b6, B:43:0x00c1, B:52:0x00e6, B:55:0x0103), top: B:95:0x00ae }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void post(int r14, java.lang.String r15, com.mbridge.msdk.foundation.same.net.wrapper.e r16, com.mbridge.msdk.foundation.same.net.b r17, boolean r18, boolean r19, java.lang.String r20, long r21) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.wrapper.c.post(int, java.lang.String, com.mbridge.msdk.foundation.same.net.wrapper.e, com.mbridge.msdk.foundation.same.net.b, boolean, boolean, java.lang.String, long):void");
    }

    public void addExtraParams(String str, e eVar) {
        if (eVar != null) {
            String a10 = Aa.a();
            if (a10 == null) {
                a10 = "";
            }
            eVar.a(AppsFlyerProperties.CHANNEL, a10);
            eVar.a("band_width", com.mbridge.msdk.foundation.same.net.a.b().a() + "");
            eVar.a(MRAIDPresenter.OPEN, com.mbridge.msdk.foundation.same.a.S);
            if (com.mbridge.msdk.util.b.a() && !TextUtils.isEmpty(str) && str.contains("setting")) {
                String b10 = Aa.b();
                if (!TextUtils.isEmpty(b10)) {
                    eVar.a("keyword", b10);
                }
            }
            String str2 = eVar.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
            if (str2 != null) {
                String customInfoByUnitId = CustomInfoManager.getInstance().getCustomInfoByUnitId(str2, str);
                if (!TextUtils.isEmpty(customInfoByUnitId)) {
                    eVar.a("ch_info", customInfoByUnitId);
                }
                l e10 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str2);
                if (e10 != null && !TextUtils.isEmpty(e10.a())) {
                    eVar.a("u_stid", e10.a());
                }
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                eVar.a("dev_source", "2");
            }
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                eVar.a("re_domain", "1");
                return;
            }
            return;
        }
        p0.b(TAG, "addExtraParams error, params is null,frame work error");
    }

    protected boolean canTrack() {
        return true;
    }

    public void choiceV3OrV5BySetting(int i10, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str, long j10) {
        int B;
        e eVar2;
        com.mbridge.msdk.setting.g b10 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (TextUtils.isEmpty(str)) {
            B = b10.p0();
        } else {
            B = b10.B();
        }
        String a10 = com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, B);
        if (B < 2) {
            postV5(i10, a10, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, j10);
            return;
        }
        if (B % 2 == 0) {
            if (eVar == null) {
                eVar2 = new e();
            } else {
                eVar2 = eVar;
            }
            JSONArray b11 = com.mbridge.msdk.foundation.db.middle.b.a().b();
            if (b11 != null) {
                String jSONArray = b11.toString();
                int i11 = com.mbridge.msdk.foundation.same.net.utils.d.h().i();
                if (i11 > 0 && jSONArray.length() > i11) {
                    post(i10, a10, eVar2, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, j10);
                    return;
                }
                eVar2.a(e.f27194k, jSONArray);
            }
        } else {
            eVar2 = eVar;
        }
        getLoadOrSetting(i10, a10, eVar2, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, j10);
    }

    public void get(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j10) {
        get(i10, str, eVar, bVar, false, false, str2, j10);
    }

    public void getCampaign(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, long j10) {
        int B;
        e eVar2;
        try {
            com.mbridge.msdk.setting.g b10 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
            if (TextUtils.isEmpty(str)) {
                B = b10.p0();
            } else {
                B = b10.B();
            }
            String a10 = com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, B);
            if (B < 2) {
                postV5(i10, a10, eVar, bVar, true, MBInterstitialActivity.INTENT_CAMAPIGN, j10);
                return;
            }
            if (B % 2 == 0) {
                if (eVar == null) {
                    eVar2 = new e();
                } else {
                    eVar2 = eVar;
                }
                JSONArray b11 = com.mbridge.msdk.foundation.db.middle.b.a().b();
                if (b11 != null) {
                    String jSONArray = b11.toString();
                    int i11 = com.mbridge.msdk.foundation.same.net.utils.d.h().i();
                    if (i11 > 0 && jSONArray.length() > i11) {
                        post(i10, a10, eVar2, bVar, true, false, MBInterstitialActivity.INTENT_CAMAPIGN, j10);
                        return;
                    }
                    eVar2.a(e.f27194k, jSONArray);
                }
            } else {
                eVar2 = eVar;
            }
            get(i10, a10, eVar2, bVar, true, true, MBInterstitialActivity.INTENT_CAMAPIGN, j10);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, e10.getMessage());
            }
        }
    }

    public void getLoadOrSetting(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j10) {
        getLoadOrSetting(i10, str, eVar, bVar, true, str2, j10);
    }

    public void postFocusReport(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j10) {
        post(i10, str, eVar, bVar, false, true, str2, j10);
    }

    public void postV5(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j10) {
        String str3 = eVar.a().get("sign");
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        eVar.a(CampaignEx.JSON_KEY_ST_TS, currentTimeMillis + "");
        eVar.a("st", SameMD5.getMD5(currentTimeMillis + str3));
        post(i10, str, eVar, bVar, false, false, str2, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void get(int r15, java.lang.String r16, com.mbridge.msdk.foundation.same.net.wrapper.e r17, com.mbridge.msdk.foundation.same.net.b r18, boolean r19, boolean r20, java.lang.String r21, long r22) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.wrapper.c.get(int, java.lang.String, com.mbridge.msdk.foundation.same.net.wrapper.e, com.mbridge.msdk.foundation.same.net.b, boolean, boolean, java.lang.String, long):void");
    }

    public void getLoadOrSetting(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z10, String str2, long j10) {
        get(i10, str, eVar, bVar, z10, false, str2, j10);
    }

    public void postV5(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z10, String str2, long j10) {
        String str3 = eVar.a().get("sign");
        if (str3 == null) {
            str3 = "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        eVar.a(CampaignEx.JSON_KEY_ST_TS, currentTimeMillis + "");
        eVar.a("st", SameMD5.getMD5(currentTimeMillis + str3));
        post(i10, str, eVar, bVar, z10, false, str2, j10);
    }

    public void get(int i10, String str, Map<String, String> map, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j10) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
        map.put("sdk_version", MBConfiguration.SDK_VERSION);
        map.put("platform", "1");
        String asUrlParams = asUrlParams(map);
        if (!TextUtils.isEmpty(asUrlParams)) {
            str = str + "?" + asUrlParams;
        }
        String str3 = str;
        if (MBridgeConstans.DEBUG) {
            p0.a("AppletsModel", "get wx scheme url = " + str3);
        }
        com.mbridge.msdk.tracker.network.h<?> createRequest = createRequest(i10, 0, str3, bVar, str2, j10);
        if (createRequest != null) {
            String str4 = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
            if (TextUtils.isEmpty(str4)) {
                str4 = "";
            }
            createRequest.a("local_id", str4);
            String str5 = map.get("ad_type");
            createRequest.a("ad_type", TextUtils.isEmpty(str5) ? "" : str5);
            createRequest.a(map);
            createRequest.d(canTrack());
            com.mbridge.msdk.tracker.network.l.a().b().a(createRequest);
        }
    }

    public void post(int i10, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j10) {
        post(i10, str, eVar, bVar, false, false, str2, j10);
    }
}
