package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTClientBidding;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class WcQ implements TTClientBidding {
    private final ba oJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WcQ(Context context, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        this.oJ = new ba(context, oJVar);
    }

    public void ZYk() {
        this.oJ.oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d10, String str, String str2) {
        this.oJ.loss(d10, str, str2);
    }

    public ba oJ() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d10) {
        this.oJ.win(d10);
    }

    public void oJ(boolean z10) {
        this.oJ.oJ(z10);
    }
}
