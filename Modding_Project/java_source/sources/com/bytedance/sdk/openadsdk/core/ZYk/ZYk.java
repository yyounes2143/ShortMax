package com.bytedance.sdk.openadsdk.core.ZYk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.XAo;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.BTZ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.eZI;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends tB {

    /* renamed from: mu  reason: collision with root package name */
    private static int f13104mu = Integer.MIN_VALUE;
    protected oJ BTZ;
    public eZI Pfn;
    protected PAGNativeAd PiB;
    protected int QSm;
    protected com.bytedance.sdk.openadsdk.core.so.ZYk RZ;
    protected com.bytedance.sdk.openadsdk.core.tB.oJ Ry;
    protected com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB WcQ;
    private WeakReference<Activity> ZYk;
    protected boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    protected final cY f13105ba;
    protected final String cFZ;
    protected BTZ dLZ;
    protected com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba eZI;
    protected Context ex;
    protected WeakReference<View> jFA;
    protected WeakReference<View> kkU;
    private String oJ;

    /* renamed from: si  reason: collision with root package name */
    protected Map<String, Object> f13106si;

    /* renamed from: so  reason: collision with root package name */
    protected final int f13107so;
    private boolean tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(View view, int i10);
    }

    public ZYk(@NonNull Context context, @NonNull cY cYVar, @NonNull String str, int i10) {
        this.awB = false;
        this.QSm = 0;
        this.tB = false;
        this.ex = context;
        this.f13105ba = cYVar;
        this.cFZ = str;
        this.f13107so = i10;
    }

    public void Pfn(boolean z10) {
        this.awB = z10;
    }

    public void ZYk(View view) {
        if (view == null) {
            return;
        }
        this.kkU = new WeakReference<>(view);
    }

    public String ba() {
        return this.oJ;
    }

    public View ex() {
        WeakReference<Activity> weakReference = this.ZYk;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.ZYk.get().findViewById(16908290);
    }

    public boolean oJ(BTZ btz, Map<String, Object> map) {
        return false;
    }

    public void tB(int i10) {
        this.HL = i10;
    }

    public static boolean tB(View view) {
        return 520093705 == view.getId() || 520093707 == view.getId() || 520093703 == view.getId() || oJ(view.getContext()) == view.getId() || com.bytedance.sdk.openadsdk.utils.eZI.eXp == view.getId() || com.bytedance.sdk.openadsdk.utils.eZI.Vh == view.getId();
    }

    public View Pfn() {
        WeakReference<Activity> weakReference = this.ZYk;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        View findViewById = this.ZYk.get().findViewById(520093713);
        return findViewById == null ? this.ZYk.get().findViewById(520093713) : findViewById;
    }

    public void ZYk(int i10) {
        this.IUZ = i10;
    }

    public void oJ(com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba baVar) {
        this.eZI = baVar;
    }

    public void ex(int i10) {
        this.QSm = i10;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.so.ZYk zYk) {
        this.RZ = zYk;
    }

    public void oJ(PAGNativeAd pAGNativeAd) {
        this.PiB = pAGNativeAd;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.tB.oJ oJVar) {
        this.Ry = oJVar;
    }

    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar) {
        this.WcQ = tBVar;
    }

    public void oJ(oJ oJVar) {
        this.BTZ = oJVar;
    }

    public void oJ(Activity activity) {
        if (activity == null) {
            return;
        }
        this.ZYk = new WeakReference<>(activity);
    }

    public ZYk(@NonNull Context context, @NonNull cY cYVar, @NonNull String str, int i10, boolean z10) {
        this(context, cYVar, str, i10);
        this.tB = z10;
    }

    public void oJ(View view) {
        if (view == null) {
            return;
        }
        this.jFA = new WeakReference<>(view);
    }

    public void oJ(Map<String, Object> map) {
        Map<String, Object> map2 = this.f13106si;
        if (map2 != null) {
            map2.putAll(map);
            map.putAll(this.f13106si);
        }
        this.f13106si = map;
    }

    public void oJ(int i10) {
        this.Ln = i10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.tB
    public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
        int i10;
        boolean z11;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
        if (this.ex == null) {
            this.ex = si.oJ();
        }
        if ((this.tB || !oJ(view, 1, f10, f11, f12, f13, sparseArray, z10)) && this.ex != null) {
            eZI ezi = this.Pfn;
            if (ezi != null) {
                int i11 = ezi.BTZ;
                JSONObject jSONObject3 = ezi.PiB;
                JSONObject jSONObject4 = ezi.f13226si;
                z11 = ezi.Ry;
                i10 = i11;
                jSONObject = jSONObject3;
                jSONObject2 = jSONObject4;
            } else {
                i10 = -1;
                z11 = false;
                jSONObject = null;
                jSONObject2 = null;
            }
            long j10 = this.Xe;
            long j11 = this.f13115tb;
            WeakReference<View> weakReference = this.jFA;
            View view2 = weakReference == null ? null : weakReference.get();
            WeakReference<View> weakReference2 = this.kkU;
            BTZ oJ3 = oJ(f10, f11, f12, f13, sparseArray, j10, j11, view2, weakReference2 == null ? null : weakReference2.get(), ba(), cdg.so(this.ex), cdg.kkU(this.ex), cdg.jFA(this.ex), i10, jSONObject, jSONObject2);
            this.dLZ = oJ3;
            if (oJ(oJ3, this.f13106si)) {
                return;
            }
            if (this.WcQ != null) {
                if (this.f13106si == null) {
                    this.f13106si = new HashMap();
                }
                this.f13106si.put("duration", Long.valueOf(this.WcQ.ba()));
            }
            cY cYVar = this.f13105ba;
            if (!this.tB && !z11) {
                oJ oJVar = this.BTZ;
                if (oJVar != null) {
                    oJVar.oJ(view, -1);
                }
                if (oJ(view, z10)) {
                    boolean ZYk = Ln.ZYk(cYVar);
                    String oJ4 = ZYk ? this.cFZ : HyG.oJ(this.f13107so);
                    if (view != null) {
                        try {
                            if (((Boolean) view.getTag(520093762)).booleanValue()) {
                                XAo.oJ(true);
                            }
                        } catch (Exception unused) {
                        }
                    }
                    Activity oJ5 = view != null ? com.bytedance.sdk.component.utils.ZYk.oJ(view) : null;
                    boolean oJ6 = XAo.oJ(oJ5 == null ? this.ex : oJ5, cYVar, this.f13107so, this.PiB, this.Ry, oJ4, this.eZI, ZYk, 0);
                    XAo.oJ(false);
                    if (oJ6 || cYVar == null || cYVar.TNk() == null || cYVar.TNk().tB() != 2) {
                        if (cYVar != null && !oJ6 && TextUtils.isEmpty(cYVar.Oof()) && com.bytedance.sdk.openadsdk.ex.ZYk.oJ(this.cFZ)) {
                            com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this.ex, this.cFZ).tB(cYVar);
                        }
                        com.bytedance.sdk.openadsdk.ex.tB.oJ("click", cYVar, this.dLZ, this.cFZ, oJ6, this.f13106si, z10 ? 1 : 2);
                        return;
                    }
                    return;
                }
                return;
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ("click", cYVar, this.dLZ, this.cFZ, true, this.f13106si, z10 ? 1 : 2);
            com.bytedance.sdk.openadsdk.core.model.ex NTC = cYVar.NTC();
            if (NTC == null || cYVar.Br() || (oJ2 = NTC.oJ()) == null) {
                return;
            }
            com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar = this.WcQ;
            oJ2.cFZ(tBVar != null ? tBVar.ba() : 0L);
        }
    }

    public boolean oJ(View view, boolean z10) {
        return oJ(view, this.f13105ba, z10);
    }

    public static boolean oJ(View view, cY cYVar, boolean z10) {
        if (view != null && cYVar != null) {
            try {
                int i10 = com.bytedance.sdk.component.adexpress.dynamic.oJ.QSm;
                String valueOf = String.valueOf(view.getTag(i10));
                if (view.getTag(i10) != null && !TextUtils.isEmpty(valueOf)) {
                    if ("click".equals(valueOf)) {
                        return z10;
                    }
                    return true;
                }
            } catch (Exception unused) {
            }
            if (tB(view)) {
                return cYVar.yz() != 1 || z10;
            } else if (cYVar.jB() == 1 && !z10) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BTZ oJ(float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, long j10, long j11, View view, View view2, String str, float f14, int i10, float f15, int i11, JSONObject jSONObject, JSONObject jSONObject2) {
        return new BTZ.oJ().ba(f10).Pfn(f11).ex(f12).tB(f13).ZYk(j10).oJ(j11).ZYk(cdg.oJ(view)).oJ(cdg.oJ(view2)).tB(cdg.tB(view)).ex(cdg.tB(view2)).ex(this.HL).Pfn(this.IUZ).ba(this.Ln).oJ(sparseArray).ZYk(jFA.ZYk().oJ() ? 1 : 2).oJ(str).oJ(f14).tB(i10).ZYk(f15).oJ(i11).oJ(jSONObject).ZYk(jSONObject2).oJ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean oJ(View view, int i10, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
        if (this.RZ != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.kkU;
            if (weakReference != null) {
                iArr = cdg.oJ(weakReference.get());
                iArr2 = cdg.tB(this.kkU.get());
            }
            this.RZ.oJ(view, i10, new eZI.oJ().ex(f10).tB(f11).ZYk(f12).oJ(f13).ZYk(this.Xe).oJ(this.f13115tb).ex(iArr[0]).Pfn(iArr[1]).ba(iArr2[0]).cFZ(iArr2[1]).oJ(sparseArray).oJ(z10).oJ());
            return true;
        }
        return false;
    }

    private static int oJ(Context context) {
        if (f13104mu == Integer.MIN_VALUE) {
            f13104mu = com.bytedance.sdk.component.utils.cY.Pfn(context, "btn_native_creative");
        }
        return f13104mu;
    }

    public void oJ(String str) {
        this.oJ = str;
    }
}
