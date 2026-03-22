package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView;
import com.bytedance.sdk.openadsdk.core.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.cFZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.Rl;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class eZI {
    private com.bytedance.sdk.openadsdk.core.ZYk.ZYk PiB;
    private com.bytedance.sdk.openadsdk.core.ZYk.oJ WcQ;
    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final String f13145ba;
    private com.bytedance.sdk.openadsdk.oJ.ZYk.ba cFZ;
    private com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB dLZ;
    private final PAGNativeAd ex;
    private final com.bytedance.sdk.openadsdk.oJ.ZYk.oJ kkU;
    private final com.bytedance.sdk.openadsdk.core.model.cY oJ;

    /* renamed from: so  reason: collision with root package name */
    private long f13146so;
    private final Context tB;
    private List<View> Pfn = new ArrayList();
    private final com.bytedance.sdk.openadsdk.ex.cFZ jFA = new com.bytedance.sdk.openadsdk.ex.cFZ();
    private final AtomicBoolean BTZ = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements View.OnLayoutChangeListener {
        private final ViewGroup ZYk;
        private final com.bytedance.sdk.openadsdk.ex.cFZ oJ;

        public oJ(com.bytedance.sdk.openadsdk.ex.cFZ cfz, ViewGroup viewGroup) {
            this.oJ = cfz;
            this.ZYk = viewGroup;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.oJ.oJ(System.currentTimeMillis(), mu.oJ(this.ZYk));
        }
    }

    public eZI(Context context, PAGNativeAd pAGNativeAd, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar) {
        this.ex = pAGNativeAd;
        this.oJ = cYVar;
        this.tB = context;
        this.f13145ba = str;
        this.kkU = oJVar;
        if (cYVar.sQ() == 4) {
            this.ZYk = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(context, str);
        }
    }

    private cFZ ZYk(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, com.bytedance.sdk.openadsdk.oJ.ZYk.ba baVar) {
        this.cFZ = baVar;
        viewGroup.addOnLayoutChangeListener(new oJ(this.jFA, viewGroup));
        this.Pfn = list;
        cFZ ex = ex(viewGroup);
        if (ex == null) {
            ex = new cFZ(this.tB, viewGroup, false);
            viewGroup.addView(ex);
        }
        ex.oJ();
        ex.setRefClickViews(list2);
        if (list != null) {
            for (View view : this.Pfn) {
                if (view != null) {
                    view.setTag(520093762, Boolean.TRUE);
                }
            }
            if (list3 != null) {
                list3.addAll(list);
            }
        }
        ex.setRefCreativeViews(list3);
        return ex;
    }

    private cFZ ex(ViewGroup viewGroup) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof cFZ) {
                return (cFZ) childAt;
            }
        }
        return null;
    }

    private void tB(ViewGroup viewGroup) {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar;
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.Pfn != null) {
                JSONArray jSONArray = new JSONArray();
                for (View view : this.Pfn) {
                    if (view != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("width", view.getWidth());
                            jSONObject2.put("height", view.getHeight());
                            jSONObject2.put("alpha", view.getAlpha());
                        } catch (Throwable unused) {
                        }
                        jSONArray.put(jSONObject2);
                    }
                }
                jSONObject.put("image_view", jSONArray.toString());
            }
            if (viewGroup != null) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("width", viewGroup.getWidth());
                    jSONObject3.put("height", viewGroup.getHeight());
                    jSONObject3.put("alpha", viewGroup.getAlpha());
                } catch (Throwable unused2) {
                }
                jSONObject.put("root_view", jSONObject3.toString());
            }
            PAGMediaView so2 = this.kkU.so();
            if (so2 != null) {
                JSONObject jSONObject4 = new JSONObject();
                try {
                    jSONObject4.put("width", cdg.tB(this.tB, so2.getWidth()) * 1.0f);
                    jSONObject4.put("height", cdg.tB(this.tB, so2.getHeight()) * 1.0f);
                } catch (Throwable unused3) {
                }
                jSONObject.put("media_view", jSONObject4.toString());
            }
            com.bytedance.sdk.openadsdk.core.so.QSm ZYk = this.kkU.ZYk();
            if (ZYk != null && (cYVar = this.oJ) != null) {
                jSONObject.put("dynamic_show_type", cYVar.uvK());
                ZYk.oJ(jSONObject, this.oJ);
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(this.oJ, this.f13145ba, jSONObject);
            com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(this.oJ);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.oJ("InteractionManager", "onShowFun json error", e10);
        }
    }

    public com.bytedance.sdk.openadsdk.ex.cFZ oJ() {
        return this.jFA;
    }

    public void oJ(View view, int i10) {
        com.bytedance.sdk.openadsdk.oJ.ZYk.ba baVar = this.cFZ;
        if (baVar != null) {
            baVar.onAdClicked();
        }
    }

    public void oJ(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, @Nullable View view, com.bytedance.sdk.openadsdk.oJ.ZYk.ba baVar) {
        oJ(viewGroup, list, list2, list3, baVar);
        oJ(viewGroup, view);
        oJ(viewGroup, list2, list3);
    }

    private void oJ(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, com.bytedance.sdk.openadsdk.oJ.ZYk.ba baVar) {
        this.cFZ = baVar;
        viewGroup.addOnLayoutChangeListener(new oJ(this.jFA, viewGroup));
        this.Pfn = list;
        oJ(list2, (com.bytedance.sdk.openadsdk.core.ZYk.tB) null);
        if (list != null) {
            for (View view : this.Pfn) {
                if (view != null) {
                    view.setTag(520093762, Boolean.TRUE);
                }
            }
            if (list3 != null) {
                list3.addAll(list);
            }
        }
        oJ(list3, (com.bytedance.sdk.openadsdk.core.ZYk.tB) null);
    }

    private void ZYk(com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk, com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar2 = this.kkU;
        if (oJVar2 != null && oJVar2.ZYk() != null) {
            com.bytedance.sdk.openadsdk.core.so.QSm ZYk = this.kkU.ZYk();
            if ((zYk instanceof com.bytedance.sdk.openadsdk.core.so.jFA) && (oJVar instanceof com.bytedance.sdk.openadsdk.core.so.so)) {
                ZYk.setClickListener((com.bytedance.sdk.openadsdk.core.so.jFA) zYk);
                ZYk.setClickCreativeListener((com.bytedance.sdk.openadsdk.core.so.so) oJVar);
            }
            ZYk.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.Pfn() { // from class: com.bytedance.sdk.openadsdk.core.eZI.3
                @Override // com.bytedance.sdk.openadsdk.core.widget.Pfn
                public void oJ() {
                    if (eZI.this.cFZ != null) {
                        eZI.this.cFZ.onAdClicked();
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar3 = this.kkU;
        if (oJVar3 != null && oJVar3.oJ() != null) {
            this.kkU.oJ().setOnClickListener(oJVar);
            this.kkU.oJ().setOnTouchListener(oJVar);
        }
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar4 = this.kkU;
        if (oJVar4 != null) {
            oJVar4.oJ(oJVar);
            this.kkU.oJ(zYk);
        }
    }

    private void oJ(List<View> list, com.bytedance.sdk.openadsdk.core.ZYk.tB tBVar) {
        if (com.bytedance.sdk.component.utils.PiB.ZYk(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(tBVar);
                    view.setOnTouchListener(tBVar);
                }
            }
        }
    }

    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar) {
        this.dLZ = tBVar;
        com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk = this.PiB;
        if (zYk != null) {
            zYk.oJ(tBVar);
        }
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = this.WcQ;
        if (oJVar != null) {
            oJVar.oJ(tBVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(ViewGroup viewGroup) {
        this.jFA.oJ(System.currentTimeMillis(), mu.oJ(viewGroup));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk() {
        if (this.f13146so > 0) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(String.valueOf(SystemClock.elapsedRealtime() - this.f13146so), this.oJ, this.f13145ba, this.jFA);
            this.f13146so = 0L;
        }
    }

    private void oJ(@NonNull ViewGroup viewGroup, @Nullable View view) {
        HashMap hashMap = new HashMap();
        hashMap.put("click_scence", 1);
        Context oJ2 = viewGroup != null ? com.bytedance.sdk.component.utils.ZYk.oJ(viewGroup) : null;
        if (oJ2 == null) {
            oJ2 = this.tB;
        }
        if (this.oJ.oIC() == 2) {
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.oJ;
            String str = this.f13145ba;
            this.PiB = new com.bytedance.sdk.openadsdk.core.so.jFA(oJ2, cYVar, str, HyG.oJ(str));
        } else {
            com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = this.oJ;
            String str2 = this.f13145ba;
            this.PiB = new com.bytedance.sdk.openadsdk.core.ZYk.ZYk(oJ2, cYVar2, str2, HyG.oJ(str2));
        }
        this.PiB.oJ(viewGroup);
        this.PiB.oJ(this.dLZ);
        this.PiB.ZYk(view);
        this.PiB.oJ(this.ZYk);
        this.PiB.oJ(this.ex);
        this.PiB.oJ(hashMap);
        this.PiB.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.core.eZI.1
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view2, int i10) {
                if (eZI.this.cFZ != null) {
                    eZI.this.cFZ.onAdClicked();
                }
            }
        });
        if (this.oJ.oIC() == 2) {
            Context context = this.tB;
            com.bytedance.sdk.openadsdk.core.model.cY cYVar3 = this.oJ;
            String str3 = this.f13145ba;
            this.WcQ = new com.bytedance.sdk.openadsdk.core.so.so(context, cYVar3, str3, HyG.oJ(str3));
        } else {
            Context context2 = this.tB;
            com.bytedance.sdk.openadsdk.core.model.cY cYVar4 = this.oJ;
            String str4 = this.f13145ba;
            this.WcQ = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(context2, cYVar4, str4, HyG.oJ(str4));
        }
        this.WcQ.oJ(viewGroup);
        this.WcQ.oJ(this.dLZ);
        this.WcQ.ZYk(view);
        this.WcQ.oJ(this.ZYk);
        this.WcQ.oJ(this.ex);
        this.WcQ.oJ(hashMap);
        this.WcQ.oJ(new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.core.eZI.2
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
            public void oJ(View view2, int i10) {
                if (eZI.this.cFZ != null) {
                    eZI.this.cFZ.onAdClicked();
                }
                com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(eZI.this.oJ, 9);
                eZI.this.kkU.PiB();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(ViewGroup viewGroup, View view) {
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ2;
        if (this.BTZ.get()) {
            return;
        }
        this.BTZ.set(true);
        if (this.ex instanceof com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB) {
            com.bytedance.sdk.openadsdk.core.so.QSm ZYk = this.kkU.ZYk();
            if (ZYk != null) {
                ZYk.Ry();
            }
            ((com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB) this.ex).oJ(true);
        }
        this.jFA.oJ(System.currentTimeMillis(), mu.oJ(viewGroup));
        this.f13146so = SystemClock.elapsedRealtime();
        tB(viewGroup);
        com.bytedance.sdk.openadsdk.oJ.ZYk.ba baVar = this.cFZ;
        if (baVar != null) {
            baVar.oJ(this.ex);
        }
        if (this.oJ.JC()) {
            HyG.oJ(this.oJ, view);
        }
        com.bytedance.sdk.openadsdk.core.model.ex NTC = this.oJ.NTC();
        if (NTC == null || (oJ2 = NTC.oJ()) == null) {
            return;
        }
        oJ2.oJ(0L);
    }

    private void oJ(@NonNull ViewGroup viewGroup, cFZ cfz, List<View> list, @Nullable List<View> list2) {
        com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk = this.PiB;
        if (zYk == null || this.WcQ == null) {
            return;
        }
        cfz.oJ(list, zYk);
        cfz.oJ(list2, this.WcQ);
        oJ(this.PiB, this.WcQ);
        oJ(cfz, viewGroup);
    }

    private void oJ(@NonNull ViewGroup viewGroup, List<View> list, @Nullable List<View> list2) {
        com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk = this.PiB;
        if (zYk == null || this.WcQ == null) {
            return;
        }
        oJ(list, zYk);
        oJ(list2, this.WcQ);
        oJ(this.PiB, this.WcQ);
        oJ(viewGroup);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void oJ(com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk, com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        if (this.oJ.oIC() == 2) {
            ZYk(zYk, oJVar);
        } else {
            oJ(oJVar);
        }
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        if (com.bytedance.sdk.openadsdk.core.settings.PiB.ib().tB(String.valueOf(this.oJ.uv()))) {
            com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar2 = this.kkU;
            if (oJVar2 != null && oJVar2.oJ() != null) {
                this.kkU.oJ().setOnClickListener(oJVar);
                this.kkU.oJ().setOnTouchListener(oJVar);
            }
            com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar3 = this.kkU;
            if (oJVar3 != null) {
                oJVar3.oJ(oJVar);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar4 = this.kkU;
        if (oJVar4 != null && oJVar4.oJ() != null) {
            PAGMediaView oJ2 = this.kkU.oJ();
            com.bytedance.sdk.openadsdk.core.ZYk.tB tBVar = new com.bytedance.sdk.openadsdk.core.ZYk.tB() { // from class: com.bytedance.sdk.openadsdk.core.eZI.4
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.bytedance.sdk.openadsdk.core.ZYk.tB
                public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                    if (view instanceof PAGVideoMediaView) {
                        ((PAGVideoMediaView) view).handleInterruptVideo();
                    }
                }
            };
            oJ2.setOnClickListener(tBVar);
            oJ2.setOnTouchListener(tBVar);
        }
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar5 = this.kkU;
        if (oJVar5 != null) {
            oJVar5.oJ((com.bytedance.sdk.openadsdk.core.ZYk.oJ) null);
        }
    }

    private void oJ(cFZ cfz, final ViewGroup viewGroup) {
        cfz.setCallback(new cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.eZI.5
            @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
            public void ZYk() {
                eZI.this.ZYk();
            }

            @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
            public void oJ(boolean z10) {
                eZI.this.oJ(z10, viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
            public void oJ() {
                eZI.this.ZYk(viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.core.cFZ.oJ
            public void oJ(View view) {
                eZI.this.ZYk(viewGroup, view);
            }
        });
    }

    private void oJ(final ViewGroup viewGroup) {
        Rl.oJ(viewGroup, true, 5, false, new Rl.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.eZI.6
            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void ZYk() {
                eZI.this.ZYk();
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void oJ(boolean z10) {
                eZI.this.oJ(z10, viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void oJ() {
                eZI.this.ZYk(viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Rl.ZYk
            public void oJ(View view, boolean z10) {
                if (!z10) {
                    com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(eZI.this.oJ, 8);
                    return;
                }
                com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(eZI.this.oJ, 4);
                eZI.this.ZYk(viewGroup, view);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(boolean z10, ViewGroup viewGroup) {
        if (z10 && this.oJ.Tjr() && !this.oJ.Id()) {
            this.oJ.ba(true);
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.oJ;
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.f13145ba, cYVar.PLU());
        }
        if (!z10 && this.f13146so > 0) {
            String valueOf = String.valueOf(SystemClock.elapsedRealtime() - this.f13146so);
            this.jFA.oJ(System.currentTimeMillis(), mu.oJ(viewGroup));
            com.bytedance.sdk.openadsdk.ex.tB.oJ(valueOf, this.oJ, this.f13145ba, this.jFA);
            this.f13146so = 0L;
            return;
        }
        this.jFA.oJ(System.currentTimeMillis(), mu.oJ(viewGroup));
        this.f13146so = SystemClock.elapsedRealtime();
    }
}
