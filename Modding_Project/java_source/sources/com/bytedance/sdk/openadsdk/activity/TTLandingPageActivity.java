package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.BTZ;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.WcQ;
import com.bytedance.sdk.openadsdk.common.awB;
import com.bytedance.sdk.openadsdk.common.kkU;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.ofl;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ba;
import com.bytedance.sdk.openadsdk.ex.dLZ;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.RZ;
import com.bytedance.sdk.openadsdk.utils.WcQ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.bytedance.sdk.openadsdk.utils.jFA;
import com.bytedance.sdk.openadsdk.utils.oq;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TTLandingPageActivity extends TTBaseLandingPageActivity {
    private Button BTZ;
    private int HL;
    private int IUZ;
    private WcQ Jc;
    private BTZ LpP;
    private com.bytedance.sdk.openadsdk.core.Pfn.ba PiB;
    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba QSm;
    private cY RZ;
    private String Ry;
    private ba.oJ UN;
    private String WcQ;
    private com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn XAo;
    awB ZYk;
    private String awB;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.jFA.ba f12871ba;
    private ImageView cFZ;
    private String cY;
    private com.bytedance.sdk.openadsdk.common.WcQ dLZ;
    private UN eZI;
    private TextView jFA;

    /* renamed from: jr  reason: collision with root package name */
    private ILoader f12872jr;
    private Context kkU;

    /* renamed from: mu  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.common.ex f12873mu;
    private boolean nke;
    com.bytedance.sdk.openadsdk.ex.BTZ oJ;
    private boolean ofl;

    /* renamed from: oq  reason: collision with root package name */
    private String f12874oq;

    /* renamed from: si  reason: collision with root package name */
    private int f12875si;
    TTAdDislikeToast tB;
    private final AtomicBoolean Id = new AtomicBoolean(true);
    private final AtomicInteger Xe = new AtomicInteger(0);

    /* renamed from: tb  reason: collision with root package name */
    private final AtomicInteger f12876tb = new AtomicInteger(0);
    private final AtomicInteger Ln = new AtomicInteger(0);
    final AtomicBoolean ex = new AtomicBoolean(false);
    final AtomicBoolean Pfn = new AtomicBoolean(false);

    /* renamed from: wd  reason: collision with root package name */
    private String f12877wd = "ダウンロード";

    /* loaded from: classes3.dex */
    private static class ZYk implements View.OnScrollChangeListener {
        private final WeakReference<com.bytedance.sdk.openadsdk.ex.BTZ> oJ;

        public ZYk(com.bytedance.sdk.openadsdk.ex.BTZ btz) {
            this.oJ = new WeakReference<>(btz);
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(View view, int i10, int i11, int i12, int i13) {
            com.bytedance.sdk.openadsdk.ex.BTZ btz = this.oJ.get();
            if (btz != null) {
                btz.ZYk(i11);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class oJ implements dLZ {
        private final cY ZYk;
        private final WeakReference<TTLandingPageActivity> ex;
        private final int oJ;
        private final String tB;

        public oJ(int i10, cY cYVar, String str, TTLandingPageActivity tTLandingPageActivity) {
            this.oJ = i10;
            this.ZYk = cYVar;
            this.tB = str;
            this.ex = new WeakReference<>(tTLandingPageActivity);
        }

        @Override // com.bytedance.sdk.openadsdk.ex.dLZ
        public void oJ(int i10) {
            TTLandingPageActivity tTLandingPageActivity = this.ex.get();
            if (tTLandingPageActivity != null) {
                tB.oJ.oJ(this.oJ, tTLandingPageActivity.f12876tb.get(), tTLandingPageActivity.Ln.get(), tTLandingPageActivity.Xe.get() - tTLandingPageActivity.Ln.get(), this.ZYk, this.tB, i10);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class tB implements View.OnTouchListener {
        private final WeakReference<com.bytedance.sdk.openadsdk.common.ex> ZYk;
        private final WeakReference<com.bytedance.sdk.openadsdk.ex.BTZ> oJ;

        public tB(com.bytedance.sdk.openadsdk.ex.BTZ btz, com.bytedance.sdk.openadsdk.common.ex exVar) {
            this.oJ = new WeakReference<>(btz);
            this.ZYk = new WeakReference<>(exVar);
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            com.bytedance.sdk.openadsdk.ex.BTZ btz = this.oJ.get();
            if (btz != null) {
                btz.oJ(motionEvent);
            }
            com.bytedance.sdk.openadsdk.common.ex exVar = this.ZYk.get();
            if (exVar != null) {
                exVar.oJ(motionEvent);
                return false;
            }
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected boolean oJ() {
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        jFA();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        try {
            super.onConfigurationChanged(configuration);
        } catch (Throwable unused) {
        }
        Pfn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    @SuppressLint({"ClickableViewAccessibility"})
    public void onCreate(@Nullable Bundle bundle) {
        int i10;
        oJ(3);
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.WcQ.Pfn()) {
            finish();
            return;
        }
        try {
            si.ZYk(this);
        } catch (Throwable unused) {
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Intent intent = getIntent();
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            this.ofl = intent.getBooleanExtra("only_loading", false);
        } else {
            cY oJ2 = IUZ.oJ().oJ(IUZ.oJ(intent));
            this.RZ = oJ2;
            if (oJ2 != null) {
                this.ofl = oJ2.dLZ();
            }
        }
        try {
            setContentView(ex());
            this.f12874oq = "";
            ZYk(4);
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.RZ = com.bytedance.sdk.openadsdk.core.ZYk.oJ(new JSONObject(stringExtra));
                    } catch (Exception e10) {
                        QSm.oJ("TTAD.LandingPageAct", "TTLandingPageActivity - onCreate MultiGlobalInfo : ", e10);
                    }
                }
                this.f12874oq = intent.getStringExtra("url");
                this.Ry = intent.getStringExtra("event_tag");
                this.f12875si = intent.getIntExtra("source", -1);
                this.WcQ = intent.getStringExtra("adid");
                this.awB = intent.getStringExtra("log_extra");
                this.cY = intent.getStringExtra("gecko_id");
            } else {
                cY cYVar = this.RZ;
                if (cYVar != null) {
                    this.WcQ = cYVar.edj();
                    this.awB = this.RZ.pe();
                    this.cY = this.RZ.PQw();
                    this.f12874oq = this.RZ.so();
                    this.f12875si = this.RZ.kkU();
                    this.Ry = this.RZ.jFA();
                }
            }
            if (this.RZ == null) {
                finish();
                return;
            }
            cFZ();
            if (!TextUtils.isEmpty(this.cY)) {
                this.f12872jr = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().ZYk();
                int oJ3 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.f12872jr, this.cY);
                this.HL = oJ3;
                if (oJ3 > 0) {
                    i10 = 2;
                } else {
                    i10 = 0;
                }
                this.IUZ = i10;
            }
            this.kkU = this;
            if (this.f12871ba != null) {
                com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(this).oJ(false).ZYk(false).oJ(this.f12871ba.getWebView());
            }
            com.bytedance.sdk.component.jFA.ba baVar = this.f12871ba;
            if (baVar != null && baVar.getWebView() != null) {
                com.bytedance.sdk.openadsdk.ex.BTZ ZYk2 = new com.bytedance.sdk.openadsdk.ex.BTZ(this.RZ, this.f12871ba.getWebView(), new oJ(this.HL, this.RZ, "landingpage", this), this.IUZ).ZYk(true);
                this.oJ = ZYk2;
                this.UN = ZYk2.oJ;
                this.f12873mu = HyG.oJ(this.RZ, this.f12871ba, this.kkU, this.Ry);
            }
            so();
            com.bytedance.sdk.component.jFA.ba baVar2 = this.f12871ba;
            if (baVar2 != null) {
                baVar2.setLandingPage(true);
                this.f12871ba.setTag("landingpage");
                this.f12871ba.setMaterialMeta(this.RZ.hW());
            }
            com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(this.kkU, this.eZI, this.WcQ, this.f12873mu, this.oJ, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.1
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    try {
                        if (TTLandingPageActivity.this.PiB != null && !TTLandingPageActivity.this.isFinishing()) {
                            TTLandingPageActivity.this.PiB.setVisibility(8);
                        }
                    } catch (Throwable unused2) {
                    }
                    if (TTLandingPageActivity.this.LpP != null) {
                        TTLandingPageActivity.this.LpP.ZYk();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (TextUtils.isEmpty(TTLandingPageActivity.this.cY)) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        TTLandingPageActivity.this.Xe.incrementAndGet();
                        WebResourceResponseModel oJ4 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(TTLandingPageActivity.this.f12872jr, TTLandingPageActivity.this.cY, str);
                        if (oJ4 != null && oJ4.getWebResourceResponse() != null) {
                            TTLandingPageActivity.this.Ln.incrementAndGet();
                            return oJ4.getWebResourceResponse();
                        }
                        if (oJ4 != null && oJ4.getMsg() == 2) {
                            TTLandingPageActivity.this.f12876tb.incrementAndGet();
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable th2) {
                        QSm.oJ("TTAD.LandingPageAct", "shouldInterceptRequest url error", th2);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }
            };
            this.XAo = pfn;
            pfn.oJ(this.RZ);
            this.XAo.oJ("landingpage");
            com.bytedance.sdk.component.jFA.ba baVar3 = this.f12871ba;
            if (baVar3 != null) {
                baVar3.setWebViewClient(this.XAo);
                com.bytedance.sdk.component.jFA.ba baVar4 = this.f12871ba;
                if (baVar4 != null) {
                    baVar4.setUserAgentString(RZ.oJ(baVar4.getWebView(), 7504));
                }
                com.bytedance.sdk.component.jFA.ba baVar5 = this.f12871ba;
                if (baVar5 != null) {
                    baVar5.setMixedContentMode(0);
                }
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(this.RZ, "landingpage", this.IUZ);
            com.bytedance.sdk.component.jFA.ba baVar6 = this.f12871ba;
            if (baVar6 != null) {
                oq.oJ(baVar6, this.f12874oq);
                this.f12871ba.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.eZI, this.oJ, this.f12873mu) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.5
                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView, int i11) {
                        super.onProgressChanged(webView, i11);
                        if (TTLandingPageActivity.this.LpP != null) {
                            TTLandingPageActivity.this.LpP.oJ(i11);
                        }
                        if (TTLandingPageActivity.this.PiB != null && !TTLandingPageActivity.this.isFinishing()) {
                            if (i11 == 100 && TTLandingPageActivity.this.PiB.isShown()) {
                                TTLandingPageActivity.this.PiB.setVisibility(8);
                            } else {
                                TTLandingPageActivity.this.PiB.setProgress(i11);
                            }
                        }
                    }

                    @Override // android.webkit.WebChromeClient
                    public void onReceivedTitle(WebView webView, String str) {
                        super.onReceivedTitle(webView, str);
                        if (TTLandingPageActivity.this.jFA != null) {
                            TextView textView = TTLandingPageActivity.this.jFA;
                            if (TextUtils.isEmpty(str)) {
                                str = com.bytedance.sdk.component.utils.cY.oJ(TTLandingPageActivity.this, "tt_web_title_default");
                            }
                            textView.setText(str);
                        }
                    }
                });
                if (this.f12871ba.getWebView() != null) {
                    this.f12871ba.getWebView().setOnScrollChangeListener(new ZYk(this.oJ));
                    this.f12871ba.getWebView().setOnTouchListener(new tB(this.oJ, this.f12873mu));
                }
                this.f12871ba.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.6
                    @Override // android.webkit.DownloadListener
                    public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
                        if (TTLandingPageActivity.this.QSm != null) {
                            TTLandingPageActivity.this.QSm.tB(TTLandingPageActivity.this.RZ);
                        }
                    }
                });
            }
            Pfn();
            WcQ oJ4 = com.bytedance.sdk.openadsdk.utils.jFA.oJ(this, new jFA.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.7
                @Override // com.bytedance.sdk.openadsdk.utils.jFA.oJ
                public View oJ() {
                    return TTLandingPageActivity.this.cFZ;
                }

                @Override // com.bytedance.sdk.openadsdk.utils.jFA.oJ
                public void ZYk() {
                }
            });
            this.Jc = oJ4;
            oJ4.oJ(0L);
            tB.oJ.oJ(SystemClock.elapsedRealtime() - elapsedRealtime, this.RZ, "landingpage", this.f12872jr, this.cY);
        } catch (Throwable unused2) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        com.bytedance.sdk.component.jFA.ba baVar;
        super.onDestroy();
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.oJ;
        if (btz != null && (baVar = this.f12871ba) != null) {
            btz.oJ(baVar);
        }
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.component.jFA.ba baVar2 = this.f12871ba;
        if (baVar2 != null) {
            ofl.oJ(baVar2.getWebView());
        }
        this.f12871ba = null;
        UN un2 = this.eZI;
        if (un2 != null) {
            un2.BTZ();
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz2 = this.oJ;
        if (btz2 != null) {
            btz2.ex(true);
        }
        if (!TextUtils.isEmpty(this.cY)) {
            tB.oJ.oJ(this.Ln.get(), this.Xe.get(), this.RZ);
        }
        com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.f12872jr);
        WcQ wcQ = this.Jc;
        if (wcQ != null) {
            wcQ.tB();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        WcQ wcQ = this.Jc;
        if (wcQ != null) {
            wcQ.ZYk();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UN un2 = this.eZI;
        if (un2 != null) {
            un2.dLZ();
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.oJ;
        if (btz != null) {
            btz.cFZ();
        }
        if (!this.nke) {
            this.nke = true;
            oJ(4);
        }
        WcQ wcQ = this.Jc;
        if (wcQ != null) {
            wcQ.oJ();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.ex.oJ(this, this.RZ);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.oJ;
        if (btz != null) {
            btz.so();
        }
    }

    private void BTZ() {
        try {
            if (this.ZYk == null) {
                awB awb = new awB(this.kkU, this.RZ);
                this.ZYk = awb;
                awb.setDislikeSource("landing_page");
                this.ZYk.setCallback(new awB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.4
                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void ZYk(View view) {
                        TTLandingPageActivity.this.ex.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void oJ(View view) {
                        TTLandingPageActivity.this.ex.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void oJ(FilterWord filterWord) {
                        if (TTLandingPageActivity.this.Pfn.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TTLandingPageActivity.this.Pfn.set(true);
                        TTLandingPageActivity.this.WcQ();
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(16908290);
            frameLayout.addView(this.ZYk);
            if (this.tB == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.kkU);
                this.tB = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("initDislike error", "LandingPageActivity", th2);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Pfn() {
        cY cYVar = this.RZ;
        if (cYVar == null || cYVar.sQ() != 4) {
            return;
        }
        com.bytedance.sdk.openadsdk.common.WcQ wcQ = this.dLZ;
        if (wcQ != null) {
            wcQ.setVisibility(0);
        }
        Button button = (Button) findViewById(eZI.YQ);
        this.BTZ = button;
        if (button != null) {
            oJ(ba());
            if (this.QSm == null) {
                this.QSm = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this, TextUtils.isEmpty(this.Ry) ? HyG.ZYk(this.f12875si) : this.Ry);
            }
            com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(this, this.RZ, this.Ry, this.f12875si);
            oJVar.oJ(false);
            this.BTZ.setOnClickListener(oJVar);
            this.BTZ.setOnTouchListener(oJVar);
            oJVar.tB(true);
            oJVar.oJ(this.QSm);
        }
    }

    private void PiB() {
        TTAdDislikeToast tTAdDislikeToast = this.tB;
        if (tTAdDislikeToast == null) {
            return;
        }
        tTAdDislikeToast.show(TTAdDislikeToast.getDislikeTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void WcQ() {
        TTAdDislikeToast tTAdDislikeToast;
        if (isFinishing() || (tTAdDislikeToast = this.tB) == null) {
            return;
        }
        tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
    }

    private String ba() {
        cY cYVar = this.RZ;
        if (cYVar != null && !TextUtils.isEmpty(cYVar.ypD())) {
            this.f12877wd = this.RZ.ypD();
        }
        return this.f12877wd;
    }

    private void cFZ() {
        com.bytedance.sdk.component.jFA.ba baVar = (com.bytedance.sdk.component.jFA.ba) findViewById(eZI.nQI);
        this.f12871ba = baVar;
        HyG.oJ(this.RZ, baVar);
        this.dLZ = (com.bytedance.sdk.openadsdk.common.WcQ) findViewById(eZI.jB);
        com.bytedance.sdk.openadsdk.common.WcQ wcQ = (com.bytedance.sdk.openadsdk.common.WcQ) findViewById(eZI.sH);
        BTZ btz = (BTZ) findViewById(520093721);
        this.LpP = btz;
        if (btz != null) {
            btz.oJ(this.RZ);
            this.LpP.oJ();
        }
        if (wcQ != null) {
            wcQ.setVisibility(0);
        }
        ImageView imageView = (ImageView) findViewById(520093720);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTLandingPageActivity.this.f12871ba != null) {
                        if (TTLandingPageActivity.this.UN != null) {
                            TTLandingPageActivity.this.UN.oJ();
                        }
                        if (TTLandingPageActivity.this.f12871ba.jFA()) {
                            TTLandingPageActivity.this.f12871ba.kkU();
                        } else if (TTLandingPageActivity.this.kkU()) {
                            TTLandingPageActivity.this.onBackPressed();
                        } else {
                            TTLandingPageActivity.this.finish();
                        }
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(520093716);
        this.cFZ = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.finish();
                }
            });
        }
        this.jFA = (TextView) findViewById(eZI.SWT);
        com.bytedance.sdk.openadsdk.core.Pfn.ba baVar2 = (com.bytedance.sdk.openadsdk.core.Pfn.ba) findViewById(eZI.MoK);
        this.PiB = baVar2;
        if (baVar2 != null) {
            baVar2.setVisibility(0);
        }
        View findViewById = findViewById(eZI.BHY);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.tB();
                }
            });
        }
    }

    private void dLZ() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", true);
            this.eZI.oJ("temai_back_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    private View ex() {
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this);
        if (Build.VERSION.SDK_INT >= 35) {
            tBVar.setFitsSystemWindows(true);
        }
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(this);
        pfn.setOrientation(1);
        tBVar.addView(pfn, new FrameLayout.LayoutParams(-1, -1));
        View wcQ = new com.bytedance.sdk.openadsdk.common.WcQ(this, new WcQ.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.8
            @Override // com.bytedance.sdk.openadsdk.common.WcQ.oJ
            public View oJ(Context context) {
                return new kkU(context);
            }
        });
        wcQ.setId(eZI.sH);
        pfn.addView(wcQ, new LinearLayout.LayoutParams(-1, cdg.ZYk(this, 44.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        pfn.addView(tBVar2, layoutParams);
        com.bytedance.sdk.component.jFA.ba baVar = new com.bytedance.sdk.component.jFA.ba(this);
        baVar.setId(eZI.nQI);
        tBVar2.addView(baVar, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.common.WcQ wcQ2 = new com.bytedance.sdk.openadsdk.common.WcQ(this, new WcQ.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.9
            @Override // com.bytedance.sdk.openadsdk.common.WcQ.oJ
            public View oJ(Context context) {
                return new com.bytedance.sdk.openadsdk.common.cFZ(context);
            }
        });
        wcQ2.setId(eZI.jB);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 81;
        tBVar2.addView(wcQ2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.ba baVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ba(this, null, 16973855);
        baVar2.setId(eZI.MoK);
        baVar2.setProgress(1);
        baVar2.setVisibility(8);
        baVar2.setProgressDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(this, "tt_browser_progress_style"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, cdg.ZYk(this, 3.0f));
        layoutParams3.gravity = 49;
        tBVar2.addView(baVar2, layoutParams3);
        BTZ btz = new BTZ(this);
        btz.setOnlyLoading(this.ofl);
        btz.setId(520093721);
        tBVar.addView(btz, new FrameLayout.LayoutParams(-1, -1));
        return tBVar;
    }

    private void jFA() {
        if (kkU() && !this.Id.getAndSet(true)) {
            dLZ();
            ZYk(0);
            return;
        }
        try {
            super.onBackPressed();
        } catch (Throwable th2) {
            QSm.tB("TTAD.LandingPageAct", "onBackPressed: ", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean kkU() {
        return !TextUtils.isEmpty(this.f12874oq) && this.f12874oq.contains("__luban_sdk");
    }

    private void so() {
        UN un2 = new UN(this);
        this.eZI = un2;
        un2.ZYk(this.f12871ba).tB(this.WcQ).ex(this.awB).oJ(this.RZ).ZYk(this.f12875si).oJ(this.RZ.oG()).Pfn(this.RZ.ZiK()).oJ(this.f12871ba).ZYk("landingpage");
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected void ZYk() {
        jFA();
    }

    protected void tB() {
        if (isFinishing()) {
            return;
        }
        if (this.Pfn.get()) {
            PiB();
            return;
        }
        if (this.ZYk == null) {
            BTZ();
        }
        awB awb = this.ZYk;
        if (awb != null) {
            awb.oJ();
        }
    }

    private void ZYk(final int i10) {
        if (this.cFZ == null || !kkU()) {
            return;
        }
        com.bytedance.sdk.openadsdk.utils.ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.3
            @Override // java.lang.Runnable
            public void run() {
                cdg.oJ((View) TTLandingPageActivity.this.cFZ, i10);
            }
        });
    }

    private void oJ(int i10) {
        int i11;
        if (i10 == 1 || (i11 = Build.VERSION.SDK_INT) == 26) {
            return;
        }
        if (i11 == 27) {
            try {
                setRequestedOrientation(i10);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        setRequestedOrientation(i10);
    }

    private void oJ(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.BTZ) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.10
            @Override // java.lang.Runnable
            public void run() {
                if (TTLandingPageActivity.this.BTZ != null && !TTLandingPageActivity.this.isFinishing()) {
                    TTLandingPageActivity.this.BTZ.setText(str);
                }
            }
        });
    }
}
