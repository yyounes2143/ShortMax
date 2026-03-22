package com.startshorts.androidplayer.ui.fragment.discover;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.act.ActCallH5Message;
import com.startshorts.androidplayer.bean.act.H5Result;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.eventbus.AppStateEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshSpecifiedDiscoverFragmentEvent;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.databinding.FragmentDiscoverWebviewBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.o;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverWebViewFragment;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: DiscoverWebViewFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverWebViewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,428:1\n1#2:429\n216#3,2:430\n*S KotlinDebug\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment\n*L\n136#1:430,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverWebViewFragment extends BaseVDBFragment<FragmentDiscoverWebviewBinding> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f46001r = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f46002i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private DiscoverTab f46003j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f46004k;

    /* renamed from: l  reason: collision with root package name */
    private final int f46005l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f46006m;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private DiscoverTabFragment.b f46008o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f46009p;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ms.i f46007n = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.e1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            boolean d02;
            d02 = DiscoverWebViewFragment.d0(DiscoverWebViewFragment.this);
            return Boolean.valueOf(d02);
        }
    });

    /* renamed from: q  reason: collision with root package name */
    private final int f46010q = R$layout.fragment_discover_webview;

    /* compiled from: DiscoverWebViewFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverWebViewFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public final class b {
        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(final DiscoverWebViewFragment discoverWebViewFragment, int i10, JSONObject jSONObject) {
            String str;
            if (i10 == 2) {
                discoverWebViewFragment.f46004k = true;
            } else {
                final String str2 = null;
                if (i10 != 13) {
                    if (i10 == 15) {
                        if (jSONObject != null) {
                            str2 = jSONObject.getString("url");
                        }
                        if (str2 != null && str2.length() != 0) {
                            fk.h0.f51735a.e(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.discover.m1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DiscoverWebViewFragment.b.e(DiscoverWebViewFragment.this, str2);
                                }
                            });
                        }
                    }
                } else {
                    if (jSONObject != null) {
                        str = jSONObject.getString("key");
                    } else {
                        str = null;
                    }
                    if (str != null && str.length() != 0) {
                        CookieManager cookieManager = CookieManager.getInstance();
                        DiscoverTab discoverTab = discoverWebViewFragment.f46003j;
                        if (discoverTab != null) {
                            str2 = discoverTab.getLinkUrl();
                        }
                        cookieManager.setCookie(str2, str + "=; Expires=Wed, 31 Dec 2015 23:59:59 GMT");
                        cookieManager.flush();
                    }
                }
            }
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(DiscoverWebViewFragment discoverWebViewFragment, String str) {
            discoverWebViewFragment.a0(str, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f(DiscoverWebViewFragment discoverWebViewFragment, String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            discoverWebViewFragment.R(it);
            return Unit.f60915a;
        }

        @JavascriptInterface
        public final void callApp(@NotNull String data) {
            BaseActivity baseActivity;
            Intrinsics.checkNotNullParameter(data, "data");
            FragmentActivity activity = DiscoverWebViewFragment.this.getActivity();
            if (activity instanceof BaseActivity) {
                baseActivity = (BaseActivity) activity;
            } else {
                baseActivity = null;
            }
            BaseActivity baseActivity2 = baseActivity;
            if (baseActivity2 == null) {
                return;
            }
            ce.j jVar = ce.j.f3485a;
            String valueOf = String.valueOf(DiscoverWebViewFragment.this.hashCode());
            final DiscoverWebViewFragment discoverWebViewFragment = DiscoverWebViewFragment.this;
            Function2 function2 = new Function2() { // from class: com.startshorts.androidplayer.ui.fragment.discover.k1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit d10;
                    d10 = DiscoverWebViewFragment.b.d(DiscoverWebViewFragment.this, ((Integer) obj).intValue(), (JSONObject) obj2);
                    return d10;
                }
            };
            final DiscoverWebViewFragment discoverWebViewFragment2 = DiscoverWebViewFragment.this;
            ce.j.r(jVar, false, valueOf, baseActivity2, null, data, function2, null, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.l1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit f10;
                    f10 = DiscoverWebViewFragment.b.f(DiscoverWebViewFragment.this, (String) obj);
                    return f10;
                }
            }, 64, null);
        }
    }

    /* compiled from: DiscoverWebViewFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends WebChromeClient {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(DiscoverWebViewFragment discoverWebViewFragment, int i10) {
            ProgressBar progressBar = DiscoverWebViewFragment.K(discoverWebViewFragment).f39488a;
            progressBar.setVisibility(0);
            progressBar.setProgress(i10);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, final int i10) {
            FragmentActivity activity;
            if (!DiscoverWebViewFragment.this.f46006m && (activity = DiscoverWebViewFragment.this.getActivity()) != null) {
                final DiscoverWebViewFragment discoverWebViewFragment = DiscoverWebViewFragment.this;
                activity.runOnUiThread(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.discover.n1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DiscoverWebViewFragment.c.b(DiscoverWebViewFragment.this, i10);
                    }
                });
            }
            if (i10 >= 99 && !DiscoverWebViewFragment.this.f46006m) {
                DiscoverWebViewFragment.this.V();
            }
        }
    }

    public static final /* synthetic */ FragmentDiscoverWebviewBinding K(DiscoverWebViewFragment discoverWebViewFragment) {
        return discoverWebViewFragment.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R(final String str) {
        r("callH5 -> data=" + str);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.discover.g1
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoverWebViewFragment.S(DiscoverWebViewFragment.this, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(final DiscoverWebViewFragment discoverWebViewFragment, String str) {
        WebView webView = discoverWebViewFragment.A().f39490c;
        webView.evaluateJavascript("javascript:callH5('" + str + "')", new ValueCallback() { // from class: com.startshorts.androidplayer.ui.fragment.discover.i1
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                DiscoverWebViewFragment.T(DiscoverWebViewFragment.this, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(DiscoverWebViewFragment discoverWebViewFragment, String str) {
        discoverWebViewFragment.r("callH5 -> valueCallback " + str);
    }

    private final boolean U() {
        return ((Boolean) this.f46007n.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.discover.h1
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoverWebViewFragment.W(DiscoverWebViewFragment.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(DiscoverWebViewFragment discoverWebViewFragment) {
        discoverWebViewFragment.A().f39488a.setVisibility(4);
    }

    private final void X() {
        int J;
        int t10;
        if (U()) {
            DeviceUtil deviceUtil = DeviceUtil.f48146a;
            J = deviceUtil.J() + deviceUtil.t();
            t10 = deviceUtil.u();
        } else {
            DeviceUtil deviceUtil2 = DeviceUtil.f48146a;
            J = deviceUtil2.J();
            t10 = deviceUtil2.t();
        }
        int i10 = J + t10;
        ConstraintLayout toolbarLayout = A().f39489b;
        Intrinsics.checkNotNullExpressionValue(toolbarLayout, "toolbarLayout");
        jk.b0.i(toolbarLayout, 0, i10, 0, 0, 13, null);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private final void Y(String str) {
        WebView webView = A().f39490c;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.getSettings().setDisplayZoomControls(false);
        webView.getSettings().setTextZoom(100);
        webView.getSettings().setSupportZoom(true);
        webView.addJavascriptInterface(new b(), "messageHandlers");
        r("initWebView start");
        webView.setWebChromeClient(new c());
        webView.setWebViewClient(new d());
        b0(this, str, false, 2, null);
        if (qe.a.f65321a.value().getWebviewBackgroundTransparentEnable()) {
            A().f39490c.setBackgroundColor(0);
        }
    }

    private final void Z() {
        String str;
        String string;
        Bundle arguments = getArguments();
        DiscoverTab discoverTab = null;
        if (arguments != null) {
            str = arguments.getString("from");
        } else {
            str = null;
        }
        this.f46002i = str;
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string = arguments2.getString("tab")) != null) {
            discoverTab = (DiscoverTab) jk.l.b(string, DiscoverTab.class);
        }
        this.f46003j = discoverTab;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(final String str, final boolean z10) {
        final CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        Intrinsics.checkNotNull(cookieManager);
        e0(cookieManager, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.f1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit c02;
                c02 = DiscoverWebViewFragment.c0(cookieManager, str, this, z10);
                return c02;
            }
        });
    }

    static /* synthetic */ void b0(DiscoverWebViewFragment discoverWebViewFragment, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        discoverWebViewFragment.a0(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(CookieManager cookieManager, String str, DiscoverWebViewFragment discoverWebViewFragment, boolean z10) {
        String aBTestIds;
        for (Map.Entry entry : o.a.b(com.startshorts.androidplayer.manager.api.base.o.f41799c, null, 1, null).entrySet()) {
            cookieManager.setCookie(str, ((String) entry.getKey()) + '=' + ((String) entry.getValue()));
        }
        cookieManager.setCookie(str, "preferDisplayStyle=" + discoverWebViewFragment.f46005l);
        cookieManager.setCookie(str, "loadingTimestamp=" + System.currentTimeMillis());
        cookieManager.setCookie(str, "statusBarHeight=" + DeviceUtil.f48146a.J());
        cookieManager.setCookie(str, "openType=app");
        ud.b bVar = ud.b.f68412a;
        CMSConfigResult f02 = bVar.f0();
        if (f02 != null && (aBTestIds = f02.getABTestIds()) != null) {
            cookieManager.setCookie(str, "cmsAbTestId=" + aBTestIds);
        }
        DiscoverTab discoverTab = discoverWebViewFragment.f46003j;
        if (discoverTab != null) {
            cookieManager.setCookie(str, "tabId=" + discoverTab.getTabId());
            cookieManager.setCookie(str, "tabName=" + discoverTab.getTabDisplayName());
        }
        cookieManager.setCookie(str, "caseId=" + ABTestFactory.f42224a.f1().abTestIntValue());
        try {
            String e10 = bVar.e();
            if (e10 != null && e10.length() != 0) {
                discoverWebViewFragment.r("set externalCookie -> " + e10);
                JSONObject jSONObject = new JSONObject(e10);
                Iterator<String> keys = jSONObject.keys();
                Intrinsics.checkNotNull(keys);
                while (keys.hasNext()) {
                    String next = keys.next();
                    cookieManager.setCookie(str, next + '=' + jSONObject.get(next));
                }
            }
        } catch (Exception e11) {
            discoverWebViewFragment.g("parse ActCookie failed -> " + e11.getMessage());
        }
        cookieManager.flush();
        discoverWebViewFragment.r("loadUrlWithCookie -> reload(" + z10 + ") url(" + str + ") Cookies(" + cookieManager.getCookie(str) + ')');
        if (z10) {
            discoverWebViewFragment.A().f39490c.reload();
        } else {
            discoverWebViewFragment.A().f39490c.loadUrl(str);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d0(DiscoverWebViewFragment discoverWebViewFragment) {
        Bundle arguments = discoverWebViewFragment.getArguments();
        if (arguments != null) {
            return arguments.getBoolean("is_show_tab_view");
        }
        return false;
    }

    private final void e0(CookieManager cookieManager, final Function0<Unit> function0) {
        try {
            r("removeAllCookie async");
            cookieManager.removeAllCookies(new ValueCallback() { // from class: com.startshorts.androidplayer.ui.fragment.discover.j1
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    DiscoverWebViewFragment.f0(DiscoverWebViewFragment.this, function0, (Boolean) obj);
                }
            });
        } catch (Exception e10) {
            g("removeAllCookie async exception -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(DiscoverWebViewFragment discoverWebViewFragment, Function0 function0, Boolean bool) {
        discoverWebViewFragment.r("removeAllCookie callback,succeed=" + bool);
        function0.invoke();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f46010q;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        DiscoverTabFragment discoverTabFragment;
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (getParentFragment() instanceof DiscoverTabFragment) {
            Fragment parentFragment = getParentFragment();
            DiscoverTabFragment.b bVar = null;
            if (parentFragment instanceof DiscoverTabFragment) {
                discoverTabFragment = (DiscoverTabFragment) parentFragment;
            } else {
                discoverTabFragment = null;
            }
            if (discoverTabFragment != null) {
                bVar = discoverTabFragment.C0();
            }
            this.f46008o = bVar;
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f46004k) {
            R(H5Result.RESULT_PAYMENT_REFRESH);
            this.f46004k = false;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle B = eventManager.B(this.f46003j);
        B.putString("from", this.f46002i);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_show", B, 0L, 4, null);
        DiscoverTabFragment.b bVar = this.f46008o;
        if (bVar != null) {
            bVar.b(1.0f, true);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        String str;
        String sb2;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("DiscoverWebViewFragment");
        if (this.f46003j == null) {
            sb2 = "";
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append('_');
            DiscoverTab discoverTab = this.f46003j;
            if (discoverTab != null) {
                str = discoverTab.getTabDisplayName();
            } else {
                str = null;
            }
            sb4.append(str);
            sb2 = sb4.toString();
        }
        sb3.append(sb2);
        return sb3.toString();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!m()) {
            return;
        }
        r("receive AcknowledgePurchaseResult -> " + result);
        R(H5Result.RESULT_RESTORE_SUCCEED);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAppStateEvent(@NotNull AppStateEvent event) {
        int i10;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receive AppStateEvent -> " + event);
        HashMap hashMap = new HashMap();
        if (event.isOnForeground()) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        hashMap.put("type", Integer.valueOf(i10));
        hashMap.put("timestamp", Long.valueOf(DeviceUtil.f48146a.K()));
        Unit unit = Unit.f60915a;
        R(jk.l.d(new ActCallH5Message(4, hashMap)));
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        String linkUrl;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receive RefreshAccountEvent");
        DiscoverTab discoverTab = this.f46003j;
        if (discoverTab != null && (linkUrl = discoverTab.getLinkUrl()) != null) {
            a0(linkUrl, true);
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshSpecifiedDiscoverFragmentEvent(@NotNull RefreshSpecifiedDiscoverFragmentEvent event) {
        DiscoverTab discoverTab;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m() && (discoverTab = this.f46003j) != null) {
            int tabId = event.getTabId();
            Integer tabId2 = discoverTab.getTabId();
            if (tabId2 != null && tabId == tabId2.intValue()) {
                this.f46006m = false;
                A().f39490c.reload();
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @ms.c
    public void s() {
        boolean canGoBack = A().f39490c.canGoBack();
        r("onBackPressed -> canGoBack=" + canGoBack);
        if (canGoBack) {
            A().f39490c.goBack();
        } else {
            super.s();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        String linkUrl;
        super.t();
        this.f46009p = true;
        try {
            X();
            Z();
            DiscoverTab discoverTab = this.f46003j;
            if (discoverTab != null && (linkUrl = discoverTab.getLinkUrl()) != null) {
                Y(linkUrl);
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("DiscoverWebViewFragment", "show DiscoverWebViewFragment failed -> " + e10.getMessage());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        if (this.f46009p) {
            ce.j.f3485a.h(String.valueOf(hashCode()));
            HashMap hashMap = new HashMap();
            hashMap.put("type", 3);
            hashMap.put("timestamp", Long.valueOf(DeviceUtil.f48146a.K()));
            Unit unit = Unit.f60915a;
            R(jk.l.d(new ActCallH5Message(4, hashMap)));
        }
        try {
            WebView webView = A().f39490c;
            webView.loadUrl("about:blank");
            webView.removeAllViews();
            webView.destroy();
            Intrinsics.checkNotNull(webView);
        } catch (Exception e10) {
            g("release webview exception -> " + e10.getMessage());
        }
    }

    /* compiled from: DiscoverWebViewFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverWebViewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$initWebView$1$2\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,428:1\n15#2,9:429\n*S KotlinDebug\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$initWebView$1$2\n*L\n249#1:429,9\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d extends WebViewClient {

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$initWebView$1$2\n*L\n1#1,20:1\n250#2,15:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverWebViewFragment f46014a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ SslErrorHandler f46015b;

            public a(DiscoverWebViewFragment discoverWebViewFragment, SslErrorHandler sslErrorHandler) {
                this.f46014a = discoverWebViewFragment;
                this.f46015b = sslErrorHandler;
            }

            public final void a() {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f46014a.requireContext());
                builder.setMessage(R$string.common_ssl_verified_fail);
                builder.setPositiveButton(R$string.common_continue, new c(this.f46015b));
                builder.setNegativeButton(R$string.common_cancel, new DialogInterface$OnClickListenerC0639d(this.f46015b));
                builder.setOnKeyListener(new e(this.f46015b));
                builder.create().show();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DiscoverWebViewFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SslErrorHandler f46016a;

            c(SslErrorHandler sslErrorHandler) {
                this.f46016a = sslErrorHandler;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f46016a.proceed();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DiscoverWebViewFragment.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.discover.DiscoverWebViewFragment$d$d  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class DialogInterface$OnClickListenerC0639d implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SslErrorHandler f46017a;

            DialogInterface$OnClickListenerC0639d(SslErrorHandler sslErrorHandler) {
                this.f46017a = sslErrorHandler;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f46017a.cancel();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DiscoverWebViewFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class e implements DialogInterface.OnKeyListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SslErrorHandler f46018a;

            e(SslErrorHandler sslErrorHandler) {
                this.f46018a = sslErrorHandler;
            }

            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialog, int i10, KeyEvent event) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event.getAction() == 1 && i10 == 4) {
                    this.f46018a.cancel();
                    dialog.dismiss();
                    return true;
                }
                return false;
            }
        }

        d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            DiscoverWebViewFragment discoverWebViewFragment = DiscoverWebViewFragment.this;
            discoverWebViewFragment.r("onPageFinished url=" + str);
            DiscoverWebViewFragment.this.f46004k = false;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            DiscoverWebViewFragment discoverWebViewFragment = DiscoverWebViewFragment.this;
            discoverWebViewFragment.r("onPageStarted url=" + str);
            DiscoverWebViewFragment.this.f46006m = false;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Uri uri;
            Integer num;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            DiscoverWebViewFragment discoverWebViewFragment = DiscoverWebViewFragment.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onReceivedError request.url=");
            CharSequence charSequence = null;
            if (webResourceRequest != null) {
                uri = webResourceRequest.getUrl();
            } else {
                uri = null;
            }
            sb2.append(uri);
            sb2.append(" errorCode=");
            if (webResourceError != null) {
                num = Integer.valueOf(webResourceError.getErrorCode());
            } else {
                num = null;
            }
            sb2.append(num);
            sb2.append(",errMsg=");
            if (webResourceError != null) {
                charSequence = webResourceError.getDescription();
            }
            sb2.append((Object) charSequence);
            discoverWebViewFragment.g(sb2.toString());
            DiscoverWebViewFragment.this.f46006m = true;
            DiscoverWebViewFragment.this.V();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            Uri uri;
            Integer num;
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            DiscoverWebViewFragment discoverWebViewFragment = DiscoverWebViewFragment.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onReceivedHttpError request.url=");
            String str = null;
            if (webResourceRequest != null) {
                uri = webResourceRequest.getUrl();
            } else {
                uri = null;
            }
            sb2.append(uri);
            sb2.append(" errorCode=");
            if (webResourceResponse != null) {
                num = Integer.valueOf(webResourceResponse.getStatusCode());
            } else {
                num = null;
            }
            sb2.append(num);
            sb2.append(",errMsg=");
            if (webResourceResponse != null) {
                str = webResourceResponse.getReasonPhrase();
            }
            sb2.append(str);
            discoverWebViewFragment.g(sb2.toString());
            DiscoverWebViewFragment.this.f46006m = true;
            DiscoverWebViewFragment.this.V();
        }

        @Override // android.webkit.WebViewClient
        @SuppressLint({"WebViewClientOnReceivedSslError"})
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError sslError) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(handler, "handler");
            DiscoverWebViewFragment discoverWebViewFragment = DiscoverWebViewFragment.this;
            FragmentExtKt.b(discoverWebViewFragment, new a(discoverWebViewFragment, handler), new b());
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class b implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }

            public final void a() {
            }
        }
    }
}
