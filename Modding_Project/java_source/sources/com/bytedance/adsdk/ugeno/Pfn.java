package com.bytedance.adsdk.ugeno;

import android.content.Context;
import com.bytedance.adsdk.ugeno.ex.kkU;
import com.bytedance.adsdk.ugeno.ex.so;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn {
    private static volatile Pfn oJ;
    private com.bytedance.adsdk.ugeno.tB.oJ Pfn;
    private List<com.bytedance.adsdk.ugeno.core.ZYk> ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.adsdk.ugeno.core.ZYk.ex f11606ba;
    private com.bytedance.adsdk.ugeno.core.oJ.oJ cFZ;
    private oJ ex;
    private com.bytedance.adsdk.ugeno.core.tB tB;

    private Pfn() {
    }

    private void ba() {
        ArrayList arrayList = new ArrayList();
        this.ZYk = arrayList;
        com.bytedance.adsdk.ugeno.core.tB tBVar = this.tB;
        if (tBVar != null) {
            arrayList.addAll(tBVar.oJ());
        }
        com.bytedance.adsdk.ugeno.core.ex.oJ(this.ZYk);
    }

    public static Pfn oJ() {
        if (oJ == null) {
            synchronized (Pfn.class) {
                try {
                    if (oJ == null) {
                        oJ = new Pfn();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public com.bytedance.adsdk.ugeno.core.oJ.oJ Pfn() {
        return this.cFZ;
    }

    public oJ ZYk() {
        return this.ex;
    }

    public com.bytedance.adsdk.ugeno.core.ZYk.ex ex() {
        return this.f11606ba;
    }

    public com.bytedance.adsdk.ugeno.tB.oJ tB() {
        return this.Pfn;
    }

    public void oJ(Context context, com.bytedance.adsdk.ugeno.core.tB tBVar, oJ oJVar) {
        this.tB = tBVar;
        this.ex = oJVar;
        ba();
    }

    public void oJ(com.bytedance.adsdk.ugeno.tB.oJ oJVar) {
        this.Pfn = oJVar;
    }

    public void oJ(so soVar) {
        ArrayList arrayList = new ArrayList(new com.bytedance.adsdk.ugeno.ex.oJ().oJ());
        if (soVar != null) {
            arrayList.addAll(soVar.oJ());
        }
        kkU.oJ(arrayList);
    }

    public void oJ(com.bytedance.adsdk.ugeno.ex.tB tBVar) {
        ArrayList arrayList = new ArrayList(new com.bytedance.adsdk.ugeno.ex.Pfn().oJ());
        if (tBVar != null) {
            arrayList.addAll(tBVar.oJ());
        }
        com.bytedance.adsdk.ugeno.ex.ex.oJ(arrayList);
    }
}
