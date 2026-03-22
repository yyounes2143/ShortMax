package com.huawei.hms.framework.common.hianalytics;

import com.huawei.hms.framework.common.Logger;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes5.dex */
public class InitReport {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f22165a = false;

    /* renamed from: b  reason: collision with root package name */
    private static List<Runnable> f22166b = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static void a() {
        try {
            for (Runnable runnable : f22166b) {
                HianalyticsHelper.getInstance().getReportExecutor().submit(runnable);
            }
            f22166b.clear();
        } catch (NullPointerException unused) {
            Logger.e("HaReport", "event is null occured");
        } catch (RejectedExecutionException unused2) {
            Logger.e("HaReport", "submit failed of rejected execution exception");
        } catch (Exception unused3) {
            Logger.e("HaReport", "submit failed because of some exception");
        }
    }

    public static void disableConnectNet() {
        f22165a = false;
    }

    public static void enableConnectNet() {
        f22165a = true;
        try {
            HianalyticsHelper.getInstance().getReportExecutor().submit(new Runnable() { // from class: com.huawei.hms.framework.common.hianalytics.InitReport.1
                @Override // java.lang.Runnable
                public void run() {
                    InitReport.a();
                }
            });
        } catch (RejectedExecutionException unused) {
            Logger.e("HaReport", "the thread submit has rejectedExecutionException!");
        } catch (Throwable unused2) {
            Logger.e("HaReport", "the thread submit has fatal error!");
        }
    }

    public static void reportWhenInit(Runnable runnable) {
        if (f22165a) {
            try {
                HianalyticsHelper.getInstance().getReportExecutor().execute(runnable);
            } catch (RejectedExecutionException unused) {
                Logger.e("HaReport", "the thread submit has rejectedExecutionException!");
            } catch (Throwable unused2) {
                Logger.e("HaReport", "the thread submit has fatal error!");
            }
        } else if (f22166b.size() > 10) {
            Logger.e("TAG", "the event to be report when init exceed the limit!");
        } else {
            f22166b.add(runnable);
        }
    }
}
