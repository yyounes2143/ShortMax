package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.mbridge.msdk.activity.MBCommonActivity;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
/* compiled from: BackPointBrowserViewListener.java */
/* loaded from: classes5.dex */
public class a implements BrowserView.e {

    /* renamed from: o  reason: collision with root package name */
    private static String f27570o = "a";

    /* renamed from: a  reason: collision with root package name */
    private int f27571a;

    /* renamed from: c  reason: collision with root package name */
    private String f27573c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27574d;

    /* renamed from: e  reason: collision with root package name */
    private BaseTrackingListener f27575e;

    /* renamed from: f  reason: collision with root package name */
    private BrowserView f27576f;

    /* renamed from: g  reason: collision with root package name */
    private CampaignEx f27577g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.click.a f27578h;

    /* renamed from: i  reason: collision with root package name */
    private Context f27579i;

    /* renamed from: k  reason: collision with root package name */
    private JumpLoaderResult f27581k;

    /* renamed from: n  reason: collision with root package name */
    private long f27584n;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27572b = true;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27582l = false;

    /* renamed from: m  reason: collision with root package name */
    private final Runnable f27583m = new RunnableC0379a();

    /* renamed from: j  reason: collision with root package name */
    private Handler f27580j = new Handler(Looper.getMainLooper());

    /* compiled from: BackPointBrowserViewListener.java */
    /* renamed from: com.mbridge.msdk.foundation.webview.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0379a implements Runnable {
        RunnableC0379a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = a.f27570o;
            p0.b(str, "webview js！超时上限：" + a.this.f27571a + "ms");
            if (a.this.f27578h != null && a.this.f27581k != null) {
                a.this.f27581k.setSuccess(false);
                a.this.f27581k.setUrl(a.this.f27573c);
                a.this.f27581k.setType(2);
                a.this.f27581k.setExceptionMsg("linktype 8 time out");
                a.this.f27578h.a(a.this.f27581k, a.this.f27577g, 1, false);
            }
            a aVar = a.this;
            if (aVar.d(null, aVar.f27573c) && !a.this.f27582l) {
                a.this.f27582l = true;
                a aVar2 = a.this;
                aVar2.a(aVar2.f27579i, a.this.f27573c, a.this.f27577g);
            }
            if (a.this.f27575e != null) {
                a.this.f27575e.onFinishRedirection(a.this.f27577g, a.this.f27573c);
            }
        }
    }

    /* compiled from: BackPointBrowserViewListener.java */
    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27586a;

