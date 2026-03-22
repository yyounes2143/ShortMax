package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.awB;
import com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ;
import com.bytedance.sdk.openadsdk.core.HL;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.wd;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TTAppOpenAdActivity extends TTBaseActivity implements IUZ.oJ, oJ.InterfaceC0200oJ {
    private static com.bytedance.sdk.openadsdk.oJ.ex.ZYk jFA;
    private awB BTZ;
    private int HL;
    private FrameLayout IUZ;
    private cY Id;
    private boolean Ln;
    private com.bytedance.sdk.openadsdk.component.tB LpP;
    private TTAdDislikeToast PiB;
    private int QSm;
    private boolean RZ;
    private float Ry;
    private IListenerManager cY;
    private com.bytedance.sdk.openadsdk.component.ba.ZYk dLZ;
    private com.bytedance.sdk.openadsdk.ex.cFZ eZI;

    /* renamed from: jr  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.oJ.ex.ZYk f12863jr;
    private AdSlot nke;

    /* renamed from: oq  reason: collision with root package name */
    private String f12865oq;

    /* renamed from: si  reason: collision with root package name */
    private float f12866si;

    /* renamed from: tb  reason: collision with root package name */
    private int f12867tb;
    protected final AtomicBoolean oJ = new AtomicBoolean(false);
    protected final IUZ ZYk = new IUZ(Looper.getMainLooper(), this);
    final AtomicBoolean tB = new AtomicBoolean(false);
    final AtomicBoolean ex = new AtomicBoolean(false);
    private final com.bytedance.sdk.openadsdk.component.so.oJ kkU = new com.bytedance.sdk.openadsdk.component.so.oJ();
    protected boolean Pfn = false;
    private final AtomicBoolean WcQ = new AtomicBoolean(false);
    private wd awB = wd.tB();
    private final AtomicBoolean Xe = new AtomicBoolean(false);

    /* renamed from: ba  reason: collision with root package name */
    long f12862ba = 0;
    private volatile boolean Jc = false;
    int cFZ = -1;
    private final com.bytedance.sdk.openadsdk.component.oJ UN = new com.bytedance.sdk.openadsdk.component.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.1
        @Override // com.bytedance.sdk.openadsdk.component.oJ
        public void Pfn() {
            TTAppOpenAdActivity.this.Id();
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
        public void ZYk(long j10, int i10) {
            com.bytedance.sdk.openadsdk.component.so.tB cFZ;
            StringBuilder sb2 = new StringBuilder("onError() called with: totalPlayTime = [");
            sb2.append(j10);
            sb2.append("], percent = [");
            sb2.append(i10);
            sb2.append("]");
            if (TTAppOpenAdActivity.this.LpP != null && (cFZ = TTAppOpenAdActivity.this.LpP.cFZ()) != null) {
                TTAppOpenAdActivity.this.Xe();
                cFZ.oJ(true);
            }
            TTAppOpenAdActivity.this.cY();
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ
        public void ex() {
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
        public void oJ() {
            TTAppOpenAdActivity.this.Xe();
            TTAppOpenAdActivity.this.cY();
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ
        public void tB() {
            TTAppOpenAdActivity.this.so();
            TTAppOpenAdActivity.this.awB.Pfn();
            TTAppOpenAdActivity.this.QSm();
            if (TTAppOpenAdActivity.this.RZ) {
                TTAppOpenAdActivity.this.WcQ();
            }
            if (TTAppOpenAdActivity.this.LpP.cFZ() != null && TTAppOpenAdActivity.this.LpP.cFZ().ZYk() != null) {
                TTAppOpenAdActivity.this.LpP.cFZ().ZYk().oJ(TTAppOpenAdActivity.this);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
        public void oJ(long j10, long j11) {
            TTAppOpenAdActivity.this.kkU.ZYk(j10);
            TTAppOpenAdActivity tTAppOpenAdActivity = TTAppOpenAdActivity.this;
            if (!tTAppOpenAdActivity.Pfn && tTAppOpenAdActivity.LpP != null && TTAppOpenAdActivity.this.LpP.cFZ() != null && TTAppOpenAdActivity.this.LpP.cFZ().Pfn()) {
                TTAppOpenAdActivity.this.LpP.cFZ().so();
            }
            TTAppOpenAdActivity.this.awB();
            if (TTAppOpenAdActivity.this.LpP instanceof com.bytedance.sdk.openadsdk.component.ZYk) {
                ((com.bytedance.sdk.openadsdk.component.ZYk) TTAppOpenAdActivity.this.LpP).oJ(j10, j11);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ, com.bytedance.sdk.openadsdk.component.ba.oJ
        public void ZYk(View view) {
            TTAppOpenAdActivity.this.tB();
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ, com.bytedance.sdk.openadsdk.component.ba.oJ
        public void ZYk() {
            TTAppOpenAdActivity.this.Jc = true;
            if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("splash_auto_close_switch", 0) == 0) {
                TTAppOpenAdActivity.this.jFA();
                TTAppOpenAdActivity.this.finish();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ, com.bytedance.sdk.openadsdk.component.ba.oJ
        public void oJ(View view) {
            TTAppOpenAdActivity.this.jr();
        }

        @Override // com.bytedance.sdk.openadsdk.component.oJ, com.bytedance.sdk.openadsdk.component.ba.oJ
        public void oJ(int i10, boolean z10) {
            if (TTAppOpenAdActivity.this.LpP != null) {
                TTAppOpenAdActivity.this.LpP.oJ(i10, z10);
            }
        }
    };

    /* renamed from: mu  reason: collision with root package name */
    private final Runnable f12864mu = new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.5
        @Override // java.lang.Runnable
        public void run() {
            String str;
            com.bytedance.sdk.openadsdk.core.model.ex NTC;
            com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
            if (TTAppOpenAdActivity.this.WcQ.get()) {
                return;
            }
            if (TTAppOpenAdActivity.this.Id != null && (NTC = TTAppOpenAdActivity.this.Id.NTC()) != null && (oJ = NTC.oJ()) != null) {
                oJ.oJ(0L);
            }
            TTAppOpenAdActivity.this.eZI = new com.bytedance.sdk.openadsdk.ex.cFZ();
            TTAppOpenAdActivity.this.eZI.oJ(System.currentTimeMillis(), 1.0f);
            TTAppOpenAdActivity.this.awB.Pfn();
            if (TTAppOpenAdActivity.this.dLZ != null) {
                TTAppOpenAdActivity.this.dLZ.ZYk();
            }
            if (TTAppOpenAdActivity.this.LpP != null) {
                TTAppOpenAdActivity.this.LpP.Pfn();
            }
            TTAppOpenAdActivity.this.oq();
            View findViewById = TTAppOpenAdActivity.this.findViewById(16908290);
            JSONObject jSONObject = new JSONObject();
            if (findViewById != null) {
                try {
                    jSONObject.put("width", findViewById.getWidth());
                    jSONObject.put("height", findViewById.getHeight());
                    jSONObject.put("alpha", findViewById.getAlpha());
                } catch (JSONException e10) {
                    Log.e("TTAppOpenAdActivity", "run: ", e10);
                    TTAppOpenAdActivity.this.finish();
                    return;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("root_view", jSONObject.toString());
            jSONObject2.put("ad_root", TTAppOpenAdActivity.this.f12867tb);
            if (TTAppOpenAdActivity.this.RZ) {
                str = "video_normal_ad";
            } else {
                str = "image_normal_ad";
            }
            jSONObject2.put("openad_creative_type", str);
            if (com.bytedance.sdk.openadsdk.component.jFA.so.tB() == null) {
                jSONObject2.put("appicon_acquirefail", "1");
            }
            if (TTAppOpenAdActivity.this.Ln || TTAppOpenAdActivity.this.Id.jA()) {
                jSONObject2.put("dynamic_show_type", TTAppOpenAdActivity.this.RZ());
                TTAppOpenAdActivity.this.oJ(jSONObject2);
            }
            jSONObject2.put("is_icon_only", TTAppOpenAdActivity.this.Id.Xe() ? 1 : 0);
            com.bytedance.sdk.openadsdk.ex.tB.oJ(TTAppOpenAdActivity.this.Id, "open_ad", jSONObject2);
            com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(TTAppOpenAdActivity.this.findViewById(16908290), TTAppOpenAdActivity.this.Id, new Pfn.oJ(TTAppOpenAdActivity.this.RZ()));
            com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(TTAppOpenAdActivity.this.Id);
            TTAppOpenAdActivity.this.WcQ.set(true);
        }
    };

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected boolean oJ() {
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        cdg.oJ((Activity) this);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.7
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i10) {
                if (i10 == 0) {
                    try {
                        if (TTAppOpenAdActivity.this.isFinishing()) {
                            return;
                        }
                        TTAppOpenAdActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                cdg.oJ((Activity) TTAppOpenAdActivity.this);
                            }
                        }, 2500L);
                    } catch (Exception e10) {
                        QSm.tB("TTAppOpenAdActivity", e10.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Ry();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        si.ZYk(getApplicationContext());
        if (!ZYk(bundle)) {
            finish();
        } else if (!WcQ.Pfn()) {
            finish();
        } else {
            if (bundle != null) {
                com.bytedance.sdk.openadsdk.ex.tB.Pfn(this.Id, "open_ad", (JSONObject) null);
            }
            this.RZ = cY.Pfn(this.Id);
            new StringBuilder("onCreate: isVideo is ").append(this.RZ);
            if (this.RZ) {
                this.kkU.oJ((float) this.Id.ib().ba());
            } else {
                this.kkU.oJ(si.ex().Id(String.valueOf(this.QSm)));
            }
            com.bytedance.sdk.openadsdk.component.ba.ZYk zYk = new com.bytedance.sdk.openadsdk.component.ba.ZYk(this.kkU);
            this.dLZ = zYk;
            zYk.oJ(this.UN);
            kkU();
            FrameLayout frameLayout = new FrameLayout(this);
            this.IUZ = frameLayout;
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            try {
                setContentView(this.IUZ);
                this.IUZ.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.2
                    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:2:0x0000, B:4:0x0012, B:12:0x0027, B:14:0x0032, B:16:0x00aa, B:15:0x0067), top: B:20:0x0000 }] */
                    /* JADX WARN: Removed duplicated region for block: B:15:0x0067 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:2:0x0000, B:4:0x0012, B:12:0x0027, B:14:0x0032, B:16:0x00aa, B:15:0x0067), top: B:20:0x0000 }] */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void run() {
                        /*
                            r11 = this;
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.core.model.cY r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.WcQ(r0)     // Catch: java.lang.Throwable -> L23
                            int r0 = r0.uvK()     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.core.model.cY r2 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.WcQ(r1)     // Catch: java.lang.Throwable -> L23
                            if (r2 == 0) goto L26
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r2 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.core.model.cY r2 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.WcQ(r2)     // Catch: java.lang.Throwable -> L23
                            int r2 = r2.oIC()     // Catch: java.lang.Throwable -> L23
                            r3 = 2
                            if (r2 != r3) goto L26
                            r2 = 1
                            if (r0 == r2) goto L26
                            goto L27
                        L23:
                            r0 = move-exception
                            goto Lcc
                        L26:
                            r2 = 0
                        L27:
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.ZYk(r1, r2)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            boolean r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.awB(r0)     // Catch: java.lang.Throwable -> L23
                            if (r0 == 0) goto L67
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.ZYk r10 = new com.bytedance.sdk.openadsdk.component.ZYk     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.core.model.cY r3 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.WcQ(r0)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            android.widget.FrameLayout r4 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.eZI(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.oJ r5 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.si(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            int r6 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.Ry(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            boolean r7 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.dLZ(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.so.oJ r8 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.ex(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.ba.ZYk r9 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.RZ(r1)     // Catch: java.lang.Throwable -> L23
                            r1 = r10
                            r2 = r0
                            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.oJ(r0, r10)     // Catch: java.lang.Throwable -> L23
                            goto Laa
                        L67:
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.tB r9 = new com.bytedance.sdk.openadsdk.component.tB     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.core.model.cY r3 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.WcQ(r0)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            android.widget.FrameLayout r4 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.eZI(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.oJ r5 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.si(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            int r6 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.Ry(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            boolean r7 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.dLZ(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.so.oJ r8 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.ex(r1)     // Catch: java.lang.Throwable -> L23
                            r1 = r9
                            r2 = r0
                            r1.<init>(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.oJ(r0, r9)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.tB r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.oJ(r0)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            float r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.QSm(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r2 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            float r2 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.oq(r2)     // Catch: java.lang.Throwable -> L23
                            r0.oJ(r1, r2)     // Catch: java.lang.Throwable -> L23
                        Laa:
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.tB r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.oJ(r0)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            android.widget.FrameLayout r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.eZI(r1)     // Catch: java.lang.Throwable -> L23
                            r0.oJ(r1)     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.tB r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.oJ(r0)     // Catch: java.lang.Throwable -> L23
                            r0.oJ()     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this     // Catch: java.lang.Throwable -> L23
                            com.bytedance.sdk.openadsdk.component.tB r0 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.oJ(r0)     // Catch: java.lang.Throwable -> L23
                            r0.ZYk()     // Catch: java.lang.Throwable -> L23
                            return
                        Lcc:
                            com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity r1 = com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.this
                            r1.finish()
                            java.lang.String r1 = "TTAppOpenAdActivity"
                            java.lang.String r0 = r0.getMessage()
                            com.bytedance.sdk.component.utils.QSm.tB(r1, r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.AnonymousClass2.run():void");
                    }
                });
                try {
                    final View decorView = getWindow().getDecorView();
                    if (Build.VERSION.SDK_INT >= 35) {
                        decorView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.3
                            /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
                                r0 = r5.getBoundingRects();
                             */
                            @Override // android.view.View.OnApplyWindowInsetsListener
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public android.view.WindowInsets onApplyWindowInsets(android.view.View r5, android.view.WindowInsets r6) {
                                /*
                                    r4 = this;
                                    android.view.DisplayCutout r5 = androidx.core.view.o1.a(r6)     // Catch: java.lang.Throwable -> L27
                                    if (r5 == 0) goto L27
                                    java.util.List r0 = com.bytedance.sdk.openadsdk.activity.a.a(r5)     // Catch: java.lang.Throwable -> L27
                                    if (r0 == 0) goto L27
                                    boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L27
                                    if (r0 != 0) goto L27
                                    android.view.View r0 = r2     // Catch: java.lang.Throwable -> L27
                                    int r1 = com.bytedance.sdk.openadsdk.activity.b.a(r5)     // Catch: java.lang.Throwable -> L27
                                    int r2 = com.bytedance.sdk.openadsdk.activity.c.a(r5)     // Catch: java.lang.Throwable -> L27
                                    int r3 = com.bytedance.sdk.openadsdk.activity.d.a(r5)     // Catch: java.lang.Throwable -> L27
                                    int r5 = com.bytedance.sdk.openadsdk.activity.e.a(r5)     // Catch: java.lang.Throwable -> L27
                                    r0.setPadding(r1, r2, r3, r5)     // Catch: java.lang.Throwable -> L27
                                L27:
                                    return r6
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.AnonymousClass3.onApplyWindowInsets(android.view.View, android.view.WindowInsets):android.view.WindowInsets");
                            }
                        });
                    }
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                com.bytedance.sdk.openadsdk.awB.tB.ZYk();
                finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.Id != null) {
            com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("videoForceBreak", this.Id);
        }
        this.ZYk.removeCallbacksAndMessages(null);
        com.bytedance.sdk.openadsdk.component.ba.ZYk zYk = this.dLZ;
        if (zYk != null) {
            zYk.Pfn();
        }
        com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(this.Id);
        com.bytedance.sdk.openadsdk.jr.oJ.tB.ZYk(this.Id);
        if (this.RZ) {
            com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(this.Id, this.kkU.tB(), this.kkU.ZYk(), true);
        } else {
            com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(this.Id, -1L, this.kkU.ZYk(), false);
        }
        if (this.awB.ba() && this.WcQ.get()) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(String.valueOf(this.awB.ex()), this.Id, "open_ad", this.eZI);
            this.awB = wd.tB();
        }
        com.bytedance.sdk.openadsdk.component.tB tBVar = this.LpP;
        if (tBVar != null) {
            tBVar.tB();
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("recycleRes");
        }
        jFA();
        jFA = null;
        this.f12863jr = null;
        awB awb = this.BTZ;
        if (awb != null) {
            awb.setCallback(null);
        }
        cY cYVar = this.Id;
        if (cYVar != null && !cY.cFZ(cYVar) && !this.Id.cMS()) {
            com.bytedance.sdk.openadsdk.component.ba.oJ(si.oJ()).oJ(this.nke);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.Pfn = false;
        Pfn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        com.bytedance.sdk.openadsdk.component.tB tBVar;
        super.onResume();
        this.Pfn = true;
        if (this.oJ.getAndSet(true)) {
            if (this.Xe.get()) {
                cY();
                if (this.RZ && (tBVar = this.LpP) != null && tBVar.cFZ() != null) {
                    Xe();
                    this.LpP.cFZ().oJ(3);
                }
                finish();
                return;
            }
            ex();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        int i10;
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            if (this.Id != null) {
                i10 = com.bytedance.sdk.openadsdk.core.IUZ.oJ().oJ(this.Id);
            } else {
                i10 = -1;
            }
            this.cFZ = i10;
            bundle.putInt("meta_index", i10);
            bundle.putString(TTAdConstant.MULTI_PROCESS_META_MD5, this.f12865oq);
            bundle.putInt("ad_source", this.f12867tb);
            bundle.putLong("start_show_time", this.f12862ba);
        } catch (Throwable th2) {
            QSm.tB("TTAppOpenAdActivity", th2.getMessage());
        }
        jFA = this.f12863jr;
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.cFZ >= 0) {
            com.bytedance.sdk.openadsdk.core.IUZ.oJ().tB(this.cFZ);
            this.cFZ = -1;
        }
        com.bytedance.sdk.openadsdk.utils.ex.oJ(this, this.Id);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        int i10;
        super.onWindowFocusChanged(z10);
        if (z10) {
            if (!this.Ln) {
                this.awB.Pfn();
            }
            cY cYVar = this.Id;
            if (cYVar != null && cYVar.Tjr() && !this.Id.Id()) {
                this.Id.ba(true);
                cY cYVar2 = this.Id;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar2, "open_ad", cYVar2.PLU());
            }
        } else if (this.WcQ.get()) {
            if (this.awB.ba()) {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(String.valueOf(this.awB.ex()), this.Id, "open_ad", this.eZI);
            }
            this.awB = wd.tB();
        }
        cY cYVar3 = this.Id;
        if (z10) {
            i10 = 4;
        } else {
            i10 = 8;
        }
        com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(cYVar3, i10);
        com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(this.Id, z10);
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void BTZ() {
        if (this.HL == 2) {
            if (cFZ()) {
                setRequestedOrientation(8);
            } else {
                setRequestedOrientation(0);
            }
        } else {
            setRequestedOrientation(1);
        }
        if (this.HL == 2 || !cdg.tB((Activity) this)) {
            getWindow().addFlags(1024);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Id() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdClicked");
        } else {
            com.bytedance.sdk.openadsdk.oJ.ex.ZYk zYk = this.f12863jr;
            if (zYk != null) {
                zYk.onAdClicked();
            }
        }
        if (PiB.ib().cY(String.valueOf(this.QSm))) {
            this.Xe.set(true);
        }
    }

    private void PiB() {
        if (this.BTZ == null) {
            awB awb = new awB(this, this.Id);
            this.BTZ = awb;
            awb.setDislikeSource("video_player");
            this.BTZ.setCallback(new awB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.4
                @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                public void ZYk(View view) {
                    TTAppOpenAdActivity.this.tB.set(false);
                    TTAppOpenAdActivity.this.ex();
                    com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(TTAppOpenAdActivity.this.Id, 4);
                }

                @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                public void oJ(View view) {
                    TTAppOpenAdActivity.this.tB.set(true);
                    TTAppOpenAdActivity.this.Pfn();
                    com.bytedance.sdk.openadsdk.jr.oJ.tB.oJ(TTAppOpenAdActivity.this.Id, 8);
                }

                @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                public void oJ(FilterWord filterWord) {
                    if (TTAppOpenAdActivity.this.ex.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    TTAppOpenAdActivity.this.ex.set(true);
                    TTAppOpenAdActivity.this.si();
                }
            });
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(16908290);
        frameLayout.addView(this.BTZ);
        if (this.PiB == null) {
            TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this);
            this.PiB = tTAdDislikeToast;
            frameLayout.addView(tTAdDislikeToast);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void QSm() {
        if (this.WcQ.get()) {
            return;
        }
        try {
            getWindow().getDecorView().post(this.f12864mu);
        } catch (Throwable unused) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int RZ() {
        if (this.Id.jA()) {
            return 5;
        }
        if (this.Ln) {
            return this.LpP.ex();
        }
        return -1;
    }

    private void Ry() {
        if (si.ex().QSm(String.valueOf(this.QSm)) == 1) {
            if (this.kkU.tB() >= si.ex().oq(String.valueOf(this.QSm)) * 1000) {
                jr();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void WcQ() {
        if (!this.RZ || this.Id.Xe() || this.Jc) {
            return;
        }
        this.ZYk.sendEmptyMessageDelayed(100, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Xe() {
        cY cYVar;
        try {
            if (this.dLZ == null || (cYVar = this.Id) == null || cYVar.zxE() == null) {
                return;
            }
            int ZYk = this.Id.zxE().ZYk();
            if (ZYk == 1 || ZYk == 2) {
                this.dLZ.oJ(ZYk, this.Id.zxE().oJ(), false);
                com.bytedance.sdk.openadsdk.component.tB tBVar = this.LpP;
                if (tBVar == null || tBVar.cFZ() == null) {
                    return;
                }
                this.LpP.cFZ().ZYk().oJ(this.kkU.oJ());
                this.LpP.cFZ().ZYk().oJ(1.0f);
            }
        } catch (Throwable th2) {
            QSm.tB("TTAppOpenAdActivity", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void awB() {
        if (!this.RZ || this.Id.Xe()) {
            return;
        }
        this.ZYk.removeMessages(100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cY() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdSkip");
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.ex.ZYk zYk = this.f12863jr;
        if (zYk != null) {
            zYk.ZYk();
        }
    }

    private void dLZ() {
        int min;
        int max;
        new StringBuilder("changeScreenOrientation: mOrientation=").append(this.HL);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 != 26) {
            if (i10 == 27) {
                try {
                    BTZ();
                } catch (Throwable th2) {
                    QSm.tB("TTAppOpenAdActivity", th2.getMessage());
                    return;
                }
            } else {
                BTZ();
            }
        }
        Pair<Integer, Integer> dLZ = cdg.dLZ(getApplicationContext());
        if (this.HL == 2) {
            min = Math.max(((Integer) dLZ.first).intValue(), ((Integer) dLZ.second).intValue());
            max = Math.min(((Integer) dLZ.first).intValue(), ((Integer) dLZ.second).intValue());
        } else {
            min = Math.min(((Integer) dLZ.first).intValue(), ((Integer) dLZ.second).intValue());
            max = Math.max(((Integer) dLZ.first).intValue(), ((Integer) dLZ.second).intValue());
        }
        this.f12866si = max;
        this.Ry = min;
        float oJ = cdg.oJ();
        if (cdg.tB((Activity) this)) {
            int i11 = this.HL;
            if (i11 == 1) {
                this.f12866si -= oJ;
            } else if (i11 == 2) {
                this.Ry -= oJ;
            }
        }
        com.bytedance.sdk.openadsdk.component.tB tBVar = this.LpP;
        if (tBVar != null) {
            tBVar.oJ(this.Ry, this.f12866si);
        }
    }

    private void eZI() {
        this.PiB.show(TTAdDislikeToast.getDislikeTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jFA() {
        QSm.oJ("TTAppOpenAdActivity", "invoke callback onAdDismiss, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdTimeOver");
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.ex.ZYk zYk = this.f12863jr;
        if (zYk != null) {
            zYk.tB();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jr() {
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
        com.bytedance.sdk.openadsdk.component.tB tBVar;
        HL.tB(this.QSm);
        cY();
        if (this.RZ && (tBVar = this.LpP) != null && tBVar.cFZ() != null) {
            Xe();
            this.LpP.cFZ().oJ(4);
        }
        com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(this.Id, (int) this.kkU.tB(), this.dLZ.oJ(), this.kkU.ZYk());
        cY cYVar = this.Id;
        if (cYVar != null && (NTC = cYVar.NTC()) != null && (oJ = NTC.oJ()) != null) {
            com.bytedance.sdk.openadsdk.component.tB tBVar2 = this.LpP;
            long PiB = (tBVar2 == null || tBVar2.cFZ() == null) ? 0L : this.LpP.cFZ().PiB();
            oJ.ba(PiB);
            oJ.Pfn(PiB);
        }
        finish();
    }

    private void kkU() {
        if (26 == Build.VERSION.SDK_INT) {
            if (getResources().getConfiguration().orientation == 1) {
                this.HL = 1;
            } else {
                this.HL = 2;
            }
        } else {
            this.HL = this.Id.Tt();
        }
        dLZ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oq() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ("onAdShow");
            return;
        }
        com.bytedance.sdk.openadsdk.oJ.ex.ZYk zYk = this.f12863jr;
        if (zYk != null) {
            zYk.oJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void si() {
        this.PiB.show(TTAdDislikeToast.getDislikeSendTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void so() {
        int oq2;
        Log.d("TTAppOpenAdActivity", "startCountDownTimer() called");
        cY cYVar = this.Id;
        if (cYVar != null && cYVar.oJ() >= 0) {
            oq2 = this.Id.oJ();
        } else {
            oq2 = si.ex().oq(String.valueOf(this.QSm));
        }
        this.dLZ.oJ(this.kkU.ZYk());
        this.dLZ.ZYk(oq2);
    }

    void Pfn() {
        if (this.RZ) {
            com.bytedance.sdk.openadsdk.component.tB tBVar = this.LpP;
            if (tBVar != null && tBVar.cFZ() != null && this.LpP.cFZ().Pfn()) {
                this.LpP.cFZ().so();
            }
            awB();
        }
        com.bytedance.sdk.openadsdk.component.ba.ZYk zYk = this.dLZ;
        if (zYk != null) {
            zYk.ex();
        }
    }

    protected IListenerManager ba() {
        if (this.cY == null) {
            this.cY = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().oJ(7));
        }
        return this.cY;
    }

    protected boolean cFZ() {
        try {
            return getIntent().getIntExtra("orientation_angle", 0) == 3;
        } catch (Exception e10) {
            QSm.tB("TTAppOpenAdActivity", e10.getMessage());
            return false;
        }
    }

    void ex() {
        if (this.tB.get()) {
            return;
        }
        if (this.RZ) {
            com.bytedance.sdk.openadsdk.component.tB tBVar = this.LpP;
            if (tBVar != null && tBVar.cFZ() != null && this.LpP.cFZ().ba()) {
                this.LpP.cFZ().dLZ();
            }
            WcQ();
        }
        com.bytedance.sdk.openadsdk.component.ba.ZYk zYk = this.dLZ;
        if (zYk != null) {
            zYk.tB();
        }
    }

    protected void tB() {
        if (isFinishing()) {
            return;
        }
        if (this.ex.get()) {
            eZI();
            return;
        }
        if (this.BTZ == null) {
            try {
                PiB();
            } catch (Throwable th2) {
                ApmHelper.reportCustomError("initDislike error", "TTAppOpenAdActivity", th2);
            }
        }
        awB awb = this.BTZ;
        if (awb != null) {
            awb.oJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected void ZYk() {
        Ry();
    }

    private boolean ZYk(Bundle bundle) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            Intent intent = getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.Id = com.bytedance.sdk.openadsdk.core.ZYk.oJ(new JSONObject(stringExtra));
                    } catch (Exception e10) {
                        QSm.tB("TTAppOpenAdActivity", "open_ad", "initData MultiGlobalInfo throws ", e10);
                    }
                }
                this.f12865oq = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_META_MD5);
            }
        } else {
            this.Id = com.bytedance.sdk.openadsdk.core.IUZ.oJ().oJ(com.bytedance.sdk.openadsdk.core.IUZ.oJ(getIntent()));
            this.f12863jr = com.bytedance.sdk.openadsdk.core.IUZ.oJ().ex();
            com.bytedance.sdk.openadsdk.core.IUZ.oJ().Pfn();
        }
        oJ(getIntent());
        oJ(bundle);
        cY cYVar = this.Id;
        if (cYVar == null) {
            finish();
            return false;
        }
        this.nke = cYVar.BHY();
        this.Id.oJ(this.f12862ba);
        this.QSm = this.Id.uv();
        com.bytedance.sdk.openadsdk.utils.ZYk.oJ(this.Id);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject oJ(JSONObject jSONObject) {
        if (RZ() == 0) {
            return this.LpP.oJ(jSONObject);
        }
        return null;
    }

    private void oJ(final String str) {
        ofl.tB(new com.bytedance.sdk.component.so.so("AppOpenAd_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTAppOpenAdActivity.this.ba().executeAppOpenAdCallback(TTAppOpenAdActivity.this.f12865oq, str);
                } catch (Throwable th2) {
                    QSm.tB("TTAppOpenAdActivity", "open_ad", "executeAppOpenAdCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    protected void oJ(Intent intent) {
        if (intent != null) {
            this.f12867tb = intent.getIntExtra("ad_source", 0);
            this.f12862ba = intent.getLongExtra("start_show_time", 0L);
        }
    }

    protected void oJ(Bundle bundle) {
        if (bundle != null) {
            if (this.f12863jr == null) {
                this.f12863jr = jFA;
                jFA = null;
            }
            try {
                int i10 = bundle.getInt("meta_index", -1);
                this.f12865oq = bundle.getString(TTAdConstant.MULTI_PROCESS_META_MD5);
                this.f12867tb = bundle.getInt("ad_source", 0);
                this.f12862ba = bundle.getLong("start_show_time", 0L);
                this.Id = com.bytedance.sdk.openadsdk.core.IUZ.oJ().oJ(i10);
            } catch (Throwable th2) {
                QSm.tB("TTAppOpenAdActivity", th2.getMessage());
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        com.bytedance.sdk.openadsdk.core.model.ex NTC;
        com.bytedance.sdk.openadsdk.core.dLZ.ex oJ;
        com.bytedance.sdk.openadsdk.component.tB tBVar;
        if (message.what == 100) {
            if (this.RZ && (tBVar = this.LpP) != null && tBVar.cFZ() != null) {
                Xe();
                this.LpP.cFZ().oJ(1);
            }
            cY cYVar = this.Id;
            if (cYVar != null && (NTC = cYVar.NTC()) != null && (oJ = NTC.oJ()) != null) {
                oJ.oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.GENERAL_LINEAR_AD_ERROR);
            }
            cY();
            finish();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ex.oJ.InterfaceC0200oJ
    public void oJ(int i10) {
        if (i10 == 2 || i10 == 3 || i10 == 4) {
            Xe();
        }
    }
}
