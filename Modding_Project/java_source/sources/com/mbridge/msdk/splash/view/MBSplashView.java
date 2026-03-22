package com.mbridge.msdk.splash.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.bytedance.vodsetting.FetcherListener;
import com.google.android.gms.ads.AdError;
import com.mbridge.msdk.dycreator.listener.DyCountDownListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.c0;
import com.mbridge.msdk.foundation.tools.e1;
import com.mbridge.msdk.foundation.tools.g;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBSplashView extends RelativeLayout {

    /* renamed from: u  reason: collision with root package name */
    private static String f29390u = "MBSplashView";

    /* renamed from: a  reason: collision with root package name */
    private int f29391a;

    /* renamed from: b  reason: collision with root package name */
    private MBSplashWebview f29392b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.splash.view.a f29393c;

    /* renamed from: d  reason: collision with root package name */
    private ViewGroup f29394d;

    /* renamed from: e  reason: collision with root package name */
    private View f29395e;

    /* renamed from: f  reason: collision with root package name */
    private View f29396f;

    /* renamed from: g  reason: collision with root package name */
    private int f29397g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f29398h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f29399i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f29400j;

    /* renamed from: k  reason: collision with root package name */
    private ViewGroup f29401k;

    /* renamed from: l  reason: collision with root package name */
    private View f29402l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29403m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f29404n;

    /* renamed from: o  reason: collision with root package name */
    private RelativeLayout.LayoutParams f29405o;

    /* renamed from: p  reason: collision with root package name */
    private com.mbridge.msdk.splash.signal.b f29406p;

    /* renamed from: q  reason: collision with root package name */
    private DyCountDownListener f29407q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f29408r;

    /* renamed from: s  reason: collision with root package name */
    private View.OnTouchListener f29409s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f29410t;

    /* loaded from: classes6.dex */
    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return !MBSplashView.this.f29408r;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29412a;

        b(CampaignEx campaignEx) {
            this.f29412a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBSplashView.this.b(this.f29412a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p0.a(MBSplashView.f29390u, "webviewshow");
                int[] iArr = new int[2];
                MBSplashView.this.f29392b.getLocationOnScreen(iArr);
                String str = MBSplashView.f29390u;
                p0.b(str, "coordinate:" + iArr[0] + "--" + iArr[1]);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("startX", u0.b(com.mbridge.msdk.foundation.controller.c.m().d(), (float) iArr[0]));
                jSONObject.put("startY", u0.b(com.mbridge.msdk.foundation.controller.c.m().d(), (float) iArr[1]));
                String jSONObject2 = jSONObject.toString();
                int[] iArr2 = new int[2];
                MBSplashView.this.f29392b.getLocationInWindow(iArr2);
                MBSplashView.transInfoForMraid(MBSplashView.this.f29392b, iArr2[0], iArr2[1], MBSplashView.this.f29392b.getWidth(), MBSplashView.this.f29392b.getHeight());
                f.a().a((WebView) MBSplashView.this.f29392b, "webviewshow", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public MBSplashView(Context context) {
        this(context, null);
    }

    public static void transInfoForMraid(WebView webView, int i10, int i11, int i12, int i13) {
        String str;
        p0.b(f29390u, "transInfoForMraid");
        try {
            int i14 = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation;
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
            float n10 = l0.n(com.mbridge.msdk.foundation.controller.c.m().d());
            float m10 = l0.m(com.mbridge.msdk.foundation.controller.c.m().d());
            HashMap v10 = l0.v(com.mbridge.msdk.foundation.controller.c.m().d());
            int intValue = ((Integer) v10.get("width")).intValue();
            int intValue2 = ((Integer) v10.get("height")).intValue();
            HashMap hashMap = new HashMap();
            hashMap.put("placementType", "Interstitial");
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
            p0.b(f29390u, "transInfoForMraid", th2);
        }
    }

    public void changeCloseBtnState(int i10) {
        View view = this.f29395e;
        if (view != null) {
            if (i10 == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.f29400j = false;
        this.f29399i = false;
        this.f29398h = false;
    }

    public void destroy() {
        removeAllViews();
        ViewGroup viewGroup = this.f29401k;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        MBSplashWebview mBSplashWebview = this.f29392b;
        if (mBSplashWebview != null && !mBSplashWebview.isDestoryed()) {
            this.f29392b.finishAdSession();
            com.mbridge.msdk.splash.signal.c.a(this.f29392b, "onSystemDestory", "");
            this.f29392b.release();
            this.f29392b = null;
        }
    }

    public View.OnTouchListener getAllowClickSplashTouchListener() {
        return this.f29409s;
    }

    public View getCloseView() {
        return this.f29395e;
    }

    public ViewGroup getDevContainer() {
        return this.f29401k;
    }

    public View getIconVg() {
        return this.f29396f;
    }

    public View getSplashNativeView() {
        return this.f29402l;
    }

    public com.mbridge.msdk.splash.signal.b getSplashSignalCommunicationImpl() {
        return this.f29406p;
    }

    public MBSplashWebview getSplashWebview() {
        return this.f29392b;
    }

    public boolean isAttach() {
        return this.f29404n;
    }

    public boolean isDynamicView() {
        return this.f29403m;
    }

    public boolean isH5Ready() {
        return this.f29398h;
    }

    public boolean isImageReady() {
        return this.f29400j;
    }

    public boolean isVideoReady() {
        return this.f29399i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f29404n = true;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    public void onPause() {
        View view = this.f29402l;
        if (view != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).setIsPause(true);
        }
    }

    public void onResume() {
        View view = this.f29402l;
        if (view != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).setIsPause(false);
        }
    }

    public void resetLoadState() {
        this.f29399i = false;
        this.f29398h = false;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setAllowClickSplash(boolean z10) {
        this.f29408r = z10;
        setOnTouchListener(this.f29409s);
    }

    public void setCloseView(View view) {
        this.f29395e = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setDevContainer(ViewGroup viewGroup) {
        this.f29401k = viewGroup;
    }

    public void setDyCountDownListener(DyCountDownListener dyCountDownListener) {
        this.f29407q = dyCountDownListener;
    }

    public void setDynamicView(boolean z10) {
        this.f29403m = z10;
    }

    public void setH5Ready(boolean z10) {
        this.f29398h = z10;
    }

    public void setIconVg(View view, RelativeLayout.LayoutParams layoutParams) {
        this.f29396f = view;
        this.f29405o = layoutParams;
    }

    public void setImageReady(boolean z10) {
        this.f29400j = z10;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        View view = this.f29402l;
        if (view != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).setNotchPadding(i10, i11, i12, i13);
        }
        if (this.f29392b != null) {
            f.a().a((WebView) this.f29392b, "oncutoutfetched", Base64.encodeToString(c0.a(FetcherListener.ErrorOverRetryTimesCode, i10, i11, i12, i13).getBytes(), 0));
        }
    }

    public void setSplashNativeView(View view) {
        if (view != null) {
            this.f29402l = view;
        }
    }

    public void setSplashSignalCommunicationImpl(com.mbridge.msdk.splash.signal.b bVar) {
        this.f29406p = bVar;
        MBSplashWebview mBSplashWebview = this.f29392b;
        if (mBSplashWebview != null) {
            mBSplashWebview.setObject(bVar);
        }
    }

    public void setSplashWebView() {
        if (this.f29392b == null) {
            try {
                MBSplashWebview mBSplashWebview = new MBSplashWebview(getContext());
                this.f29392b = mBSplashWebview;
                com.mbridge.msdk.splash.signal.b bVar = this.f29406p;
                if (bVar != null) {
                    mBSplashWebview.setObject(bVar);
                }
                com.mbridge.msdk.splash.view.a aVar = this.f29393c;
                if (aVar != null) {
                    this.f29392b.setWebViewClient(aVar);
                    return;
                }
                com.mbridge.msdk.splash.view.a aVar2 = new com.mbridge.msdk.splash.view.a();
                this.f29393c = aVar2;
                this.f29392b.setWebViewClient(aVar2);
            } catch (Throwable th2) {
                p0.b(f29390u, th2.getMessage());
            }
        }
    }

    public void setVideoReady(boolean z10) {
        this.f29399i = z10;
    }

    public void show(CampaignEx campaignEx) {
        ViewGroup viewGroup;
        if (this.f29406p != null && (viewGroup = this.f29401k) != null && (viewGroup.getContext() instanceof Activity)) {
            this.f29406p.a(this.f29401k.getContext());
            com.mbridge.msdk.splash.view.a aVar = this.f29393c;
            if (aVar != null) {
                aVar.a(this.f29406p.a());
            }
        }
        a(campaignEx);
        clearResState();
    }

    public void updateCountdown(int i10) {
        DyCountDownListener dyCountDownListener;
        View view;
        if (this.f29392b != null && !this.f29403m) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("countdown", i10);
                f.a().a((WebView) this.f29392b, "updateCountdown", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        if (this.f29403m && (view = this.f29402l) != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).updateCountDown(i10);
        }
        if (this.f29403m && (dyCountDownListener = this.f29407q) != null) {
            dyCountDownListener.getCountDownValue(i10);
        }
    }

    public MBSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void b() {
        setBackgroundColor(0);
        this.f29391a = getResources().getConfiguration().orientation;
    }

    public MBSplashView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29408r = true;
        this.f29409s = new a();
        this.f29410t = true;
        b();
    }

    private void a(CampaignEx campaignEx) {
        View view;
        View view2;
        View view3;
        this.f29410t = true;
        if (this.f29396f == null) {
            if (this.f29403m && (view3 = this.f29402l) != null) {
                if (view3.getParent() != null) {
                    e1.a(this.f29402l);
                }
                addView(this.f29402l, new ViewGroup.LayoutParams(-1, -1));
            } else {
                MBSplashWebview mBSplashWebview = this.f29392b;
                if (mBSplashWebview != null && mBSplashWebview.getParent() == null) {
                    addView(this.f29392b, new ViewGroup.LayoutParams(-1, -1));
                }
                b(campaignEx);
            }
        } else {
            if (this.f29394d == null) {
                RelativeLayout relativeLayout = new RelativeLayout(getContext());
                this.f29394d = relativeLayout;
                relativeLayout.setId(2147482647);
            }
            if (this.f29391a == 2) {
                this.f29397g = u0.g(getContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(0, this.f29394d.getId());
                if (this.f29403m && (view2 = this.f29402l) != null) {
                    if (view2.getParent() != null) {
                        e1.a(this.f29402l);
                    }
                    addView(this.f29402l, layoutParams);
                } else {
                    MBSplashWebview mBSplashWebview2 = this.f29392b;
                    if (mBSplashWebview2 != null && mBSplashWebview2.getParent() == null) {
                        addView(this.f29392b, layoutParams);
                    }
                    b(campaignEx);
                }
                ViewGroup viewGroup = this.f29394d;
                if (viewGroup != null && viewGroup.getParent() == null) {
                    int i10 = this.f29405o.width;
                    e1.a(this.f29396f);
                    int i11 = this.f29397g / 4;
                    if (i10 > i11) {
                        this.f29394d.addView(this.f29396f, i11, -1);
                        i10 = i11;
                    } else {
                        this.f29394d.addView(this.f29396f, i10, -1);
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i10, -1);
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(13);
                    addView(this.f29394d, layoutParams2);
                }
            } else {
                this.f29397g = u0.f(getContext());
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(2, this.f29394d.getId());
                if (this.f29403m && (view = this.f29402l) != null) {
                    if (view.getParent() != null) {
                        e1.a(this.f29402l);
                    }
                    addView(this.f29402l, layoutParams3);
                } else {
                    MBSplashWebview mBSplashWebview3 = this.f29392b;
                    if (mBSplashWebview3 != null && mBSplashWebview3.getParent() == null) {
                        addView(this.f29392b, layoutParams3);
                    }
                    b(campaignEx);
                }
                ViewGroup viewGroup2 = this.f29394d;
                if (viewGroup2 != null && viewGroup2.getParent() == null) {
                    int i12 = this.f29405o.height;
                    int i13 = this.f29397g / 4;
                    if (i12 > i13) {
                        i12 = i13;
                    }
                    e1.a(this.f29396f);
                    this.f29394d.addView(this.f29396f, -1, i12);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, i12);
                    layoutParams4.addRule(12);
                    addView(this.f29394d, layoutParams4);
                }
            }
        }
        View view4 = this.f29395e;
        if (view4 != null) {
            if (view4.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(u0.a(getContext(), 100.0f), u0.a(getContext(), 30.0f));
                layoutParams5.addRule(10);
                layoutParams5.addRule(11);
                layoutParams5.rightMargin = u0.a(getContext(), 10.0f);
                layoutParams5.topMargin = u0.a(getContext(), 10.0f);
                addView(this.f29395e, layoutParams5);
                return;
            }
            bringChildToFront(this.f29395e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(CampaignEx campaignEx) {
        MBSplashWebview mBSplashWebview = this.f29392b;
        if (mBSplashWebview != null) {
            if (!(campaignEx != null ? g.b(campaignEx, null, mBSplashWebview, campaignEx.getImpReportType()) : true)) {
                if (this.f29410t) {
                    this.f29410t = false;
                    this.f29392b.postDelayed(new b(campaignEx), 200L);
                    return;
                }
                return;
            }
            this.f29392b.setObject(this.f29406p);
            this.f29392b.post(new c());
        }
    }
}
