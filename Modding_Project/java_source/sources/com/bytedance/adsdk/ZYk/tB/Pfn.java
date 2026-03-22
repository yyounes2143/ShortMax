package com.bytedance.adsdk.ZYk.tB;

import com.bytedance.adsdk.ZYk.WcQ;
/* loaded from: classes3.dex */
public class Pfn {
    private static final Pfn oJ = new Pfn();
    private final WcQ<String, com.bytedance.adsdk.ZYk.cFZ> ZYk = new WcQ<>(20);

    Pfn() {
    }

    public static Pfn oJ() {
        return oJ;
    }

    public com.bytedance.adsdk.ZYk.cFZ oJ(String str) {
        if (str == null) {
            return null;
        }
        return this.ZYk.oJ((WcQ<String, com.bytedance.adsdk.ZYk.cFZ>) str);
    }

    public void oJ(String str, com.bytedance.adsdk.ZYk.cFZ cfz) {
        if (str == null) {
            return;
        }
        this.ZYk.oJ(str, cfz);
    }
}
