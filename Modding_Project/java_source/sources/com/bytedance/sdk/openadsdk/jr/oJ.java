package com.bytedance.sdk.openadsdk.jr;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.mbridge.msdk.MBridgeConstans;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ {
    private static int oJ(int i10) {
        int i11 = 2;
        if (i10 != 2) {
            i11 = 3;
            if (i10 != 3) {
                i11 = 4;
                if (i10 != 4) {
                    i11 = 5;
                    if (i10 != 5 && i10 != 15) {
                        return -1;
                    }
                }
            }
        }
        return i11;
    }

    public static List<String> oJ(List<String> list, boolean z10) {
        String oJ = BTZ.oJ(si.oJ());
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.contains("{TS}") || next.contains("__TS__")) {
                long currentTimeMillis = System.currentTimeMillis();
                next = next.replace("{TS}", String.valueOf(currentTimeMillis)).replace("__TS__", String.valueOf(currentTimeMillis));
            }
            if ((next.contains("{UID}") || next.contains("__UID__")) && !TextUtils.isEmpty(oJ)) {
                next = next.replace("{UID}", oJ).replace("__UID__", oJ);
            }
            if (z10) {
                next = oJ(next);
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    private static String oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return str.replace("[ss_random]", String.valueOf(new SecureRandom().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
        } catch (Exception e10) {
            QSm.tB("TrackAdUrlUtils", e10.getMessage());
            return str;
        }
    }

    public static List<String> oJ(List<String> list, boolean z10, cY cYVar) {
        String oJ = BTZ.oJ(si.oJ());
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.contains("{TS}") || next.contains("__TS__")) {
                long currentTimeMillis = System.currentTimeMillis();
                next = next.replace("{TS}", String.valueOf(currentTimeMillis)).replace("__TS__", String.valueOf(currentTimeMillis));
            }
            if ((next.contains("{UID}") || next.contains("__UID__")) && !TextUtils.isEmpty(oJ)) {
                next = next.replace("{UID}", oJ).replace("__UID__", oJ);
            }
            if (next.contains("__CID__") && cYVar != null && !TextUtils.isEmpty(cYVar.edj())) {
                next = next.replace("__CID__", cYVar.edj());
            }
            if (next.contains("__CTYPE__") && cYVar != null) {
                next = next.replace("__CTYPE__", String.valueOf(oJ(cYVar.Dc())));
            }
            if (next.contains("__GAID__")) {
                next = next.replace("__GAID__", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
            }
            if (next.contains("__OS__")) {
                next = next.replace("__OS__", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            if (next.contains("__UA1__")) {
                next = next.replace("__UA1__", URLEncoder.encode(HyG.ex()));
            }
            if (z10) {
                next = oJ(next);
            }
            arrayList.add(next);
        }
        return arrayList;
    }
}
