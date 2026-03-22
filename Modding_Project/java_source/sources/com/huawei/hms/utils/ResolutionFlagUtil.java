package com.huawei.hms.utils;

import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import java.sql.Timestamp;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class ResolutionFlagUtil {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ResolutionFlagUtil f22417a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, Long> f22418b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f22419c = new Object();

    private ResolutionFlagUtil() {
    }

    private void a() {
        long time = new Timestamp(System.currentTimeMillis()).getTime() - 10800000;
        for (String str : f22418b.keySet()) {
            Map<String, Long> map = f22418b;
            Long l10 = map.get(str);
            if (l10 != null && l10.longValue() != 0) {
                if (time >= l10.longValue()) {
                    map.remove(str);
                    HMSLog.i("ResolutionFlagUtil", "remove resolution flag because aging time: " + str);
                }
            } else {
                map.remove(str);
                HMSLog.i("ResolutionFlagUtil", "remove resolution flag because the data in this pair was abnormal: " + str);
            }
        }
    }

    private void b(String str, long j10) {
        Map<String, Long> map = f22418b;
        synchronized (map) {
            a();
            map.put(str, Long.valueOf(j10));
            HMSLog.i("ResolutionFlagUtil", "save resolution flag");
        }
    }

    public static ResolutionFlagUtil getInstance() {
        if (f22417a != null) {
            return f22417a;
        }
        synchronized (f22419c) {
            try {
                if (f22417a == null) {
                    f22417a = new ResolutionFlagUtil();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f22417a;
    }

    public long getResolutionFlag(String str) {
        if (str == null) {
            HMSLog.e("ResolutionFlagUtil", "transactionId is null");
            return 0L;
        }
        Map<String, Long> map = f22418b;
        if (map.get(str) == null) {
            return 0L;
        }
        return map.get(str).longValue();
    }

    public void removeResolutionFlag(String str) {
        if (str == null) {
            HMSLog.e("ResolutionFlagUtil", "transactionId is null");
            return;
        }
        f22418b.remove(str);
        HMSLog.i("ResolutionFlagUtil", "remove resolution flag");
    }

    public void saveResolutionFlag(String str, long j10) {
        if (!TextUtils.isEmpty(str) && j10 != 0) {
            b(str, j10);
            return;
        }
        HMSLog.e("ResolutionFlagUtil", "saveResolutionFlag error, transactionId: " + str + ", timestamp: " + j10);
    }
}
