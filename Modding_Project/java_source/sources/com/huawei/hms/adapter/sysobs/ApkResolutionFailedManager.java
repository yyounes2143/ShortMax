package com.huawei.hms.adapter.sysobs;

import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.support.log.HMSLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class ApkResolutionFailedManager {

    /* renamed from: c  reason: collision with root package name */
    private static final ApkResolutionFailedManager f21842c = new ApkResolutionFailedManager();

    /* renamed from: a  reason: collision with root package name */
    private final Handler f21843a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Runnable> f21844b = new HashMap(2);

    private ApkResolutionFailedManager() {
    }

    public static ApkResolutionFailedManager getInstance() {
        return f21842c;
    }

    public void postTask(String str, Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            HMSLog.e("ApkResolutionFailedManager", "postTask is not in main thread");
            return;
        }
        this.f21844b.put(str, runnable);
        this.f21843a.postDelayed(runnable, 2000L);
    }

    public void removeTask(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            HMSLog.e("ApkResolutionFailedManager", "removeTask is not in main thread");
            return;
        }
        Runnable remove = this.f21844b.remove(str);
        if (remove == null) {
            HMSLog.e("ApkResolutionFailedManager", "cancel runnable is null");
        } else {
            this.f21843a.removeCallbacks(remove);
        }
    }

    public void removeValueOnly(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            HMSLog.e("ApkResolutionFailedManager", "removeValueOnly is not in main thread");
        } else {
            this.f21844b.remove(str);
        }
    }
}
