package com.bytedance.sdk.openadsdk.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.si;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.ofl;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes3.dex */
public class TTWebsiteActivity extends TTBaseActivity {
    private si ZYk;
    private String oJ = null;
    private WebView tB;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String ex;
        String str;
        String str2;
        cY cYVar;
        String str3;
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.core.si.ZYk(getApplicationContext());
        if (!WcQ.Pfn()) {
            finish();
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            str3 = getIntent().getStringExtra("_extra_meta");
            String stringExtra = getIntent().getStringExtra("_extra_glo_d");
            String stringExtra2 = getIntent().getStringExtra("_privacy_url");
            ex = getIntent().getStringExtra("_privacy_title");
            str = stringExtra2;
            str2 = stringExtra;
            cYVar = null;
        } else {
            cY oJ = IUZ.oJ().oJ(IUZ.oJ(getIntent()));
            if (oJ == null) {
                finish();
                return;
            }
            String cY = oJ.cY();
            String tB = oJ.crS().tB();
            ex = oJ.crS().ex();
            str = tB;
            str2 = cY;
            cYVar = oJ;
            str3 = null;
        }
        if (TextUtils.isEmpty(str)) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(this);
        if (Build.VERSION.SDK_INT >= 35) {
            pfn.setFitsSystemWindows(true);
        }
        pfn.setBackgroundColor(-1);
        pfn.setId(520093726);
        pfn.setOrientation(1);
        pfn.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        try {
            setContentView(pfn);
            int ZYk = cdg.ZYk(this, 5.0f);
            int ZYk2 = cdg.ZYk(this, 8.0f);
            int ZYk3 = cdg.ZYk(this, 10.0f);
            int ZYk4 = cdg.ZYk(this, 12.0f);
            int ZYk5 = cdg.ZYk(this, 14.0f);
            int ZYk6 = cdg.ZYk(this, 20.0f);
            int ZYk7 = cdg.ZYk(this, 24.0f);
            int ZYk8 = cdg.ZYk(this, 40.0f);
            int ZYk9 = cdg.ZYk(this, 44.0f);
            String str4 = str2;
            int ZYk10 = cdg.ZYk(this, 191.0f);
            String str5 = str;
            com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(this);
            final String str6 = str3;
            cfz.setGravity(15);
            final cY cYVar2 = cYVar;
            cfz.setLayoutParams(new LinearLayout.LayoutParams(-1, ZYk9));
            com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this);
            exVar.setId(520093720);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ZYk8, ZYk9);
            layoutParams.setMarginStart(ZYk2);
            exVar.setLayoutParams(layoutParams);
            exVar.setClickable(true);
            exVar.setFocusable(true);
            exVar.setPadding(ZYk5, ZYk4, ZYk5, ZYk4);
            exVar.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this, "tt_ad_arrow_backward"));
            final com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this);
            String str7 = ex;
            exVar2.setId(520093716);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ZYk8, ZYk9);
            layoutParams2.addRule(17, 520093720);
            exVar2.setLayoutParams(layoutParams2);
            exVar2.setClickable(true);
            exVar2.setFocusable(true);
            exVar2.setPadding(ZYk4, ZYk5, ZYk4, ZYk5);
            exVar2.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this, "tt_ad_xmark"));
            com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(this);
            soVar.setId(eZI.SWT);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ZYk10, ZYk7);
            layoutParams3.setMarginStart(ZYk);
            layoutParams3.addRule(15);
            layoutParams3.addRule(16, 520093741);
            layoutParams3.addRule(17, 520093716);
            soVar.setLayoutParams(layoutParams3);
            soVar.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            soVar.setGravity(17);
            soVar.setSingleLine(true);
            soVar.setTextColor(Color.parseColor("#222222"));
            soVar.setTextSize(17.0f);
            com.bytedance.sdk.openadsdk.core.Pfn.ex exVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this);
            exVar3.setId(520093741);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(ZYk8, ZYk9);
            layoutParams4.addRule(16, 520093742);
            exVar3.setLayoutParams(layoutParams4);
            exVar3.setPadding(ZYk3, ZYk4, ZYk3, ZYk4);
            exVar3.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this, "tt_ad_link"));
            com.bytedance.sdk.openadsdk.core.Pfn.ex exVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(this);
            exVar4.setId(520093742);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(ZYk8, ZYk9);
            layoutParams5.addRule(21);
            layoutParams5.setMarginEnd(ZYk2);
            exVar4.setLayoutParams(layoutParams5);
            exVar4.setPadding(ZYk4, ZYk6, ZYk4, ZYk6);
            exVar4.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this, "tt_ad_threedots"));
            final com.bytedance.sdk.openadsdk.core.Pfn.ba baVar = new com.bytedance.sdk.openadsdk.core.Pfn.ba(this, null, 16973855);
            baVar.setId(520093743);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(this, 2.0f));
            layoutParams6.addRule(12);
            baVar.setLayoutParams(layoutParams6);
            baVar.setProgress(1);
            baVar.setProgressDrawable(dLZ.oJ(this, "tt_privacy_progress_style"));
            View view = new View(this);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(this, 1.0f));
            layoutParams7.addRule(12);
            view.setLayoutParams(layoutParams7);
            cfz.addView(exVar);
            cfz.addView(exVar2);
            cfz.addView(soVar);
            cfz.addView(exVar3);
            cfz.addView(exVar4);
            cfz.addView(baVar);
            cfz.addView(view);
            pfn.addView(cfz);
            try {
                WebView webView = new WebView(getApplicationContext());
                this.tB = webView;
                webView.setBackgroundColor(-1);
                pfn.addView(this.tB, new ViewGroup.LayoutParams(-1, -1));
                exVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TTWebsiteActivity.this.tB.canGoBack()) {
                            TTWebsiteActivity.this.tB.goBack();
                        } else {
                            TTWebsiteActivity.this.finish();
                        }
                    }
                });
                exVar2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.this.finish();
                    }
                });
                exVar2.setVisibility(4);
                exVar2.setClickable(false);
                if (!TextUtils.isEmpty(str7)) {
                    soVar.setText(str7);
                }
                exVar3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                        String url = TTWebsiteActivity.this.tB.getUrl();
                        if (!TextUtils.isEmpty(url)) {
                            intent.setData(Uri.parse(url));
                            com.bytedance.sdk.component.utils.ZYk.oJ(TTWebsiteActivity.this, intent, null);
                        }
                    }
                });
                exVar4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TTWebsiteActivity.this.ZYk == null) {
                            TTWebsiteActivity.this.ZYk = new si(TTWebsiteActivity.this);
                            TTWebsiteActivity.this.ZYk.oJ(str6, cYVar2);
                            TTWebsiteActivity.this.ZYk.setCanceledOnTouchOutside(false);
                        }
                        TTWebsiteActivity.this.ZYk.show();
                    }
                });
                this.oJ = str5;
                if (!TextUtils.isEmpty(str4)) {
                    String encode = URLEncoder.encode(str4);
                    if (this.oJ.contains("?")) {
                        this.oJ += "&gdid_encrypted=" + encode;
                    } else {
                        this.oJ += "?gdid_encrypted=" + encode;
                    }
                }
                if (this.oJ != null) {
                    WebSettings settings = this.tB.getSettings();
                    settings.setMixedContentMode(0);
                    try {
                        settings.setJavaScriptEnabled(true);
                        settings.setDomStorageEnabled(true);
                        settings.setSavePassword(false);
                        settings.setAllowFileAccess(false);
                    } catch (Throwable unused) {
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put("Referer", TTAdConstant.REQUEST_HEAD_REFERER);
                    try {
                        this.tB.loadUrl(this.oJ, hashMap);
                    } catch (Throwable unused2) {
                        this.tB.loadUrl(this.oJ);
                    }
                    this.tB.setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.5
                        @Override // android.webkit.WebChromeClient
                        public void onProgressChanged(WebView webView2, int i10) {
                            super.onProgressChanged(webView2, i10);
                            if (baVar != null && !TTWebsiteActivity.this.isFinishing()) {
                                if (i10 == 100) {
                                    baVar.setVisibility(8);
                                    if (webView2.canGoBack()) {
                                        exVar2.setVisibility(0);
                                        exVar2.setClickable(true);
                                        return;
                                    }
                                    exVar2.setVisibility(4);
                                    exVar2.setClickable(false);
                                    return;
                                }
                                baVar.setVisibility(0);
                                baVar.setProgress(i10);
                            }
                        }
                    });
                    this.tB.setWebViewClient(new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.6
                        @Override // android.webkit.WebViewClient
                        public void onPageFinished(WebView webView2, String str8) {
                            super.onPageFinished(webView2, str8);
                        }

                        @Override // android.webkit.WebViewClient
                        @RequiresApi(api = 23)
                        public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                            super.onReceivedError(webView2, webResourceRequest, webResourceError);
                            webResourceError.getErrorCode();
                        }

                        @Override // android.webkit.WebViewClient
                        public void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                            super.onReceivedHttpError(webView2, webResourceRequest, webResourceResponse);
                            Objects.toString(webResourceResponse);
                        }

                        @Override // android.webkit.WebViewClient
                        public boolean shouldOverrideUrlLoading(WebView webView2, String str8) {
                            try {
                                Uri parse = Uri.parse(str8);
                                if (!Ry.oJ(str8)) {
                                    try {
                                        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                                        intent.setData(parse);
                                        intent.addFlags(268435456);
                                        com.bytedance.sdk.component.utils.ZYk.oJ(TTWebsiteActivity.this, intent, null);
                                        return true;
                                    } catch (Throwable unused3) {
                                        return true;
                                    }
                                }
                            } catch (Throwable unused4) {
                            }
                            return super.shouldOverrideUrlLoading(webView2, str8);
                        }

                        @Override // android.webkit.WebViewClient
                        public void onReceivedError(WebView webView2, int i10, String str8, String str9) {
                            super.onReceivedError(webView2, i10, str8, str9);
                        }
                    });
                    com.bytedance.sdk.openadsdk.core.widget.oJ.tB.ZYk(this.tB);
                    return;
                }
                finish();
            } catch (Exception e10) {
                QSm.oJ("TTAD.TTWebsiteActivity", "onCreate: ", e10);
                finish();
            }
        } catch (Throwable unused3) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        ofl.oJ(this.tB);
        super.onDestroy();
    }

    public static void oJ(Context context, cY cYVar, String str) {
        if (context == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, str, "open_policy");
        if (TextUtils.isEmpty(cYVar.crS().tB())) {
            return;
        }
        Intent intent = new Intent(context, TTWebsiteActivity.class);
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            intent.putExtra("_extra_meta", cYVar.Efd().toString());
            intent.putExtra("_extra_glo_d", cYVar.cY());
            intent.putExtra("_privacy_url", cYVar.crS().tB());
            intent.putExtra("_privacy_title", cYVar.crS().ex());
        } else {
            intent.putExtra("meta_index", IUZ.oJ().oJ(cYVar));
        }
        com.bytedance.sdk.component.utils.ZYk.oJ(context, intent, null);
    }
}