        b(String str) {
            this.f27586a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f27578h != null && a.this.f27581k != null) {
                a.this.f27581k.setSuccess(true);
                a.this.f27581k.setUrl(this.f27586a);
                a.this.f27581k.setType(2);
                a.this.f27578h.a(a.this.f27581k, a.this.f27577g, 1, true);
            }
            if (a.this.f27575e != null) {
                a.this.f27575e.onFinishRedirection(a.this.f27577g, this.f27586a);
            }
        }
    }

    /* compiled from: BackPointBrowserViewListener.java */
    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27588a;

        c(String str) {
            this.f27588a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f27575e != null) {
                a.this.f27575e.onFinishRedirection(a.this.f27577g, this.f27588a);
            }
            if (a.this.f27578h != null && a.this.f27581k != null) {
                a.this.f27581k.setSuccess(true);
                a.this.f27581k.setUrl(this.f27588a);
                a.this.f27581k.setType(2);
                a.this.f27578h.a(a.this.f27581k, a.this.f27577g, 1, true);
            }
        }
    }

    /* compiled from: BackPointBrowserViewListener.java */
    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27590a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27591b;

        d(String str, String str2) {
            this.f27590a = str;
            this.f27591b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f27575e != null) {
                a.this.f27575e.onFinishRedirection(a.this.f27577g, this.f27590a);
            }
            if (a.this.f27578h != null && a.this.f27581k != null) {
                a.this.f27581k.setSuccess(false);
                a.this.f27581k.setUrl(this.f27590a);
                a.this.f27581k.setType(2);
                a.this.f27581k.setExceptionMsg(this.f27591b);
                a.this.f27578h.a(a.this.f27581k, a.this.f27577g, 1, true);
            }
        }
    }

    public a(Context context, CampaignEx campaignEx, com.mbridge.msdk.click.a aVar, BrowserView browserView, BaseTrackingListener baseTrackingListener) {
        this.f27571a = 10000;
        this.f27581k = null;
        this.f27579i = context;
        this.f27577g = campaignEx;
        this.f27576f = browserView;
        this.f27575e = baseTrackingListener;
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        d10 = d10 == null ? h.b().a() : d10;
        this.f27578h = aVar;
        this.f27581k = new JumpLoaderResult();
        this.f27571a = (int) d10.o0();
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(WebView webView, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            Uri parse = Uri.parse(str);
            if (!parse.getScheme().equals(ProxyConfig.MATCH_HTTP) && !parse.getScheme().equals("https")) {
                if (parse.getScheme().equals(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK)) {
                    Intent parseUri = Intent.parseUri(str, 1);
                    String str2 = parseUri.getPackage();
                    if (!TextUtils.isEmpty(str2) && this.f27579i.getPackageManager().getLaunchIntentForPackage(str2) != null) {
                        return false;
                    }
                    String stringExtra = parseUri.getStringExtra("browser_fallback_url");
                    if (!TextUtils.isEmpty(stringExtra)) {
                        Uri parse2 = Uri.parse(str);
                        if (parse2.getScheme().equals(ProxyConfig.MATCH_HTTP) || parse2.getScheme().equals("https")) {
                            return true;
                        }
                        str = stringExtra;
                    }
                }
                if (com.mbridge.msdk.click.c.d(this.f27579i, str)) {
                    p0.b(f27570o, "openDeepLink");
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            p0.b(f27570o, th2.getMessage());
            return true;
        }
    }

    private boolean e(WebView webView, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Uri parse = Uri.parse(str);
            if (!parse.getScheme().equals(ProxyConfig.MATCH_HTTP) && !parse.getScheme().equals("https")) {
                if (parse.getScheme().equals(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK)) {
                    Intent parseUri = Intent.parseUri(str, 1);
                    String str2 = parseUri.getPackage();
                    if (!TextUtils.isEmpty(str2) && this.f27579i.getPackageManager().getLaunchIntentForPackage(str2) != null) {
                        parseUri.setFlags(268435456);
                        this.f27579i.startActivity(parseUri);
                        this.f27582l = true;
                        return true;
                    }
                    String stringExtra = parseUri.getStringExtra("browser_fallback_url");
                    if (!TextUtils.isEmpty(stringExtra)) {
                        Uri parse2 = Uri.parse(str);
                        if (!parse2.getScheme().equals(ProxyConfig.MATCH_HTTP) && !parse2.getScheme().equals("https")) {
                            str = stringExtra;
                        }
                        webView.loadUrl(stringExtra);
                        return false;
                    }
                }
                if (com.mbridge.msdk.click.c.d(this.f27579i, str)) {
                    p0.b(f27570o, "openDeepLink");
                    this.f27582l = true;
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            p0.b(f27570o, th2.getMessage());
            return false;
        }
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void c(WebView webView, String str) {
        if (this.f27584n == 0) {
            this.f27584n = System.currentTimeMillis();
            if (!this.f27574d) {
                this.f27574d = true;
                d();
            }
        }
        this.f27573c = str;
        this.f27572b = true;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public boolean b(WebView webView, String str) {
        String str2 = f27570o;
        p0.b(str2, "shouldOverrideUrlLoading1  " + str);
        this.f27572b = false;
        if (t0.a.b(str) && t0.a.a(this.f27579i, str, null)) {
            this.f27582l = true;
        }
        boolean e10 = e(webView, str);
        if (e10) {
            this.f27584n = 0L;
            this.f27572b = false;
            c();
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new b(str));
        }
        return e10;
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a(WebView webView, String str, Bitmap bitmap) {
        if (this.f27584n == 0) {
            this.f27584n = System.currentTimeMillis();
            if (!this.f27574d) {
                this.f27574d = true;
                d();
            }
            this.f27582l = false;
        }
        this.f27573c = str;
        this.f27572b = true;
    }

    private void c() {
        this.f27580j.removeCallbacks(this.f27583m);
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a(WebView webView, String str) {
        String str2 = f27570o;
        p0.b(str2, "onPageFinished1  " + str);
        if (this.f27572b) {
            this.f27584n = 0L;
            this.f27572b = false;
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new c(str));
            if (TextUtils.isEmpty(str)) {
                return;
            }
            c();
            Uri parse = Uri.parse(str);
            if ((parse.getScheme().equals(ProxyConfig.MATCH_HTTP) || parse.getScheme().equals("https")) && !this.f27582l) {
                this.f27582l = true;
                a(this.f27579i, str, this.f27577g);
            }
        }
    }

    private void d() {
        this.f27580j.postDelayed(this.f27583m, this.f27571a);
    }

    @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
    public void a(WebView webView, int i10, String str, String str2) {
        p0.d(f27570o, str);
        c();
        com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new d(str2, str));
        if (!d(webView, str2) || this.f27582l) {
            return;
        }
        this.f27582l = true;
        a(this.f27579i, str2, this.f27577g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, CampaignEx campaignEx) {
        if (context == null) {
            return;
        }
        if (campaignEx != null) {
            campaignEx.getCurrentLocalRid();
        }
        try {
            int i10 = MBCommonActivity.f25724e;
            Intent intent = new Intent(context, MBCommonActivity.class);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.foundation.webview.b.f27593a.put(str, this.f27576f);
            if (t0.a.d(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
            }
            intent.putExtra("url", str);
            p0.c("url", "webview url = " + str);
            intent.setFlags(805306368);
            intent.putExtra("mvcommon", campaignEx);
            context.startActivity(intent);
        } catch (Exception unused) {
            t0.a(context, str, this.f27575e, campaignEx, new ArrayList());
        }
    }
}
