package com.bytedance.sdk.component.Pfn.ex.tB;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.component.Pfn.PiB;
import com.bytedance.sdk.component.Pfn.QSm;
import com.bytedance.sdk.component.Pfn.Ry;
import com.bytedance.sdk.component.Pfn.oq;
import com.bytedance.sdk.component.Pfn.si;
import java.io.File;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3.dex */
public class ba {
    private final PiB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.Pfn.ex f12560ba;
    private ExecutorService cFZ;
    private volatile Ry ex;
    private Context jFA;

    /* renamed from: so  reason: collision with root package name */
    private ExecutorService f12561so;
    private volatile si tB;
    private Map<String, List<tB>> oJ = new ConcurrentHashMap();
    private Map<String, com.bytedance.sdk.component.Pfn.tB> Pfn = new ConcurrentHashMap();

    public ba(Context context, PiB piB) {
        this.ZYk = (PiB) cFZ.oJ(piB);
        this.jFA = context;
        com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.oJ(context, piB.so());
    }

    private ExecutorService dLZ() {
        ExecutorService ZYk = this.ZYk.ZYk();
        if (ZYk != null) {
            return ZYk;
        }
        return com.bytedance.sdk.component.Pfn.ex.oJ.ZYk.oJ();
    }

    private com.bytedance.sdk.component.Pfn.tB ex(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        com.bytedance.sdk.component.Pfn.tB cFZ = this.ZYk.cFZ();
        return cFZ != null ? cFZ : new com.bytedance.sdk.component.Pfn.ex.tB.oJ.oJ.ZYk(zYk.so(), zYk.oJ());
    }

    private com.bytedance.sdk.component.Pfn.ex kkU() {
        com.bytedance.sdk.component.Pfn.ex ex = this.ZYk.ex();
        if (ex == null) {
            return new com.bytedance.sdk.component.Pfn.ZYk.oJ();
        }
        return ex;
    }

    public ExecutorService Pfn() {
        ExecutorService oJ;
        QSm tB = this.ZYk.tB();
        if (tB != null && (oJ = tB.oJ()) != null) {
            return oJ;
        }
        if (this.cFZ == null) {
            this.cFZ = dLZ();
        }
        return this.cFZ;
    }

    public Ry ZYk() {
        return this.ex;
    }

    public oq ba() {
        PiB piB = this.ZYk;
        if (piB != null) {
            return piB.jFA();
        }
        return null;
    }

    public boolean cFZ() {
        PiB piB = this.ZYk;
        if (piB != null) {
            return piB.kkU();
        }
        return false;
    }

    public Map<String, List<tB>> jFA() {
        return this.oJ;
    }

    public Context oJ() {
        return this.jFA;
    }

    public ExecutorService so() {
        ExecutorService ZYk;
        QSm tB = this.ZYk.tB();
        if (tB != null && (ZYk = tB.ZYk()) != null) {
            return ZYk;
        }
        if (this.f12561so == null) {
            this.f12561so = com.bytedance.sdk.component.Pfn.ex.oJ.ZYk.oJ();
        }
        return this.f12561so;
    }

    public Collection<com.bytedance.sdk.component.Pfn.tB> tB() {
        return this.Pfn.values();
    }

    public Ry ZYk(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk == null) {
            zYk = com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.kkU();
        }
        if (this.ex == null) {
            synchronized (com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.ZYk.class) {
                try {
                    if (this.ex == null) {
                        this.ex = new com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.ZYk(zYk.ZYk(), zYk.ex());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.ex;
    }

    public si oJ(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk == null) {
            zYk = com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.kkU();
        }
        if (this.tB == null) {
            synchronized (com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.tB.class) {
                try {
                    if (this.tB == null) {
                        this.tB = new com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.tB(new com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.oJ(zYk.ZYk(), zYk.tB()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.tB;
    }

    public com.bytedance.sdk.component.Pfn.tB tB(com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk == null) {
            zYk = com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.kkU();
        }
        String file = zYk.so().toString();
        com.bytedance.sdk.component.Pfn.tB tBVar = this.Pfn.get(file);
        if (tBVar == null) {
            com.bytedance.sdk.component.Pfn.tB ex = ex(zYk);
            this.Pfn.put(file, ex);
            return ex;
        }
        return tBVar;
    }

    public com.bytedance.sdk.component.Pfn.ex ex() {
        if (this.f12560ba == null) {
            this.f12560ba = kkU();
        }
        return this.f12560ba;
    }

    public com.bytedance.sdk.component.Pfn.tB oJ(String str) {
        return tB(com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk.oJ(new File(str)));
    }

    public com.bytedance.sdk.component.Pfn.ex.tB.ZYk.ZYk oJ(tB tBVar) {
        ImageView.ScaleType ex = tBVar.ex();
        if (ex == null) {
            ex = com.bytedance.sdk.component.Pfn.ex.tB.ZYk.ZYk.oJ;
        }
        ImageView.ScaleType scaleType = ex;
        Bitmap.Config dLZ = tBVar.dLZ();
        if (dLZ == null) {
            dLZ = com.bytedance.sdk.component.Pfn.ex.tB.ZYk.ZYk.ZYk;
        }
        return new com.bytedance.sdk.component.Pfn.ex.tB.ZYk.ZYk(tBVar.ZYk(), tBVar.tB(), scaleType, dLZ, tBVar.ba(), tBVar.cFZ());
    }
}
