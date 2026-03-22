package com.mbridge.msdk.mbbanner.common.communication;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.applog.util.WebViewJsUtil;
import com.google.android.gms.ads.AdError;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.widget.MBAdChoice;
import com.ss.ttm.player.MediaPlayer;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class BannerExpandDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private final String f27712a;

    /* renamed from: b  reason: collision with root package name */
    private String f27713b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27714c;

    /* renamed from: d  reason: collision with root package name */
    private FrameLayout f27715d;

    /* renamed from: e  reason: collision with root package name */
    private WindVaneWebView f27716e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f27717f;

    /* renamed from: g  reason: collision with root package name */
    private String f27718g;

    /* renamed from: h  reason: collision with root package name */
    private List<CampaignEx> f27719h;

    /* renamed from: i  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.a f27720i;

    /* renamed from: j  reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.b f27721j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BannerExpandDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            BannerExpandDialog.this.a();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            BannerExpandDialog.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (BannerExpandDialog.this.f27720i != null) {
                BannerExpandDialog.this.f27720i.a(false);
            }
            BannerExpandDialog.this.f27716e.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            BannerExpandDialog.this.f27715d.removeView(BannerExpandDialog.this.f27716e);
            BannerExpandDialog.this.f27716e.release();
            BannerExpandDialog.this.f27716e = null;
            BannerExpandDialog.this.f27720i = null;
        }
    }

    public BannerExpandDialog(Context context, Bundle bundle, com.mbridge.msdk.mbbanner.common.listener.a aVar) {
        super(context);
        this.f27712a = "BannerExpandDialog";
        this.f27721j = new e();
        if (bundle != null) {
            this.f27713b = bundle.getString("url");
            this.f27714c = bundle.getBoolean("shouldUseCustomClose");
        }
        this.f27720i = aVar;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        b();
    }

    public void setCampaignList(String str, List<CampaignEx> list) {
        this.f27718g = str;
        this.f27719h = list;
    }

    private void b() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f27715d = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext().getApplicationContext());
        this.f27716e = windVaneWebView;
        windVaneWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f27715d.addView(this.f27716e);
        TextView textView = new TextView(getContext());
        this.f27717f = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = 8388661;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f27717f.setLayoutParams(layoutParams);
        this.f27717f.setVisibility(this.f27714c ? 4 : 0);
        this.f27717f.setOnClickListener(new a());
        BitmapDrawable a10 = com.mbridge.msdk.foundation.controller.c.m().a(this.f27718g, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL);
        if (a10 != null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            u0.a(imageView, a10, this.f27715d.getResources().getDisplayMetrics());
            this.f27715d.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        }
        this.f27715d.addView(this.f27717f);
        setContentView(this.f27715d);
        a();
        this.f27716e.setWebViewListener(new b());
        this.f27716e.setObject(this.f27721j);
        this.f27716e.loadUrl(this.f27713b);
        List<CampaignEx> list = this.f27719h;
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = this.f27719h.get(0);
            if (campaignEx != null) {
                a1.a(this.f27716e, campaignEx.getLocalRequestId(), campaignEx.getLocalAllowTrackClick());
            }
            if (campaignEx != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
                MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
                mBAdChoice.setCampaign(campaignEx);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
                layoutParams2.gravity = 85;
                layoutParams2.bottomMargin = layoutParams.topMargin;
                layoutParams2.rightMargin = layoutParams.rightMargin;
                mBAdChoice.setFeedbackDialogEventListener(new c());
                this.f27715d.addView(mBAdChoice, layoutParams2);
            }
        }
        setOnDismissListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        String str;
        try {
            int i10 = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i10 == 2) {
                str = "landscape";
            } else {
                str = i10 == 1 ? "portrait" : AdError.UNDEFINED_DOMAIN;
            }
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, str);
            jSONObject.put("locked", "true");
            HashMap v10 = l0.v(com.mbridge.msdk.foundation.controller.c.m().d());
            int intValue = ((Integer) v10.get("width")).intValue();
            int intValue2 = ((Integer) v10.get("height")).intValue();
            HashMap hashMap = new HashMap();
            hashMap.put("placementType", "Interstitial");
            hashMap.put("state", "expanded");
            hashMap.put("viewable", "true");
            hashMap.put("currentAppOrientation", jSONObject);
            int[] iArr = new int[2];
            this.f27716e.getLocationInWindow(iArr);
            com.mbridge.msdk.mbsignalcommon.mraid.a a10 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f27716e;
            a10.b(windVaneWebView, iArr[0], iArr[1], windVaneWebView.getWidth(), this.f27716e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a a11 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f27716e;
            a11.a(windVaneWebView2, iArr[0], iArr[1], windVaneWebView2.getWidth(), this.f27716e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f27716e, l0.n(com.mbridge.msdk.foundation.controller.c.m().d()), l0.m(com.mbridge.msdk.foundation.controller.c.m().d()));
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f27716e, intValue, intValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f27716e, hashMap);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f27716e);
        } catch (Throwable th2) {
            p0.b("BannerExpandDialog", "notifyMraid", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (getWindow() != null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            getWindow().setAttributes(attributes);
            getWindow().getDecorView().setSystemUiVisibility(4615);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends com.mbridge.msdk.mbsignalcommon.listener.b {
        b() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            webView.evaluateJavascript(WebViewJsUtil.JS_URL_PREFIX + com.mbridge.msdk.setting.util.a.a().b(), new a());
            BannerExpandDialog.this.c();
        }

        /* loaded from: classes5.dex */
        class a implements ValueCallback<String> {
            a() {
            }

            @Override // android.webkit.ValueCallback
            /* renamed from: a */
            public void onReceiveValue(String str) {
            }
        }
    }

    /* loaded from: classes5.dex */
    class e implements com.mbridge.msdk.mbsignalcommon.mraid.b {
        e() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void close() {
            BannerExpandDialog.this.dismiss();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public CampaignEx getMraidCampaign() {
            return null;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void open(String str) {
            try {
                if (BannerExpandDialog.this.f27716e != null && System.currentTimeMillis() - BannerExpandDialog.this.f27716e.lastTouchTime > com.mbridge.msdk.click.utils.a.f26135d && com.mbridge.msdk.click.utils.a.a((CampaignEx) BannerExpandDialog.this.f27719h.get(0), BannerExpandDialog.this.f27716e.getUrl(), com.mbridge.msdk.click.utils.a.f26132a)) {
                    return;
                }
                p0.b("BannerExpandDialog", str);
                if (BannerExpandDialog.this.f27719h.size() > 1) {
                    com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str)));
                    str = null;
                }
                if (BannerExpandDialog.this.f27720i != null) {
                    BannerExpandDialog.this.f27720i.a(true, str);
                }
            } catch (Throwable th2) {
                p0.b("BannerExpandDialog", MRAIDPresenter.OPEN, th2);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void unload() {
            close();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void useCustomClose(boolean z10) {
            int i10;
            try {
                TextView textView = BannerExpandDialog.this.f27717f;
                if (z10) {
                    i10 = 4;
                } else {
                    i10 = 0;
                }
                textView.setVisibility(i10);
            } catch (Throwable th2) {
                p0.b("BannerExpandDialog", "useCustomClose", th2);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void expand(String str, boolean z10) {
        }
    }
}
