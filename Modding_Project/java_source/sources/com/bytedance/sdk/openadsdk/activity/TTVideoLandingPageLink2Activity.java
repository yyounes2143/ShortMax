package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.BTZ;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.WcQ;
import com.bytedance.sdk.openadsdk.common.awB;
import com.bytedance.sdk.openadsdk.common.eZI;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TTVideoLandingPageLink2Activity extends TTVideoLandingPageActivity implements com.bytedance.sdk.openadsdk.kkU.ex {
    private long Dex;
    private View LS;
    private boolean MoK;
    private View NO;
    private eZI TA;
    private LinearLayout UK;
    private com.bytedance.sdk.openadsdk.common.ex VSB;
    TTAdDislikeToast Yg;
    awB bgF;
    private boolean jB;
    private PAGLogoView jXJ;
    private BTZ oTd;
    private TextView sH;
    private com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn uvK;
    private TextView yz;
    private boolean oIC = false;
    final AtomicBoolean lY = new AtomicBoolean(false);
    final AtomicBoolean mwH = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public void RZ() {
        TTAdDislikeToast tTAdDislikeToast;
        if (!isFinishing() && (tTAdDislikeToast = this.Yg) != null) {
            tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
        }
    }

    private void Ry() {
        try {
            if (this.bgF == null) {
                awB awb = new awB(this.Pfn, this.awB);
                this.bgF = awb;
                awb.setDislikeSource("landing_page");
                this.bgF.setCallback(new awB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.6
                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void ZYk(View view) {
                        TTVideoLandingPageLink2Activity.this.lY.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void oJ(View view) {
                        TTVideoLandingPageLink2Activity.this.lY.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void oJ(FilterWord filterWord) {
                        if (TTVideoLandingPageLink2Activity.this.mwH.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TTVideoLandingPageLink2Activity.this.mwH.set(true);
                        TTVideoLandingPageLink2Activity.this.RZ();
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(16908290);
            frameLayout.addView(this.bgF);
            if (this.Yg == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.Pfn);
                this.Yg = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("initDislike error", "TTVideoLandingPageLink2Activity", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eZI() {
        BTZ btz = this.oTd;
        if (btz != null) {
            btz.ZYk();
        }
    }

    private void si() {
        TTAdDislikeToast tTAdDislikeToast = this.Yg;
        if (tTAdDislikeToast == null) {
            return;
        }
        tTAdDislikeToast.show(TTAdDislikeToast.getDislikeTip());
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        BTZ btz = this.oTd;
        if (btz != null) {
            btz.oJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        cY cYVar;
        com.bytedance.sdk.component.jFA.ba baVar;
        long j10;
        super.onCreate(bundle);
        if (WcQ.Pfn() && (cYVar = this.awB) != null && (baVar = ((TTVideoLandingPageActivity) this).oJ) != null) {
            com.bytedance.sdk.openadsdk.common.ex oJ = HyG.oJ(cYVar, baVar, this.Pfn, this.LpP);
            this.VSB = oJ;
            if (oJ != null) {
                oJ.oJ("landingpage_split_screen");
            }
            this.MoK = si.ex().RZ();
            if (((TTVideoLandingPageActivity) this).oJ.getWebView() != null) {
                ((TTVideoLandingPageActivity) this).oJ.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.1
                    @Override // android.view.View.OnScrollChangeListener
                    public void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                        com.bytedance.sdk.openadsdk.ex.BTZ btz = TTVideoLandingPageLink2Activity.this.f12897wd;
                        if (btz != null) {
                            btz.ZYk(i11);
                        }
                    }
                });
            }
            com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(this.Pfn, this.jFA, this.f12891ba, this.VSB, this.f12897wd, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.7
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    try {
                        if (TTVideoLandingPageLink2Activity.this.LS != null && !TTVideoLandingPageLink2Activity.this.jB) {
                            TTVideoLandingPageLink2Activity.this.LS.setVisibility(8);
                        }
                        if (TTVideoLandingPageLink2Activity.this.UK != null) {
                            TTVideoLandingPageLink2Activity.this.UK.setVisibility(0);
                        }
                        TTVideoLandingPageLink2Activity.this.oIC = true;
                        TTVideoLandingPageLink2Activity.this.eZI();
                        TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(tTVideoLandingPageLink2Activity.awB, tTVideoLandingPageLink2Activity.LpP, System.currentTimeMillis() - TTVideoLandingPageLink2Activity.this.Dex, true);
                    } catch (Throwable unused) {
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    super.onPageStarted(webView, str, bitmap);
                    TTVideoLandingPageLink2Activity.this.Dex = System.currentTimeMillis();
                }
            };
            this.uvK = pfn;
            pfn.oJ(this.awB);
            ((TTVideoLandingPageActivity) this).oJ.setWebViewClient(this.uvK);
            ((TTVideoLandingPageActivity) this).oJ.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.jFA, this.f12897wd, this.VSB) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.8
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i10) {
                    super.onProgressChanged(webView, i10);
                    if (TTVideoLandingPageLink2Activity.this.MoK && TTVideoLandingPageLink2Activity.this.TA != null && i10 == 100) {
                        TTVideoLandingPageLink2Activity.this.TA.oJ(webView, TTVideoLandingPageLink2Activity.this.Jm);
                    }
                    if (TTVideoLandingPageLink2Activity.this.oTd != null) {
                        TTVideoLandingPageLink2Activity.this.oTd.oJ(i10);
                    }
                }
            });
            TextView textView = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Tvw);
            if (textView != null && this.awB.RZ() != null) {
                textView.setText(this.awB.RZ().Pfn());
            }
            cY cYVar2 = this.awB;
            if (cYVar2 != null && cYVar2.RZ() != null) {
                j10 = this.awB.RZ().oJ() * 1000;
            } else {
                j10 = 10000;
            }
            WcQ.tB().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        TTVideoLandingPageLink2Activity.this.jB = true;
                        if (TTVideoLandingPageLink2Activity.this.oTd != null) {
                            TTVideoLandingPageLink2Activity.this.oTd.ZYk();
                        }
                        TTVideoLandingPageLink2Activity.this.NO.setVisibility(0);
                        if (TTVideoLandingPageLink2Activity.this.jXJ != null) {
                            TTVideoLandingPageLink2Activity.this.jXJ.setVisibility(0);
                        }
                        if (!TTVideoLandingPageLink2Activity.this.oIC) {
                            TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                            com.bytedance.sdk.openadsdk.ex.tB.oJ(tTVideoLandingPageLink2Activity.awB, tTVideoLandingPageLink2Activity.LpP, System.currentTimeMillis() - TTVideoLandingPageLink2Activity.this.Dex, false);
                        }
                    } catch (Exception unused) {
                    }
                }
            }, j10);
            return;
        }
        finish();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseLandingPageActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onDestroy() {
        eZI();
        if (!this.jB && this.f12897wd != null && ((TTVideoLandingPageActivity) this).oJ != null && this.oTd.getVisibility() == 8) {
            this.f12897wd.oJ(((TTVideoLandingPageActivity) this).oJ);
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void awB() {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(this.awB, "landingpage_split_screen", "click_video", (JSONObject) null);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void Pfn() {
        super.Pfn();
        TextView textView = (TextView) findViewById(520093713);
        if (textView != null) {
            textView.setText(com.bytedance.sdk.component.utils.cY.oJ(si.oJ(), "tt_reward_feedback"));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTVideoLandingPageLink2Activity.this.WcQ();
                }
            });
        }
        this.yz = (TextView) findViewById(520093714);
        this.oTd = (BTZ) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Yg);
        this.LS = findViewById(com.bytedance.sdk.openadsdk.utils.eZI.bgF);
        this.NO = findViewById(com.bytedance.sdk.openadsdk.utils.eZI.XAo);
        TextView textView2 = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.mwH);
        TextView textView3 = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.oTd);
        com.bytedance.sdk.openadsdk.core.widget.si siVar = (com.bytedance.sdk.openadsdk.core.widget.si) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.lY);
        this.sH = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.LS);
        if (this.awB.Zjw() != null && !TextUtils.isEmpty(this.awB.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.awB.Zjw(), siVar, this.awB);
        }
        textView2.setText(this.awB.Qzd());
        textView3.setText(this.awB.Amz());
        View findViewById = findViewById(com.bytedance.sdk.openadsdk.utils.eZI.NO);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                TTWebsiteActivity.oJ(tTVideoLandingPageLink2Activity.Pfn, tTVideoLandingPageLink2Activity.awB, tTVideoLandingPageLink2Activity.LpP);
            }
        });
        if (findViewById instanceof PAGLogoView) {
            ((PAGLogoView) findViewById).initData(this.awB);
        }
        com.bytedance.sdk.component.jFA.ba baVar = ((TTVideoLandingPageActivity) this).oJ;
        if (baVar != null && baVar.getWebView() != null) {
            HyG.oJ(this.awB, ((TTVideoLandingPageActivity) this).oJ);
        }
        boolean RZ = si.ex().RZ();
        this.MoK = RZ;
        if (RZ) {
            ((com.bytedance.sdk.openadsdk.common.WcQ) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.yz)).setVisibility(0);
            LinearLayout linearLayout = (LinearLayout) findViewById(com.bytedance.sdk.openadsdk.utils.eZI.UF);
            this.UK = linearLayout;
            linearLayout.setVisibility(8);
            this.TA = new eZI(this, this.UK, ((TTVideoLandingPageActivity) this).oJ, this.awB, "landingpage_split_screen");
            if (((TTVideoLandingPageActivity) this).oJ.getWebView() != null) {
                ((TTVideoLandingPageActivity) this).oJ.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.14
                    float oJ = 0.0f;

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            this.oJ = motionEvent.getY();
                        }
                        com.bytedance.sdk.openadsdk.ex.BTZ btz = TTVideoLandingPageLink2Activity.this.f12897wd;
                        if (btz != null) {
                            btz.oJ(motionEvent);
                        }
                        if (TTVideoLandingPageLink2Activity.this.VSB != null) {
                            TTVideoLandingPageLink2Activity.this.VSB.oJ(motionEvent);
                        }
                        if (motionEvent.getAction() == 2) {
                            float y10 = motionEvent.getY();
                            float f10 = this.oJ;
                            if (y10 - f10 > 8.0f) {
                                if (TTVideoLandingPageLink2Activity.this.TA != null) {
                                    TTVideoLandingPageLink2Activity.this.TA.oJ();
                                }
                                return false;
                            } else if (y10 - f10 < -8.0f && TTVideoLandingPageLink2Activity.this.TA != null) {
                                TTVideoLandingPageLink2Activity.this.TA.ZYk();
                            }
                        }
                        return false;
                    }
                });
            }
        } else if (((TTVideoLandingPageActivity) this).oJ.getWebView() != null) {
            ((TTVideoLandingPageActivity) this).oJ.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    com.bytedance.sdk.openadsdk.ex.BTZ btz = TTVideoLandingPageLink2Activity.this.f12897wd;
                    if (btz != null) {
                        btz.oJ(motionEvent);
                    }
                    if (TTVideoLandingPageLink2Activity.this.VSB != null) {
                        TTVideoLandingPageLink2Activity.this.VSB.oJ(motionEvent);
                        return false;
                    }
                    return false;
                }
            });
        }
        BTZ btz = this.oTd;
        if (btz != null) {
            btz.oJ(this.awB);
        }
    }

    protected void WcQ() {
        if (isFinishing()) {
            return;
        }
        if (this.mwH.get()) {
            si();
            return;
        }
        if (this.bgF == null) {
            Ry();
        }
        awB awb = this.bgF;
        if (awb != null) {
            awb.oJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void ba() {
        if (cFZ()) {
            super.ba();
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar = this.PiB;
            if (baVar != null) {
                if (baVar.getNativeVideoController() != null) {
                    this.PiB.getNativeVideoController().oJ(false);
                    this.PiB.getNativeVideoController().ba(false);
                    this.dLZ.setClickable(true);
                    this.dLZ.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.3
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            if (motionEvent.getAction() == 0) {
                                TTVideoLandingPageLink2Activity.this.awB();
                                return false;
                            }
                            return false;
                        }
                    });
                }
                this.PiB.getNativeVideoController().oJ(new tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.4
                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                    public void oJ() {
                    }

                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                    public void oJ(long j10, int i10) {
                    }

                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                    public void oJ(long j10, long j11) {
                        if (TTVideoLandingPageLink2Activity.this.yz != null) {
                            int max = (int) Math.max(0L, (j11 - j10) / 1000);
                            TTVideoLandingPageLink2Activity.this.yz.setText(String.valueOf(max));
                            if (max <= 0) {
                                TTVideoLandingPageLink2Activity.this.yz.setVisibility(8);
                            }
                        }
                    }

                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.oJ
                    public void ZYk(long j10, int i10) {
                    }
                });
                return;
            }
            return;
        }
        try {
            ImageView imageView = new ImageView(this);
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.awB.yB().get(0), imageView, this.awB);
            this.dLZ.setVisibility(0);
            this.dLZ.removeAllViews();
            this.dLZ.addView(imageView);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(TTVideoLandingPageLink2Activity.this.awB, "landingpage_split_screen");
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    protected boolean cFZ() {
        int i10 = this.BTZ;
        return i10 == 5 || i10 == 15 || i10 == 50;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    public void dLZ() {
        super.dLZ();
        cY cYVar = this.awB;
        if (cYVar != null) {
            cYVar.kkU(true);
        }
        TextView textView = this.sH;
        if (textView != null) {
            textView.setText(ex());
            this.sH.setClickable(true);
            this.sH.setOnClickListener(this.nQI);
            this.sH.setOnTouchListener(this.nQI);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    protected View tB() {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(this);
        if (Build.VERSION.SDK_INT >= 35) {
            pfn.setFitsSystemWindows(true);
        }
        pfn.setOrientation(1);
        pfn.setBackgroundColor(-1);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this);
        pfn.addView(tBVar, new LinearLayout.LayoutParams(-1, cdg.ZYk(this, 220.0f)));
        View tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this);
        tBVar2.setId(com.bytedance.sdk.openadsdk.utils.eZI.ofl);
        tBVar.addView(tBVar2, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(this);
        pfn2.setOrientation(0);
        pfn2.setPadding(0, cdg.ZYk(this, 20.0f), 0, 0);
        tBVar.addView(pfn2, new FrameLayout.LayoutParams(-1, -2));
        View view = new View(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        layoutParams.weight = 1.0f;
        pfn2.addView(view, layoutParams);
        com.bytedance.sdk.openadsdk.core.widget.awB awb = new com.bytedance.sdk.openadsdk.core.widget.awB(this);
        awb.setId(520093713);
        awb.setGravity(17);
        awb.setText(com.bytedance.sdk.component.utils.cY.oJ(this, "tt_reward_feedback"));
        awb.setTextColor(-1);
        awb.setTextSize(2, 14.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, cdg.ZYk(this, 28.0f));
        int ZYk = cdg.ZYk(this, 16.0f);
        layoutParams2.rightMargin = ZYk;
        layoutParams2.leftMargin = ZYk;
        pfn2.addView(awb, layoutParams2);
        com.bytedance.sdk.openadsdk.core.widget.WcQ wcQ = new com.bytedance.sdk.openadsdk.core.widget.WcQ(this);
        wcQ.setId(com.bytedance.sdk.openadsdk.utils.eZI.f13421wd);
        wcQ.setPadding(cdg.ZYk(this, 7.0f), cdg.ZYk(this, 7.0f), cdg.ZYk(this, 7.0f), cdg.ZYk(this, 7.0f));
        wcQ.setImageResource(com.bytedance.sdk.component.utils.cY.ex(this, "tt_video_close_drawable"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(cdg.ZYk(this, 28.0f), cdg.ZYk(this, 28.0f));
        layoutParams3.rightMargin = cdg.ZYk(this, 12.0f);
        pfn2.addView(wcQ, layoutParams3);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(this);
        cfz.setVisibility(8);
        cfz.setId(com.bytedance.sdk.openadsdk.utils.eZI.HyG);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = cdg.ZYk(this, 10.0f);
        pfn.addView(cfz, layoutParams4);
        com.bytedance.sdk.openadsdk.core.widget.oJ oJVar = new com.bytedance.sdk.openadsdk.core.widget.oJ(this);
        oJVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.cdg);
        oJVar.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        oJVar.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(cdg.ZYk(this, 44.0f), cdg.ZYk(this, 44.0f));
        layoutParams5.addRule(9);
        layoutParams5.leftMargin = cdg.ZYk(this, 5.0f);
        cfz.addView(oJVar, layoutParams5);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(this);
        int i10 = com.bytedance.sdk.openadsdk.utils.eZI.Rl;
        soVar.setId(i10);
        soVar.setBackground(dLZ.oJ(this, "tt_circle_solid_mian"));
        soVar.setGravity(17);
        soVar.setTextColor(-1);
        soVar.setTextSize(2, 19.0f);
        soVar.setTypeface(Typeface.DEFAULT_BOLD);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(cdg.ZYk(this, 44.0f), cdg.ZYk(this, 44.0f));
        layoutParams6.addRule(9);
        layoutParams6.leftMargin = cdg.ZYk(this, 5.0f);
        cfz.addView(soVar, layoutParams6);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(this);
        soVar2.setId(com.bytedance.sdk.openadsdk.utils.eZI.Jm);
        soVar2.setMaxLines(1);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar2.setEllipsize(truncateAt);
        soVar2.setTextColor(Color.parseColor("#e5000000"));
        soVar2.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(15);
        layoutParams7.leftMargin = cdg.ZYk(this, 5.0f);
        layoutParams7.rightMargin = cdg.ZYk(this, 80.0f);
        layoutParams7.addRule(1, i10);
        cfz.addView(soVar2, layoutParams7);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(this);
        soVar3.setId(com.bytedance.sdk.openadsdk.utils.eZI.Qu);
        soVar3.setClickable(true);
        soVar3.setMaxLines(1);
        soVar3.setEllipsize(truncateAt);
        soVar3.setFocusable(true);
        soVar3.setGravity(17);
        soVar3.setText(com.bytedance.sdk.component.utils.cY.oJ(this, "tt_video_mobile_go_detail"));
        soVar3.setTextColor(-1);
        soVar3.setTextSize(2, 14.0f);
        soVar3.setPadding(cdg.ZYk(this, 2.0f), cdg.ZYk(this, 2.0f), cdg.ZYk(this, 2.0f), cdg.ZYk(this, 2.0f));
        soVar3.setBackground(dLZ.oJ(this, "tt_ad_cover_btn_begin_bg"));
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(cdg.ZYk(this, 90.0f), cdg.ZYk(this, 36.0f));
        layoutParams8.addRule(11);
        layoutParams8.addRule(15);
        layoutParams8.rightMargin = cdg.ZYk(this, 5.0f);
        cfz.addView(soVar3, layoutParams8);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this);
        pfn.addView(tBVar3, new LinearLayout.LayoutParams(-1, -1));
        View baVar = new com.bytedance.sdk.component.jFA.ba(this);
        baVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.nQI);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams9.topMargin = cdg.ZYk(this, 2.0f);
        tBVar3.addView(baVar, layoutParams9);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz2 = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(this);
        cfz2.setId(com.bytedance.sdk.openadsdk.utils.eZI.bgF);
        cfz2.setBackgroundColor(Color.parseColor("#F8F8F8"));
        tBVar3.addView(cfz2, new FrameLayout.LayoutParams(-1, -1));
        View btz = new BTZ(this);
        btz.setId(com.bytedance.sdk.openadsdk.utils.eZI.Yg);
        cfz2.addView(btz, new RelativeLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(this);
        pfn3.setId(com.bytedance.sdk.openadsdk.utils.eZI.XAo);
        pfn3.setOrientation(1);
        pfn3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(13);
        cfz2.addView(pfn3, layoutParams10);
        com.bytedance.sdk.openadsdk.core.widget.si siVar = new com.bytedance.sdk.openadsdk.core.widget.si(this);
        siVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.lY);
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(cdg.ZYk(this, 80.0f), cdg.ZYk(this, 80.0f));
        layoutParams11.gravity = 17;
        pfn3.addView(siVar, layoutParams11);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.so(this);
        soVar4.setId(com.bytedance.sdk.openadsdk.utils.eZI.mwH);
        soVar4.setTextColor(Color.parseColor("#161823"));
        soVar4.setTextSize(0, cdg.ZYk(this, 24.0f));
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams12.gravity = 17;
        layoutParams12.topMargin = cdg.ZYk(this, 12.0f);
        pfn3.addView(soVar4, layoutParams12);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar5 = new com.bytedance.sdk.openadsdk.core.Pfn.so(this);
        soVar5.setId(com.bytedance.sdk.openadsdk.utils.eZI.oTd);
        soVar5.setTextColor(Color.parseColor("#80161823"));
        soVar5.setTextSize(0, cdg.ZYk(this, 16.0f));
        soVar5.setTextAlignment(4);
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams13.gravity = 17;
        int ZYk2 = cdg.ZYk(this, 60.0f);
        layoutParams13.rightMargin = ZYk2;
        layoutParams13.leftMargin = ZYk2;
        layoutParams13.topMargin = cdg.ZYk(this, 8.0f);
        pfn3.addView(soVar5, layoutParams13);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar6 = new com.bytedance.sdk.openadsdk.core.Pfn.so(this);
        soVar6.setId(com.bytedance.sdk.openadsdk.utils.eZI.LS);
        soVar6.setGravity(17);
        soVar6.setTextColor(-1);
        soVar6.setText(com.bytedance.sdk.component.utils.cY.oJ(this, "tt_video_mobile_go_detail"));
        soVar6.setBackground(dLZ.oJ(this, "tt_reward_video_download_btn_bg"));
        LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(cdg.ZYk(this, 255.0f), cdg.ZYk(this, 44.0f));
        layoutParams14.gravity = 17;
        layoutParams14.topMargin = cdg.ZYk(this, 32.0f);
        pfn3.addView(soVar6, layoutParams14);
        PAGLogoView pAGLogoView = new PAGLogoView(this);
        this.jXJ = pAGLogoView;
        pAGLogoView.setId(com.bytedance.sdk.openadsdk.utils.eZI.NO);
        this.jXJ.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, cdg.ZYk(this, 14.0f));
        layoutParams15.addRule(12);
        layoutParams15.leftMargin = cdg.ZYk(this, 18.0f);
        layoutParams15.bottomMargin = cdg.ZYk(this, 61.0f);
        cfz2.addView(this.jXJ, layoutParams15);
        View wcQ2 = new com.bytedance.sdk.openadsdk.common.WcQ(this, new WcQ.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.10
            @Override // com.bytedance.sdk.openadsdk.common.WcQ.oJ
            public View oJ(Context context) {
                return new com.bytedance.sdk.openadsdk.common.cFZ(context);
            }
        });
        wcQ2.setId(com.bytedance.sdk.openadsdk.utils.eZI.jB);
        FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(-1, cdg.ZYk(this, 48.0f));
        layoutParams16.gravity = 81;
        tBVar3.addView(wcQ2, layoutParams16);
        View wcQ3 = new com.bytedance.sdk.openadsdk.common.WcQ(this, new WcQ.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.11
            @Override // com.bytedance.sdk.openadsdk.common.WcQ.oJ
            public View oJ(Context context) {
                return new com.bytedance.sdk.openadsdk.common.so(context);
            }
        });
        wcQ3.setId(com.bytedance.sdk.openadsdk.utils.eZI.yz);
        FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, cdg.ZYk(this, 44.0f));
        layoutParams17.gravity = 80;
        tBVar3.addView(wcQ3, layoutParams17);
        return pfn;
    }
}
