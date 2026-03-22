package com.bytedance.sdk.component.Pfn.ex.tB;

import com.bytedance.sdk.component.Pfn.dLZ;
import java.util.Map;
/* loaded from: classes3.dex */
public class ex<T> implements dLZ {
    private int Pfn;
    private String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12562ba;
    private Map<String, String> cFZ;
    private int dLZ;
    private T ex;
    private boolean jFA;
    private com.bytedance.sdk.component.Pfn.cFZ kkU;
    private String oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f12563so;
    private T tB;

    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public boolean Pfn() {
        return this.f12563so;
    }

    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public T ZYk() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public boolean ba() {
        return this.jFA;
    }

    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public int cFZ() {
        return this.dLZ;
    }

    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public Map<String, String> ex() {
        return this.cFZ;
    }

    public ex oJ(tB tBVar, T t10) {
        this.tB = t10;
        this.oJ = tBVar.kkU();
        this.ZYk = tBVar.oJ();
        this.Pfn = tBVar.ZYk();
        this.f12562ba = tBVar.tB();
        this.jFA = tBVar.PiB();
        this.kkU = tBVar.awB();
        this.dLZ = tBVar.eZI();
        return this;
    }

    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public T tB() {
        return this.ex;
    }

    public ex oJ(tB tBVar, T t10, Map<String, String> map, boolean z10) {
        this.cFZ = map;
        this.f12563so = z10;
        return oJ(tBVar, t10);
    }

    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public String oJ() {
        return this.ZYk;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.Pfn.dLZ
    public void oJ(Object obj) {
        this.ex = this.tB;
        this.tB = obj;
    }
}
