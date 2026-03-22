package com.bytedance.sdk.openadsdk.api.reward;
/* loaded from: classes3.dex */
public class PAGRewardItem {
    private final String ZYk;
    private final int oJ;

    public PAGRewardItem(int i10, String str) {
        this.oJ = i10;
        this.ZYk = str;
    }

    public int getRewardAmount() {
        return this.oJ;
    }

    public String getRewardName() {
        return this.ZYk;
    }
}
