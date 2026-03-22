package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.jFA;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class oJ {
    private long BHY;
    public boolean Dex;
    public com.bytedance.sdk.openadsdk.component.reward.dLZ EP;
    public final BTZ HL;
    @NonNull
    public final Activity HyG;
    public final dLZ IUZ;
    public final si Jc;
    public final IUZ Jm;
    public float LS;
    public final ba Ln;
    public final tB LpP;
    public com.bytedance.sdk.openadsdk.common.PiB MoK;
    public int NO;
    public final String Pfn;
    public final boolean Qu;
    public final Context Rl;
    private long SWT;
    public boolean TA;
    public boolean UF;
    public com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk UK;
    public final WcQ UN;
    public boolean VJm;
    public boolean VSB;
    public final Pfn XAo;
    public final so Xe;
    public cY ZYk;
    public com.bytedance.sdk.openadsdk.component.reward.top.tB bD;

    /* renamed from: ba  reason: collision with root package name */
    public final int f13020ba;
    public boolean bgF;
    public final boolean cFZ;
    @NonNull
    public final eZI cY;
    public final com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk cdg;
    public final boolean ex;
    public int jB;
    public com.bytedance.sdk.openadsdk.utils.WcQ jXJ;

    /* renamed from: jr  reason: collision with root package name */
    public final ex f13021jr;
    public int lY;
    @NonNull

    /* renamed from: mu  reason: collision with root package name */
    public final PiB f13022mu;
    public boolean mwH;
    public String nQI;
    public com.bytedance.sdk.openadsdk.BTZ.jFA nke;
    public final int oJ;
    public final com.bytedance.sdk.openadsdk.component.reward.view.BTZ ofl;
    public boolean sH;
    public final boolean tB;

    /* renamed from: tb  reason: collision with root package name */
    public final com.bytedance.sdk.openadsdk.component.reward.view.kkU f13026tb;
    public boolean uvK;

    /* renamed from: wd  reason: collision with root package name */
    public final com.bytedance.sdk.openadsdk.component.reward.view.jFA f13027wd;
    public boolean yz;

    /* renamed from: so  reason: collision with root package name */
    public int f13025so = 0;
    public int jFA = 0;
    public final AtomicBoolean kkU = new AtomicBoolean(false);
    public final AtomicBoolean dLZ = new AtomicBoolean(false);
    public final AtomicBoolean BTZ = new AtomicBoolean(false);
    public final AtomicBoolean PiB = new AtomicBoolean(false);
    public final AtomicBoolean WcQ = new AtomicBoolean(false);
    public final AtomicBoolean awB = new AtomicBoolean(false);
    public final AtomicBoolean eZI = new AtomicBoolean(false);

    /* renamed from: si  reason: collision with root package name */
    public final AtomicBoolean f13024si = new AtomicBoolean(false);
    public final AtomicBoolean Ry = new AtomicBoolean(false);
    public final AtomicBoolean RZ = new AtomicBoolean(false);
    public final AtomicBoolean QSm = new AtomicBoolean(false);

    /* renamed from: oq  reason: collision with root package name */
    public final AtomicBoolean f13023oq = new AtomicBoolean(false);
    public final AtomicBoolean Id = new AtomicBoolean(false);
    public boolean Yg = false;
    public int oTd = 1;
    public long oIC = 0;
    @Nullable
    public com.bytedance.sdk.openadsdk.activity.so oCU = null;
    public boolean YQ = true;

    public oJ(@NonNull Activity activity, IUZ iuz, @NonNull cY cYVar, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk, int i10) {
        boolean z10;
        boolean z11;
        String str;
        com.bytedance.sdk.openadsdk.component.reward.view.BTZ dlz;
        this.HyG = activity;
        this.cdg = zYk;
        Context oJ = com.bytedance.sdk.openadsdk.core.si.oJ();
        this.Rl = oJ;
        this.ZYk = cYVar;
        this.oJ = i10;
        if (i10 != 0 && i10 != 1) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.VSB = z10;
        if (i10 != 0 && i10 != 2) {
            z11 = false;
        } else {
            z11 = true;
        }
        this.Qu = z11;
        this.Jm = iuz;
        boolean z12 = cYVar.BHY().getDurationSlotType() == 7;
        this.ex = z12;
        if (z12) {
            str = "rewarded_video";
        } else {
            str = "fullscreen_interstitial_ad";
        }
        this.Pfn = str;
        this.TA = cYVar.Pfn();
        this.cFZ = QSm.kkU(cYVar);
        int uv = cYVar.uv();
        this.f13020ba = uv;
        this.bgF = com.bytedance.sdk.openadsdk.core.si.ex().eZI(String.valueOf(uv));
        this.tB = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().PiB(String.valueOf(uv));
        this.HL = new BTZ(this);
        if (i10 == 2) {
            dlz = new com.bytedance.sdk.openadsdk.component.reward.view.PiB(this);
        } else if (cYVar.Pfn()) {
            dlz = new com.bytedance.sdk.openadsdk.component.reward.view.BTZ(this);
        } else {
            dlz = new com.bytedance.sdk.openadsdk.component.reward.view.dLZ(this);
        }
        this.ofl = dlz;
        this.f13027wd = new com.bytedance.sdk.openadsdk.component.reward.view.jFA(this);
        this.cY = new eZI(this);
        this.f13021jr = new ex(this);
        this.Xe = new so(this, cYVar);
        this.f13026tb = new com.bytedance.sdk.openadsdk.component.reward.view.kkU(this);
        this.Jc = new si(this);
        this.UN = new WcQ(this);
        this.f13022mu = new PiB(this);
        this.XAo = new Pfn(this);
        this.IUZ = new dLZ(this);
        this.Ln = new ba(this);
        this.LpP = new tB(this);
        this.nke = new com.bytedance.sdk.openadsdk.BTZ.jFA(oJ);
        this.jXJ = com.bytedance.sdk.openadsdk.utils.jFA.oJ(activity, new jFA.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.oJ.1
            @Override // com.bytedance.sdk.openadsdk.utils.jFA.oJ
            public void ZYk() {
                PiB piB = oJ.this.f13022mu;
                if (piB != null) {
                    piB.Pfn();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.utils.jFA.oJ
            public View oJ() {
                com.bytedance.sdk.openadsdk.component.reward.view.BTZ btz = oJ.this.ofl;
                if (btz != null) {
                    return btz.kkU();
                }
                return null;
            }
        });
    }

    public void ZYk() {
        if (this.BHY <= 0) {
            this.BHY = SystemClock.elapsedRealtime();
        }
        this.SWT += SystemClock.elapsedRealtime() - this.BHY;
    }

    public boolean ex() {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        if (this.uvK && (soVar = this.oCU) != null && (soVar instanceof com.bytedance.sdk.openadsdk.activity.Pfn) && !((com.bytedance.sdk.openadsdk.activity.Pfn) soVar).oJ) {
            return false;
        }
        return true;
    }

    public void oJ(boolean z10) {
        this.sH = z10;
        this.f13022mu.ex(z10);
    }

    public long tB() {
        return this.SWT + (SystemClock.elapsedRealtime() - this.BHY);
    }

    public void oJ() {
        this.BHY = SystemClock.elapsedRealtime();
    }
}
