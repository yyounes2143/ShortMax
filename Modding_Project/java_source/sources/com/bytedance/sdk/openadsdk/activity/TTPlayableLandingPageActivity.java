package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.QSm.cFZ;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.Ln;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.ofl;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.kkU;
import com.bytedance.sdk.openadsdk.ex.BTZ;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TTPlayableLandingPageActivity extends TTBaseLandingPageActivity implements IUZ.oJ, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.ex {
    private static final cFZ.oJ cdg = new cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.1
    };
    private com.bytedance.sdk.openadsdk.core.Pfn.ex BTZ;
    private boolean HL;
    private BTZ HyG;
    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba IUZ;
    private String Id;
    private boolean Jm;
    private String LpP;
    private com.bytedance.sdk.openadsdk.core.Pfn.ex PiB;
    private int QSm;
    private com.bytedance.sdk.openadsdk.QSm.oJ.oJ Qu;
    private UN RZ;
    private UN Ry;
    private Context WcQ;
    private ILoader XAo;
    TTAdDislikeToast ZYk;
    private kkU awB;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.jFA.ba f12878ba;
    private com.bytedance.sdk.openadsdk.core.Pfn.ex dLZ;
    private String eZI;

    /* renamed from: jr  reason: collision with root package name */
    private cY f12879jr;

    /* renamed from: mu  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.QSm.so f12880mu;
    Ln oJ;

    /* renamed from: oq  reason: collision with root package name */
    private String f12881oq;

    /* renamed from: si  reason: collision with root package name */
    private String f12882si;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f12883tb;

    /* renamed from: wd  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.ex.ex.Pfn f12884wd;
    private boolean cFZ = true;
    private boolean jFA = false;
    private boolean kkU = true;
    final AtomicBoolean tB = new AtomicBoolean(false);
    private final String cY = "embeded_ad";
    private final IUZ Xe = new IUZ(Looper.getMainLooper(), this);
    private final AtomicBoolean Ln = new AtomicBoolean(false);
    private final AtomicInteger nke = new AtomicInteger(0);
    private final AtomicInteger Jc = new AtomicInteger(0);
    private final AtomicInteger UN = new AtomicInteger(0);
    private boolean ofl = false;
    int ex = -1;
    protected com.bytedance.sdk.openadsdk.BTZ.Pfn Pfn = new com.bytedance.sdk.openadsdk.BTZ.Pfn() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.8
        @Override // com.bytedance.sdk.openadsdk.BTZ.Pfn
        public void oJ() {
            if (!TTPlayableLandingPageActivity.this.isFinishing() && com.bytedance.sdk.openadsdk.core.model.Ln.WcQ(TTPlayableLandingPageActivity.this.f12879jr) && com.bytedance.sdk.openadsdk.core.model.Ln.awB(TTPlayableLandingPageActivity.this.f12879jr)) {
                TTPlayableLandingPageActivity.this.Xe.removeMessages(2);
                TTPlayableLandingPageActivity.this.Xe.sendMessage(TTPlayableLandingPageActivity.this.oJ(1, 0));
            }
        }
    };
    private int Rl = 1;

    private View BTZ() {
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this);
        tBVar.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.Qu = new com.bytedance.sdk.openadsdk.QSm.oJ.oJ(this.WcQ, this.f12879jr, this.Rl, this.ofl, tBVar, true);
        int ZYk = cdg.ZYk(this, 5.0f);
        this.PiB = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(cdg.ZYk(this, 28.0f), cdg.ZYk(this, 28.0f));
        layoutParams.rightMargin = cdg.ZYk(this, 56.0f);
        layoutParams.topMargin = cdg.ZYk(this, 20.0f);
        layoutParams.gravity = 8388661;
        this.PiB.setLayoutParams(layoutParams);
        this.PiB.setPadding(ZYk, ZYk, ZYk, ZYk);
        this.PiB.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = this.PiB;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        exVar.setScaleType(scaleType);
        this.PiB.setImageDrawable(dLZ.oJ(this, "tt_unmute_wrapper"));
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this);
        this.BTZ = exVar2;
        exVar2.setPadding(ZYk, ZYk, ZYk, ZYk);
        this.BTZ.setScaleType(scaleType);
        this.BTZ.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
        this.BTZ.setImageResource(com.bytedance.sdk.component.utils.cY.ex(si.oJ(), "tt_reward_full_feedback"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(cdg.ZYk(this, 28.0f), cdg.ZYk(this, 28.0f));
        layoutParams2.gravity = 8388661;
        layoutParams2.rightMargin = cdg.ZYk(this, 16.0f);
        layoutParams2.topMargin = cdg.ZYk(this, 20.0f);
        this.BTZ.setLayoutParams(layoutParams2);
        this.dLZ = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(cdg.ZYk(this, 28.0f), cdg.ZYk(this, 28.0f));
        layoutParams3.gravity = 8388659;
        layoutParams3.topMargin = cdg.ZYk(this, 20.0f);
        layoutParams3.leftMargin = cdg.ZYk(this, 16.0f);
        this.dLZ.setLayoutParams(layoutParams3);
        this.dLZ.setPadding(ZYk, ZYk, ZYk, ZYk);
        this.dLZ.setScaleType(ImageView.ScaleType.FIT_XY);
        this.dLZ.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
        this.dLZ.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this, "tt_white_lefterbackicon_titlebar"));
        this.dLZ.setVisibility(0);
        tBVar.addView(this.PiB);
        tBVar.addView(this.BTZ);
        tBVar.addView(this.dLZ);
        return tBVar;
    }

    private void Id() {
        TTAdDislikeToast tTAdDislikeToast = this.ZYk;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.show(TTAdDislikeToast.getDislikeTip());
        }
    }

    private void PiB() {
        if (this.f12879jr.sQ() == 4) {
            this.IUZ = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this.WcQ, "interaction");
        }
    }

    private void QSm() {
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = this.dLZ;
        if (exVar != null) {
            exVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTPlayableLandingPageActivity.this.f12884wd != null) {
                        TTPlayableLandingPageActivity.this.f12884wd.so();
                    }
                    TTPlayableLandingPageActivity.this.Xe.sendMessage(TTPlayableLandingPageActivity.this.oJ(4, 0));
                    TTPlayableLandingPageActivity.this.oJ("playable_close");
                    TTPlayableLandingPageActivity.this.finish();
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = this.BTZ;
        if (exVar2 != null) {
            exVar2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity.this.tB();
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar3 = this.PiB;
        if (exVar3 != null) {
            exVar3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity tTPlayableLandingPageActivity = TTPlayableLandingPageActivity.this;
                    tTPlayableLandingPageActivity.ofl = !tTPlayableLandingPageActivity.ofl;
                    TTPlayableLandingPageActivity tTPlayableLandingPageActivity2 = TTPlayableLandingPageActivity.this;
                    tTPlayableLandingPageActivity2.ba(tTPlayableLandingPageActivity2.ofl);
                    if (TTPlayableLandingPageActivity.this.f12880mu != null) {
                        TTPlayableLandingPageActivity.this.f12880mu.oJ(TTPlayableLandingPageActivity.this.ofl);
                    }
                }
            });
        }
    }

    private void Ry() {
        int i10 = si.ex().Xe(String.valueOf(this.f12879jr.uv())).f13251si;
        if (i10 >= 0) {
            this.Xe.sendEmptyMessageDelayed(1, i10 * 1000);
        } else {
            cdg.oJ((View) this.dLZ, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Xe() {
        com.bytedance.sdk.openadsdk.core.IUZ.oJ().ZYk(this.f12879jr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cY() {
        TTAdDislikeToast tTAdDislikeToast = this.ZYk;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
        }
    }

    private void jr() {
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(this, this.f12879jr, "embeded_ad", this.QSm) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.6
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ, com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                cY cYVar = ((com.bytedance.sdk.openadsdk.core.ZYk.ZYk) this).f13105ba;
                if (cYVar != null && cYVar.yz() == 1 && !z10) {
                    return;
                }
                super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
                TTPlayableLandingPageActivity.this.Xe();
                TTPlayableLandingPageActivity.this.f12883tb = true;
                TTPlayableLandingPageActivity.this.HL = true;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", TTPlayableLandingPageActivity.this.f12881oq);
                } catch (JSONException e10) {
                    QSm.oJ("TTPWPActivity", "onClick JSON ERROR", e10);
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(TTPlayableLandingPageActivity.this.f12879jr, ((com.bytedance.sdk.openadsdk.core.ZYk.ZYk) this).cFZ, "click_playable_download_button_loading", jSONObject);
            }
        };
        oJVar.oJ(this.IUZ);
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar2 = this.Qu;
        if (oJVar2 != null) {
            oJVar2.oJ(oJVar);
        }
    }

    private void oq() {
        super.onBackPressed();
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f12884wd;
        if (pfn != null) {
            pfn.so();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public List<cY> IUZ() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ZYk(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public View awB() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void cFZ() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ex(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(int i10) {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        oq();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    @SuppressLint({"SourceLockedOrientationActivity"})
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!WcQ.Pfn()) {
            finish();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
            getWindow().addFlags(16777216);
            si.ZYk(this);
            Pfn();
        } catch (Throwable unused) {
        }
        ZYk(bundle);
        cY cYVar = this.f12879jr;
        if (cYVar == null) {
            return;
        }
        this.Jm = cYVar.wHC();
        int eZI = com.bytedance.sdk.openadsdk.core.model.Ln.eZI(this.f12879jr);
        if (eZI != 0) {
            if (eZI != 1) {
                if (eZI == 2) {
                    setRequestedOrientation(0);
                    this.Rl = 2;
                }
            } else {
                setRequestedOrientation(1);
            }
        } else {
            setRequestedOrientation(14);
        }
        this.WcQ = this;
        try {
            setContentView(BTZ());
            QSm();
            PiB();
            jr();
            this.Qu.oJ(this);
            this.Qu.oJ(false, (com.bytedance.sdk.openadsdk.BTZ.ba) null);
            Ry();
            tB.oJ.oJ(SystemClock.elapsedRealtime() - elapsedRealtime, this.f12879jr, "embeded_ad", this.XAo, this.LpP);
            com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.Qu;
            if (oJVar != null) {
                oJVar.oJ();
            }
        } catch (Throwable unused2) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.bytedance.sdk.openadsdk.core.IUZ.oJ().tB(this.f12879jr);
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.Qu;
        if (oJVar != null) {
            oJVar.ex();
        }
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f12884wd;
        if (pfn != null) {
            pfn.oJ(true);
            this.f12884wd.BTZ();
        }
        this.Xe.removeCallbacksAndMessages(null);
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(this.LpP)) {
            tB.oJ.oJ(this.Jc.get(), this.nke.get(), this.f12879jr);
        }
        com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.XAo);
        com.bytedance.sdk.component.jFA.ba baVar = this.f12878ba;
        if (baVar != null) {
            ofl.oJ(baVar.getWebView());
            this.f12878ba.eZI();
        }
        this.f12878ba = null;
        UN un2 = this.Ry;
        if (un2 != null) {
            un2.BTZ();
        }
        UN un3 = this.RZ;
        if (un3 != null) {
            un3.BTZ();
        }
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.f12880mu;
        if (soVar != null) {
            soVar.XAo();
        }
        BTZ btz = this.HyG;
        if (btz != null) {
            btz.ex(true);
        }
        Ln ln2 = this.oJ;
        if (ln2 != null) {
            ln2.ZYk();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        UN un2 = this.Ry;
        if (un2 != null) {
            un2.ZYk(false);
        }
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.f12880mu;
        if (soVar != null) {
            soVar.oJ(true);
            this.f12880mu.tB(false);
        }
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.Qu;
        if (oJVar != null) {
            oJVar.tB();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        boolean z10;
        super.onResume();
        UN un2 = this.Ry;
        if (un2 != null) {
            un2.dLZ();
            com.bytedance.sdk.component.jFA.ba baVar = this.f12878ba;
            if (baVar != null) {
                UN un3 = this.Ry;
                if (baVar.getVisibility() == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                un3.ZYk(z10);
            }
        }
        UN un4 = this.RZ;
        if (un4 != null) {
            un4.dLZ();
        }
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.f12880mu;
        if (soVar != null) {
            soVar.tB(true);
        }
        BTZ btz = this.HyG;
        if (btz != null) {
            btz.cFZ();
        }
        if (DeviceUtils.cFZ() == 0) {
            this.ofl = true;
        }
        ba(this.ofl);
        com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.Qu;
        if (oJVar != null) {
            oJVar.ZYk();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        int i10;
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            if (this.f12879jr != null) {
                i10 = com.bytedance.sdk.openadsdk.core.IUZ.oJ().oJ(this.f12879jr);
            } else {
                i10 = -1;
            }
            this.ex = i10;
            bundle.putInt("meta_index", i10);
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.ex >= 0) {
            com.bytedance.sdk.openadsdk.core.IUZ.oJ().tB(this.ex);
            this.ex = -1;
        }
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f12884wd;
        if (pfn != null) {
            pfn.kkU();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f12884wd;
        if (pfn != null) {
            pfn.jFA();
        }
        BTZ btz = this.HyG;
        if (btz != null) {
            btz.so();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.ex
    public void Pfn(boolean z10) {
        com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba baVar;
        this.f12883tb = true;
        this.HL = z10;
        if (!z10) {
            try {
                Toast.makeText(this.WcQ, "Download later", 0).show();
            } catch (Throwable unused) {
            }
        }
        if (!this.HL || (baVar = this.IUZ) == null) {
            return;
        }
        baVar.tB(this.f12879jr);
    }

    protected void ba(boolean z10) {
        Drawable oJ;
        try {
            this.ofl = z10;
            if (z10) {
                oJ = dLZ.oJ(this.WcQ, "tt_mute_wrapper");
            } else {
                oJ = dLZ.oJ(this.WcQ, "tt_unmute_wrapper");
            }
            this.PiB.setImageDrawable(oJ);
            com.bytedance.sdk.openadsdk.QSm.so soVar = this.f12880mu;
            if (soVar != null) {
                soVar.oJ(z10);
            }
            com.bytedance.sdk.openadsdk.QSm.oJ.oJ oJVar = this.Qu;
            if (oJVar != null) {
                oJVar.oJ(z10);
            }
        } catch (Exception e10) {
            QSm.tB("TTPWPActivity", e10.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(Bundle bundle) {
    }

    void ex() {
        cY cYVar = this.f12879jr;
        if (cYVar != null) {
            this.oJ = new com.bytedance.sdk.openadsdk.tB.tB(this, cYVar.pe(), this.f12879jr.rJ(), "", this.f12879jr);
        }
        if (this.ZYk == null) {
            this.ZYk = new TTAdDislikeToast(this);
            ((FrameLayout) findViewById(16908290)).addView(this.ZYk);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(String str, JSONObject jSONObject) {
    }

    protected void tB() {
        if (this.f12879jr == null || isFinishing()) {
            return;
        }
        if (this.tB.get()) {
            Id();
            return;
        }
        if (this.oJ == null) {
            ex();
        }
        this.oJ.oJ(new Ln.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.5
            @Override // com.bytedance.sdk.openadsdk.core.Ln.oJ
            public void oJ() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.Ln.oJ
            public void oJ(int i10, String str) {
                if (TTPlayableLandingPageActivity.this.tB.get() || TextUtils.isEmpty(str)) {
                    return;
                }
                TTPlayableLandingPageActivity.this.tB.set(true);
                TTPlayableLandingPageActivity.this.cY();
            }
        });
        Ln ln2 = this.oJ;
        if (ln2 != null) {
            ln2.oJ();
        }
    }

    private void ZYk(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                this.f12881oq = intent.getStringExtra("url");
                this.QSm = intent.getIntExtra("source", -1);
                this.f12883tb = intent.getBooleanExtra("ad_pending_download", false);
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.f12879jr = com.bytedance.sdk.openadsdk.core.ZYk.oJ(new JSONObject(stringExtra));
                    } catch (Exception e10) {
                        QSm.oJ("TTPWPActivity", "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : ", e10);
                    }
                }
                this.eZI = intent.getStringExtra("adid");
                this.f12882si = intent.getStringExtra("log_extra");
                this.LpP = intent.getStringExtra("gecko_id");
                this.Id = intent.getStringExtra("web_title");
            } else {
                cY oJ = com.bytedance.sdk.openadsdk.core.IUZ.oJ().oJ(com.bytedance.sdk.openadsdk.core.IUZ.oJ(intent));
                this.f12879jr = oJ;
                if (oJ != null) {
                    this.f12881oq = oJ.so();
                    this.QSm = this.f12879jr.kkU();
                    this.f12883tb = this.f12879jr.BTZ();
                    this.eZI = this.f12879jr.edj();
                    this.f12882si = this.f12879jr.pe();
                    this.LpP = this.f12879jr.PQw();
                    this.Id = this.f12879jr.UUI();
                }
            }
        }
        if (bundle != null) {
            try {
                cY oJ2 = com.bytedance.sdk.openadsdk.core.IUZ.oJ().oJ(bundle.getInt("meta_index", -1));
                this.f12879jr = oJ2;
                if (oJ2 != null) {
                    this.eZI = oJ2.edj();
                    this.f12882si = this.f12879jr.pe();
                    this.LpP = this.f12879jr.PQw();
                    this.Id = this.f12879jr.UUI();
                    this.f12881oq = this.f12879jr.so();
                    this.QSm = this.f12879jr.kkU();
                    this.f12883tb = this.f12879jr.BTZ();
                }
            } catch (Throwable unused) {
            }
        }
        if (this.f12879jr == null) {
            finish();
            return;
        }
        try {
            this.ofl = si.ex().eZI(this.f12879jr.BHY().getCodeId());
        } catch (Throwable th2) {
            QSm.tB("TTPWPActivity", th2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void oJ(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected boolean oJ() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public boolean oJ(long j10, boolean z10) {
        return false;
    }

    public void Pfn() {
        cdg.oJ((Activity) this);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.7
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i10) {
                if (i10 == 0) {
                    try {
                        if (TTPlayableLandingPageActivity.this.isFinishing()) {
                            return;
                        }
                        TTPlayableLandingPageActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                cdg.oJ((Activity) TTPlayableLandingPageActivity.this);
                            }
                        }, 2500L);
                    } catch (Exception e10) {
                        QSm.tB("TTPWPActivity", e10.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Message oJ(int i10, int i11) {
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.arg1 = i10;
        if (i10 == 3) {
            obtain.arg2 = i11;
        }
        return obtain;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void ba() {
        Xe();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), this.f12879jr, "embeded_ad", str);
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            cdg.oJ((View) this.dLZ, 0);
        } else if (i10 != 2) {
        } else {
            kkU kku = this.awB;
            if (kku == null || !kku.ex()) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("remove_loading_page_type", message.arg1);
                    int i11 = message.arg2;
                    if (i11 != 0) {
                        jSONObject.put("remove_loading_page_reason", i11);
                    }
                    jSONObject.put("playable_url", this.f12881oq);
                    kkU kku2 = this.awB;
                    jSONObject.put("duration", kku2 != null ? kku2.getDisplayDuration() : 0L);
                } catch (JSONException e10) {
                    QSm.oJ("TTPWPActivity", "handleMsg json error", e10);
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f12879jr, "embeded_ad", "remove_loading_page", jSONObject);
                this.Xe.removeMessages(2);
                kkU kku3 = this.awB;
                if (kku3 != null) {
                    kku3.tB();
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void RZ() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void WcQ() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void dLZ() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void eZI() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void e_() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void f_() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void jFA() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void mu() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    public void si() {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected void ZYk() {
        oq();
    }
}
