package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.b6;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class h7 {

    /* loaded from: classes2.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f8051a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.adview.a f8052b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f8053c;

        a(String str, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.k kVar) {
            this.f8051a = str;
            this.f8052b = aVar;
            this.f8053c = kVar;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof AppLovinWebViewActivity) {
                ((AppLovinWebViewActivity) activity).loadUrl(this.f8051a, null);
                q2.c(this.f8052b.e(), this.f8052b.g(), this.f8052b.i());
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof AppLovinWebViewActivity) {
                q2.a(this.f8052b.e(), this.f8052b.g(), this.f8052b.i());
                this.f8053c.e().b(this);
            }
        }
    }

    public static boolean a(Uri uri, Context context, com.applovin.impl.sdk.k kVar) {
        return b(uri, null, context, kVar);
    }

    public static void c(Uri uri, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        String emptyIfNull = StringUtils.emptyIfNull(uri.getQueryParameter("error"));
        String emptyIfNull2 = StringUtils.emptyIfNull(uri.getQueryParameter("exception"));
        String emptyIfNull3 = StringUtils.emptyIfNull(uri.getQueryParameter("details"));
        HashMap<String, String> hashMap = CollectionUtils.hashMap("source", emptyIfNull);
        CollectionUtils.putStringIfValid("top_main_method", emptyIfNull2, hashMap);
        CollectionUtils.putStringIfValid("details", emptyIfNull3, hashMap);
        if (bVar != null) {
            hashMap.putAll(e2.a((AppLovinAdImpl) bVar));
            hashMap.putAll(e2.a(bVar));
        }
        kVar.E().d(c2.L0, hashMap);
    }

    public static boolean a(Uri uri, String str, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.k kVar) {
        boolean z10 = false;
        String str2 = null;
        if (uri == null) {
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.external_redirect_failure"), null);
            return false;
        }
        try {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.d("UriUtils", "Opening URI: " + uri);
            }
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            str2 = StringUtils.defaultIfEmpty(str, a(intent, uri, bVar, context));
            intent.setPackage(str2);
            kVar.n0().pauseForClick();
            context.startActivity(intent);
            z10 = true;
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = kVar.O();
                O2.a("UriUtils", "Unable to open \"" + uri + "\".", th2);
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("url", uri.toString());
            hashMap.put("name", str2);
            if (bVar != null) {
                hashMap.putAll(e2.a((AppLovinAdImpl) bVar));
                hashMap.putAll(e2.a(bVar));
            }
            if ("play.google.com".equals(uri.getHost())) {
                CollectionUtils.putStringIfValid("details", (String) kVar.B().L().get("ps_version"), hashMap);
            }
            kVar.E().a("UriUtils", "openUri", th2, hashMap);
        }
        if (!z10) {
            kVar.n0().resumeForClick();
        }
        AppLovinBroadcastManager.sendBroadcast(new Intent(z10 ? "com.applovin.external_redirect_success" : "com.applovin.external_redirect_failure"), CollectionUtils.map("url", uri));
        return z10;
    }

    public static boolean b(Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.k kVar) {
        return a(uri, null, bVar, context, kVar);
    }

    public static boolean b(Uri uri) {
        return uri != null && "applovin".equalsIgnoreCase(uri.getScheme()) && AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equalsIgnoreCase(uri.getHost()) && "/adservice/deeplink".equals(uri.getPath());
    }

    public static void b(Uri uri, final com.applovin.impl.sdk.ad.b bVar, final com.applovin.impl.sdk.k kVar) {
        final String queryParameter = uri.getQueryParameter("url");
        if (!StringUtils.isValidString(queryParameter)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Could not find resource URL to preload from query parameters");
            }
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), CollectionUtils.map("error", "Invalid URL"));
        } else if (bVar == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Cannot preload resource: ad is null");
            }
            Map map = CollectionUtils.map("error", "Invalid ad reference");
            map.put(DownloadModel.RESOURCE_URL, queryParameter);
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map);
        } else {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a("UriUtils", "Attempting to preload resource: " + queryParameter);
            }
            kVar.r0().a((g5) new p6(kVar, false, "preloadResource", new Runnable() { // from class: com.applovin.impl.qa
                @Override // java.lang.Runnable
                public final void run() {
                    h7.a(com.applovin.impl.sdk.k.this, queryParameter, bVar);
                }
            }), b6.b.CACHING);
        }
    }

    private static String a(Intent intent, Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context) {
        if (!"market".equals(intent.getScheme()) && !"play.google.com".equals(uri.getHost())) {
            if ("https".equals(intent.getScheme()) && bVar != null) {
                if (bVar.p1()) {
                    String H = com.applovin.impl.sdk.l.H();
                    if (a(H, context)) {
                        return H;
                    }
                }
                for (String str : bVar.X()) {
                    if (a(str, context)) {
                        return str;
                    }
                }
            }
            return null;
        }
        if (Boolean.FALSE.equals(a(context))) {
            return "com.android.vending";
        }
        return null;
    }

    private static boolean a(String str, Context context) {
        return (TextUtils.isEmpty(str) || context.getPackageManager().getLaunchIntentForPackage(str) == null) ? false : true;
    }

    public static void a(Uri uri, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.k kVar) {
        com.applovin.impl.adview.b f10 = aVar.f();
        String queryParameter = uri.getQueryParameter("n");
        if (TextUtils.isEmpty(queryParameter)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Could not find url to load from query in original uri");
            }
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.external_redirect_failure"), null);
            return;
        }
        y4 q02 = kVar.q0();
        x4 x4Var = x4.S;
        String str = (String) q02.a(x4Var, null);
        if (uri.getQueryParameterNames().contains("browser")) {
            String queryParameter2 = uri.getQueryParameter("browser");
            String str2 = TextUtils.isEmpty(queryParameter2) ? null : queryParameter2;
            if (Boolean.parseBoolean(uri.getQueryParameter("retain_browser"))) {
                kVar.q0().b(x4Var, str2);
            }
            str = str2;
        }
        String queryParameter3 = uri.getQueryParameter("load_type");
        if (IVideoEventLogger.SET_SURFACE_TYPE_EXTERNAL.equalsIgnoreCase(queryParameter3)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a("UriUtils", "Loading new page externally: " + queryParameter);
            }
            a(queryParameter, str, aVar, kVar);
        } else if (IVideoEventLogger.SET_SURFACE_TYPE_INTERNAL.equalsIgnoreCase(queryParameter3)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = kVar.O();
                O2.a("UriUtils", "Loading new page in WebView: " + queryParameter);
            }
            f10.loadUrl(queryParameter);
            String queryParameter4 = uri.getQueryParameter("bg_color");
            if (StringUtils.isValidString(queryParameter4)) {
                f10.setBackgroundColor(Color.parseColor(queryParameter4));
            }
        } else if ("in_app".equalsIgnoreCase(queryParameter3)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O3 = kVar.O();
                O3.a("UriUtils", "Loading new page in slide-up webview: " + queryParameter);
            }
            kVar.e().a(new a(queryParameter, aVar, kVar));
            Intent intent = new Intent(com.applovin.impl.sdk.k.o(), AppLovinWebViewActivity.class);
            intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, kVar.j0());
            intent.setFlags(268435456);
            com.applovin.impl.sdk.k.o().startActivity(intent);
        } else if ("in_app_v2".equalsIgnoreCase(queryParameter3)) {
            aVar.a(aVar.g(), aVar.i(), (Uri) null, f10.getAndClearLastClickEvent(), (Bundle) null);
            if (aVar.h() != null) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O4 = kVar.O();
                    O4.a("UriUtils", "Loading new page in Custom Tabs: " + queryParameter);
                }
                kVar.A().a(queryParameter, aVar, kVar.v0());
                return;
            }
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O5 = kVar.O();
                O5.a("UriUtils", "Custom Tabs not supported, loading new page externally: " + queryParameter);
            }
            a(queryParameter, str, aVar, kVar);
        } else {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Could not find load type in original uri");
            }
        }
    }

    public static void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        String queryParameter = uri.getQueryParameter("n");
        if (URLUtil.isValidUrl(queryParameter)) {
            String appendQueryParameter = StringUtils.appendQueryParameter(queryParameter, "clcode", bVar.getClCode());
            kVar.f0().e(com.applovin.impl.sdk.network.d.b().d(appendQueryParameter).a(false).b(Boolean.parseBoolean(uri.getQueryParameter("fire_from_webview"))).a());
            return;
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.b("UriUtils", "Could not find postback url to fire from query in original uri: " + uri);
        }
    }

    public static Bundle a(Uri uri) {
        Bundle bundle = new Bundle();
        for (String str : uri.getQueryParameterNames()) {
            bundle.putString(str, uri.getQueryParameter(str));
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.k kVar, String str, com.applovin.impl.sdk.ad.b bVar) {
        try {
            com.applovin.impl.sdk.m H = kVar.H();
            Context o10 = com.applovin.impl.sdk.k.o();
            String a10 = H.a(com.applovin.impl.sdk.k.o(), str, bVar.getCachePrefix(), bVar.c0(), true, H.a(str, bVar), null, e2.a((AppLovinAdImpl) bVar));
            if (a10 != null) {
                String uri = Uri.fromFile(H.a(a10, o10)).toString();
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = kVar.O();
                    O.a("UriUtils", "Successfully cached resource at: " + uri);
                }
                Map map = CollectionUtils.map(DownloadModel.RESOURCE_URL, str);
                map.put("cached_url", uri);
                AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_success"), map);
                return;
            }
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = kVar.O();
                O2.k("UriUtils", "Failed to cache resource: " + str);
            }
            Map map2 = CollectionUtils.map("error", "Failed to cache resource");
            map2.put(DownloadModel.RESOURCE_URL, str);
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map2);
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("UriUtils", "Exception while caching resource", th2);
            }
            Map map3 = CollectionUtils.map("url", str);
            map3.putAll(e2.a((AppLovinAdImpl) bVar));
            map3.putAll(e2.a(bVar));
            kVar.E().a("UriUtils", "handlePreload", th2, map3);
            Map map4 = CollectionUtils.map("error", "Internal error while caching");
            map4.put(DownloadModel.RESOURCE_URL, str);
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map4);
        }
    }

    public static void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.sdk.k kVar) {
        Throwable th2;
        Intent c10;
        g7 g7Var = new g7();
        Context a10 = a(uri.getQueryParameter("context_source"), appLovinAdView, kVar);
        Intent intent = null;
        try {
            g7Var.f(uri.getQueryParameter("identifier")).d(uri.getQueryParameter(TextureRenderKeys.KEY_IS_ACTION)).a(uri.getQueryParameter("data"), uri.getQueryParameter("type")).b(uri.getQueryParameter("flags")).e(uri.getQueryParameter("extras")).a(uri.getQueryParameter("categories")).a(uri.getQueryParameter("clip_data_uri"), uri.getQueryParameter("clip_data_mime_type"), uri.getQueryParameter("clip_data_label")).h(uri.getQueryParameter("source_bounds")).b(uri.getQueryParameter("component"), uri.getQueryParameter("class_name"), uri.getQueryParameter("package")).g(uri.getQueryParameter("selector_action"));
            if (!(a10 instanceof Activity)) {
                g7Var.b(String.valueOf(268435456));
            }
            c10 = Boolean.parseBoolean(uri.getQueryParameter("use_chooser")) ? g7Var.c(uri.getQueryParameter("chooser_title")) : g7Var.a();
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a("UriUtils", "Attempting to launch intent with configuration:\n" + a(c10));
            }
            if (c10.resolveActivity(a10.getPackageManager()) != null) {
                a10.startActivity(c10);
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("UriUtils", "Successfully launched intent");
                }
                AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_intent_launch_success"), null);
                kVar.g().d(c2.M, a(c10, uri, bVar));
                return;
            }
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "No activity found to handle the intent");
            }
            a("noActivityToHandleIntent", null, uri, a(c10, uri, bVar), bVar, a10, kVar);
        } catch (Throwable th4) {
            th2 = th4;
            intent = c10;
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("UriUtils", "Exception while launching intent", th2);
            }
            a("intentLaunchException", th2, uri, a(intent, uri, bVar), bVar, a10, kVar);
        }
    }

    private static Context a(String str, AppLovinAdView appLovinAdView, com.applovin.impl.sdk.k kVar) {
        if (MimeTypes.BASE_TYPE_APPLICATION.equalsIgnoreCase(str)) {
            return com.applovin.impl.sdk.k.o();
        }
        if ("activity".equalsIgnoreCase(str)) {
            Activity b10 = b8.b(appLovinAdView, kVar);
            if (b10 != null) {
                return b10;
            }
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().k("UriUtils", "Could not retrieve the activity context. Falling back to view context.");
            }
        }
        return appLovinAdView.getContext();
    }

    private static void a(String str, Throwable th2, Uri uri, Map map, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.k kVar) {
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_intent_launch_failure"), null);
        HashMap hashMap = new HashMap(map);
        if (th2 != null) {
            kVar.E().a("UriUtils", "launchCustomIntent", th2, map);
            CollectionUtils.putStringIfValid("top_main_method", th2.toString(), hashMap);
        }
        CollectionUtils.putStringIfValid("source", str, hashMap);
        kVar.g().d(c2.N, hashMap);
        a(uri, bVar, context, kVar);
    }

    private static void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.k kVar) {
        String queryParameter = uri.getQueryParameter("fallback_url");
        if (TextUtils.isEmpty(queryParameter)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Could not find fallback URL to open from query parameters");
                return;
            }
            return;
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.a("UriUtils", "Opening fallback URL: " + queryParameter);
        }
        b(Uri.parse(queryParameter), bVar, context, kVar);
    }

    private static Map a(Intent intent, Uri uri, com.applovin.impl.sdk.ad.b bVar) {
        Map a10 = e2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("url", uri.toString(), a10);
        CollectionUtils.putStringIfValid("details", a(intent), a10);
        return a10;
    }

    private static String a(Intent intent) {
        if (intent == null) {
            return "Intent not available";
        }
        ComponentName component = intent.getComponent();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Identifier: ");
        sb2.append(o0.j() ? intent.getIdentifier() : null);
        sb2.append("\nAction: ");
        sb2.append(intent.getAction());
        sb2.append("\nData: ");
        sb2.append(intent.getData());
        sb2.append("\nType: ");
        sb2.append(intent.getType());
        sb2.append("\nFlags: ");
        sb2.append(intent.getFlags());
        sb2.append("\nExtras: ");
        sb2.append(intent.getExtras());
        sb2.append("\nCategories: ");
        sb2.append(intent.getCategories());
        sb2.append("\nClipData: ");
        sb2.append(intent.getClipData());
        sb2.append("\nSourceBounds: ");
        sb2.append(intent.getSourceBounds());
        sb2.append("\nComponent: ");
        sb2.append(component != null ? component.flattenToString() : intent.getPackage());
        sb2.append("\nSelector: ");
        sb2.append(intent.getSelector());
        return sb2.toString();
    }

    private static void a(String str, String str2, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.k kVar) {
        a(Uri.parse(str), str2, aVar.g(), aVar.f().getContext(), kVar);
        q2.b(aVar.e(), aVar.g(), aVar.i());
    }

    public static Boolean a(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            boolean z10 = true;
            packageManager.getPackageInfo("com.android.vending", 1);
            int applicationEnabledSetting = packageManager.getApplicationEnabledSetting("com.android.vending");
            if (applicationEnabledSetting != 2 && applicationEnabledSetting != 3) {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        } catch (PackageManager.NameNotFoundException unused) {
            return Boolean.TRUE;
        } catch (Throwable unused2) {
            return null;
        }
    }
}
