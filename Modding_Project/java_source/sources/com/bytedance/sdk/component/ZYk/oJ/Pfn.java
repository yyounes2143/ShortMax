package com.bytedance.sdk.component.ZYk.oJ;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public final class Pfn extends PiB {
    List<String> ZYk;
    List<String> oJ;

    Pfn(List<String> list, List<String> list2) {
        this.oJ = list;
        this.ZYk = list2;
    }

    /* loaded from: classes3.dex */
    public static final class oJ {
        private final List<String> oJ = new ArrayList();
        private final List<String> ZYk = new ArrayList();

        public oJ oJ(String str, String str2) {
            this.oJ.add(str);
            this.ZYk.add(str2);
            return this;
        }

        public Pfn oJ() {
            return new Pfn(this.oJ, this.ZYk);
        }
    }
}
