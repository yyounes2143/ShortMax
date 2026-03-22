package com.ss.ttvideoengine.selector.gracie;

import com.bytedance.vcloud.abrmodule.IDeviceInfo;
/* loaded from: classes6.dex */
class GracieDeviceInfo implements IDeviceInfo {
    private int mHeight;
    private int mWidth;

    private GracieDeviceInfo(int i10, int i11) {
        this.mWidth = i10;
        this.mHeight = i11;
    }

    @Override // com.bytedance.vcloud.abrmodule.IDeviceInfo
    public int getHDRInfo() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IDeviceInfo
    public int getHWDecodeMaxLength() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IDeviceInfo
    public int getScreenFps() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IDeviceInfo
    public int getScreenHeight() {
        return this.mHeight;
    }

    @Override // com.bytedance.vcloud.abrmodule.IDeviceInfo
    public int getScreenWidth() {
        return this.mWidth;
    }
}
