package com.bytedance.sdk.openadsdk;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.openadsdk.si.ZYk;
import com.bytedance.sdk.openadsdk.si.ZYk.oJ;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes3.dex */
public class BusMonitorDependWrapper implements ZYk {
    private Handler ZYk;
    private ZYk oJ;

    public BusMonitorDependWrapper(ZYk zYk) {
        this.oJ = zYk;
    }

    public static Context getReflectContext() {
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
            method.setAccessible(true);
            Object invoke = method.invoke(null, new Object[0]);
            return (Application) invoke.getClass().getMethod("getApplication", new Class[0]).invoke(invoke, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public Context getContext() {
        ZYk zYk = this.oJ;
        if (zYk != null && zYk.getContext() != null) {
            return this.oJ.getContext();
        }
        return getReflectContext();
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public Handler getHandler() {
        ZYk zYk = this.oJ;
        if (zYk != null && zYk.getHandler() != null) {
            return this.oJ.getHandler();
        }
        if (this.ZYk == null) {
            this.ZYk = new Handler(getSafeHandlerThread("pag_monitor", 0).getLooper());
        }
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public int getOnceLogCount() {
        ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.getOnceLogCount();
        }
        return 20;
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public int getOnceLogInterval() {
        ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.getOnceLogInterval();
        }
        return 1000;
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public HandlerThread getSafeHandlerThread(String str, int i10) {
        HandlerThread safeHandlerThread;
        ZYk zYk = this.oJ;
        if (zYk != null && (safeHandlerThread = zYk.getSafeHandlerThread(str, i10)) != null) {
            return safeHandlerThread;
        }
        HandlerThread handlerThread = new HandlerThread("pag_monitor");
        handlerThread.start();
        return handlerThread;
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public int getUploadIntervalTime() {
        int uploadIntervalTime;
        ZYk zYk = this.oJ;
        if (zYk == null || (uploadIntervalTime = zYk.getUploadIntervalTime()) < 1800000) {
            return Constants.THIRTY_MINUTES;
        }
        return uploadIntervalTime;
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public boolean isMonitorOpen() {
        ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.isMonitorOpen();
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.si.ZYk
    public void onMonitorUpload(List<oJ> list) {
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.onMonitorUpload(list);
        }
    }
}
