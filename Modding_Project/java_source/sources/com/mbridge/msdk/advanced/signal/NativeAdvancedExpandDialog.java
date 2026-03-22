package com.mbridge.msdk.advanced.signal;

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
/* loaded from: classes4.dex */
public class NativeAdvancedExpandDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private final String f25901a;

    /* renamed from: b  reason: collision with root package name */
    private String f25902b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f25903c;

    /* renamed from: d  reason: collision with root package name */
    private FrameLayout f25904d;

    /* renamed from: e  reason: collision with root package name */
    private WindVaneWebView f25905e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f25906f;

    /* renamed from: g  reason: collision with root package name */
    private String f25907g;

    /* renamed from: h  reason: collision with root package name */
    private List<CampaignEx> f25908h;

    /* renamed from: i  reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.a f25909i;

    /* renamed from: j  reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.b f25910j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NativeAdvancedExpandDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            NativeAdvancedExpandDialog.this.a();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            NativeAdvancedExpandDialog.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (NativeAdvancedExpandDialog.this.f25909i != null) {
                NativeAdvancedExpandDialog.this.f25909i.a(false);
            }
            NativeAdvancedExpandDialog.this.f25905e.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            NativeAdvancedExpandDialog.this.f25904d.removeView(NativeAdvancedExpandDialog.this.f25905e);
            NativeAdvancedExpandDialog.this.f25905e.release();
            NativeAdvancedExpandDialog.this.f25905e = null;
            NativeAdvancedExpandDialog.this.f25909i = null;
        }
    }

    public NativeAdvancedExpandDialog(Context context, Bundle bundle, com.mbridge.msdk.advanced.middle.a aVar) {
        super(context);
        this.f25901a = "NativeAdvancedExpandDialog";
        this.f25910j = new e();
        if (bundle != null) {
            this.f25902b = bundle.getString("url");
            this.f25903c = bundle.getBoolean("shouldUseCustomClose");
        }
        this.f25909i = aVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
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
        this.f25907g = str;
        this.f25908h = list;
    }

    private void b() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f25904d = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext().getApplicationContext());
        this.f25905e = windVaneWebView;
        windVaneWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f25904d.addView(this.f25905e);
        TextView textView = new TextView(getContext());
        this.f25906f = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = 8388661;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f25906f.setLayoutParams(layoutParams);
        this.f25906f.setVisibility(this.f25903c ? 4 : 0);
        this.f25906f.setOnClickListener(new a());
        this.f25904d.addView(this.f25906f);
        setContentView(this.f25904d);
        a();
        this.f25905e.setWebViewListener(new b());
        this.f25905e.setObject(this.f25910j);
        this.f25905e.loadUrl(this.f25902b);
        List<CampaignEx> list = this.f25908h;
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = this.f25908h.get(0);
            if (campaignEx != null) {
                a1.a(this.f25905e, campaignEx.getLocalRequestId(), campaignEx.getLocalAllowTrackClick());
            }
            if (campaignEx != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
                MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
                mBAdChoice.setCampaign(campaignEx);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
                layoutParams2.gravity = 85;
                layoutParams2.bottomMargin = layoutParams.topMargin;
                layoutParams2.rightMargin = layoutParams.rightMargin;
                mBAdChoice.setFeedbackDialogEventListener(new c());
                this.f25904d.addView(mBAdChoice, layoutParams2);
            }
        }
        BitmapDrawable a10 = com.mbridge.msdk.foundation.controller.c.m().a(this.f25907g, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL);
        if (a10 != null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            u0.a(imageView, a10, this.f25904d.getResources().getDisplayMetrics());
            this.f25904d.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
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
            hashMap.put("placementType", "inline");
            hashMap.put("state", "expanded");
            hashMap.put("viewable", "true");
            hashMap.put("currentAppOrientation", jSONObject);
            int[] iArr = new int[2];
            this.f25905e.getLocationInWindow(iArr);
            com.mbridge.msdk.mbsignalcommon.mraid.a a10 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f25905e;
            a10.b(windVaneWebView, iArr[0], iArr[1], windVaneWebView.getWidth(), this.f25905e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a a11 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f25905e;
            a11.a(windVaneWebView2, iArr[0], iArr[1], windVaneWebView2.getWidth(), this.f25905e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f25905e, l0.n(com.mbridge.msdk.foundation.controller.c.m().d()), l0.m(com.mbridge.msdk.foundation.controller.c.m().d()));
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f25905e, intValue, intValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f25905e, hashMap);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f25905e);
        } catch (Throwable th2) {
            p0.b("NativeAdvancedExpandDialog", "notifyMraid", th2);
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
    /* loaded from: classes4.dex */
    public class b extends com.mbridge.msdk.mbsignalcommon.listener.b {
        b() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            webView.evaluateJavascript(WebViewJsUtil.JS_URL_PREFIX + com.mbridge.msdk.setting.util.a.a().b(), new a());
            NativeAdvancedExpandDialog.this.c();
        }

        /* loaded from: classes4.dex */
        class a implements ValueCallback<String> {
            a() {
            }

            @Override // android.webkit.ValueCallback
            /* renamed from: a */
            public void onReceiveValue(String str) {
            }
        }
    }

    /* loaded from: classes4.dex */
    class e implements com.mbridge.msdk.mbsignalcommon.mraid.b {
        e() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void close() {
            NativeAdvancedExpandDialog.this.dismiss();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public CampaignEx getMraidCampaign() {
            return null;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void open(String str) {
            try {
                if (NativeAdvancedExpandDialog.this.f25905e != null && System.currentTimeMillis() - NativeAdvancedExpandDialog.this.f25905e.lastTouchTime > com.mbridge.msdk.click.utils.a.f26135d && com.mbridge.msdk.click.utils.a.a((CampaignEx) NativeAdvancedExpandDialog.this.f25908h.get(0), NativeAdvancedExpandDialog.this.f25905e.getUrl(), com.mbridge.msdk.click.utils.a.f26132a)) {
                    return;
                }
                p0.b("NativeAdvancedExpandDialog", str);
                if (NativeAdvancedExpandDialog.this.f25908h.size() > 1) {
                    com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str)));
                    str = null;
                }
                if (NativeAdvancedExpandDialog.this.f25909i != null) {
                    NativeAdvancedExpandDialog.this.f25909i.a(true, str);
                }
            } catch (Throwable th2) {
                p0.b("NativeAdvancedExpandDialog", MRAIDPresenter.OPEN, th2);
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
                TextView textView = NativeAdvancedExpandDialog.this.f25906f;
                if (z10) {
                    i10 = 4;
                } else {
                    i10 = 0;
                }
                textView.setVisibility(i10);
            } catch (Throwable th2) {
                p0.b("NativeAdvancedExpandDialog", "useCustomClose", th2);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
        public void expand(String str, boolean z10) {
        }
    }
}
