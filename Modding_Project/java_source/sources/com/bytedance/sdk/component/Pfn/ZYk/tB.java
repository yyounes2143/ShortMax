package com.bytedance.sdk.component.Pfn.ZYk;

import com.bytedance.sdk.component.Pfn.ba;
import com.bytedance.sdk.component.Pfn.cFZ;
import java.util.Map;
/* loaded from: classes3.dex */
public class tB<T> implements ba {
    private cFZ Pfn;
    private int ZYk;
    private String ex;
    Map<String, String> oJ;
    private T tB;

    public tB(int i10, T t10, String str) {
        this.ZYk = i10;
        this.tB = t10;
        this.ex = str;
    }

    @Override // com.bytedance.sdk.component.Pfn.ba
    public Map<String, String> Pfn() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.Pfn.ba
    public int ZYk() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.Pfn.ba
    public String ex() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.Pfn.ba
    public cFZ oJ() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.Pfn.ba
    public T tB() {
        return this.tB;
    }

    public void oJ(cFZ cfz) {
        this.Pfn = cfz;
    }

    public tB(int i10, T t10, String str, Map<String, String> map) {
        this(i10, t10, str);
        this.oJ = map;
    }
}
