package com.mbridge.msdk.out;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.system.NoProGuard;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public class CustomInfoManager implements NoProGuard {
    private static CustomInfoManager INSTANCE = null;
    private static String TAG = "CustomInfoManager";
    public static final int TYPE_BID = 6;
    public static final int TYPE_BIDLOAD = 7;
    public static final int TYPE_LOAD = 8;
    private ConcurrentHashMap<String, String> infoMap = new ConcurrentHashMap<>();

    private CustomInfoManager() {
    }

    public static synchronized CustomInfoManager getInstance() {
        CustomInfoManager customInfoManager;
        synchronized (CustomInfoManager.class) {
            try {
                if (INSTANCE == null) {
                    synchronized (CustomInfoManager.class) {
                        if (INSTANCE == null) {
                            INSTANCE = new CustomInfoManager();
                        }
                    }
                }
                customInfoManager = INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return customInfoManager;
    }

    public String getCustomInfoByType(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return getCustomInfoByUnitId(str, i10);
    }

    public String getCustomInfoByUnitId(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            Uri parse = Uri.parse(str2);
            if (parse != null) {
                String host = parse.getHost();
                String path = parse.getPath();
                if (!TextUtils.isEmpty(host) && host.contains(CampaignEx.JSON_KEY_HB) && !TextUtils.isEmpty(path) && path.contains(BidResponsed.KEY_BID_ID)) {
                    return getCustomInfoByUnitId(str, 6);
                }
                if (!TextUtils.isEmpty(host) && host.contains(CampaignEx.JSON_KEY_HB) && !TextUtils.isEmpty(path) && path.contains("load")) {
                    return getCustomInfoByUnitId(str, 7);
                }
                if (!TextUtils.isEmpty(path) && path.contains("v3")) {
                    return getCustomInfoByUnitId(str, 8);
                }
            }
        } catch (Throwable th2) {
            p0.b(TAG, "Exception", th2);
        }
        return "";
    }

    public void setCustomInfo(String str, int i10, String str2) {
        if (!TextUtils.isEmpty(str) && str2 != null) {
            String b10 = j0.b(str2);
            if (i10 != 6) {
                if (i10 != 7) {
                    if (i10 == 8) {
                        this.infoMap.put(str, b10);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, String> concurrentHashMap = this.infoMap;
                concurrentHashMap.put(str + "_bidload", b10);
                return;
            }
            ConcurrentHashMap<String, String> concurrentHashMap2 = this.infoMap;
            concurrentHashMap2.put(str + "_bid", b10);
        }
    }

    public String getCustomInfoByUnitId(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (i10 == 6) {
            ConcurrentHashMap<String, String> concurrentHashMap = this.infoMap;
            return concurrentHashMap.get(str + "_bid");
        } else if (i10 != 7) {
            return i10 != 8 ? "" : this.infoMap.get(str);
        } else {
            ConcurrentHashMap<String, String> concurrentHashMap2 = this.infoMap;
            return concurrentHashMap2.get(str + "_bidload");
        }
    }
}
