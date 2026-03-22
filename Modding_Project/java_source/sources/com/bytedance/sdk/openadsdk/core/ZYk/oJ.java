package com.bytedance.sdk.openadsdk.core.ZYk;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.so;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.eZI;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class oJ extends ZYk {
    private boolean XAo;
    private boolean ZYk;

    /* renamed from: mu  reason: collision with root package name */
    private WeakReference<InterfaceC0202oJ> f13111mu;
    private boolean oJ;
    private int ofl;
    private boolean tB;

    /* renamed from: com.bytedance.sdk.openadsdk.core.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0202oJ {
        long getVideoProgress();
    }

    public oJ(@NonNull Context context, @NonNull cY cYVar, @NonNull String str, int i10) {
        super(context, cYVar, str, i10);
        this.oJ = true;
        this.ZYk = false;
        this.tB = false;
        this.XAo = false;
    }

    private boolean ex(View view) {
        if (view == null) {
            return false;
        }
        if ((view instanceof com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba) || view.getId() == eZI.sQ || view.getId() == eZI.cdg || view.getId() == eZI.Rl || view.getId() == eZI.Jm || view.getId() == eZI.Qu || view.getId() == 520093726 || view.getId() == eZI.NX) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        int i10 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i10 >= viewGroup.getChildCount()) {
                return false;
            }
            if (ex(viewGroup.getChildAt(i10))) {
                return true;
            }
            i10++;
        }
    }

    private boolean jFA() {
        return this instanceof so;
    }

    private boolean kkU() {
        cY cYVar = ((ZYk) this).f13105ba;
        if (cYVar == null || jFA()) {
            return false;
        }
        if (cYVar.Dc() != 5 && cYVar.Dc() != 15) {
            return false;
        }
        if (this.ofl == 0) {
            this.ofl = cYVar.qnr();
        }
        ZYk();
        oJ();
        tB();
        if (this.ofl == 5 && so() && oJ() && !ZYk() && !tB()) {
            return false;
        }
        int i10 = this.ofl;
        if (i10 != 1 && i10 != 2 && i10 != 5) {
            return false;
        }
        return true;
    }

    private boolean so() {
        cY cYVar = ((ZYk) this).f13105ba;
        if (cY.Pfn(cYVar) && cYVar.jXJ() == 1) {
            return true;
        }
        return false;
    }

    public boolean ZYk() {
        return false;
    }

    public void oJ(boolean z10) {
        this.oJ = z10;
    }

    public boolean tB() {
        return false;
    }

    public void ZYk(boolean z10) {
        this.ZYk = z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:198:0x0364, code lost:
        if ((r12 instanceof com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba) == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0373, code lost:
        if (((java.lang.Boolean) r12.getTag(520093762)).booleanValue() != false) goto L159;
     */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:227:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0107  */
    @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(android.view.View r32, float r33, float r34, float r35, float r36, android.util.SparseArray<com.bytedance.sdk.openadsdk.core.ZYk.tB.oJ> r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 965
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ZYk.oJ.oJ(android.view.View, float, float, float, float, android.util.SparseArray, boolean):void");
    }

    public void tB(boolean z10) {
        this.tB = z10;
    }

    private String ZYk(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1263194568:
                if (str.equals("open_ad")) {
                    c10 = 1;
                    break;
                }
                break;
            case -712491894:
                if (str.equals("embeded_ad")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c10 = 3;
                    break;
                }
                break;
            case 2091589896:
                if (str.equals("slide_banner_ad")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return "banner_call";
            case 1:
                return "open_ad";
            case 2:
                return "feed_call";
            case 3:
                return "interaction_call";
            case 4:
                return "banner_call";
            default:
                return "";
        }
    }

    public void ex(boolean z10) {
        this.XAo = z10;
    }

    protected boolean oJ() {
        cY cYVar = ((ZYk) this).f13105ba;
        if (cYVar == null) {
            return true;
        }
        int ZYk = si.ex().ZYk(cYVar.uv());
        int tB = Ry.tB(si.oJ());
        if (ZYk != 1) {
            if (ZYk == 2) {
                return HyG.Pfn(tB) || HyG.ex(tB) || HyG.ba(tB);
            } else if (ZYk != 3) {
                return ZYk != 5 || HyG.ex(tB) || HyG.ba(tB);
            } else {
                return false;
            }
        }
        return HyG.ex(tB);
    }

    public void oJ(InterfaceC0202oJ interfaceC0202oJ) {
        this.f13111mu = new WeakReference<>(interfaceC0202oJ);
    }
}
