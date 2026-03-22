package com.bytedance.sdk.component.ba.oJ;

import android.content.Context;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class so {
    private static so PiB;
    private static volatile com.bytedance.sdk.component.ba.oJ.Pfn.oJ kkU;
    private volatile Map<Integer, com.bytedance.sdk.component.ba.oJ.ZYk.tB> BTZ;
    private volatile com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ Pfn;
    private final AtomicBoolean WcQ = new AtomicBoolean(false);
    private volatile com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ ZYk;
    private long awB;

    /* renamed from: ba  reason: collision with root package name */
    private volatile com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ f12768ba;
    private volatile com.bytedance.sdk.component.ba.oJ.oJ.Pfn cFZ;
    private volatile com.bytedance.sdk.component.ba.oJ.ZYk.tB dLZ;
    private volatile com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ ex;
    private volatile Pfn jFA;
    private volatile Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private volatile boolean f12769so;
    private volatile com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ tB;

    private so() {
    }

    public static com.bytedance.sdk.component.ba.oJ.Pfn.oJ Pfn() {
        if (kkU == null) {
            synchronized (so.class) {
                try {
                    if (kkU == null) {
                        kkU = new com.bytedance.sdk.component.ba.oJ.Pfn.ZYk();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return kkU;
    }

    public static synchronized so cFZ() {
        so soVar;
        synchronized (so.class) {
            try {
                if (PiB == null) {
                    PiB = new so();
                }
                soVar = PiB;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return soVar;
    }

    public com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ BTZ() {
        return this.ZYk;
    }

    public com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ PiB() {
        return this.tB;
    }

    public com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ WcQ() {
        return this.ex;
    }

    public boolean ZYk() {
        return this.f12769so;
    }

    public com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ awB() {
        return this.Pfn;
    }

    public Context ba() {
        return this.oJ;
    }

    public void dLZ() {
        com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.tB();
    }

    public Pfn eZI() {
        return this.jFA;
    }

    public com.bytedance.sdk.component.ba.oJ.oJ.Pfn ex() {
        return this.cFZ;
    }

    public void jFA() {
        com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.ZYk();
    }

    public com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ kkU() {
        return this.f12768ba;
    }

    public boolean oJ() {
        return this.WcQ.get();
    }

    public long si() {
        return this.awB * SignalManager.TWENTY_FOUR_HOURS_MILLIS;
    }

    public com.bytedance.sdk.component.ba.oJ.ZYk.tB so() {
        return this.dLZ;
    }

    public Map<Integer, com.bytedance.sdk.component.ba.oJ.ZYk.tB> tB() {
        return this.BTZ;
    }

    public void ZYk(boolean z10) {
        this.f12769so = z10;
    }

    public void ex(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        this.ex = oJVar;
    }

    public void oJ(boolean z10) {
        this.WcQ.set(z10);
    }

    public void tB(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        this.tB = oJVar;
    }

    public void ZYk(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        this.ZYk = oJVar;
    }

    public void oJ(com.bytedance.sdk.component.ba.oJ.oJ.Pfn pfn) {
        this.cFZ = pfn;
    }

    public void oJ(Context context) {
        this.oJ = context;
    }

    public void oJ(com.bytedance.sdk.component.ba.oJ.ZYk.tB tBVar) {
        this.dLZ = tBVar;
    }

    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        this.f12768ba = oJVar;
    }

    public void Pfn(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        this.Pfn = oJVar;
    }

    public void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        oJVar.oJ(System.currentTimeMillis());
        com.bytedance.sdk.component.ba.oJ.ZYk.ex.oJ.oJ(oJVar, oJVar.ex());
    }

    public void oJ(String str, boolean z10) {
        com.bytedance.sdk.component.ba.oJ.ba.oJ.oJ().oJ(str, z10);
    }

    public void oJ(String str, List<String> list, boolean z10, Map<String, String> map, int i10, String str2) {
        com.bytedance.sdk.component.ba.oJ.ba.oJ.oJ().oJ(str, list, z10, map, i10, str2);
    }

    public void oJ(Pfn pfn) {
        this.jFA = pfn;
    }

    public void oJ(long j10) {
        this.awB = j10;
    }
}
