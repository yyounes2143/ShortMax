package com.bytedance.sdk.component.Pfn.oJ;

import com.bytedance.sdk.component.Pfn.BTZ;
import com.bytedance.sdk.component.Pfn.jFA;
import com.bytedance.sdk.component.utils.eZI;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class ZYk {
    public static BTZ oJ() {
        return new BTZ() { // from class: com.bytedance.sdk.component.Pfn.oJ.ZYk.1
            private WeakHashMap<String, String> oJ = new WeakHashMap<>();

            @Override // com.bytedance.sdk.component.Pfn.BTZ
            public String ZYk(jFA jfa) {
                return oJ(jfa.oJ());
            }

            @Override // com.bytedance.sdk.component.Pfn.BTZ
            public String oJ(jFA jfa) {
                return oJ(jfa.oJ() + "#width=" + jfa.ZYk() + "#height=" + jfa.tB() + "#scaletype=" + jfa.ex() + "#bitmapConfig=" + jfa.Pfn());
            }

            private String oJ(String str) {
                String str2 = this.oJ.get(str);
                if (str2 == null) {
                    String oJ = eZI.oJ(str);
                    this.oJ.put(str, oJ);
                    return oJ;
                }
                return str2;
            }
        };
    }
}
