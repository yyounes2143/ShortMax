package com.bytedance.sdk.openadsdk.awB.tB;
/* loaded from: classes3.dex */
class ex implements ZYk {
    private static volatile ex oJ;

    private ex() {
    }

    @Override // com.bytedance.sdk.openadsdk.awB.tB.ZYk
    public void oJ(com.bytedance.sdk.openadsdk.awB.ZYk zYk) {
    }

    @Override // com.bytedance.sdk.openadsdk.awB.tB.ZYk
    public void oJ(com.bytedance.sdk.openadsdk.awB.ZYk zYk, boolean z10) {
    }

    public static ex oJ() {
        if (oJ == null) {
            synchronized (ex.class) {
                try {
                    if (oJ == null) {
                        oJ = new ex();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }
}
