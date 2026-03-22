package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.utils.HL;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.WcQ;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ba;
import com.bytedance.sdk.openadsdk.ex.BTZ;
import com.bytedance.sdk.openadsdk.ex.dLZ;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.RZ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.oq;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class TTVideoLandingPageActivity extends TTBaseLandingPageActivity implements com.bytedance.sdk.openadsdk.kkU.ex {
    protected Button HL;
    protected com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba IUZ;
    protected TextView Id;
    protected ba.oJ Jm;
    private int LS;
    protected String LpP;
    protected Context Pfn;
    protected com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba PiB;
    protected String Rl;
    protected long WcQ;
    protected int XAo;
    protected TextView Xe;
    protected ImageView ZYk;
    protected cY awB;

    /* renamed from: ba  reason: collision with root package name */
    protected String f12891ba;
    private ILoader bgF;
    protected String cFZ;
    protected com.bytedance.sdk.openadsdk.core.widget.oJ cY;
    protected FrameLayout dLZ;
    protected TextView ex;
    protected UN jFA;

    /* renamed from: jr  reason: collision with root package name */
    protected TextView f12892jr;
    protected int kkU;
    protected com.bytedance.sdk.component.jFA.ba oJ;
    private int oTd;
    protected com.bytedance.sdk.openadsdk.multipro.ZYk.oJ ofl;

    /* renamed from: oq  reason: collision with root package name */
    protected RelativeLayout f12894oq;
    protected ImageView tB;

    /* renamed from: tb  reason: collision with root package name */
    protected WcQ f12896tb;

    /* renamed from: wd  reason: collision with root package name */
    protected BTZ f12897wd;
    protected int BTZ = -1;
    protected int eZI = 0;

    /* renamed from: si  reason: collision with root package name */
    protected int f12895si = 0;
    protected int Ry = 0;
    protected int RZ = 0;
    protected String QSm = "ダウンロード";
    protected boolean Ln = false;
    protected boolean nke = false;
    protected boolean Jc = true;
    protected boolean UN = false;

    /* renamed from: mu  reason: collision with root package name */
    protected String f12893mu = null;
    protected AtomicBoolean HyG = new AtomicBoolean(true);
    protected JSONArray cdg = null;
    private final AtomicInteger Yg = new AtomicInteger(0);
    private final AtomicInteger lY = new AtomicInteger(0);
    private final AtomicInteger mwH = new AtomicInteger(0);
    int Qu = -1;
    protected com.bytedance.sdk.openadsdk.core.ZYk.oJ nQI = null;
    private final tB.ZYk NO = new tB.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.11
        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.ZYk
        public void oJ(boolean z10) {
            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
            tTVideoLandingPageActivity.Ln = z10;
            if (!tTVideoLandingPageActivity.isFinishing()) {
                if (z10) {
                    cdg.oJ((View) TTVideoLandingPageActivity.this.oJ, 8);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.dLZ.getLayoutParams();
                    TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                    tTVideoLandingPageActivity2.f12895si = marginLayoutParams.leftMargin;
                    tTVideoLandingPageActivity2.eZI = marginLayoutParams.topMargin;
                    tTVideoLandingPageActivity2.Ry = marginLayoutParams.width;
                    tTVideoLandingPageActivity2.RZ = marginLayoutParams.height;
                    marginLayoutParams.width = -1;
                    marginLayoutParams.height = -1;
                    marginLayoutParams.topMargin = 0;
                    marginLayoutParams.leftMargin = 0;
                    tTVideoLandingPageActivity2.dLZ.setLayoutParams(marginLayoutParams);
                    return;
                }
                cdg.oJ((View) TTVideoLandingPageActivity.this.oJ, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.dLZ.getLayoutParams();
                TTVideoLandingPageActivity tTVideoLandingPageActivity3 = TTVideoLandingPageActivity.this;
                marginLayoutParams2.width = tTVideoLandingPageActivity3.Ry;
                marginLayoutParams2.height = tTVideoLandingPageActivity3.RZ;
                marginLayoutParams2.leftMargin = tTVideoLandingPageActivity3.f12895si;
                marginLayoutParams2.topMargin = tTVideoLandingPageActivity3.eZI;
                tTVideoLandingPageActivity3.dLZ.setLayoutParams(marginLayoutParams2);
            }
        }
    };
    private final HL.oJ jB = new HL.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2
        @Override // com.bytedance.sdk.component.utils.HL.oJ
        public void oJ(Context context, Intent intent, boolean z10, final int i10) {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ(i10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void oJ(int i10) {
            com.bytedance.sdk.component.jFA.ba baVar;
            String str;
            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
            if (tTVideoLandingPageActivity.XAo == 0 && i10 != 0 && (baVar = tTVideoLandingPageActivity.oJ) != null && (str = tTVideoLandingPageActivity.f12893mu) != null) {
                baVar.a_(str);
            }
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar2 = TTVideoLandingPageActivity.this.PiB;
            if (baVar2 != null && baVar2.getNativeVideoController() != null) {
                TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                if (!tTVideoLandingPageActivity2.nke && tTVideoLandingPageActivity2.XAo != i10) {
                    tTVideoLandingPageActivity2.PiB.getNativeVideoController().tB(i10);
                }
            }
            TTVideoLandingPageActivity.this.XAo = i10;
        }
    };

    @SuppressLint({"StaticFieldLeak"})
    /* loaded from: classes3.dex */
    private static class oJ extends AsyncTask<Void, Void, Drawable> {
        private final WeakReference<com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk> ZYk;
        private final Bitmap oJ;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: oJ */
        public Drawable doInBackground(Void... voidArr) {
            try {
                Bitmap oJ = com.bytedance.sdk.component.adexpress.ex.oJ.oJ(si.oJ(), this.oJ, 25);
                if (oJ == null) {
                    return null;
                }
                return new BitmapDrawable(si.oJ().getResources(), oJ);
            } catch (Throwable th2) {
                QSm.tB("TTVideoLandingPage", th2.getMessage());
                return null;
            }
        }

        private oJ(Bitmap bitmap, com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk zYk) {
            this.oJ = bitmap;
            this.ZYk = new WeakReference<>(zYk);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: oJ */
        public void onPostExecute(Drawable drawable) {
            WeakReference<com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk> weakReference;
            if (drawable == null || (weakReference = this.ZYk) == null || weakReference.get() == null) {
                return;
            }
            this.ZYk.get().oJ(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean QSm() {
        if (!TextUtils.isEmpty(this.f12893mu) && this.f12893mu.contains("__luban_sdk")) {
            return true;
        }
        return false;
    }

    private boolean RZ() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
        if (baVar != null && baVar.getNativeVideoController() != null) {
            return this.PiB.getNativeVideoController().PiB();
        }
        return true;
    }

    private void Ry() {
        if (this.PiB != null && !RZ()) {
            this.PiB.WcQ();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void WcQ() {
        cY cYVar = this.awB;
        if (cYVar != null && cYVar.sQ() == 4) {
            this.f12896tb.setVisibility(0);
            Button button = (Button) findViewById(eZI.YQ);
            this.HL = button;
            if (button != null) {
                oJ(ex());
                this.HL.setOnClickListener(this.nQI);
                this.HL.setOnTouchListener(this.nQI);
            }
        }
    }

    private void awB() {
        UN un2 = new UN(this);
        this.jFA = un2;
        un2.ZYk(this.oJ).tB(this.f12891ba).ex(this.cFZ).ZYk(this.kkU).oJ(this.awB).oJ(this.awB.oG()).oJ(this.oJ).ZYk("landingpage_split_screen").Pfn(this.awB.ZiK());
    }

    private void eZI() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar;
        if (this.Ln && (baVar = this.PiB) != null && baVar.getNativeVideoController() != null) {
            this.PiB.getNativeVideoController().Pfn(null, null);
            this.Ln = false;
        } else if (QSm() && !this.HyG.getAndSet(true)) {
            oq();
            oJ(0);
        } else {
            super.onBackPressed();
        }
    }

    private void oq() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", true);
            this.jFA.oJ("temai_back_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    private void si() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
        if (baVar != null && baVar.getNativeVideoController() != null && !RZ()) {
            this.PiB.WcQ();
        }
    }

    protected void BTZ() {
        HL.oJ(this.jB, this.Pfn);
    }

    protected void PiB() {
        try {
            HL.oJ(this.jB);
        } catch (Exception unused) {
        }
    }

    protected abstract boolean cFZ();

    @SuppressLint({"ClickableViewAccessibility"})
    public void dLZ() {
        if (this.awB == null) {
            return;
        }
        this.IUZ = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(this, this.LpP);
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(this, this.awB, this.LpP, this.kkU);
        this.nQI = oJVar;
        oJVar.oJ(false);
        this.nQI.tB(true);
        this.Xe.setOnClickListener(this.nQI);
        this.Xe.setOnTouchListener(this.nQI);
        this.nQI.oJ(this.IUZ);
    }

    protected int jFA() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
        if (baVar != null && baVar.getNativeVideoController() != null) {
            return this.PiB.getNativeVideoController().kkU();
        }
        return 0;
    }

    protected void kkU() {
        String str;
        cY cYVar = this.awB;
        if (cYVar != null && cYVar.sQ() == 4) {
            cdg.oJ((View) this.f12894oq, 0);
            if (!TextUtils.isEmpty(this.awB.UUI())) {
                str = this.awB.UUI();
            } else if (!TextUtils.isEmpty(this.awB.Amz())) {
                str = this.awB.Amz();
            } else if (!TextUtils.isEmpty(this.awB.Qzd())) {
                str = this.awB.Qzd();
            } else {
                str = "";
            }
            if (this.awB.Zjw() != null && this.awB.Zjw().oJ() != null) {
                cdg.oJ((View) this.cY, 0);
                cdg.oJ((View) this.Id, 4);
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.awB.Zjw(), this.cY, this.awB);
            } else if (!TextUtils.isEmpty(str)) {
                cdg.oJ((View) this.cY, 4);
                cdg.oJ((View) this.Id, 0);
                this.Id.setText(str.substring(0, 1));
            }
            if (!TextUtils.isEmpty(this.awB.ypD())) {
                this.Xe.setText(this.awB.ypD());
            }
            if (!TextUtils.isEmpty(str)) {
                this.f12892jr.setText(str);
            }
            cdg.oJ((View) this.f12892jr, 0);
            cdg.oJ((View) this.Xe, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected boolean oJ() {
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        eZI();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        WcQ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String str;
        int i10;
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.WcQ.Pfn()) {
            finish();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            getWindow().addFlags(16777216);
        } catch (Throwable unused) {
        }
        try {
            si.ZYk(this);
        } catch (Throwable unused2) {
        }
        this.XAo = Ry.tB(getApplicationContext());
        try {
            setContentView(tB());
            this.Pfn = this;
            Intent intent = getIntent();
            this.UN = intent.getBooleanExtra("video_is_auto_play", true);
            if (bundle != null && bundle.getLong("video_play_position") > 0) {
                this.WcQ = bundle.getLong("video_play_position", 0L);
            }
            String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_DATA);
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                String stringExtra2 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra2 != null) {
                    try {
                        this.awB = com.bytedance.sdk.openadsdk.core.ZYk.oJ(new JSONObject(stringExtra2));
                    } catch (Exception unused3) {
                    }
                }
                cY cYVar = this.awB;
                if (cYVar != null) {
                    this.BTZ = cYVar.Dc();
                }
                this.f12891ba = intent.getStringExtra("adid");
                this.cFZ = intent.getStringExtra("log_extra");
                str = intent.getStringExtra("web_title");
                this.Rl = intent.getStringExtra("gecko_id");
                this.LpP = intent.getStringExtra("event_tag");
                this.kkU = intent.getIntExtra("source", -1);
                this.f12893mu = intent.getStringExtra("url");
            } else {
                cY oJ2 = IUZ.oJ().oJ(IUZ.oJ(intent));
                this.awB = oJ2;
                if (oJ2 != null) {
                    this.BTZ = oJ2.Dc();
                    this.f12891ba = this.awB.edj();
                    this.cFZ = this.awB.pe();
                    str = this.awB.UUI();
                    this.Rl = this.awB.PQw();
                    this.f12893mu = this.awB.so();
                    this.kkU = this.awB.kkU();
                    this.LpP = this.awB.jFA();
                } else {
                    str = null;
                }
            }
            if (this.awB == null) {
                finish();
                return;
            }
            if (!TextUtils.isEmpty(this.Rl)) {
                this.bgF = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().ZYk();
                int oJ3 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.bgF, this.Rl);
                this.oTd = oJ3;
                if (oJ3 > 0) {
                    i10 = 2;
                } else {
                    i10 = 0;
                }
                this.LS = i10;
            }
            if (stringExtra != null) {
                try {
                    this.ofl = com.bytedance.sdk.openadsdk.multipro.ZYk.oJ.oJ(new JSONObject(stringExtra));
                } catch (Exception unused4) {
                }
                com.bytedance.sdk.openadsdk.multipro.ZYk.oJ oJVar = this.ofl;
                if (oJVar != null) {
                    this.WcQ = oJVar.cFZ;
                }
            }
            if (bundle != null) {
                this.awB = IUZ.oJ().oJ(bundle.getInt("meta_index", -1));
                long j10 = bundle.getLong("video_play_position");
                if (j10 > 0) {
                    this.WcQ = j10;
                }
            }
            Pfn();
            dLZ();
            awB();
            oJ(4);
            if (this.oJ != null) {
                com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(this.Pfn).oJ(true).ZYk(false).oJ(this.oJ.getWebView());
                BTZ ZYk = new BTZ(this.awB, this.oJ.getWebView(), new dLZ() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.1
                    @Override // com.bytedance.sdk.openadsdk.ex.dLZ
                    public void oJ(int i11) {
                        tB.oJ.oJ(TTVideoLandingPageActivity.this.oTd, TTVideoLandingPageActivity.this.mwH.get(), TTVideoLandingPageActivity.this.lY.get(), TTVideoLandingPageActivity.this.Yg.get() - TTVideoLandingPageActivity.this.lY.get(), TTVideoLandingPageActivity.this.awB, "landingpage_split_screen", i11);
                    }
                }, this.LS).ZYk(true);
                this.f12897wd = ZYk;
                this.Jm = ZYk.oJ;
                ZYk.oJ("landingpage_split_screen");
            }
            com.bytedance.sdk.component.jFA.ba baVar = this.oJ;
            if (baVar != null) {
                baVar.setLandingPage(true);
                this.oJ.setTag("landingpage_split_screen");
                this.oJ.setMaterialMeta(this.awB.hW());
                this.oJ.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(this.Pfn, this.jFA, this.f12891ba, this.f12897wd, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.4
                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                    public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                        try {
                            if (TextUtils.isEmpty(TTVideoLandingPageActivity.this.Rl)) {
                                return super.shouldInterceptRequest(webView, str2);
                            }
                            TTVideoLandingPageActivity.this.Yg.incrementAndGet();
                            WebResourceResponseModel oJ4 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(TTVideoLandingPageActivity.this.bgF, TTVideoLandingPageActivity.this.Rl, str2);
                            if (oJ4 != null && oJ4.getWebResourceResponse() != null) {
                                TTVideoLandingPageActivity.this.lY.incrementAndGet();
                                return oJ4.getWebResourceResponse();
                            }
                            if (oJ4 != null && oJ4.getMsg() == 2) {
                                TTVideoLandingPageActivity.this.mwH.incrementAndGet();
                            }
                            return super.shouldInterceptRequest(webView, str2);
                        } catch (Throwable th2) {
                            QSm.oJ("TTVideoLandingPage", "shouldInterceptRequest url error", th2);
                            return super.shouldInterceptRequest(webView, str2);
                        }
                    }
                });
                com.bytedance.sdk.component.jFA.ba baVar2 = this.oJ;
                baVar2.setUserAgentString(RZ.oJ(baVar2.getWebView(), 7504));
            }
            com.bytedance.sdk.component.jFA.ba baVar3 = this.oJ;
            if (baVar3 != null) {
                baVar3.setMixedContentMode(0);
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(this.awB, "landingpage_split_screen", this.LS);
            oq.oJ(this.oJ, this.f12893mu);
            this.oJ.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.jFA, this.f12897wd) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i11) {
                    super.onProgressChanged(webView, i11);
                }
            });
            this.oJ.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.6
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str2, String str3, String str4, String str5, long j11) {
                    TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                    com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba baVar4 = tTVideoLandingPageActivity.IUZ;
                    if (baVar4 != null) {
                        baVar4.tB(tTVideoLandingPageActivity.awB);
                    }
                }
            });
            TextView textView = this.ex;
            if (textView != null) {
                if (TextUtils.isEmpty(str)) {
                    str = com.bytedance.sdk.component.utils.cY.oJ(this, "tt_web_title_default");
                }
                textView.setText(str);
            }
            BTZ();
            ba();
            WcQ();
            tB.oJ.oJ(SystemClock.elapsedRealtime() - elapsedRealtime, this.awB, "landingpage_split_screen", this.bgF, this.Rl);
        } catch (Throwable unused5) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        PiB();
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
            this.awB.kkU(false);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.component.jFA.ba baVar = this.oJ;
        if (baVar != null) {
            com.bytedance.sdk.openadsdk.core.ofl.oJ(baVar.getWebView());
        }
        this.oJ = null;
        UN un2 = this.jFA;
        if (un2 != null) {
            un2.BTZ();
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar2 = this.PiB;
        if (baVar2 != null && baVar2.getNativeVideoController() != null) {
            this.PiB.getNativeVideoController().Pfn();
        }
        this.PiB = null;
        this.awB = null;
        BTZ btz = this.f12897wd;
        if (btz != null) {
            btz.ex(true);
        }
        if (!TextUtils.isEmpty(this.Rl)) {
            tB.oJ.oJ(this.lY.get(), this.Yg.get(), this.awB);
        }
        com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.bgF);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        Ry();
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
        if (baVar != null && baVar.getNativeVideoController() != null) {
            oJ(this.PiB.getNativeVideoController());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (!this.Jc) {
            si();
        }
        this.Jc = false;
        UN un2 = this.jFA;
        if (un2 != null) {
            un2.dLZ();
        }
        BTZ btz = this.f12897wd;
        if (btz != null) {
            btz.cFZ();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        int i10;
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (this.awB != null) {
            i10 = IUZ.oJ().oJ(this.awB);
        } else {
            i10 = -1;
        }
        this.Qu = i10;
        bundle.putInt("meta_index", i10);
        bundle.putLong("video_play_position", this.WcQ);
        bundle.putBoolean("is_complete", this.nke);
        long j10 = this.WcQ;
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
        if (baVar != null && baVar.getNativeVideoController() != null) {
            j10 = this.PiB.getNativeVideoController().ba();
        }
        bundle.putLong("video_play_position", j10);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.Qu >= 0) {
            IUZ.oJ().tB(this.Qu);
            this.Qu = -1;
        }
        com.bytedance.sdk.openadsdk.utils.ex.oJ(this, this.awB);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        BTZ btz = this.f12897wd;
        if (btz != null) {
            btz.so();
        }
    }

    protected long so() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
        if (baVar != null && baVar.getNativeVideoController() != null) {
            return this.PiB.getNativeVideoController().jFA();
        }
        return 0L;
    }

    protected abstract View tB();

    /* JADX INFO: Access modifiers changed from: protected */
    public void Pfn() {
        this.f12896tb = (WcQ) findViewById(eZI.jB);
        this.oJ = (com.bytedance.sdk.component.jFA.ba) findViewById(eZI.nQI);
        ImageView imageView = (ImageView) findViewById(520093720);
        this.ZYk = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    JSONObject jSONObject;
                    TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                    if (tTVideoLandingPageActivity.oJ != null) {
                        ba.oJ oJVar = tTVideoLandingPageActivity.Jm;
                        if (oJVar != null) {
                            oJVar.oJ();
                        }
                        if (TTVideoLandingPageActivity.this.oJ.jFA()) {
                            TTVideoLandingPageActivity.this.oJ.kkU();
                        } else if (TTVideoLandingPageActivity.this.QSm()) {
                            TTVideoLandingPageActivity.this.onBackPressed();
                        } else {
                            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = TTVideoLandingPageActivity.this.PiB;
                            if (baVar != null && baVar.getNativeVideoController() != null) {
                                TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                                jSONObject = HyG.oJ(tTVideoLandingPageActivity2.awB, tTVideoLandingPageActivity2.PiB.getNativeVideoController().cFZ(), TTVideoLandingPageActivity.this.PiB.getNativeVideoController().dLZ());
                            } else {
                                jSONObject = null;
                            }
                            JSONObject jSONObject2 = jSONObject;
                            TTVideoLandingPageActivity tTVideoLandingPageActivity3 = TTVideoLandingPageActivity.this;
                            com.bytedance.sdk.openadsdk.ex.tB.oJ(tTVideoLandingPageActivity3.awB, "embeded_ad", "detail_back", tTVideoLandingPageActivity3.so(), TTVideoLandingPageActivity.this.jFA(), jSONObject2, (com.bytedance.sdk.openadsdk.ex.cFZ) null);
                            TTVideoLandingPageActivity.this.finish();
                        }
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
        if (baVar != null) {
            baVar.setIsAutoPlay(this.UN);
        }
        ImageView imageView2 = (ImageView) findViewById(eZI.f13421wd);
        this.tB = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    JSONObject jSONObject;
                    com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar2 = TTVideoLandingPageActivity.this.PiB;
                    if (baVar2 != null) {
                        if (baVar2.getNativeVideoController() != null) {
                            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                            jSONObject = HyG.oJ(tTVideoLandingPageActivity.awB, tTVideoLandingPageActivity.PiB.getNativeVideoController().cFZ(), TTVideoLandingPageActivity.this.PiB.getNativeVideoController().dLZ());
                        } else {
                            jSONObject = null;
                        }
                        JSONObject jSONObject2 = jSONObject;
                        TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(tTVideoLandingPageActivity2.awB, "embeded_ad", "detail_skip", tTVideoLandingPageActivity2.so(), TTVideoLandingPageActivity.this.jFA(), jSONObject2, (com.bytedance.sdk.openadsdk.ex.cFZ) null);
                    }
                    TTVideoLandingPageActivity.this.finish();
                }
            });
        }
        this.ex = (TextView) findViewById(eZI.SWT);
        this.dLZ = (FrameLayout) findViewById(eZI.ofl);
        this.f12894oq = (RelativeLayout) findViewById(eZI.HyG);
        this.Id = (TextView) findViewById(eZI.Rl);
        this.f12892jr = (TextView) findViewById(eZI.Jm);
        this.Xe = (TextView) findViewById(eZI.Qu);
        this.cY = (com.bytedance.sdk.openadsdk.core.widget.oJ) findViewById(eZI.cdg);
        kkU();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected void ZYk() {
        eZI();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ba() {
        if (cFZ()) {
            try {
                com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba(this.Pfn, this.awB, true, null);
                this.PiB = baVar;
                if (baVar.getNativeVideoController() != null) {
                    this.PiB.getNativeVideoController().oJ(false);
                }
                if (this.nke) {
                    this.dLZ.setVisibility(0);
                    this.dLZ.removeAllViews();
                    this.dLZ.addView(this.PiB);
                    this.PiB.ZYk(true);
                } else {
                    if (!this.UN) {
                        this.WcQ = 0L;
                    }
                    if (this.ofl != null && this.PiB.getNativeVideoController() != null) {
                        this.PiB.getNativeVideoController().tB(this.ofl.cFZ);
                        this.PiB.getNativeVideoController().ex(this.ofl.Pfn);
                        this.PiB.oJ(si.ex().ZYk(String.valueOf(this.awB.uv())), "landingPageInit");
                    }
                    if (this.PiB.oJ(this.WcQ, this.Jc, this.nke)) {
                        this.dLZ.setVisibility(0);
                        this.dLZ.removeAllViews();
                        this.dLZ.addView(this.PiB);
                    }
                    if (this.PiB.getNativeVideoController() != null) {
                        this.PiB.getNativeVideoController().oJ(false);
                        this.PiB.getNativeVideoController().oJ(this.NO);
                    }
                }
                String oJ2 = this.awB.yB().get(0).oJ();
                com.bytedance.sdk.openadsdk.jFA.ex.oJ().oJ(oJ2).oJ(this.awB.yB().get(0).ZYk()).ZYk(this.awB.yB().get(0).tB()).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ())).tB(2).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(this.awB, oJ2, new com.bytedance.sdk.component.Pfn.eZI() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.10
                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(int i10, String str, @Nullable Throwable th2) {
                    }

                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
                        try {
                            Object ZYk = dlz.ZYk();
                            if (ZYk instanceof Bitmap) {
                                new oJ((Bitmap) ZYk, TTVideoLandingPageActivity.this.PiB.getNativeVideoController().BTZ()).execute(new Void[0]);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }), 4);
                this.PiB.findViewById(520093726).setOnTouchListener(null);
                this.PiB.findViewById(520093726).setOnClickListener(null);
            } catch (Exception e10) {
                QSm.tB("TTVideoLandingPage", e10.getMessage());
                if (this.PiB == null) {
                    ApmHelper.reportCustomError("mNativeVideoTsView is null", "FUNCTION EXCEPTION", e10);
                }
            }
            if (this.XAo == 0) {
                try {
                    Toast.makeText(this, com.bytedance.sdk.component.utils.cY.oJ(this, "tt_no_network"), 0).show();
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String ex() {
        cY cYVar = this.awB;
        if (cYVar != null && !TextUtils.isEmpty(cYVar.ypD())) {
            this.QSm = this.awB.ypD();
        }
        return this.QSm;
    }

    private void oJ(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.HL) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.7
            @Override // java.lang.Runnable
            public void run() {
                TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                if (tTVideoLandingPageActivity.HL != null && !tTVideoLandingPageActivity.isFinishing()) {
                    TTVideoLandingPageActivity.this.HL.setText(str);
                }
            }
        });
    }

    private void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar) {
        this.nke = this.nke || tBVar.PiB();
        Boolean bool = Boolean.TRUE;
        com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_is_update_flag", bool);
        com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_isfromvideodetailpage", bool);
        com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_native_video_complete", Boolean.valueOf(this.nke));
        com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_current_play_position", Long.valueOf(tBVar.ba()));
        com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_total_play_duration", Long.valueOf(tBVar.jFA() + tBVar.cFZ()));
        com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_native_video_data", "key_video_duration", Long.valueOf(tBVar.jFA()));
    }

    private void oJ(final int i10) {
        if (this.tB == null || !QSm()) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.3
            @Override // java.lang.Runnable
            public void run() {
                cdg.oJ((View) TTVideoLandingPageActivity.this.tB, i10);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.kkU.ex
    public void oJ(boolean z10, JSONArray jSONArray) {
        if (!z10 || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.cdg = jSONArray;
    }
}
