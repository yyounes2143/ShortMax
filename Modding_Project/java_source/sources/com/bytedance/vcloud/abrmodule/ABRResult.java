package com.bytedance.vcloud.abrmodule;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ABRResult {
    private List<ABRResultElement> elements = new ArrayList();

    public void add(ABRResultElement aBRResultElement) {
        this.elements.add(aBRResultElement);
    }

    public ABRResultElement get(int i10) {
        return this.elements.get(i10);
    }

    public int size() {
        return this.elements.size();
    }
}
