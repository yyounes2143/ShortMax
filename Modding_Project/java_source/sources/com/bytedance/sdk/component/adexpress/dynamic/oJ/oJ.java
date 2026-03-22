package com.bytedance.sdk.component.adexpress.dynamic.oJ;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import com.bytedance.sdk.component.adexpress.ZYk.WcQ;
import com.bytedance.sdk.component.adexpress.ZYk.cFZ;
import com.bytedance.sdk.component.adexpress.ZYk.dLZ;
import com.bytedance.sdk.component.adexpress.ZYk.ex;
import com.bytedance.sdk.component.adexpress.ZYk.so;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.XAo;
import com.bytedance.sdk.component.adexpress.dynamic.ex.ba;
import com.bytedance.sdk.component.adexpress.tB;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.utils.jFA;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements dLZ, ex<DynamicRootView> {
    private so Pfn;
    private com.bytedance.sdk.component.adexpress.dynamic.Pfn.so ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private PiB f12713ba;
    private ScheduledFuture<?> cFZ;
    private cFZ ex;
    private DynamicRootView oJ;

    /* renamed from: so  reason: collision with root package name */
    private AtomicBoolean f12714so = new AtomicBoolean(false);
    private Context tB;

    /* renamed from: com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private class RunnableC0169oJ implements Runnable {
        private int ZYk;

        public RunnableC0169oJ(int i10) {
            this.ZYk = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            if (this.ZYk == 2) {
                if (oJ.this.ZYk instanceof com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ) {
                    i10 = 127;
                } else {
                    i10 = 117;
                }
                oJ.this.oJ.callBackRenderFail(i10, null);
            }
        }
    }

    public oJ(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.dynamic.Pfn.so soVar, PiB piB, com.bytedance.sdk.component.adexpress.dynamic.ba.oJ oJVar) {
        this.tB = context;
        DynamicRootView dynamicRootView = new DynamicRootView(context, themeStatusBroadcastReceiver, z10, piB, oJVar);
        this.oJ = dynamicRootView;
        this.ZYk = soVar;
        this.f12713ba = piB;
        dynamicRootView.setRenderListener(this);
        this.f12713ba = piB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ba() {
        int i10;
        boolean z10;
        this.f12713ba.Pfn().ZYk(tB());
        JSONObject tB = this.f12713ba.tB();
        if (!com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.oJ(tB)) {
            if (this.ZYk instanceof com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ) {
                i10 = 123;
            } else {
                i10 = 113;
            }
            DynamicRootView dynamicRootView = this.oJ;
            StringBuilder sb2 = new StringBuilder("data null is ");
            if (tB == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            sb2.append(z10);
            dynamicRootView.callBackRenderFail(i10, sb2.toString());
            return;
        }
        this.ZYk.oJ(new com.bytedance.sdk.component.adexpress.dynamic.ba.ZYk() { // from class: com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ.2
            @Override // com.bytedance.sdk.component.adexpress.dynamic.ba.ZYk
            public void oJ(final com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
                oJ.this.so();
                oJ.this.f12713ba.Pfn().tB(oJ.this.tB());
                oJ.this.oJ(soVar);
                oJ.this.ZYk(soVar);
                if (Looper.getMainLooper() == Looper.myLooper()) {
                    oJ.this.tB(soVar);
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            oJ.this.tB(soVar);
                        }
                    });
                }
                if (oJ.this.oJ != null && soVar != null) {
                    oJ.this.oJ.setBgColor(soVar.oJ());
                    oJ.this.oJ.setBgMaterialCenterCalcColor(soVar.ZYk());
                }
            }
        });
        this.ZYk.oJ(this.f12713ba);
    }

    private boolean cFZ() {
        DynamicRootView dynamicRootView = this.oJ;
        if (dynamicRootView == null || dynamicRootView.getChildCount() == 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void so() {
        try {
            ScheduledFuture<?> scheduledFuture = this.cFZ;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.cFZ.cancel(false);
                this.cFZ = null;
            }
        } catch (Throwable unused) {
        }
    }

    public DynamicRootView ex() {
        return this.oJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        float f10;
        float f11;
        List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> dLZ;
        if (soVar == null) {
            return;
        }
        List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> dLZ2 = soVar.dLZ();
        if (dLZ2 == null || dLZ2.size() <= 0) {
            f10 = 0.0f;
        } else {
            f10 = 0.0f;
            for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : dLZ2) {
                if (soVar2.cFZ() > soVar.cFZ() - soVar2.jFA() || (dLZ = soVar2.dLZ()) == null || dLZ.size() <= 0) {
                    f11 = 0.0f;
                } else {
                    f11 = 0.0f;
                    for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar3 : dLZ) {
                        if (soVar3.kkU().ZYk().equals("logo-union")) {
                            f11 = soVar3.kkU().ba();
                            f10 = (((-f11) + soVar.cFZ()) - soVar2.cFZ()) + soVar2.kkU().Pfn().ib();
                        }
                    }
                }
                ZYk(soVar2);
                if (f11 <= -15.0f) {
                    soVar2.ba(soVar2.jFA() - f11);
                    soVar2.ex(soVar2.cFZ() + f11);
                    for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar4 : soVar2.dLZ()) {
                        soVar4.ex(soVar4.cFZ() - f11);
                    }
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.ex.so BTZ = soVar.BTZ();
        if (BTZ == null) {
            return;
        }
        soVar.tB(soVar.ba() - BTZ.ba());
        soVar.ex(soVar.cFZ() - BTZ.cFZ());
        if (f10 > 0.0f) {
            soVar.ex(soVar.cFZ() - f10);
            soVar.ba(soVar.jFA() + f10);
            for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar5 : soVar.dLZ()) {
                soVar5.ex(soVar5.cFZ() + f10);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public void oJ(cFZ cfz) {
        this.ex = cfz;
        int ba2 = this.f12713ba.ba();
        if (ba2 < 0) {
            this.oJ.callBackRenderFail(this.ZYk instanceof com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ ? 127 : 117, "time is ".concat(String.valueOf(ba2)));
            return;
        }
        this.cFZ = com.bytedance.sdk.component.adexpress.ex.ex.oJ(new RunnableC0169oJ(2), ba2, TimeUnit.MILLISECONDS);
        if (Looper.getMainLooper() == Looper.myLooper() && this.f12713ba.jFA() <= 0) {
            ba();
        } else {
            jFA.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.ba();
                }
            }, this.f12713ba.jFA());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public int tB() {
        return this.ZYk instanceof com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ ? 3 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        if (soVar == null) {
            this.oJ.callBackRenderFail(this.ZYk instanceof com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ ? 123 : 113, "layoutUnit is null");
            return;
        }
        this.f12713ba.Pfn().ex(tB());
        try {
            this.oJ.render(soVar, tB());
        } catch (Exception e10) {
            int i10 = this.ZYk instanceof com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ ? 128 : 118;
            DynamicRootView dynamicRootView = this.oJ;
            dynamicRootView.callBackRenderFail(i10, "exception is " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> dLZ;
        if (soVar == null || (dLZ = soVar.dLZ()) == null || dLZ.size() <= 0) {
            return;
        }
        Collections.sort(dLZ, new Comparator<com.bytedance.sdk.component.adexpress.dynamic.ex.so>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ.3
            @Override // java.util.Comparator
            /* renamed from: oJ */
            public int compare(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar3) {
                ba Pfn = soVar2.kkU().Pfn();
                ba Pfn2 = soVar3.kkU().Pfn();
                if (Pfn != null && Pfn2 != null) {
                    if (Pfn.zGT() >= Pfn2.zGT()) {
                        return 1;
                    }
                    return -1;
                }
                return 0;
            }
        });
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : dLZ) {
            if (soVar2 != null) {
                oJ(soVar2);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    /* renamed from: oJ */
    public DynamicRootView Pfn() {
        return ex();
    }

    private void oJ(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            int i10 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i10 >= viewGroup.getChildCount()) {
                    break;
                }
                oJ(viewGroup.getChildAt(i10));
                i10++;
            }
        }
        if (view instanceof XAo) {
            ((XAo) view).ZYk();
        }
    }

    public void oJ(so soVar) {
        this.Pfn = soVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.dLZ
    public void oJ(WcQ wcQ) {
        if (this.f12714so.get()) {
            return;
        }
        this.f12714so.set(true);
        if (wcQ.ZYk() && cFZ()) {
            this.oJ.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.ex.oJ(Pfn(), wcQ);
            return;
        }
        this.ex.oJ(wcQ.kkU(), wcQ.jFA());
    }

    public void ZYk() {
        oJ(Pfn());
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.dLZ
    public void oJ(View view, int i10, tB tBVar) {
        so soVar = this.Pfn;
        if (soVar != null) {
            soVar.oJ(view, i10, tBVar);
        }
    }
}
