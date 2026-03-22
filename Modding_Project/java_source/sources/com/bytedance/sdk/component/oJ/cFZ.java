package com.bytedance.sdk.component.oJ;

import com.bytedance.sdk.component.oJ.Id;
import com.bytedance.sdk.component.oJ.RZ;
import com.bytedance.sdk.component.oJ.ex;
import com.bytedance.sdk.component.oJ.oq;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class cFZ implements Id.oJ {
    private final QSm ZYk;
    private final PiB cFZ;
    private final boolean jFA;
    private final com.bytedance.sdk.component.oJ.oJ kkU;
    private final so oJ;

    /* renamed from: so  reason: collision with root package name */
    private final boolean f12796so;
    private final Map<String, ZYk> tB = new HashMap();
    private final Map<String, ex.ZYk> ex = new HashMap();
    private final List<eZI> Pfn = new ArrayList();

    /* renamed from: ba  reason: collision with root package name */
    private final Set<ex> f12795ba = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class oJ {
        String ZYk;
        boolean oJ;

        private oJ(boolean z10, String str) {
            this.oJ = z10;
            this.ZYk = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cFZ(kkU kku, com.bytedance.sdk.component.oJ.oJ oJVar, oq oqVar) {
        this.kkU = oJVar;
        this.oJ = kku.ex;
        QSm qSm = new QSm(oqVar, kku.BTZ, kku.PiB);
        this.ZYk = qSm;
        qSm.oJ(this);
        qSm.oJ(kku.eZI);
        this.cFZ = kku.jFA;
        this.f12796so = kku.f12801so;
        this.jFA = kku.awB;
    }

    private cY ZYk(String str, ZYk zYk) {
        if (this.jFA) {
            return cY.PRIVATE;
        }
        return this.ZYk.oJ(this.f12796so, str, zYk);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oJ oJ(eZI ezi, ba baVar) throws Exception {
        ZYk zYk = this.tB.get(ezi.ex);
        if (zYk != null) {
            try {
                cY ZYk = ZYk(baVar.ZYk, zYk);
                baVar.ex = ZYk;
                if (ZYk != null) {
                    if (zYk instanceof Pfn) {
                        ezi.toString();
                        return oJ(ezi, (Pfn) zYk, baVar);
                    } else if (zYk instanceof tB) {
                        ezi.toString();
                        return oJ(ezi, (tB) zYk, ZYk);
                    }
                } else {
                    ezi.toString();
                    throw new Ry(-1);
                }
            } catch (oq.oJ unused) {
                ezi.toString();
                this.Pfn.add(ezi);
                return new oJ(false, jr.oJ());
            }
        }
        ex.ZYk zYk2 = this.ex.get(ezi.ex);
        if (zYk2 != null) {
            ex oJ2 = zYk2.oJ();
            oJ2.oJ(ezi.ex);
            cY ZYk2 = ZYk(baVar.ZYk, oJ2);
            baVar.ex = ZYk2;
            if (ZYk2 != null) {
                ezi.toString();
                return oJ(ezi, oJ2, baVar);
            }
            ezi.toString();
            oJ2.ex();
            throw new Ry(-1);
        }
        ezi.toString();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(String str, Pfn<?, ?> pfn) {
        pfn.oJ(str);
        this.tB.put(str, pfn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(String str, ex.ZYk zYk) {
        this.ex.put(str, zYk);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ() {
        for (ex exVar : this.f12795ba) {
            exVar.Pfn();
        }
        this.f12795ba.clear();
        this.tB.clear();
        this.ex.clear();
        this.ZYk.ZYk(this);
    }

    private oJ oJ(eZI ezi, Pfn pfn, ba baVar) throws Exception {
        return new oJ(true, jr.oJ(this.oJ.oJ((so) pfn.oJ(oJ(ezi.Pfn, (ZYk) pfn), baVar))));
    }

    private oJ oJ(final eZI ezi, final ex exVar, ba baVar) throws Exception {
        this.f12795ba.add(exVar);
        exVar.oJ(oJ(ezi.Pfn, exVar), baVar, new ex.oJ() { // from class: com.bytedance.sdk.component.oJ.cFZ.1
            @Override // com.bytedance.sdk.component.oJ.ex.oJ
            public void oJ(Object obj) {
                if (cFZ.this.kkU == null) {
                    return;
                }
                cFZ.this.kkU.ZYk(jr.oJ(cFZ.this.oJ.oJ((so) obj)), ezi);
                cFZ.this.f12795ba.remove(exVar);
            }

            @Override // com.bytedance.sdk.component.oJ.ex.oJ
            public void oJ(Throwable th2) {
                if (cFZ.this.kkU == null) {
                    return;
                }
                cFZ.this.kkU.ZYk(jr.oJ(th2), ezi);
                cFZ.this.f12795ba.remove(exVar);
            }
        });
        return new oJ(false, jr.oJ());
    }

    private oJ oJ(final eZI ezi, tB tBVar, cY cYVar) throws Exception {
        new RZ(ezi.ex, cYVar, new RZ.oJ() { // from class: com.bytedance.sdk.component.oJ.cFZ.2
        });
        return new oJ(false, jr.oJ());
    }

    private Object oJ(String str, ZYk zYk) throws JSONException {
        return this.oJ.oJ(str, oJ(zYk)[0]);
    }

    private static Type[] oJ(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }
}
