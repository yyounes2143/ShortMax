package com.bytedance.adsdk.ZYk.ex;
/* loaded from: classes3.dex */
public enum tB {
    JSON(".json"),
    ZIP(".zip");
    
    public final String tB;

    tB(String str) {
        this.tB = str;
    }

    public String oJ() {
        return ".temp" + this.tB;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.tB;
    }
}
