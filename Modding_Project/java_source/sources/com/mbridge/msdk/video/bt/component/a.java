package com.mbridge.msdk.video.bt.component;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.vodsetting.FetcherListener;
import com.bytedance.vodsetting.Module;
import com.google.ads.mediation.vungle.VungleConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.c0;
import com.mbridge.msdk.foundation.tools.e1;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.bt.module.BTBaseView;
import com.mbridge.msdk.video.bt.module.MBTempContainer;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.bt.module.MBridgeBTLayout;
import com.mbridge.msdk.video.bt.module.MBridgeBTNativeEC;
import com.mbridge.msdk.video.bt.module.MBridgeBTVideoView;
import com.mbridge.msdk.video.bt.module.MBridgeBTWebView;
import com.mbridge.msdk.video.signal.impl.k;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BaseOperateViews.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentHashMap<String, LinkedHashMap<String, View>> f30470a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static LinkedHashMap<String, String> f30471b = new LinkedHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static LinkedHashMap<String, CampaignEx> f30472c = new LinkedHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static LinkedHashMap<String, com.mbridge.msdk.videocommon.setting.c> f30473d = new LinkedHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private static LinkedHashMap<String, String> f30474e = new LinkedHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private static LinkedHashMap<String, Integer> f30475f = new LinkedHashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private static LinkedHashMap<String, Activity> f30476g = new LinkedHashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private static volatile int f30477h = 10000;

    /* renamed from: i  reason: collision with root package name */
    private static int f30478i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static int f30479j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static String f30480k = "";

    /* renamed from: l  reason: collision with root package name */
    private static int f30481l;

    /* renamed from: m  reason: collision with root package name */
    private static int f30482m;

    /* renamed from: n  reason: collision with root package name */
    private static int f30483n;

    /* renamed from: o  reason: collision with root package name */
    private static int f30484o;

    /* renamed from: p  reason: collision with root package name */
    private static int f30485p;

    /* compiled from: BaseOperateViews.java */
    /* renamed from: com.mbridge.msdk.video.bt.component.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class RunnableC0438a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f30486a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30487b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Rect f30488c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f30489d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f30490e;

        RunnableC0438a(Object obj, String str, Rect rect, int i10, int i11) {
            this.f30486a = obj;
            this.f30487b = str;
            this.f30488c = rect;
            this.f30489d = i10;
            this.f30490e = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) this.f30486a).f28239b;
            if (windVaneWebView != null) {
                str = windVaneWebView.getRid();
            } else {
                str = "";
                windVaneWebView = null;
            }
            LinkedHashMap<String, View> b10 = a.this.b(this.f30487b, str);
            String b11 = a.this.b();
            a.f30471b.put(b11, str);
            MBridgeBTLayout mBridgeBTLayout = new MBridgeBTLayout(com.mbridge.msdk.foundation.controller.c.m().d());
            b10.put(b11, mBridgeBTLayout);
            mBridgeBTLayout.setInstanceId(b11);
            mBridgeBTLayout.setUnitId(this.f30487b);
            mBridgeBTLayout.setWebView(windVaneWebView);
            mBridgeBTLayout.setRect(this.f30488c);
            int i10 = this.f30489d;
            if (i10 > 0 || this.f30490e > 0) {
                mBridgeBTLayout.setLayout(i10, this.f30490e);
            }
            a.this.b(this.f30486a, b11);
            p0.a("OperateViews", "create view instanceId = " + b11);
        }
    }

    /* compiled from: BaseOperateViews.java */
    /* loaded from: classes6.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f30492a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30493b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f30494c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f30495d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f30496e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Rect f30497f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f30498g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ int f30499h;

        b(Object obj, String str, String str2, String str3, String str4, Rect rect, int i10, int i11) {
            this.f30492a = obj;
            this.f30493b = str;
            this.f30494c = str2;
            this.f30495d = str3;
            this.f30496e = str4;
            this.f30497f = rect;
            this.f30498g = i10;
            this.f30499h = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) this.f30492a).f28239b;
            if (windVaneWebView != null) {
                str = windVaneWebView.getRid();
            } else {
                str = "";
                windVaneWebView = null;
            }
            LinkedHashMap<String, View> b10 = a.this.b(this.f30493b, str);
            String b11 = a.this.b();
            a.f30471b.put(b11, str);
            MBridgeBTWebView mBridgeBTWebView = new MBridgeBTWebView(com.mbridge.msdk.foundation.controller.c.m().d());
            b10.put(b11, mBridgeBTWebView);
            mBridgeBTWebView.setInstanceId(b11);
            mBridgeBTWebView.setUnitId(this.f30493b);
            mBridgeBTWebView.setFileURL(this.f30494c);
            mBridgeBTWebView.setFilePath(this.f30495d);
            mBridgeBTWebView.setHtml(this.f30496e);
            mBridgeBTWebView.setRect(this.f30497f);
            mBridgeBTWebView.setWebViewRid(str);
            mBridgeBTWebView.setCreateWebView(windVaneWebView);
            int i10 = this.f30498g;
            if (i10 > 0 || this.f30499h > 0) {
                mBridgeBTWebView.setLayout(i10, this.f30499h);
            }
            mBridgeBTWebView.preload();
            a.this.b(this.f30492a, b11);
            p0.a("OperateViews", "createWebview instanceId = " + b11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseOperateViews.java */
    /* loaded from: classes6.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f30501a;

        c(CampaignEx campaignEx) {
            this.f30501a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a10 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (a10 != null) {
                    if (!a10.a(this.f30501a.getId())) {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(this.f30501a.getId());
                        gVar.b(this.f30501a.getFca());
                        gVar.c(this.f30501a.getFcb());
                        gVar.a(0);
                        gVar.d(1);
                        gVar.a(System.currentTimeMillis());
                        a10.b(gVar);
                    } else {
                        a10.b(this.f30501a.getId());
                    }
                }
                a.this.a(this.f30501a.getCampaignUnitId(), this.f30501a);
            } catch (Throwable th2) {
                p0.b("OperateViews", th2.getMessage(), th2);
            }
        }
    }

    public void A(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTVideoView) {
                    if (((MBridgeBTVideoView) view).playUnMute()) {
                        b(obj, optString2);
                        a(obj, "onUnmute", optString2);
                        p0.a("OperateViews", "playerUnmute successed");
                        return;
                    }
                    b(obj, "set unmute failed");
                    p0.a("OperateViews", "playerUnmute failed: set unmute failed");
                    return;
                }
                a(obj, "instanceId is not player");
                p0.a("OperateViews", "playerUnmute failed: instanceId is not player");
                return;
            }
            a(obj, "instanceId not exit");
            p0.a("OperateViews", "playerUnmute failed: instanceId not exit");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "playerUnmute failed: " + th2.getMessage());
        }
    }

    public void B(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
            }
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    public void C(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBTempContainer) {
                    ((MBTempContainer) view).preload();
                    b(obj, optString2);
                    return;
                }
                a(obj, "view not exist");
                return;
            }
            a(obj, "instanceId not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "preloadSubPlayTemplateView failed: " + th2.getMessage());
        }
    }

    public void D(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null && view.getParent() != null) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(view);
                        b(obj, optString2);
                        a(obj, "onRemoveFromView", optString2);
                        p0.a("OperateViews", "removeFromSuperView instanceId = " + optString2);
                        return;
                    }
                    a(obj, "parent is null");
                    p0.a("OperateViews", "removeFromSuperView failed: parent is null instanceId = " + optString2);
                    return;
                }
                a(obj, "view is null");
                p0.a("OperateViews", "removeFromSuperView failed: view is null instanceId = " + optString2);
                return;
            }
            a(obj, "params not enough");
            p0.a("OperateViews", "removeFromSuperView failed: params not enough instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "removeFromSuperView failed: " + th2.getMessage());
        }
    }

    public void E(Object obj, JSONObject jSONObject) {
        String str;
        com.mbridge.msdk.videocommon.entity.c cVar;
        try {
            WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
            String str2 = "";
            if (windVaneWebView == null) {
                str = "";
            } else {
                str = windVaneWebView.getRid();
            }
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            String optString3 = optJSONObject.optString(VungleConstants.KEY_USER_ID);
            boolean optBoolean = optJSONObject.optBoolean("expired");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject(AdmobPreloadConfig.REWARD);
            String optString4 = optJSONObject.optString(GearStrategyConsts.EV_EXTRA_INFO);
            if (optJSONObject2 != null) {
                com.mbridge.msdk.videocommon.entity.c cVar2 = new com.mbridge.msdk.videocommon.entity.c(optJSONObject2.optString("name"), optJSONObject2.optInt("amount"));
                str2 = optJSONObject2.optString("id");
                cVar = cVar2;
            } else {
                cVar = null;
            }
            LinkedHashMap<String, View> b10 = b(optString, str);
            if (b10.size() > 0 && f30474e.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBTempContainer) {
                    MBTempContainer mBTempContainer = (MBTempContainer) view;
                    mBTempContainer.setReward(cVar);
                    mBTempContainer.setUserId(optString3);
                    mBTempContainer.setRewardId(str2);
                    mBTempContainer.setCampaignExpired(optBoolean);
                    if (!TextUtils.isEmpty(optString4)) {
                        mBTempContainer.setDeveloperExtraData(optString4);
                    }
                    b(obj, optString2);
                    p0.a("OperateViews", "setSubPlayTemplateInfo success instanceId = " + optString2);
                    return;
                }
                a(obj, "instanceId not exist");
                p0.a("OperateViews", "setSubPlayTemplateInfo failed: instanceId not exist instanceId = " + optString2);
                return;
            }
            a(obj, "unitId not exist");
            p0.a("OperateViews", "setSubPlayTemplateInfo failed: unitId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "setSubPlayTemplateInfo failed: " + th2.getMessage());
        }
    }

    public void F(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            double optDouble = optJSONObject.optDouble("alpha", 1.0d);
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null) {
                    view.setAlpha((float) optDouble);
                    b(obj, optString2);
                    a(obj, "onViewAlphaChanged", optString2);
                    p0.a("OperateViews", "setViewAlpha instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "setViewAlpha failed: view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "setViewAlpha failed: instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "setViewAlpha failed: " + th2.getMessage());
        }
    }

    public void G(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            String optString3 = optJSONObject.optString("color");
            if (TextUtils.isEmpty(optString3)) {
                a(obj, "color is not exist");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null) {
                    b(obj, optString2);
                    view.setBackgroundColor(Color.parseColor(optString3));
                    a(obj, "onViewBgColorChanged", optString2);
                    p0.a("OperateViews", "setViewBgColor instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "setViewBgColor failed: view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "setViewBgColor failed: instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "setViewBgColor failed: " + th2.getMessage());
        }
    }

    public void H(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
            if (optJSONObject2 == null) {
                a(obj, "rect not exist");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            Rect rect = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
            int optInt = optJSONObject2.optInt("width");
            int optInt2 = optJSONObject2.optInt("height");
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null) {
                    if (view.getParent() != null) {
                        view.setLayoutParams(a(view.getLayoutParams(), rect, optInt, optInt2));
                        view.requestLayout();
                    } else {
                        if (view instanceof MBridgeBTWebView) {
                            ((MBridgeBTWebView) view).setRect(rect);
                            ((MBridgeBTWebView) view).setLayout(optInt, optInt2);
                        }
                        if (view instanceof MBridgeBTVideoView) {
                            ((MBridgeBTVideoView) view).setRect(rect);
                            ((MBridgeBTVideoView) view).setLayout(optInt, optInt2);
                        }
                    }
                    b(obj, optString2);
                    a(obj, "onViewRectChanged", optString2);
                    p0.a("OperateViews", "setViewRect instanceId = " + optString2);
                    return;
                }
                a(obj, "view is null");
                p0.a("OperateViews", "setViewRect failed: view is null");
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "setViewRect failed: instanceId not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "setViewRect failed: " + th2.getMessage());
        }
    }

    public void I(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            double optDouble = optJSONObject.optDouble("vertical", 1.0d);
            double optDouble2 = optJSONObject.optDouble("horizon", 1.0d);
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null) {
                    view.setScaleX((float) optDouble2);
                    view.setScaleY((float) optDouble);
                    b(obj, optString2);
                    a(obj, "onViewScaleChanged", optString2);
                    p0.a("OperateViews", "setViewScale instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "setViewScale failed: view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "setViewScale failed: instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "setViewScale failed: " + th2.getMessage());
        }
    }

    public void J(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null) {
                    view.setVisibility(0);
                    b(obj, optString2);
                    a(obj, "onShowView", optString2);
                    p0.a("OperateViews", "showView instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "showView failed: view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "showView failed: instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "showView failed: " + th2.getMessage());
        }
    }

    public void K(Object obj, JSONObject jSONObject) {
        try {
            String str = "";
            WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
            if (windVaneWebView != null) {
                str = windVaneWebView.getRid();
            }
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            String optString3 = optJSONObject.optString(CallAppDataKey.KEY_TRACKING_EVENT_NAME);
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("eventData");
            if (optJSONObject2 == null) {
                optJSONObject2 = new JSONObject();
            }
            LinkedHashMap<String, View> b10 = b(optString, str);
            if (b10.size() > 0) {
                View view = b10.get(optString2);
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    int childCount = viewGroup.getChildCount();
                    for (int i10 = 0; i10 < childCount; i10++) {
                        View childAt = viewGroup.getChildAt(i10);
                        if (childAt instanceof WindVaneWebView) {
                            f.a().a((WebView) ((WindVaneWebView) childAt), optString3, Base64.encodeToString(optJSONObject2.toString().getBytes(), 2));
                            b(obj, optString2);
                            p0.a("OperateViews", "webviewFireEvent instanceId = " + optString2);
                            return;
                        }
                    }
                }
                a(obj, "instanceId not exist");
                p0.a("OperateViews", "webviewFireEvent failed: instanceId not exist instanceId = " + optString2);
                return;
            }
            a(obj, "unitId not exist");
            p0.a("OperateViews", "webviewFireEvent failed: unitId not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "webviewFireEvent failed: " + th2.getMessage());
        }
    }

    public void L(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTWebView) {
                    if (((MBridgeBTWebView) view).webviewGoBack()) {
                        b(obj, optString2);
                        p0.a("OperateViews", "webviewGoBack instanceId = " + optString2);
                        return;
                    }
                    a(obj, "webviewGoBack failed");
                    p0.a("OperateViews", "webviewGoBack failed instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "webviewGoBack failed view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "webviewGoBack failed instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "webviewGoBack failed: " + th2.getMessage());
        }
    }

    public void M(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTWebView) {
                    if (((MBridgeBTWebView) view).webviewGoForward()) {
                        b(obj, optString2);
                        p0.a("OperateViews", "webviewGoForward instanceId = " + optString2);
                        return;
                    }
                    a(obj, "webviewGoForward failed");
                    p0.a("OperateViews", "webviewGoForward failed instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "webviewGoForward failed view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "webviewGoForward failed instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "webviewGoForward failed: " + th2.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    public void N(Object obj, JSONObject jSONObject) {
        String str;
        Object obj2;
        String str2;
        int optInt;
        Object obj3;
        int i10;
        WindVaneWebView windVaneWebView;
        Object obj4 = obj;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj4).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj4, "data is empty");
                return;
            }
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("content");
            if (optJSONObject2 == null) {
                a(obj4, "content is empty");
                return;
            }
            String optString3 = optJSONObject2.optString("fileURL");
            String optString4 = optJSONObject2.optString("filePath");
            String optString5 = optJSONObject2.optString("html");
            if (TextUtils.isEmpty(optString3) && TextUtils.isEmpty(optString4) && TextUtils.isEmpty(optString5)) {
                a(obj4, "url is empty");
                return;
            }
            JSONArray optJSONArray = optJSONObject2.optJSONArray("campaigns");
            ArrayList arrayList = new ArrayList();
            if (optJSONArray != null && optJSONArray.length() > 0) {
                int length = optJSONArray.length();
                int i11 = 0;
                while (i11 < length) {
                    JSONArray jSONArray = optJSONArray;
                    CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONArray.getJSONObject(i11));
                    if (parseCampaignWithBackData != null) {
                        parseCampaignWithBackData.setCampaignUnitId(optString);
                        arrayList.add(parseCampaignWithBackData);
                    }
                    i11++;
                    optJSONArray = jSONArray;
                }
            }
            String optString6 = optJSONObject2.optString("unitId");
            com.mbridge.msdk.videocommon.setting.c a10 = com.mbridge.msdk.videocommon.setting.c.a(optJSONObject2.optJSONObject("unitSetting"));
            if (a10 != null) {
                a10.h(optString6);
            }
            JSONObject optJSONObject3 = jSONObject.optJSONObject("rect");
            Rect rect = new Rect(FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode);
            if (optJSONObject3 != null) {
                try {
                    str2 = "OperateViews";
                } catch (Throwable th2) {
                    th = th2;
                    str2 = "OperateViews";
                    obj3 = obj;
                    str = str2;
                    obj2 = obj3;
                    a(obj2, th.getMessage());
                    p0.a(str, "webviewLoad failed: " + th.getMessage());
                }
                try {
                    Rect rect2 = new Rect(optJSONObject3.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject3.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject3.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject3.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                    int optInt2 = optJSONObject3.optInt("width");
                    optInt = optJSONObject3.optInt("height");
                    rect = rect2;
                    i10 = optInt2;
                } catch (Throwable th3) {
                    th = th3;
                    obj3 = obj;
                    str = str2;
                    obj2 = obj3;
                    a(obj2, th.getMessage());
                    p0.a(str, "webviewLoad failed: " + th.getMessage());
                }
            } else {
                str2 = "OperateViews";
                optInt = 0;
                i10 = 0;
            }
            int optInt3 = optJSONObject2.optInt("refreshCache", 0);
            LinkedHashMap<String, View> b10 = b(optString, e10);
            try {
                if (b10.containsKey(optString2)) {
                    View view = b10.get(optString2);
                    if (view instanceof MBridgeBTWebView) {
                        MBridgeBTWebView mBridgeBTWebView = (MBridgeBTWebView) view;
                        mBridgeBTWebView.setHtml(optString5);
                        mBridgeBTWebView.setFilePath(optString4);
                        mBridgeBTWebView.setFileURL(optString3);
                        mBridgeBTWebView.setRect(rect);
                        mBridgeBTWebView.setLayout(i10, optInt);
                        mBridgeBTWebView.setCampaigns(arrayList);
                        mBridgeBTWebView.setRewardUnitSetting(a10);
                        mBridgeBTWebView.webviewLoad(optInt3);
                        Object obj5 = obj;
                        try {
                            b(obj5, optString2);
                            String str3 = str2;
                            p0.a(str3, "webviewLoad instanceId = " + optString2);
                            i10 = obj5;
                            rect = str3;
                        } catch (Throwable th4) {
                            th = th4;
                            obj3 = obj5;
                            str = str2;
                            obj2 = obj3;
                            a(obj2, th.getMessage());
                            p0.a(str, "webviewLoad failed: " + th.getMessage());
                        }
                    } else {
                        Object obj6 = obj;
                        String str4 = str2;
                        a(obj6, "view not exist");
                        p0.a(str4, "webviewLoad failed: view not exist instanceId = " + optString2);
                        i10 = obj6;
                        rect = str4;
                    }
                } else {
                    Object obj7 = obj;
                    String str5 = str2;
                    a(obj7, "instanceId not exist");
                    p0.a(str5, "webviewLoad failed: instanceId not exist instanceId = " + optString2);
                    i10 = obj7;
                    rect = str5;
                }
            } catch (Throwable th5) {
                th = th5;
                obj2 = i10;
                str = rect;
                a(obj2, th.getMessage());
                p0.a(str, "webviewLoad failed: " + th.getMessage());
            }
        } catch (Throwable th6) {
            th = th6;
            str = "OperateViews";
            obj2 = obj4;
        }
    }

    public void O(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTWebView) {
                    if (((MBridgeBTWebView) view).webviewReload()) {
                        b(obj, optString2);
                        p0.a("OperateViews", "webviewReload instanceId = " + optString2);
                        return;
                    }
                    a(obj, "reload failed");
                    p0.a("OperateViews", "webviewReload failed reload failed instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "webviewReload failed view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "webviewReload failed instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "webviewReload failed: " + th2.getMessage());
        }
    }

    public String b() {
        f30477h++;
        return String.valueOf(f30477h);
    }

    public CampaignEx c(String str) {
        if (f30472c.containsKey(str)) {
            return f30472c.get(str);
        }
        return null;
    }

    public void d(String str, String str2) {
        f30471b.put(str, str2);
    }

    public String e(String str) {
        if (f30471b.containsKey(str)) {
            return f30471b.get(str);
        }
        return "";
    }

    public String f(String str) {
        if (f30474e.containsKey(str)) {
            return f30474e.get(str);
        }
        return "";
    }

    public int g(String str) {
        if (f30475f.containsKey(str)) {
            return f30475f.get(str).intValue();
        }
        return 2;
    }

    public void h(String str) {
        f30476g.remove(str);
    }

    public void i(Object obj, JSONObject jSONObject) {
        int i10;
        int i11;
        Rect rect;
        try {
            String optString = jSONObject.optString("unitId");
            if (TextUtils.isEmpty(optString)) {
                a(obj, "unitId is empty");
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            int optInt = optJSONObject.optInt("delay", 0);
            optJSONObject.optString("fileURL");
            optJSONObject.optString("filePath");
            optJSONObject.optString("html");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
            Rect rect2 = new Rect(FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode);
            if (optJSONObject2 != null) {
                Rect rect3 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                int optInt2 = optJSONObject2.optInt("width");
                i11 = optJSONObject2.optInt("height");
                rect = rect3;
                i10 = optInt2;
            } else {
                i10 = 0;
                i11 = 0;
                rect = rect2;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0438a(obj, optString, rect, i10, i11), optInt);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "create view failed：" + th2.getMessage());
        }
    }

    public void j(Object obj, JSONObject jSONObject) {
        int i10;
        int i11;
        Rect rect;
        try {
            String optString = jSONObject.optString("unitId");
            if (TextUtils.isEmpty(optString)) {
                a(obj, "unitId is empty");
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            int optInt = optJSONObject.optInt("delay", 0);
            String optString2 = optJSONObject.optString("fileURL");
            String optString3 = optJSONObject.optString("filePath");
            String optString4 = optJSONObject.optString("html");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
            Rect rect2 = new Rect(FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode);
            if (optJSONObject2 != null) {
                Rect rect3 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                int optInt2 = optJSONObject2.optInt("width");
                i11 = optJSONObject2.optInt("height");
                rect = rect3;
                i10 = optInt2;
            } else {
                i10 = 0;
                i11 = 0;
                rect = rect2;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new b(obj, optString, optString2, optString3, optString4, rect, i10, i11), optInt);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "createWebview failed：" + th2.getMessage());
        }
    }

    public void k(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            if (jSONObject.optJSONObject("data") != null && !TextUtils.isEmpty(optString)) {
                String e10 = e(optString2);
                if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                    e10 = windVaneWebView.getRid();
                }
                LinkedHashMap<String, View> b10 = b(optString, e10);
                if (b10 != null && b10.containsKey(optString2)) {
                    View view = b10.get(optString2);
                    b10.remove(optString2);
                    if (view != null && view.getParent() != null) {
                        ViewGroup viewGroup = (ViewGroup) view.getParent();
                        if (viewGroup != null) {
                            viewGroup.removeView(view);
                        }
                        if (view instanceof ViewGroup) {
                            ViewGroup viewGroup2 = (ViewGroup) view;
                            if (viewGroup2.getChildCount() > 0) {
                                int childCount = viewGroup2.getChildCount();
                                for (int i10 = 0; i10 < childCount; i10++) {
                                    View childAt = viewGroup2.getChildAt(i10);
                                    if (childAt instanceof MBridgeBTWebView) {
                                        b10.remove(((MBridgeBTWebView) childAt).getInstanceId());
                                        ((MBridgeBTWebView) childAt).onDestory();
                                    } else if (childAt instanceof MBridgeBTVideoView) {
                                        b10.remove(((MBridgeBTVideoView) childAt).getInstanceId());
                                        ((MBridgeBTVideoView) childAt).onDestory();
                                    } else if (childAt instanceof MBTempContainer) {
                                        b10.remove(((MBTempContainer) childAt).getInstanceId());
                                        ((MBTempContainer) childAt).onDestroy();
                                    }
                                }
                            }
                        }
                    }
                    if (view instanceof MBTempContainer) {
                        ((MBTempContainer) view).onDestroy();
                    }
                    if (view instanceof MBridgeBTWebView) {
                        ((MBridgeBTWebView) view).onDestory();
                    }
                    if (view instanceof MBridgeBTVideoView) {
                        ((MBridgeBTVideoView) view).onDestory();
                    }
                    b(obj, optString2);
                    a(obj, "onComponentDestroy", optString2);
                    p0.a("OperateViews", "destroyComponent instanceId = " + optString2);
                    return;
                }
                a(obj, "unitId or instanceId not exist");
                p0.a("OperateViews", "destroyComponent failed");
                return;
            }
            a(obj, "unidId or data is empty");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "destroyComponent failed");
        }
    }

    public void l(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            String optString = jSONObject.optString("id");
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
            } else {
                b(obj, optString);
            }
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    public void m(Object obj, JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String str4;
        int i10;
        boolean z10;
        String a10;
        String str5;
        String h5ResAddress;
        JSONObject jSONObject2 = new JSONObject();
        String str6 = "message";
        String str7 = Module.ResponseKey.Code;
        int i11 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put(Module.ResponseKey.Code, 1);
                jSONObject2.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e10) {
                p0.a("OperateViews", e10.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put(Module.ResponseKey.Code, 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray = jSONObject.getJSONArray("resource");
            if (jSONArray != null) {
                try {
                    if (jSONArray.length() > 0) {
                        JSONArray jSONArray2 = new JSONArray();
                        int length = jSONArray.length();
                        int i12 = 0;
                        while (i12 < length) {
                            JSONObject jSONObject3 = jSONArray.getJSONObject(i12);
                            String optString = jSONObject3.optString("ref", "");
                            int i13 = jSONObject3.getInt("type");
                            JSONObject jSONObject4 = new JSONObject();
                            JSONArray jSONArray3 = jSONArray;
                            if (i13 == i11 && !TextUtils.isEmpty(optString)) {
                                JSONObject jSONObject5 = new JSONObject();
                                m b10 = com.mbridge.msdk.foundation.db.m.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(optString);
                                if (b10 != null) {
                                    i10 = length;
                                    p0.a("OperateViews", "VideoBean not null");
                                    jSONObject5.put("type", 1);
                                    str3 = str6;
                                    try {
                                        jSONObject5.put("videoDataLength", b10.d());
                                        String e11 = b10.e();
                                        str4 = str7;
                                        if (TextUtils.isEmpty(e11)) {
                                            try {
                                                p0.a("OperateViews", "VideoPath null");
                                                jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "");
                                                jSONObject5.put("path4Web", "");
                                            } catch (Throwable th2) {
                                                th = th2;
                                                str = str3;
                                                str2 = str4;
                                                try {
                                                    jSONObject2.put(str2, 1);
                                                    jSONObject2.put(str, th.getLocalizedMessage());
                                                    f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                                                } catch (JSONException e12) {
                                                    p0.a("OperateViews", e12.getMessage());
                                                    return;
                                                }
                                            }
                                        } else {
                                            p0.a("OperateViews", "VideoPath not null");
                                            jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, e11);
                                            jSONObject5.put("path4Web", e11);
                                        }
                                        if (b10.b() == 5) {
                                            jSONObject5.put("downloaded", 1);
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                            jSONObject5.put("downloaded", 0);
                                        }
                                        jSONObject4.put(optString, jSONObject5);
                                        jSONArray2.put(jSONObject4);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        str4 = str7;
                                        str = str3;
                                        str2 = str4;
                                        jSONObject2.put(str2, 1);
                                        jSONObject2.put(str, th.getLocalizedMessage());
                                        f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                                    }
                                } else {
                                    str3 = str6;
                                    str4 = str7;
                                    i10 = length;
                                    z10 = false;
                                    p0.a("OperateViews", "VideoBean null");
                                }
                            } else {
                                str3 = str6;
                                str4 = str7;
                                i10 = length;
                                z10 = false;
                                if (i13 == 2 && !TextUtils.isEmpty(optString)) {
                                    JSONObject jSONObject6 = new JSONObject();
                                    jSONObject6.put("type", 2);
                                    if (H5DownLoadManager.getInstance().getH5ResAddress(optString) == null) {
                                        h5ResAddress = "";
                                    } else {
                                        h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(optString);
                                    }
                                    jSONObject6.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, h5ResAddress);
                                    jSONObject4.put(optString, jSONObject6);
                                    jSONArray2.put(jSONObject4);
                                } else if (i13 == 3 && !TextUtils.isEmpty(optString)) {
                                    File file = new File(optString);
                                    if (!file.exists() || !file.isFile() || !file.canRead()) {
                                        str5 = "";
                                    } else {
                                        p0.a("OperateViews", "getFileInfo Mraid file " + optString);
                                        str5 = "file:////" + optString;
                                    }
                                    JSONObject jSONObject7 = new JSONObject();
                                    jSONObject7.put("type", 3);
                                    jSONObject7.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str5);
                                    jSONObject4.put(optString, jSONObject7);
                                    jSONArray2.put(jSONObject4);
                                } else if (i13 == 4 && !TextUtils.isEmpty(optString)) {
                                    JSONObject jSONObject8 = new JSONObject();
                                    jSONObject8.put("type", 4);
                                    if (t0.a(optString) == null) {
                                        a10 = "";
                                    } else {
                                        a10 = t0.a(optString);
                                    }
                                    jSONObject8.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, a10);
                                    jSONObject4.put(optString, jSONObject8);
                                    jSONArray2.put(jSONObject4);
                                }
                            }
                            i12++;
                            jSONArray = jSONArray3;
                            length = i10;
                            str6 = str3;
                            str7 = str4;
                            i11 = 1;
                        }
                        str3 = str6;
                        str4 = str7;
                        jSONObject2.put("resource", jSONArray2);
                        f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        return;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str3 = str6;
                }
            }
            str2 = Module.ResponseKey.Code;
            str = 1;
        } catch (Throwable th5) {
            th = th5;
            str = "message";
            str2 = Module.ResponseKey.Code;
        }
        try {
            try {
                jSONObject2.put(str2, 1);
                str = "message";
                try {
                    jSONObject2.put(str, "resource is null");
                    f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                } catch (JSONException e13) {
                    e = e13;
                    p0.a("OperateViews", e.getMessage());
                }
            } catch (Throwable th6) {
                th = th6;
                jSONObject2.put(str2, 1);
                jSONObject2.put(str, th.getLocalizedMessage());
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            }
        } catch (JSONException e14) {
            e = e14;
            str = "message";
        } catch (Throwable th7) {
            th = th7;
            str = "message";
            jSONObject2.put(str2, 1);
            jSONObject2.put(str, th.getLocalizedMessage());
            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        }
    }

    public void n(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null) {
                    view.setVisibility(8);
                    b(obj, optString2);
                    a(obj, "onHideView", optString2);
                    p0.a("OperateViews", "hideView instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "hideView failed: view not exist");
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "hideView failed: instanceId not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "hideView failed: + " + th2.getMessage());
        }
    }

    public void o(Object obj, JSONObject jSONObject) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONObject);
            if (parseCampaignWithBackData == null) {
                a(obj, "data camapign is empty");
                return;
            }
            a(parseCampaignWithBackData);
            b(obj, "");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    public void p(Object obj, JSONObject jSONObject) {
        int optInt;
        int optInt2;
        Rect rect;
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            String optString3 = optJSONObject.optString("id");
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString3) && b10.containsKey(optString2)) {
                ViewGroup viewGroup = (ViewGroup) b10.get(optString2);
                View view = b10.get(optString3);
                if (viewGroup != null && view != null) {
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
                    if (view instanceof MBTempContainer) {
                        p0.b("OperateViews", "OperateViews setNotchString = " + String.format("%1$s-%2$s-%3$s-%4$s-%5$s", Integer.valueOf(f30481l), Integer.valueOf(f30482m), Integer.valueOf(f30483n), Integer.valueOf(f30484o), Integer.valueOf(f30485p)));
                        ((MBTempContainer) view).setNotchPadding(f30481l, f30482m, f30483n, f30484o, f30485p);
                        Iterator<View> it = b10.values().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            View next = it.next();
                            if (next instanceof MBridgeBTContainer) {
                                e1.a(view);
                                ((MBridgeBTContainer) next).appendSubView((MBridgeBTContainer) next, (MBTempContainer) view, optJSONObject2);
                                break;
                            }
                        }
                    } else {
                        if (optJSONObject2 == null) {
                            if (view instanceof BTBaseView) {
                                rect = ((BTBaseView) view).getRect();
                                optInt = ((BTBaseView) view).getViewWidth();
                                optInt2 = ((BTBaseView) view).getViewHeight();
                            } else {
                                optInt = 0;
                                rect = null;
                                optInt2 = 0;
                            }
                        } else {
                            Rect rect2 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                            optInt = optJSONObject2.optInt("width");
                            optInt2 = optJSONObject2.optInt("height");
                            rect = rect2;
                        }
                        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                        if (viewGroup instanceof FrameLayout) {
                            layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        } else if (viewGroup instanceof RelativeLayout) {
                            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        } else if (viewGroup instanceof LinearLayout) {
                            layoutParams = new LinearLayout.LayoutParams(-1, -1);
                        }
                        viewGroup.addView(view, a(layoutParams, rect, optInt, optInt2));
                    }
                    b(obj, optString2);
                    a(obj, "onAppendView", optString2);
                    p0.a("OperateViews", "appendSubView parentId = " + optString2 + " childId = " + optString3);
                    return;
                }
                a(obj, "view is not exist");
                return;
            }
            a(obj, "instanceId is not exist");
            p0.a("OperateViews", "appendSubView failed: instanceId is not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "appendSubView failed: " + th2.getMessage());
        }
    }

    public void q(Object obj, JSONObject jSONObject) {
        int optInt;
        int optInt2;
        Rect rect;
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject != null && !TextUtils.isEmpty(optString)) {
                String optString3 = optJSONObject.optString("id");
                LinkedHashMap<String, View> b10 = b(optString, e10);
                if (b10.containsKey(optString2) && b10.containsKey(optString3)) {
                    ViewGroup viewGroup = (ViewGroup) b10.get(optString3);
                    View view = b10.get(optString2);
                    if (viewGroup != null && view != null) {
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
                        if (view instanceof MBTempContainer) {
                            Iterator<View> it = b10.values().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                View next = it.next();
                                if (next instanceof MBridgeBTContainer) {
                                    e1.a(view);
                                    ((MBridgeBTContainer) next).appendSubView((MBridgeBTContainer) next, (MBTempContainer) view, optJSONObject2);
                                    break;
                                }
                            }
                        } else {
                            if (optJSONObject2 == null) {
                                if (view instanceof BTBaseView) {
                                    rect = ((BTBaseView) view).getRect();
                                    optInt = ((BTBaseView) view).getViewWidth();
                                    optInt2 = ((BTBaseView) view).getViewHeight();
                                } else {
                                    optInt = 0;
                                    rect = null;
                                    optInt2 = 0;
                                }
                            } else {
                                Rect rect2 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                                optInt = optJSONObject2.optInt("width");
                                optInt2 = optJSONObject2.optInt("height");
                                rect = rect2;
                            }
                            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                            if (viewGroup instanceof FrameLayout) {
                                layoutParams = new FrameLayout.LayoutParams(-1, -1);
                            } else if (viewGroup instanceof RelativeLayout) {
                                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                            } else if (viewGroup instanceof LinearLayout) {
                                layoutParams = new LinearLayout.LayoutParams(-1, -1);
                            }
                            viewGroup.addView(view, a(layoutParams, rect, optInt, optInt2));
                        }
                        b(obj, optString2);
                        a(obj, "onAppendViewTo", optString2);
                        p0.a("OperateViews", "appendViewTo parentId = " + optString3 + " childId = " + optString2);
                        return;
                    }
                    a(obj, "view is not exist");
                    return;
                }
                a(obj, "instanceId is not exist");
                p0.a("OperateViews", "appendViewTo failed: instanceId is not exist");
                return;
            }
            a(obj, "unitId or data is empty");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "appendViewTo failed: " + th2.getMessage());
        }
    }

    public void r(Object obj, JSONObject jSONObject) {
        int optInt;
        int optInt2;
        Rect rect;
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            String optString3 = optJSONObject.optString("targetComponentId");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2) && b10.containsKey(optString3)) {
                View view = b10.get(optString2);
                View view2 = b10.get(optString3);
                if (view2 != null && view2.getParent() != null) {
                    ViewGroup viewGroup = (ViewGroup) view2.getParent();
                    int indexOfChild = viewGroup.indexOfChild(view2);
                    if (optJSONObject2 == null) {
                        if (view instanceof BTBaseView) {
                            rect = ((BTBaseView) view).getRect();
                            optInt = ((BTBaseView) view).getViewWidth();
                            optInt2 = ((BTBaseView) view).getViewHeight();
                        } else {
                            optInt = 0;
                            rect = null;
                            optInt2 = 0;
                        }
                    } else {
                        Rect rect2 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                        optInt = optJSONObject2.optInt("width");
                        optInt2 = optJSONObject2.optInt("height");
                        rect = rect2;
                    }
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                    if (viewGroup instanceof FrameLayout) {
                        layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof RelativeLayout) {
                        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof LinearLayout) {
                        layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    }
                    viewGroup.addView(view, indexOfChild + 1, a(layoutParams, rect, optInt, optInt2));
                    b(obj, optString2);
                    a(obj, "onInsertViewAbove", optString2);
                    p0.a("OperateViews", "insertViewAbove instanceId = " + optString2 + " brotherId = " + optString3);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "insertViewAbove failed: view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "insertViewAbove failed: instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "insertViewAbove failed: " + th2.getMessage());
        }
    }

    public void s(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTVideoView) {
                    int mute = ((MBridgeBTVideoView) view).getMute();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(Module.ResponseKey.Code, f30478i);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("id", optString2);
                    jSONObject3.put("mute", mute);
                    jSONObject2.put("data", jSONObject3);
                    f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                    p0.a("OperateViews", "playerGetMuteState successed mute = " + mute);
                    return;
                }
                a(obj, "instanceId is not player");
                p0.a("OperateViews", "playerGetMuteState failed instanceId is not player");
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "playerGetMuteState failed instanceId not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "playerGetMuteState failed: " + th2.getMessage());
        }
    }

    public void t(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTVideoView) {
                    if (((MBridgeBTVideoView) view).playMute()) {
                        b(obj, optString2);
                        p0.a("OperateViews", "playerMute success");
                        return;
                    }
                    a(obj, "set mute failed");
                    p0.a("OperateViews", "playerMute failed set mute failed");
                    return;
                }
                a(obj, "instanceId is not player");
                p0.a("OperateViews", "playerMute failed: instanceId is not player");
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "playerMute failed: instanceId is not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "playerMute failed: " + th2.getMessage());
        }
    }

    public void u(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).pause();
                    b(obj, optString2);
                    p0.a("OperateViews", "playerPause success");
                    return;
                }
                a(obj, "instanceId is not player");
                p0.a("OperateViews", "playerPause failed instanceId is not player instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exit");
            p0.a("OperateViews", "playerPause failed instanceId not exit instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "playerPause failed: " + th2.getMessage());
        }
    }

    public void v(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTVideoView) {
                    MBridgeBTVideoView mBridgeBTVideoView = (MBridgeBTVideoView) view;
                    MBridgeBTContainer a10 = a(optString, e10);
                    if (a10 != null) {
                        mBridgeBTVideoView.setAdEvents(a10.getAdEvents());
                        mBridgeBTVideoView.setAdSession(a10.getAdSession());
                        mBridgeBTVideoView.setVideoEvents(a10.getVideoEvents());
                    }
                    mBridgeBTVideoView.play();
                    b(obj, optString2);
                    p0.a("OperateViews", "playerPlay success");
                    return;
                }
                a(obj, "instanceId is not player");
                p0.a("OperateViews", "playerPlay failed instanceId is not player instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exit");
            p0.a("OperateViews", "playerPlay failed instanceId not exit instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "playerPlay failed: " + th2.getMessage());
        }
    }

    public void w(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).resume();
                    b(obj, optString2);
                    p0.a("OperateViews", "playerResume success");
                    return;
                }
                a(obj, "instanceId is not player");
                p0.a("OperateViews", "playerResume failed instanceId is not player instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exit");
            p0.a("OperateViews", "playerResume failed instanceId not exit instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "playerResume failed: " + th2.getMessage());
        }
    }

    public void x(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            jSONObject.optString("id");
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
            } else {
                a(obj, "android mediaPlayer not support setScaleType");
            }
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    public void y(Object obj, JSONObject jSONObject) {
        try {
            jSONObject.optString("unitId");
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
            }
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    public void z(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).stop();
                    b(obj, optString2);
                    p0.a("OperateViews", "playerStop success");
                    return;
                }
                a(obj, "instanceId is not player");
                p0.a("OperateViews", "playerStop failed instanceId is not player instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exit");
            p0.a("OperateViews", "playerStop failed instanceId not exit instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "playerStop failed: " + th2.getMessage());
        }
    }

    public com.mbridge.msdk.videocommon.setting.c d(String str) {
        if (f30473d.containsKey(str)) {
            return f30473d.get(str);
        }
        return null;
    }

    public void h(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject != null && !TextUtils.isEmpty(optString)) {
                int optInt = optJSONObject.optInt("mute");
                String str = "";
                CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONObject.optJSONObject(MBInterstitialActivity.INTENT_CAMAPIGN));
                if (parseCampaignWithBackData != null && !TextUtils.isEmpty(optString)) {
                    parseCampaignWithBackData.setCampaignUnitId(optString);
                    str = parseCampaignWithBackData.getRequestId();
                }
                com.mbridge.msdk.videocommon.setting.c a10 = com.mbridge.msdk.videocommon.setting.c.a(optJSONObject.optJSONObject("unitSetting"));
                if (a10 != null) {
                    a10.h(optString);
                }
                String optString2 = optJSONObject.optString(VungleConstants.KEY_USER_ID);
                if (TextUtils.isEmpty(str) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                    str = windVaneWebView.getRid();
                }
                LinkedHashMap<String, View> b10 = b(optString, str);
                String b11 = b();
                f30471b.put(b11, str);
                MBTempContainer mBTempContainer = new MBTempContainer(com.mbridge.msdk.foundation.controller.c.m().d());
                try {
                    k kVar = (k) ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b.getObject();
                    mBTempContainer.setAdEvents(kVar.j());
                    mBTempContainer.setAdSession(kVar.k());
                    mBTempContainer.setVideoEvents(kVar.o());
                } catch (Exception e10) {
                    p0.b("OperateViews", e10.getMessage());
                }
                mBTempContainer.setInstanceId(b11);
                mBTempContainer.setUnitId(optString);
                mBTempContainer.setCampaign(parseCampaignWithBackData);
                mBTempContainer.setRewardUnitSetting(a10);
                mBTempContainer.setBigOffer(true);
                if (!TextUtils.isEmpty(optString2)) {
                    mBTempContainer.setUserId(optString2);
                }
                JSONObject optJSONObject2 = optJSONObject.optJSONObject(AdmobPreloadConfig.REWARD);
                if (optJSONObject2 != null) {
                    String optString3 = optJSONObject2.optString("id");
                    com.mbridge.msdk.videocommon.entity.c cVar = new com.mbridge.msdk.videocommon.entity.c(optJSONObject2.optString("name"), optJSONObject2.optInt("amount"));
                    if (!TextUtils.isEmpty(optString3)) {
                        mBTempContainer.setRewardId(optString3);
                    }
                    if (!TextUtils.isEmpty(cVar.c())) {
                        mBTempContainer.setReward(cVar);
                    }
                }
                String optString4 = optJSONObject.optString(GearStrategyConsts.EV_EXTRA_INFO);
                if (!TextUtils.isEmpty(optString4)) {
                    mBTempContainer.setDeveloperExtraData(optString4);
                }
                mBTempContainer.setMute(optInt);
                b10.put(b11, mBTempContainer);
                f30474e.put(b11, optString);
                f30472c.put(b11, parseCampaignWithBackData);
                f30473d.put(b11, a10);
                b(obj, b11);
                p0.a("OperateViews", "createSubPlayTemplateView instanceId = " + b11);
                return;
            }
            a(obj, "unitId or data is empty");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "createSubPlayTemplateView failed：" + th2.getMessage());
        }
    }

    public void a(String str, Activity activity) {
        f30476g.put(str, activity);
    }

    public void b(String str) {
        if (f30475f.containsKey(str)) {
            f30475f.remove(str);
        }
    }

    public void c(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2)) {
                View view = b10.get(optString2);
                if (view != null && view.getParent() != null) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        viewGroup.bringChildToFront(view);
                        b(obj, optString2);
                        a(obj, "onBringViewToFront", optString2);
                        p0.a("OperateViews", "bringViewToFront instanceId = " + optString2);
                        return;
                    }
                    a(obj, "parent is null");
                    p0.a("OperateViews", "bringViewToFront failed: parent is null");
                    return;
                }
                a(obj, "view is null");
                p0.a("OperateViews", "bringViewToFront failed: view is null");
                return;
            }
            a(obj, "instanceId is not exist");
            p0.a("OperateViews", "bringViewToFront failed: instanceId is not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "bringViewToFront failed: " + th2.getMessage());
        }
    }

    public void g(Object obj, JSONObject jSONObject) {
        try {
            String optString = jSONObject.optString("unitId");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject != null && !TextUtils.isEmpty(optString)) {
                String str = "";
                CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONObject.optJSONObject(MBInterstitialActivity.INTENT_CAMAPIGN));
                if (parseCampaignWithBackData != null && !TextUtils.isEmpty(optString)) {
                    parseCampaignWithBackData.setCampaignUnitId(optString);
                    str = parseCampaignWithBackData.getRequestId();
                }
                int optInt = optJSONObject.optInt("show_time", 0);
                int optInt2 = optJSONObject.optInt("show_mute", 0);
                int optInt3 = optJSONObject.optInt("show_close", 0);
                int optInt4 = optJSONObject.optInt(AdUnitActivity.EXTRA_ORIENTATION, 1);
                int optInt5 = optJSONObject.optInt("show_pgb", 0);
                MBridgeBTVideoView mBridgeBTVideoView = new MBridgeBTVideoView(com.mbridge.msdk.foundation.controller.c.m().d());
                try {
                    k kVar = (k) ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b.getObject();
                    mBridgeBTVideoView.setAdEvents(kVar.j());
                    mBridgeBTVideoView.setAdSession(kVar.k());
                    mBridgeBTVideoView.setVideoEvents(kVar.o());
                } catch (Exception e10) {
                    p0.b("OperateViews", e10.getMessage());
                }
                mBridgeBTVideoView.setCampaign(parseCampaignWithBackData);
                mBridgeBTVideoView.setUnitId(optString);
                mBridgeBTVideoView.setShowMute(optInt2);
                mBridgeBTVideoView.setShowTime(optInt);
                mBridgeBTVideoView.setShowClose(optInt3);
                mBridgeBTVideoView.setOrientation(optInt4);
                mBridgeBTVideoView.setProgressBarState(optInt5);
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
                if (windVaneWebView != null) {
                    str = windVaneWebView.getRid();
                    mBridgeBTVideoView.setCreateWebView(windVaneWebView);
                }
                LinkedHashMap<String, View> b10 = b(optString, str);
                String b11 = b();
                f30471b.put(b11, str);
                mBridgeBTVideoView.setInstanceId(b11);
                b10.put(b11, mBridgeBTVideoView);
                mBridgeBTVideoView.preLoadData();
                if (parseCampaignWithBackData == null) {
                    a(obj, "campaign is null");
                    p0.a("OperateViews", "createPlayerView failed");
                } else {
                    b(obj, b11);
                    p0.a("OperateViews", "createPlayerView instanceId = " + b11);
                }
                com.mbridge.msdk.video.bt.component.b.a().a(b11, mBridgeBTVideoView);
                return;
            }
            a(obj, "unitId or data is empty");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "createPlayerView failed：" + th2.getMessage());
        }
    }

    public void a(String str, int i10) {
        f30475f.put(str, Integer.valueOf(i10));
    }

    public void d(Object obj, JSONObject jSONObject) {
        try {
            WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
            String rid = windVaneWebView != null ? windVaneWebView.getRid() : "";
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString(CallAppDataKey.KEY_TRACKING_EVENT_NAME);
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            LinkedHashMap<String, View> b10 = b(optString, rid);
            if (b10 != null && b10.size() > 0) {
                for (View view : b10.values()) {
                    if (view instanceof MBridgeBTWebView) {
                        ((MBridgeBTWebView) view).broadcast(optString2, optJSONObject);
                    }
                    if (view instanceof MBridgeBTLayout) {
                        ((MBridgeBTLayout) view).broadcast(optString2, optJSONObject);
                    }
                }
                b(obj, "");
                return;
            }
            a(obj, "unitId not exist");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "broadcast failed: " + th2.getMessage());
        }
    }

    public void e(Object obj, JSONObject jSONObject) {
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            if (jSONObject.optJSONObject("data") == null) {
                a(obj, "data is empty");
                return;
            }
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.size() > 0) {
                MBridgeBTContainer mBridgeBTContainer = null;
                for (View view : b10.values()) {
                    if (view instanceof MBridgeBTContainer) {
                        mBridgeBTContainer = (MBridgeBTContainer) view;
                    } else if (view instanceof MBridgeBTWebView) {
                        ((MBridgeBTWebView) view).onDestory();
                    } else if (view instanceof MBridgeBTVideoView) {
                        com.mbridge.msdk.video.bt.component.b.a().a(((MBridgeBTVideoView) view).getInstanceId());
                        ((MBridgeBTVideoView) view).onDestory();
                    } else if (view instanceof MBTempContainer) {
                        ((MBTempContainer) view).onDestroy();
                    }
                }
                if (mBridgeBTContainer != null) {
                    mBridgeBTContainer.onAdClose();
                    f30470a.remove(b10);
                    b10.clear();
                    ConcurrentHashMap<String, LinkedHashMap<String, View>> concurrentHashMap = f30470a;
                    concurrentHashMap.remove(optString + "_" + e10);
                    b(obj, optString2);
                    return;
                }
                a(obj, "not found MBridgeBTContainer");
                p0.a("OperateViews", "closeAd successed");
                return;
            }
            a(obj, "unitId or instanceId not exist");
            p0.a("OperateViews", "closeAd failed: unitId or instanceId not exist unitId = " + optString);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "closeAd failed: " + th2.getMessage());
        }
    }

    public void f(Object obj, JSONObject jSONObject) {
        p0.a("OperateViews", "createNativeEC:" + jSONObject);
        try {
            String optString = jSONObject.optString("unitId");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject != null && !TextUtils.isEmpty(optString)) {
                String str = "";
                CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONObject.optJSONObject(MBInterstitialActivity.INTENT_CAMAPIGN));
                if (parseCampaignWithBackData != null && !TextUtils.isEmpty(optString)) {
                    parseCampaignWithBackData.setCampaignUnitId(optString);
                    str = parseCampaignWithBackData.getRequestId();
                }
                com.mbridge.msdk.videocommon.setting.c a10 = com.mbridge.msdk.videocommon.setting.c.a(optJSONObject.optJSONObject("unitSetting"));
                if (a10 != null) {
                    a10.h(optString);
                }
                MBridgeBTNativeEC mBridgeBTNativeEC = new MBridgeBTNativeEC(com.mbridge.msdk.foundation.controller.c.m().d());
                mBridgeBTNativeEC.setCampaign(parseCampaignWithBackData);
                k kVar = new k(null, parseCampaignWithBackData);
                kVar.setUnitId(optString);
                mBridgeBTNativeEC.setJSCommon(kVar);
                mBridgeBTNativeEC.setUnitId(optString);
                mBridgeBTNativeEC.setRewardUnitSetting(a10);
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
                if (windVaneWebView != null) {
                    str = windVaneWebView.getRid();
                    mBridgeBTNativeEC.setCreateWebView(windVaneWebView);
                }
                LinkedHashMap<String, View> b10 = b(optString, str);
                String b11 = b();
                f30471b.put(b11, str);
                mBridgeBTNativeEC.setInstanceId(b11);
                b10.put(b11, mBridgeBTNativeEC);
                mBridgeBTNativeEC.preLoadData();
                if (parseCampaignWithBackData == null) {
                    a(obj, "campaign is null");
                    p0.a("OperateViews", "createNativeEC failed");
                    return;
                }
                b(obj, b11);
                p0.a("OperateViews", "createNativeEC instanceId = " + b11);
                return;
            }
            a(obj, "unitId or data is empty");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "createNativeEC failed：" + th2.getMessage());
        }
    }

    public void a(String str) {
        if (f30474e.containsKey(str)) {
            f30474e.remove(str);
        }
        if (f30473d.containsKey(str)) {
            f30473d.remove(str);
        }
        if (f30472c.containsKey(str)) {
            f30472c.remove(str);
        }
        if (f30471b.containsKey(str)) {
            f30471b.remove(str);
        }
    }

    public synchronized LinkedHashMap<String, View> b(String str, String str2) {
        ConcurrentHashMap<String, LinkedHashMap<String, View>> concurrentHashMap = f30470a;
        if (concurrentHashMap.containsKey(str + "_" + str2)) {
            ConcurrentHashMap<String, LinkedHashMap<String, View>> concurrentHashMap2 = f30470a;
            return concurrentHashMap2.get(str + "_" + str2);
        }
        LinkedHashMap<String, View> linkedHashMap = new LinkedHashMap<>();
        ConcurrentHashMap<String, LinkedHashMap<String, View>> concurrentHashMap3 = f30470a;
        concurrentHashMap3.put(str + "_" + str2, linkedHashMap);
        return linkedHashMap;
    }

    public void b(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f30478i);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            a(obj, e10.getMessage());
            p0.a("OperateViews", e10.getMessage());
        }
    }

    public void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f30479j);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            p0.a("OperateViews", e10.getMessage());
        }
    }

    public void b(Object obj, JSONObject jSONObject) {
        int optInt;
        int optInt2;
        Rect rect;
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject != null && !TextUtils.isEmpty(optString)) {
                String optString3 = optJSONObject.optString("id");
                LinkedHashMap<String, View> b10 = b(optString, e10);
                if (b10.containsKey(optString2) && b10.containsKey(optString3)) {
                    ViewGroup viewGroup = (ViewGroup) b10.get(optString3);
                    View view = b10.get(optString2);
                    e1.a(view);
                    if (viewGroup != null && view != null) {
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
                        if (view instanceof MBTempContainer) {
                            Iterator<View> it = b10.values().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                View next = it.next();
                                if (next instanceof MBridgeBTContainer) {
                                    e1.a(view);
                                    ((MBridgeBTContainer) next).appendSubView((MBridgeBTContainer) next, (MBTempContainer) view, optJSONObject2);
                                    break;
                                }
                            }
                        } else {
                            if (optJSONObject2 == null) {
                                if (view instanceof BTBaseView) {
                                    rect = ((BTBaseView) view).getRect();
                                    optInt = ((BTBaseView) view).getViewWidth();
                                    optInt2 = ((BTBaseView) view).getViewHeight();
                                } else {
                                    optInt = 0;
                                    rect = null;
                                    optInt2 = 0;
                                }
                            } else {
                                Rect rect2 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                                optInt = optJSONObject2.optInt("width");
                                optInt2 = optJSONObject2.optInt("height");
                                rect = rect2;
                            }
                            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                            if (viewGroup instanceof FrameLayout) {
                                layoutParams = new FrameLayout.LayoutParams(-1, -1);
                            } else if (viewGroup instanceof RelativeLayout) {
                                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                            } else if (viewGroup instanceof LinearLayout) {
                                layoutParams = new LinearLayout.LayoutParams(-1, -1);
                            }
                            ViewGroup.LayoutParams a10 = a(layoutParams, rect, optInt, optInt2);
                            e1.a(view);
                            viewGroup.addView(view, a10);
                        }
                        b(obj, optString2);
                        a(obj, "onAppendViewTo", optString2);
                        p0.a("OperateViews", "appendViewTo parentId = " + optString3 + " childId = " + optString2);
                        return;
                    }
                    a(obj, "view is not exist");
                    return;
                }
                a(obj, "instanceId is not exist");
                p0.a("OperateViews", "appendViewTo failed: instanceId is not exist");
                return;
            }
            a(obj, "unitId or data is empty");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "appendViewTo failed: " + th2.getMessage());
        }
    }

    public void a(WebView webView, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f30479j);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(webView, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            p0.a("OperateViews", e10.getMessage());
        }
    }

    public void a(Object obj, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f30478i);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str2);
            jSONObject.put("data", jSONObject2);
            f.a().a(obj, str, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            a(obj, e10.getMessage());
            p0.a("OperateViews", e10.getMessage());
        }
    }

    public void c(Object obj, String str) {
        p0.a("OperateViews", "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                int optInt = jSONObject.optInt("type");
                String a10 = u0.a(jSONObject.optString("url"), "&tun=", l0.y() + "");
                int optInt2 = jSONObject.optInt("report");
                if (optInt2 == 0) {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), (CampaignEx) null, "", a10, false, optInt != 0);
                } else {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), (CampaignEx) null, "", a10, false, optInt != 0, optInt2);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            b(obj, "");
        } catch (Throwable th3) {
            th = th3;
            p0.b("OperateViews", "reportUrls", th);
        }
    }

    public void a(WebView webView, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f30478i);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str2);
            jSONObject.put("data", jSONObject2);
            f.a().a(webView, str, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            a(webView, e10.getMessage());
            p0.a("OperateViews", e10.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.ViewGroup$LayoutParams] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.view.ViewGroup$LayoutParams] */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.widget.LinearLayout$LayoutParams] */
    public ViewGroup.LayoutParams a(ViewGroup.LayoutParams layoutParams, Rect rect, int i10, int i11) {
        if (rect == null) {
            rect = new Rect(FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode, FetcherListener.ErrorOverRetryTimesCode);
        }
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d10 == null) {
            return layoutParams;
        }
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            int i12 = rect.left;
            if (i12 != -999) {
                layoutParams2.leftMargin = u0.a(d10, i12);
            }
            int i13 = rect.top;
            if (i13 != -999) {
                layoutParams2.topMargin = u0.a(d10, i13);
            }
            int i14 = rect.right;
            if (i14 != -999) {
                layoutParams2.rightMargin = u0.a(d10, i14);
            }
            int i15 = rect.bottom;
            if (i15 != -999) {
                layoutParams2.bottomMargin = u0.a(d10, i15);
            }
            if (i10 > 0) {
                layoutParams2.width = u0.a(d10, i10);
            }
            if (i11 > 0) {
                layoutParams2.height = u0.a(d10, i11);
            }
            return layoutParams2;
        } else if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
            int i16 = rect.left;
            if (i16 != -999) {
                layoutParams3.leftMargin = u0.a(d10, i16);
            }
            int i17 = rect.top;
            if (i17 != -999) {
                layoutParams3.topMargin = u0.a(d10, i17);
            }
            int i18 = rect.right;
            if (i18 != -999) {
                layoutParams3.rightMargin = u0.a(d10, i18);
            }
            int i19 = rect.bottom;
            if (i19 != -999) {
                layoutParams3.bottomMargin = u0.a(d10, i19);
            }
            if (i10 > 0) {
                layoutParams3.width = u0.a(d10, i10);
            }
            if (i11 > 0) {
                layoutParams3.height = u0.a(d10, i11);
            }
            return layoutParams3;
        } else {
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                layoutParams = new LinearLayout.LayoutParams(-1, -1);
                int i20 = rect.left;
                if (i20 != -999) {
                    ((LinearLayout.LayoutParams) layoutParams).leftMargin = u0.a(d10, i20);
                }
                int i21 = rect.top;
                if (i21 != -999) {
                    ((LinearLayout.LayoutParams) layoutParams).topMargin = u0.a(d10, i21);
                }
                int i22 = rect.right;
                if (i22 != -999) {
                    ((LinearLayout.LayoutParams) layoutParams).rightMargin = u0.a(d10, i22);
                }
                int i23 = rect.bottom;
                if (i23 != -999) {
                    ((LinearLayout.LayoutParams) layoutParams).bottomMargin = u0.a(d10, i23);
                }
                if (i10 > 0) {
                    ((LinearLayout.LayoutParams) layoutParams).width = u0.a(d10, i10);
                }
                if (i11 > 0) {
                    ((LinearLayout.LayoutParams) layoutParams).height = u0.a(d10, i11);
                }
            }
            return layoutParams;
        }
    }

    public void c(String str, String str2) {
        try {
            LinkedHashMap<String, View> b10 = b(str, str2);
            if (b10 != null && !b10.isEmpty()) {
                for (View view : b10.values()) {
                    if (view instanceof MBridgeBTContainer) {
                        ((MBridgeBTContainer) view).addNativeCloseButtonWhenWebViewCrash();
                    }
                }
            }
        } catch (Throwable th2) {
            p0.b("OperateViews", th2.getMessage());
        }
    }

    public void b(Object obj, JSONObject jSONObject, boolean z10) {
        int optInt;
        int optInt2;
        Rect rect;
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            String optString3 = optJSONObject.optString("targetComponentId");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2) && b10.containsKey(optString3)) {
                View view = b10.get(optString2);
                View view2 = b10.get(optString3);
                if (view2 != null && view2.getParent() != null) {
                    ViewGroup viewGroup = (ViewGroup) view2.getParent();
                    int indexOfChild = viewGroup.indexOfChild(view2);
                    if (optJSONObject2 == null) {
                        if (view instanceof BTBaseView) {
                            rect = ((BTBaseView) view).getRect();
                            optInt = ((BTBaseView) view).getViewWidth();
                            optInt2 = ((BTBaseView) view).getViewHeight();
                        } else {
                            rect = null;
                            optInt = 0;
                            optInt2 = 0;
                        }
                    } else {
                        Rect rect2 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                        optInt = optJSONObject2.optInt("width");
                        optInt2 = optJSONObject2.optInt("height");
                        rect = rect2;
                    }
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                    if (viewGroup instanceof FrameLayout) {
                        layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof RelativeLayout) {
                        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof LinearLayout) {
                        layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    }
                    ViewGroup.LayoutParams a10 = a(layoutParams, rect, optInt, optInt2);
                    if (z10) {
                        e1.a(view);
                    }
                    int i10 = indexOfChild - 1;
                    viewGroup.addView(view, i10 > -1 ? i10 : 0, a10);
                    b(obj, optString2);
                    a(obj, "onInsertViewBelow", optString2);
                    p0.a("OperateViews", "insertViewBelow instanceId = " + optString2);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "insertViewBelow failed: view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "insertViewBelow failed: instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "insertViewBelow failed: " + th2.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cd, code lost:
        com.mbridge.msdk.foundation.tools.e1.a(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d0, code lost:
        r2 = (com.mbridge.msdk.video.bt.module.MBTempContainer) r5;
        r6 = (com.mbridge.msdk.video.signal.impl.k) ((com.mbridge.msdk.mbsignalcommon.windvane.a) r13).f28239b.getObject();
        r2.setAdEvents(r6.j());
        r2.setAdSession(r6.k());
        r2.setVideoEvents(r6.o());
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f4, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f5, code lost:
        com.mbridge.msdk.foundation.tools.p0.b("OperateViews", r2.getMessage());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.Object r13, org.json.JSONObject r14) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.component.a.a(java.lang.Object, org.json.JSONObject):void");
    }

    public void a(Object obj, JSONObject jSONObject, boolean z10) {
        int optInt;
        int optInt2;
        Rect rect;
        WindVaneWebView windVaneWebView;
        try {
            String optString = jSONObject.optString("unitId");
            String optString2 = jSONObject.optString("id");
            String e10 = e(optString2);
            if (TextUtils.isEmpty(e10) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                e10 = windVaneWebView.getRid();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            String optString3 = optJSONObject.optString("targetComponentId");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("rect");
            LinkedHashMap<String, View> b10 = b(optString, e10);
            if (b10.containsKey(optString2) && b10.containsKey(optString3)) {
                View view = b10.get(optString2);
                View view2 = b10.get(optString3);
                if (view2 != null && view2.getParent() != null) {
                    ViewGroup viewGroup = (ViewGroup) view2.getParent();
                    int indexOfChild = viewGroup.indexOfChild(view2);
                    if (optJSONObject2 == null) {
                        if (view instanceof BTBaseView) {
                            rect = ((BTBaseView) view).getRect();
                            optInt = ((BTBaseView) view).getViewWidth();
                            optInt2 = ((BTBaseView) view).getViewHeight();
                        } else {
                            optInt = 0;
                            rect = null;
                            optInt2 = 0;
                        }
                    } else {
                        Rect rect2 = new Rect(optJSONObject2.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("top", FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode), optJSONObject2.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode));
                        optInt = optJSONObject2.optInt("width");
                        optInt2 = optJSONObject2.optInt("height");
                        rect = rect2;
                    }
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                    if (viewGroup instanceof FrameLayout) {
                        layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof RelativeLayout) {
                        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    } else if (viewGroup instanceof LinearLayout) {
                        layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    }
                    ViewGroup.LayoutParams a10 = a(layoutParams, rect, optInt, optInt2);
                    if (z10) {
                        e1.a(view);
                    }
                    viewGroup.addView(view, indexOfChild + 1, a10);
                    b(obj, optString2);
                    a(obj, "onInsertViewAbove", optString2);
                    p0.a("OperateViews", "insertViewAbove instanceId = " + optString2 + " brotherId = " + optString3);
                    return;
                }
                a(obj, "view not exist");
                p0.a("OperateViews", "insertViewAbove failed: view not exist instanceId = " + optString2);
                return;
            }
            a(obj, "instanceId not exist");
            p0.a("OperateViews", "insertViewAbove failed: instanceId not exist instanceId = " + optString2);
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
            p0.a("OperateViews", "insertViewAbove failed: " + th2.getMessage());
        }
    }

    private MBridgeBTContainer a(String str, String str2) {
        LinkedHashMap<String, View> b10 = b(str, str2);
        if (b10.size() > 0) {
            for (View view : b10.values()) {
                if (view instanceof MBridgeBTContainer) {
                    return (MBridgeBTContainer) view;
                }
            }
        }
        return null;
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new c(campaignEx)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, CampaignEx campaignEx) {
        if (com.mbridge.msdk.foundation.same.buffer.b.f27060k == null || TextUtils.isEmpty(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, AdmobPreloadConfig.REWARD);
    }

    public void a(int i10, int i11, int i12, int i13, int i14) {
        p0.a("OperateViews", "OperateViews setNotchString = " + String.format("%1$s-%2$s-%3$s-%4$s-%5$s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)));
        f30480k = c0.a(i10, i11, i12, i13, i14);
        f30481l = i10;
        f30482m = i11;
        f30483n = i12;
        f30484o = i13;
        f30485p = i14;
    }
}
