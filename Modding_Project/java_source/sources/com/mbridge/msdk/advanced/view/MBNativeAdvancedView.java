package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdError;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.widget.MBAdChoice;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class MBNativeAdvancedView extends RelativeLayout {

    /* renamed from: i  reason: collision with root package name */
    private static String f25930i = "MBAdvancedNativeView";

    /* renamed from: a  reason: collision with root package name */
    private MBNativeAdvancedWebview f25931a;

    /* renamed from: b  reason: collision with root package name */
    private View f25932b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f25933c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f25934d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f25935e;

    /* renamed from: f  reason: collision with root package name */
    MBAdChoice f25936f;

    /* renamed from: g  reason: collision with root package name */
    private com.mbridge.msdk.advanced.signal.b f25937g;

    /* renamed from: h  reason: collision with root package name */
    private Context f25938h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p0.a(MBNativeAdvancedView.f25930i, "webviewshow");
                int[] iArr = new int[2];
                MBNativeAdvancedView.this.f25931a.getLocationOnScreen(iArr);
                String str = MBNativeAdvancedView.f25930i;
                p0.b(str, "coordinate:" + iArr[0] + "--" + iArr[1]);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("startX", u0.b(c.m().d(), (float) iArr[0]));
                jSONObject.put("startY", u0.b(c.m().d(), (float) iArr[1]));
                f.a().a((WebView) MBNativeAdvancedView.this.f25931a, "webviewshow", Base64.encodeToString(jSONObject.toString().toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public MBNativeAdvancedView(Context context) {
        this(context, null);
    }

    private void b() {
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25931a;
        if (mBNativeAdvancedWebview != null && mBNativeAdvancedWebview.getParent() == null) {
            addView(this.f25931a, new ViewGroup.LayoutParams(-1, -1));
        }
        c();
        View view = this.f25932b;
        if (view != null) {
            if (view.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 28.0f), u0.a(getContext(), 16.0f));
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.rightMargin = u0.a(getContext(), 2.0f);
                layoutParams.topMargin = u0.a(getContext(), 2.0f);
                addView(this.f25932b, layoutParams);
            } else {
                bringChildToFront(this.f25932b);
            }
        }
        if (this.f25936f == null) {
            MBAdChoice mBAdChoice = new MBAdChoice(getContext());
            this.f25936f = mBAdChoice;
            mBAdChoice.setFeedbackDialogEventListener(new a());
        }
    }

    private void c() {
        int[] iArr = new int[2];
        this.f25931a.getLocationInWindow(iArr);
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25931a;
        transInfoForMraid(mBNativeAdvancedWebview, iArr[0], iArr[1], mBNativeAdvancedWebview.getWidth(), this.f25931a.getHeight());
        MBNativeAdvancedWebview mBNativeAdvancedWebview2 = this.f25931a;
        if (mBNativeAdvancedWebview2 != null) {
            mBNativeAdvancedWebview2.setObject(this.f25937g);
            this.f25931a.post(new b());
        }
    }

    public static void transInfoForMraid(WebView webView, int i10, int i11, int i12, int i13) {
        String str;
        p0.b(f25930i, "transInfoForMraid");
        try {
            int i14 = c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i14 == 2) {
                str = "landscape";
            } else if (i14 == 1) {
                str = "portrait";
            } else {
                str = AdError.UNDEFINED_DOMAIN;
            }
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, str);
            jSONObject.put("locked", "true");
            float n10 = l0.n(c.m().d());
            float m10 = l0.m(c.m().d());
            HashMap v10 = l0.v(c.m().d());
            int intValue = ((Integer) v10.get("width")).intValue();
            int intValue2 = ((Integer) v10.get("height")).intValue();
            HashMap hashMap = new HashMap();
            hashMap.put("placementType", "inline");
            hashMap.put("state", DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
            hashMap.put("viewable", "true");
            hashMap.put("currentAppOrientation", jSONObject);
            float f10 = i10;
            float f11 = i11;
            float f12 = i12;
            float f13 = i13;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, n10, m10);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, intValue, intValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, hashMap);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView);
        } catch (Throwable th2) {
            p0.b(f25930i, "transInfoForMraid", th2);
        }
    }

    public void changeCloseBtnState(int i10) {
        View view = this.f25932b;
        if (view != null) {
            if (i10 == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.f25935e = false;
        this.f25934d = false;
        this.f25933c = false;
    }

    public void clearResStateAndRemoveClose() {
        clearResState();
        View view = this.f25932b;
        if (view != null && view.getParent() != null) {
            removeView(this.f25932b);
        }
        MBAdChoice mBAdChoice = this.f25936f;
        if (mBAdChoice != null && mBAdChoice.getParent() != null) {
            removeView(this.f25936f);
        }
    }

    public void destroy() {
        removeAllViews();
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25931a;
        if (mBNativeAdvancedWebview != null && !mBNativeAdvancedWebview.isDestoryed()) {
            this.f25931a.release();
            com.mbridge.msdk.advanced.signal.a.a(this.f25931a, "onSystemDestory", "");
        }
        if (this.f25938h != null) {
            this.f25938h = null;
        }
    }

    public com.mbridge.msdk.advanced.signal.b getAdvancedNativeSignalCommunicationImpl() {
        return this.f25937g;
    }

    public MBNativeAdvancedWebview getAdvancedNativeWebview() {
        return this.f25931a;
    }

    public View getCloseView() {
        return this.f25932b;
    }

    public boolean isEndCardReady() {
        return this.f25935e;
    }

    public boolean isH5Ready() {
        return this.f25933c;
    }

    public boolean isVideoReady() {
        return this.f25934d;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void resetLoadState() {
        this.f25935e = false;
        this.f25934d = false;
        this.f25933c = false;
    }

    public void setAdChoiceCampaign(CampaignEx campaignEx) {
        MBAdChoice mBAdChoice = this.f25936f;
        if (mBAdChoice != null) {
            mBAdChoice.setCampaign(campaignEx);
            if (this.f25936f.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(c.m().d(), 6.0f), u0.a(c.m().d(), 6.0f));
                layoutParams.addRule(11);
                layoutParams.addRule(12);
                addView(this.f25936f, layoutParams);
                return;
            }
            bringChildToFront(this.f25936f);
        }
    }

    public void setAdvancedNativeSignalCommunicationImpl(com.mbridge.msdk.advanced.signal.b bVar) {
        this.f25937g = bVar;
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25931a;
        if (mBNativeAdvancedWebview != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setAdvancedNativeWebview(MBNativeAdvancedWebview mBNativeAdvancedWebview) {
        this.f25931a = mBNativeAdvancedWebview;
        com.mbridge.msdk.advanced.signal.b bVar = this.f25937g;
        if (bVar != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setCloseView(View view) {
        this.f25932b = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setEndCardReady(boolean z10) {
        this.f25935e = z10;
    }

    public void setH5Ready(boolean z10) {
        this.f25933c = z10;
    }

    public void setVideoReady(boolean z10) {
        this.f25934d = z10;
    }

    public void show() {
        b();
        clearResState();
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25938h = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(MBNativeAdvancedView.f25930i, th2.getMessage(), th2);
                str = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(MBNativeAdvancedView.f25930i, th2.getMessage(), th2);
                str = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(MBNativeAdvancedView.f25930i, th2.getMessage(), th2);
                str2 = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }
}
