package com.bytedance.adsdk.oJ.ZYk.ex;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public enum ex implements Pfn {
    LEFT_PAREN("("),
    RIGHT_PAREN(")"),
    LEFT_BRACKET("["),
    RIGHT_BRACKET("]"),
    COMMA(",");
    

    /* renamed from: ba  reason: collision with root package name */
    private static final Map<String, ex> f11601ba;
    private final String cFZ;

    static {
        HashMap hashMap = new HashMap(128);
        f11601ba = hashMap;
        for (ex exVar : hashMap.values()) {
            f11601ba.put(exVar.oJ(), exVar);
        }
    }

    ex(String str) {
        this.cFZ = str;
    }

    public static boolean oJ(Pfn pfn) {
        return pfn instanceof ex;
    }

    public String oJ() {
        return this.cFZ;
    }
}
