package com.bytedance.adsdk.oJ.ZYk.ex;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public enum tB implements Pfn {
    QUESTION("?", 0),
    COLON(":", 0),
    DOUBLE_AMP("&&", 1),
    DOUBLE_BAR("||", 1),
    EQ("==", 2),
    GT(">", 2),
    LT("<", 2),
    LT_EQ("<=", 2),
    GT_EQ(">=", 2),
    NOT_EQ("!=", 2),
    PLUS("+", 3),
    MINUS("-", 3),
    MULTI(ProxyConfig.MATCH_ALL_SCHEMES, 4),
    DIVISION(DomExceptionUtils.SEPARATOR, 4),
    MOD("%", 4);
    
    private final int RZ;
    private final String Ry;
    private static final Map<String, tB> eZI = new HashMap(128);

    /* renamed from: si  reason: collision with root package name */
    private static final Set<tB> f11604si = new HashSet();

    static {
        tB[] values;
        int i10;
        for (tB tBVar : values()) {
            eZI.put(tBVar.oJ(), tBVar);
            f11604si.add(tBVar);
        }
    }

    tB(String str, int i10) {
        this.Ry = str;
        this.RZ = i10;
    }

    public static tB oJ(String str) {
        return eZI.get(str);
    }

    public int ZYk() {
        return this.RZ;
    }

    public static boolean oJ(Pfn pfn) {
        return pfn instanceof tB;
    }

    public String oJ() {
        return this.Ry;
    }
}
