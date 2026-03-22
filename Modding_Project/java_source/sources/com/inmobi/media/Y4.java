package com.inmobi.media;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Y4 {
    public static HashMap a() {
        String str;
        String str2;
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("mk-version", Vc.a());
            Boolean c10 = C3182te.f25312a.c();
            if (c10 != null) {
                if (c10.booleanValue()) {
                    str2 = "1";
                } else {
                    str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                }
                hashMap.put("u-id-adt", str2);
            }
            hashMap.put(CampaignEx.JSON_KEY_ST_TS, String.valueOf(Calendar.getInstance().getTimeInMillis()));
            Calendar calendar = Calendar.getInstance();
            hashMap.put("tz", String.valueOf(calendar.get(16) + calendar.get(15)));
            Zc.f24454a.getClass();
            HashMap hashMap2 = new HashMap();
            if (Zc.f24458e && (str = Zc.f24457d) != null) {
                hashMap2.put("u-s-id", str);
            }
            hashMap.putAll(hashMap2);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Y4", "TAG");
        }
        return hashMap;
    }
}
