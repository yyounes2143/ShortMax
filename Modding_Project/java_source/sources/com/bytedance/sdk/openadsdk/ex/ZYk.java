package com.bytedance.sdk.openadsdk.ex;

import com.bytedance.sdk.openadsdk.ex.tB.oJ;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class ZYk {
    public static final String oJ = oJ.InterfaceC0234oJ.oJ;
    public static final String ZYk = oJ.InterfaceC0234oJ.ZYk;
    public static final String tB = oJ.InterfaceC0234oJ.tB;
    public static final String ex = oJ.InterfaceC0234oJ.ex;
    public static final String Pfn = oJ.InterfaceC0234oJ.Pfn;

    /* renamed from: ba  reason: collision with root package name */
    public static final String f13343ba = oJ.InterfaceC0234oJ.f13367ba;
    public static final Set<String> cFZ = new HashSet(Arrays.asList("click", "show", "insight_log"));

    /* renamed from: com.bytedance.sdk.openadsdk.ex.ZYk$ZYk  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0230ZYk {
        public static int ZYk = 2;
        public static int oJ = 1;
        public static int tB = 100;
    }

    /* loaded from: classes3.dex */
    public static class oJ {
        public static String ZYk = "openAdLandPageLinks";
        public static String ex = "saLandingPageLinks";
        public static String oJ = "openDetailPage";
        public static String tB = "direct";
    }

    public static boolean oJ(String str) {
        if (!"embeded_ad".equals(str) && !"banner_ad".equals(str) && !"interaction".equals(str) && !"slide_banner_ad".equals(str)) {
            return false;
        }
        return true;
    }
}
