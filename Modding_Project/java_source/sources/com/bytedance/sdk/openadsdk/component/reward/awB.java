package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTClientBidding;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class awB implements TTClientBidding {
    private final so oJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public awB(Context context, com.bytedance.sdk.openadsdk.core.model.oJ oJVar, AdSlot adSlot) {
        this.oJ = new so(context, oJVar, adSlot);
    }

    public void ZYk() {
        this.oJ.oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d10, String str, String str2) {
        this.oJ.loss(d10, str, str2);
    }

    public so oJ() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d10) {
        this.oJ.win(d10);
    }
}
