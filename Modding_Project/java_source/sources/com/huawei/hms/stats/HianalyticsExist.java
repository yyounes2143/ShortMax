package com.huawei.hms.stats;

import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes5.dex */
public class HianalyticsExist {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f22201a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f22202b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f22203c = false;

    public static boolean isHianalyticsExist() {
        synchronized (f22201a) {
            if (!f22202b) {
                try {
                    Class.forName("com.huawei.hianalytics.process.HiAnalyticsInstance");
                } catch (ClassNotFoundException unused) {
                    HMSLog.i("HianalyticsExist", "In isHianalyticsExist, Failed to find class HiAnalyticsConfig.");
                }
                f22202b = true;
                HMSLog.i("HianalyticsExist", "hianalytics exist: " + f22203c);
            }
        }
        return f22203c;
    }
}
