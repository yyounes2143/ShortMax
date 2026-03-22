package com.bytedance.sdk.component.ZYk.oJ;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class BTZ {
    public com.bytedance.sdk.component.tB.oJ.oJ ZYk = new com.bytedance.sdk.component.tB.oJ.oJ();
    public dLZ oJ;

    /* loaded from: classes3.dex */
    public static class oJ {
        Object Pfn;
        Map<String, List<String>> ZYk;

        /* renamed from: ba  reason: collision with root package name */
        PiB f12603ba;
        int cFZ;
        String ex;
        com.bytedance.sdk.component.ZYk.oJ.oJ oJ;

        /* renamed from: so  reason: collision with root package name */
        String f12604so;
        cFZ tB;

        public oJ() {
            this.ZYk = new HashMap();
        }

        public oJ ZYk(String str) {
            return oJ(cFZ.tB(str));
        }

        public oJ oJ(com.bytedance.sdk.component.ZYk.oJ.oJ oJVar) {
            this.oJ = oJVar;
            return this;
        }

        public oJ ZYk(String str, String str2) {
            if (!this.ZYk.containsKey(str)) {
                this.ZYk.put(str, new ArrayList());
            }
            this.ZYk.get(str).add(str2);
            return this;
        }

        public oJ oJ(String str) {
            this.f12604so = str;
            return this;
        }

        oJ(BTZ btz) {
            this.tB = btz.ZYk();
            this.ex = btz.tB();
            this.ZYk = btz.ex();
            this.Pfn = btz.oJ();
            this.f12603ba = btz.so();
            this.oJ = btz.Pfn();
            this.cFZ = btz.cFZ();
            this.f12604so = btz.ba();
        }

        public oJ oJ(int i10) {
            this.cFZ = i10;
            return this;
        }

        public oJ oJ(Object obj) {
            this.Pfn = obj;
            return this;
        }

        public BTZ ZYk() {
            return new BTZ() { // from class: com.bytedance.sdk.component.ZYk.oJ.BTZ.oJ.1
                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public com.bytedance.sdk.component.ZYk.oJ.oJ Pfn() {
                    return oJ.this.oJ;
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public cFZ ZYk() {
                    return oJ.this.tB;
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public String ba() {
                    return oJ.this.f12604so;
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public int cFZ() {
                    return oJ.this.cFZ;
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public Map ex() {
                    return oJ.this.ZYk;
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public Object oJ() {
                    return oJ.this.Pfn;
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public PiB so() {
                    return oJ.this.f12603ba;
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.BTZ
                public String tB() {
                    return oJ.this.ex;
                }

                public String toString() {
                    return "";
                }
            };
        }

        public oJ oJ(cFZ cfz) {
            this.tB = cfz;
            return this;
        }

        public oJ oJ(String str, String str2) {
            return ZYk(str, str2);
        }

        public oJ oJ() {
            return oJ(ShareTarget.METHOD_GET, (PiB) null);
        }

        private oJ oJ(String str, PiB piB) {
            this.ex = str;
            this.f12603ba = piB;
            return this;
        }

        public oJ oJ(PiB piB) {
            return oJ(ShareTarget.METHOD_POST, piB);
        }
    }

    public abstract com.bytedance.sdk.component.ZYk.oJ.oJ Pfn();

    public abstract cFZ ZYk();

    public abstract String ba();

    public abstract int cFZ();

    public abstract Map<String, List<String>> ex();

    public oJ jFA() {
        return new oJ(this);
    }

    public abstract Object oJ();

    public void oJ(dLZ dlz) {
        this.oJ = dlz;
    }

    public PiB so() {
        return null;
    }

    public abstract String tB();
}
