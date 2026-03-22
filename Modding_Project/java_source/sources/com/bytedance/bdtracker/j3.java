package com.bytedance.bdtracker;

import com.bytedance.applog.AppLog;
import com.volcengine.onekit.service.Device;
/* loaded from: classes3.dex */
public class j3 implements Device {
    public String getDeviceID() {
        return AppLog.getDid();
    }

    public String getInstallID() {
        return AppLog.getIid();
    }

    public String getSsID() {
        return AppLog.getSsid();
    }
}
