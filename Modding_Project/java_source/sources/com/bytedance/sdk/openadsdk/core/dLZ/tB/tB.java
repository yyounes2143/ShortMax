package com.bytedance.sdk.openadsdk.core.dLZ.tB;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.Constants;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class tB {
    private static boolean ex = false;
    private static SimpleDateFormat oJ;
    @NonNull
    private final List<String> ZYk;
    @NonNull
    private final Map<ZYk, String> tB;

    public tB(@NonNull List<String> list, cY cYVar) {
        int qnr;
        this.ZYk = list;
        HashMap hashMap = new HashMap();
        this.tB = hashMap;
        hashMap.put(ZYk.CACHEBUSTING, tB());
        hashMap.put(ZYk.TIMESTAMP, ZYk());
        hashMap.put(ZYk.APPBUNDLE, si.oJ().getPackageName());
        ZYk zYk = ZYk.PLAYERSTATE;
        hashMap.put(zYk, "");
        if (cYVar != null && ((qnr = cYVar.qnr()) == 3 || qnr == 7 || qnr == 8)) {
            hashMap.put(zYk, Constants.TEMPLATE_TYPE_FULLSCREEN);
        }
        hashMap.put(ZYk.SERVERSIDE, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    private String ZYk() {
        if (oJ == null) {
            oJ = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSX", Locale.getDefault());
        }
        String format = oJ.format(new Date());
        if (ex) {
            int Xe = HyG.Xe();
            if (Xe < 0) {
                if (Xe <= -10) {
                    return format + Xe;
                }
                return format + "-0" + (-Xe);
            } else if (Xe < 10) {
                return format + "+0" + Xe;
            } else {
                return format + "+" + Xe;
            }
        }
        return format;
    }

    @NonNull
    private String tB() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    @NonNull
    public List<String> oJ() {
        ZYk[] values;
        ArrayList arrayList = new ArrayList();
        for (String str : this.ZYk) {
            if (!TextUtils.isEmpty(str)) {
                for (ZYk zYk : ZYk.values()) {
                    String str2 = this.tB.get(zYk);
                    if (str2 == null) {
                        str2 = "";
                    }
                    str = zYk == ZYk.__MRC_IMPRESSION_ID__ ? str.replaceAll(zYk.name(), str2) : str.replaceAll("\\[" + zYk.name() + "\\]", str2);
                }
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    @NonNull
    public tB ZYk(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, "UTF-8");
            } catch (Throwable unused) {
            }
            this.tB.put(ZYk.ASSETURI, str);
        }
        return this;
    }

    @NonNull
    public tB oJ(@Nullable com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar) {
        if (oJVar != null) {
            this.tB.put(ZYk.ERRORCODE, oJVar.oJ());
        }
        return this;
    }

    @NonNull
    public tB oJ(@Nullable long j10) {
        if (j10 >= 0) {
            String ZYk = ZYk(j10);
            if (!TextUtils.isEmpty(ZYk)) {
                this.tB.put(ZYk.CONTENTPLAYHEAD, ZYk);
            }
        }
        return this;
    }

    @NonNull
    private String ZYk(long j10) {
        Locale locale = Locale.getDefault();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        return String.format(locale, "%02d:%02d:%02d.%03d", Long.valueOf(timeUnit.toHours(j10)), Long.valueOf(timeUnit.toMinutes(j10) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(timeUnit.toSeconds(j10) % TimeUnit.MINUTES.toSeconds(1L)), Long.valueOf(j10 % 1000));
    }

    public tB oJ(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.tB.put(ZYk.__MRC_IMPRESSION_ID__, str);
        }
        return this;
    }
}
