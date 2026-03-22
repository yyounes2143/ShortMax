package com.bytedance.sdk.openadsdk.tB;

import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.tB.cFZ;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU {
    private String BTZ;
    private String PiB;
    private FilterWord QSm;
    private int RZ;
    private int Ry;
    private String WcQ;
    private JSONObject awB;

    /* renamed from: ba  reason: collision with root package name */
    protected IListenerManager f13391ba;
    private String dLZ;
    private String eZI;

    /* renamed from: si  reason: collision with root package name */
    private cY f13392si;
    public static FilterWord oJ = new FilterWord("", "");
    public static int ZYk = 1;
    public static int tB = 2;
    public static int ex = 3;
    public static int Pfn = 4;
    private final Set<tB> cFZ = new HashSet();

    /* renamed from: so  reason: collision with root package name */
    private final Set<ZYk> f13393so = new HashSet();
    private final Set<ex> jFA = new HashSet();
    private final Set<oJ> kkU = new HashSet();

    /* loaded from: classes3.dex */
    public interface ZYk {
        void oJ(int i10);
    }

    /* loaded from: classes3.dex */
    public interface ex {
        void oJ(String str);
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(List<FilterWord> list);
    }

    /* loaded from: classes3.dex */
    public interface tB {
        void oJ(FilterWord filterWord);
    }

    private void kkU() {
        for (tB tBVar : this.cFZ) {
            tBVar.oJ(this.QSm);
        }
    }

    public void Pfn() {
        for (ZYk zYk : this.f13393so) {
            zYk.oJ(tB);
        }
    }

    public void ZYk(String str) {
        this.BTZ = str;
    }

    public void ba() {
        for (ZYk zYk : this.f13393so) {
            zYk.oJ(Pfn);
        }
    }

    public String cFZ() {
        return this.WcQ;
    }

    public void ex() {
        if (!tB() && !TextUtils.isEmpty(this.WcQ)) {
            this.QSm = new FilterWord("0:00", this.WcQ);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.QSm);
        if (!TextUtils.isEmpty(this.dLZ)) {
            if (TextUtils.isEmpty(this.WcQ)) {
                com.bytedance.sdk.openadsdk.tB.ZYk.oJ().oJ(this.dLZ, arrayList, this.BTZ);
            } else {
                if (this.awB == null) {
                    cY cYVar = this.f13392si;
                    if (cYVar != null) {
                        this.awB = cYVar.mf();
                    } else {
                        try {
                            this.awB = new JSONObject(this.eZI);
                        } catch (Throwable th2) {
                            QSm.oJ("TTDislikeManager", "creative info to json exception", th2);
                        }
                    }
                }
                com.bytedance.sdk.openadsdk.tB.ZYk.oJ().oJ(this.dLZ, arrayList, this.awB, this.WcQ, this.BTZ);
            }
        }
        if (!TextUtils.isEmpty(this.PiB)) {
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                ex("onItemClickClosed");
            } else {
                cFZ.oJ Pfn2 = com.bytedance.sdk.openadsdk.core.jFA.ZYk().Pfn(this.PiB);
                if (Pfn2 != null) {
                    Pfn2.oJ();
                    com.bytedance.sdk.openadsdk.core.jFA.ZYk().ba(this.PiB);
                }
            }
        }
        for (ZYk zYk : this.f13393so) {
            zYk.oJ(ZYk);
        }
        oJ(oJ);
        tB("");
    }

    public boolean jFA() {
        if (this.Ry < this.RZ) {
            return true;
        }
        return false;
    }

    public int so() {
        return this.Ry;
    }

    public boolean tB() {
        FilterWord filterWord = this.QSm;
        return (filterWord == null || filterWord.equals(oJ)) ? false : true;
    }

    public FilterWord ZYk() {
        return this.QSm;
    }

    public void oJ() {
        this.cFZ.clear();
        this.f13393so.clear();
        this.jFA.clear();
        this.kkU.clear();
    }

    public void tB(String str) {
        this.WcQ = str;
        for (ex exVar : this.jFA) {
            exVar.oJ(this.WcQ);
        }
    }

    public void oJ(String str) {
        this.dLZ = str;
    }

    public void oJ(FilterWord filterWord) {
        this.QSm = filterWord;
        kkU();
    }

    public void oJ(tB tBVar) {
        this.cFZ.add(tBVar);
    }

    public void oJ(ZYk zYk) {
        this.f13393so.add(zYk);
    }

    public void oJ(ex exVar) {
        this.jFA.add(exVar);
    }

    public void oJ(oJ oJVar) {
        this.kkU.add(oJVar);
    }

    public void oJ(List<FilterWord> list) {
        for (oJ oJVar : this.kkU) {
            oJVar.oJ(list);
        }
    }

    protected IListenerManager oJ(int i10) {
        if (this.f13391ba == null) {
            this.f13391ba = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().oJ(i10));
        }
        return this.f13391ba;
    }

    public static void oJ(final int i10, final String str, final cFZ.oJ oJVar) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ofl.tB(new com.bytedance.sdk.component.so.so("DislikeClosed_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.tB.kkU.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.oJ oJ2 = com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ();
                    if (i10 == 6 && oJVar != null) {
                        try {
                            com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ZYk zYk = new com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ZYk(str, oJVar);
                            IListenerManager asInterface = IListenerManager.Stub.asInterface(oJ2.oJ(6));
                            if (asInterface != null) {
                                asInterface.registerDisLikeClosedListener(str, zYk);
                            }
                        } catch (RemoteException e10) {
                            QSm.tB("TTDislikeManager", e10.getMessage());
                        }
                    }
                }
            }, 5);
        }
    }

    public static void oJ(final int i10, final String str) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ofl.tB(new com.bytedance.sdk.component.so.so("DislikeClosed_unregisterMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.tB.kkU.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.oJ oJ2 = com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ();
                    if (i10 == 6) {
                        try {
                            IListenerManager asInterface = IListenerManager.Stub.asInterface(oJ2.oJ(6));
                            if (asInterface != null) {
                                asInterface.unregisterDisLikeClosedListener(str);
                            }
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }, 5);
        }
    }

    private void ex(final String str) {
        ofl.tB(new com.bytedance.sdk.component.so.so("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.tB.kkU.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!TextUtils.isEmpty(kkU.this.PiB)) {
                        kkU.this.oJ(6).executeDisLikeClosedCallback(kkU.this.PiB, str);
                    }
                } catch (Throwable th2) {
                    QSm.oJ("TTDislikeManager", "executeRewardVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    public void oJ(String str, cY cYVar) {
        this.eZI = str;
        this.f13392si = cYVar;
    }

    public void oJ(int i10, int i11) {
        this.Ry = i10;
        this.RZ = i11;
    }
}
