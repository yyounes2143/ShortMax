package com.bytedance.sdk.component.Pfn.tB;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.component.Pfn.BTZ;
import com.bytedance.sdk.component.Pfn.PiB;
import com.bytedance.sdk.component.Pfn.QSm;
import com.bytedance.sdk.component.Pfn.Ry;
import com.bytedance.sdk.component.Pfn.oq;
import com.bytedance.sdk.component.Pfn.si;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3.dex */
public class ba {
    private final PiB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.Pfn.ex f12582ba;
    private BTZ cFZ;

    /* renamed from: so  reason: collision with root package name */
    private ExecutorService f12583so;
    private Map<String, List<tB>> oJ = new ConcurrentHashMap();
    private Map<String, si> tB = new HashMap();
    private Map<String, Ry> ex = new HashMap();
    private Map<String, com.bytedance.sdk.component.Pfn.tB> Pfn = new HashMap();

    public ba(Context context, PiB piB) {
        this.ZYk = (PiB) cFZ.oJ(piB);
        com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ(context, piB.so());
    }

    private Ry Pfn(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        Ry ba2 = this.ZYk.ba();
        return ba2 != null ? ba2 : com.bytedance.sdk.component.Pfn.tB.oJ.ZYk.Pfn.oJ(zYk.ZYk());
    }

    private com.bytedance.sdk.component.Pfn.tB ba(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        com.bytedance.sdk.component.Pfn.tB cFZ = this.ZYk.cFZ();
        return cFZ != null ? cFZ : new com.bytedance.sdk.component.Pfn.tB.oJ.oJ.ZYk(zYk.so(), zYk.oJ(), cFZ());
    }

    private ExecutorService dLZ() {
        ExecutorService ZYk = this.ZYk.ZYk();
        if (ZYk != null) {
            return ZYk;
        }
        return com.bytedance.sdk.component.Pfn.oJ.tB.oJ();
    }

    private si ex(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        si Pfn = this.ZYk.Pfn();
        if (Pfn != null) {
            return com.bytedance.sdk.component.Pfn.tB.oJ.ZYk.oJ.oJ(Pfn);
        }
        return com.bytedance.sdk.component.Pfn.tB.oJ.ZYk.oJ.oJ(zYk.ZYk());
    }

    private com.bytedance.sdk.component.Pfn.ex jFA() {
        com.bytedance.sdk.component.Pfn.ex ex = this.ZYk.ex();
        if (ex == null) {
            return new com.bytedance.sdk.component.Pfn.ZYk.oJ();
        }
        return ex;
    }

    private BTZ kkU() {
        BTZ oJ = this.ZYk.oJ();
        if (oJ != null) {
            return oJ;
        }
        return com.bytedance.sdk.component.Pfn.oJ.ZYk.oJ();
    }

    public Collection<Ry> ZYk() {
        return this.ex.values();
    }

    public ExecutorService cFZ() {
        ExecutorService oJ;
        QSm tB = this.ZYk.tB();
        if (tB != null && (oJ = tB.oJ()) != null) {
            return oJ;
        }
        if (this.f12583so == null) {
            this.f12583so = dLZ();
        }
        return this.f12583so;
    }

    public Collection<si> oJ() {
        return this.tB.values();
    }

    public Map<String, List<tB>> so() {
        return this.oJ;
    }

    public Collection<com.bytedance.sdk.component.Pfn.tB> tB() {
        return this.Pfn.values();
    }

    public Ry ZYk(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk == null) {
            zYk = com.bytedance.sdk.component.Pfn.tB.oJ.oJ.kkU();
        }
        String file = zYk.so().toString();
        Ry ry = this.ex.get(file);
        if (ry == null) {
            Ry Pfn = Pfn(zYk);
            this.ex.put(file, Pfn);
            return Pfn;
        }
        return ry;
    }

    public si oJ(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk == null) {
            zYk = com.bytedance.sdk.component.Pfn.tB.oJ.oJ.kkU();
        }
        String file = zYk.so().toString();
        si siVar = this.tB.get(file);
        if (siVar == null) {
            si ex = ex(zYk);
            this.tB.put(file, ex);
            return ex;
        }
        return siVar;
    }

    public com.bytedance.sdk.component.Pfn.tB tB(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk == null) {
            zYk = com.bytedance.sdk.component.Pfn.tB.oJ.oJ.kkU();
        }
        String file = zYk.so().toString();
        com.bytedance.sdk.component.Pfn.tB tBVar = this.Pfn.get(file);
        if (tBVar == null) {
            com.bytedance.sdk.component.Pfn.tB ba2 = ba(zYk);
            this.Pfn.put(file, ba2);
            return ba2;
        }
        return tBVar;
    }

    public oq Pfn() {
        PiB piB = this.ZYk;
        if (piB != null) {
            return piB.jFA();
        }
        return null;
    }

    public BTZ ba() {
        if (this.cFZ == null) {
            this.cFZ = kkU();
        }
        return this.cFZ;
    }

    public com.bytedance.sdk.component.Pfn.ex ex() {
        if (this.f12582ba == null) {
            this.f12582ba = jFA();
        }
        return this.f12582ba;
    }

    public com.bytedance.sdk.component.Pfn.tB oJ(String str) {
        return tB(com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ(new File(str)));
    }

    public com.bytedance.sdk.component.Pfn.tB.ZYk.oJ oJ(tB tBVar) {
        ImageView.ScaleType ex = tBVar.ex();
        if (ex == null) {
            ex = com.bytedance.sdk.component.Pfn.tB.ZYk.oJ.oJ;
        }
        ImageView.ScaleType scaleType = ex;
        Bitmap.Config dLZ = tBVar.dLZ();
        if (dLZ == null) {
            dLZ = com.bytedance.sdk.component.Pfn.tB.ZYk.oJ.ZYk;
        }
        return new com.bytedance.sdk.component.Pfn.tB.ZYk.oJ(tBVar.ZYk(), tBVar.tB(), scaleType, dLZ, tBVar.ba(), tBVar.cFZ());
    }
}
