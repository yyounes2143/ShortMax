package com.startshorts.androidplayer.ui.activity.act;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
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
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.app.AlertDialog;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import ce.j;
import com.startshorts.androidplayer.R$dimen;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.act.ActCallH5Message;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.H5Result;
import com.startshorts.androidplayer.bean.act.H5ShowLayoutParam;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.eventbus.AppStateEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshActEvent;
import com.startshorts.androidplayer.bean.eventbus.TTPResultEvent;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.databinding.ActivityActBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.o;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.act.ActActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity;
import com.startshorts.androidplayer.ui.dialog.immersion.a;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.a;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import fk.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import jk.l;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: ActActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActActivity.kt\ncom/startshorts/androidplayer/ui/activity/act/ActActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,703:1\n1#2:704\n216#3,2:705\n*S KotlinDebug\n*F\n+ 1 ActActivity.kt\ncom/startshorts/androidplayer/ui/activity/act/ActActivity\n*L\n278#1:705,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ActActivity extends BaseVDBActivity<ActivityActBinding> {
    @NotNull
    public static final a B = new a(null);

    /* renamed from: l */
    private boolean f44925l;
    @Nullable

    /* renamed from: t */
    private Integer f44933t;
    @Nullable

    /* renamed from: u */
    private String f44934u;
    @Nullable

    /* renamed from: v */
    private Integer f44935v;

    /* renamed from: w */
    private boolean f44936w;

    /* renamed from: x */
    private boolean f44937x;

    /* renamed from: y */
    private boolean f44938y;
    @NotNull

    /* renamed from: m */
    private final ms.i f44926m = kotlin.c.b(new Function0() { // from class: qh.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ActResource K0;
            K0 = ActActivity.K0(ActActivity.this);
            return K0;
        }
    });
    @NotNull

    /* renamed from: n */
    private final ms.i f44927n = kotlin.c.b(new Function0() { // from class: qh.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DiscoverTab L0;
            L0 = ActActivity.L0(ActActivity.this);
            return L0;
        }
    });
    @NotNull

    /* renamed from: o */
    private final ms.i f44928o = kotlin.c.b(new Function0() { // from class: qh.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int O0;
            O0 = ActActivity.O0(ActActivity.this);
            return Integer.valueOf(O0);
        }
    });
    @NotNull

    /* renamed from: p */
    private final ms.i f44929p = kotlin.c.b(new Function0() { // from class: qh.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String P0;
            P0 = ActActivity.P0(ActActivity.this);
            return P0;
        }
    });
    @NotNull

    /* renamed from: q */
    private final ms.i f44930q = kotlin.c.b(new Function0() { // from class: qh.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String J0;
            J0 = ActActivity.J0(ActActivity.this);
            return J0;
        }
    });
    @NotNull

    /* renamed from: r */
    private final ms.i f44931r = kotlin.c.b(new Function0() { // from class: qh.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider Q0;
            Q0 = ActActivity.Q0(ActActivity.this);
            return Q0;
        }
    });
    @NotNull

    /* renamed from: s */
    private final ms.i f44932s = kotlin.c.b(new Function0() { // from class: qh.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseViewModel M0;
            M0 = ActActivity.M0(ActActivity.this);
            return M0;
        }
    });

    /* renamed from: z */
    private final int f44939z = R$layout.activity_act;
    @NotNull
    private final String A = "ActActivity";

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void c(a aVar, Context context, String str, String str2, DiscoverTab discoverTab, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                discoverTab = null;
            }
            aVar.b(context, str, str2, discoverTab);
        }

        public final void a(@NotNull Context context, @NotNull String fromPosition, @NotNull ActResource actResource, @Nullable DiscoverTab discoverTab) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(fromPosition, "fromPosition");
            Intrinsics.checkNotNullParameter(actResource, "actResource");
            Intent intent = new Intent(context, ActActivity.class);
            intent.putExtra("act_resource_data", l.d(actResource));
            intent.putExtra("fromPosition", fromPosition);
            if (discoverTab != null) {
                intent.putExtra("discover_tab", l.d(discoverTab));
            }
            context.startActivity(intent);
        }

        public final void b(@NotNull Context context, @NotNull String fromPosition, @NotNull String actUrl, @Nullable DiscoverTab discoverTab) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(fromPosition, "fromPosition");
            Intrinsics.checkNotNullParameter(actUrl, "actUrl");
            Intent intent = new Intent(context, ActActivity.class);
            intent.putExtra("act_resource_url", actUrl);
            intent.putExtra("fromPosition", fromPosition);
            if (discoverTab != null) {
                intent.putExtra("discover_tab", l.d(discoverTab));
            }
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public final class b {
        public b() {
            ActActivity.this = r1;
        }

        public static final Unit e(final ActActivity actActivity, int i10, JSONObject jSONObject) {
            if (i10 == 2) {
                actActivity.f44925l = true;
            } else {
                final String str = null;
                if (i10 != 13) {
                    if (i10 == 15) {
                        if (jSONObject != null) {
                            str = jSONObject.getString("url");
                        }
                        if (str != null && str.length() != 0) {
                            actActivity.runOnUiThread(new Runnable() { // from class: com.startshorts.androidplayer.ui.activity.act.d
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ActActivity.b.f(ActActivity.this, str);
                                }
                            });
                        }
                    }
                } else {
                    if (jSONObject != null) {
                        str = jSONObject.getString("key");
                    }
                    if (str != null && str.length() != 0) {
                        CookieManager cookieManager = CookieManager.getInstance();
                        String y02 = actActivity.y0();
                        cookieManager.setCookie(y02, str + "=; Expires=Wed, 31 Dec 2015 23:59:59 GMT");
                        cookieManager.flush();
                    }
                }
            }
            return Unit.f60915a;
        }

        public static final void f(ActActivity actActivity, String str) {
            actActivity.F0(str, false);
        }

        public static final Unit g(ActActivity actActivity, String skuId, int i10) {
            Intrinsics.checkNotNullParameter(skuId, "skuId");
            actActivity.f44934u = skuId;
            actActivity.f44935v = Integer.valueOf(i10);
            actActivity.f44936w = true;
            return Unit.f60915a;
        }

        public static final Unit h(ActActivity actActivity, String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            actActivity.o0(it);
            return Unit.f60915a;
        }

        @JavascriptInterface
        public final void callApp(@NotNull String data) {
            Intrinsics.checkNotNullParameter(data, "data");
            j jVar = j.f3485a;
            ActActivity actActivity = ActActivity.this;
            ActResource s02 = actActivity.s0();
            final ActActivity actActivity2 = ActActivity.this;
            Function2<? super Integer, ? super JSONObject, Unit> function2 = new Function2() { // from class: com.startshorts.androidplayer.ui.activity.act.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit e10;
                    e10 = ActActivity.b.e(ActActivity.this, ((Integer) obj).intValue(), (JSONObject) obj2);
                    return e10;
                }
            };
            final ActActivity actActivity3 = ActActivity.this;
            Function2<? super String, ? super Integer, Unit> function22 = new Function2() { // from class: com.startshorts.androidplayer.ui.activity.act.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit g10;
                    g10 = ActActivity.b.g(ActActivity.this, (String) obj, ((Integer) obj2).intValue());
                    return g10;
                }
            };
            final ActActivity actActivity4 = ActActivity.this;
            jVar.q(true, "ActActivity", actActivity, s02, data, function2, function22, new Function1() { // from class: com.startshorts.androidplayer.ui.activity.act.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit h10;
                    h10 = ActActivity.b.h(ActActivity.this, (String) obj);
                    return h10;
                }
            });
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d() {
            super(0L, 1, null);
            ActActivity.this = r4;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ActActivity.this.finish();
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e() {
            super(0L, 1, null);
            ActActivity.this = r4;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ActActivity.this.s("reload webview");
            ActActivity.this.f44937x = false;
            ActActivity.Z(ActActivity.this).f38137c.reload();
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends WebChromeClient {
        f() {
            ActActivity.this = r1;
        }

        public static final void b(ActActivity actActivity, int i10) {
            ProgressBar progressBar = ActActivity.Z(actActivity).f38140f;
            progressBar.setVisibility(0);
            progressBar.setProgress(i10);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, final int i10) {
            if (!ActActivity.this.f44937x) {
                final ActActivity actActivity = ActActivity.this;
                actActivity.runOnUiThread(new Runnable() { // from class: qh.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActActivity.f.b(ActActivity.this, i10);
                    }
                });
            }
            if (i10 >= 99 && !ActActivity.this.f44937x) {
                ActActivity.this.f44938y = true;
                ActActivity.this.B0();
            }
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends WebViewClient {
        g() {
            ActActivity.this = r1;
        }

        public static final void d(SslErrorHandler sslErrorHandler, DialogInterface dialogInterface, int i10) {
            sslErrorHandler.proceed();
        }

        public static final void e(SslErrorHandler sslErrorHandler, DialogInterface dialogInterface, int i10) {
            sslErrorHandler.cancel();
        }

        public static final boolean f(SslErrorHandler sslErrorHandler, DialogInterface dialog, int i10, KeyEvent event) {
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            Intrinsics.checkNotNullParameter(event, "event");
            if (event.getAction() == 1 && i10 == 4) {
                sslErrorHandler.cancel();
                dialog.dismiss();
                return true;
            }
            return false;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            ActActivity actActivity = ActActivity.this;
            actActivity.s("onPageFinished url=" + str);
            if (!ActActivity.this.f44937x) {
                ActActivity.this.B0();
            }
            ActActivity.this.f44925l = false;
            ActActivity.this.f44938y = false;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            ActActivity actActivity = ActActivity.this;
            actActivity.s("onPageStarted url=" + str);
            ActActivity.this.f44937x = false;
            ActActivity.this.f44938y = false;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Uri uri;
            Integer num;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            ActActivity actActivity = ActActivity.this;
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
            actActivity.m(sb2.toString());
            ActActivity.this.f44937x = true;
            ActActivity.this.z0();
            if (ActActivity.this.f44938y) {
                ActActivity.this.B0();
            } else {
                ActActivity.this.V0();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            Uri uri;
            Integer num;
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            ActActivity actActivity = ActActivity.this;
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
            actActivity.m(sb2.toString());
            ActActivity.this.f44937x = true;
            ActActivity.this.z0();
            ActActivity.this.V0();
        }

        @Override // android.webkit.WebViewClient
        @SuppressLint({"WebViewClientOnReceivedSslError"})
        public void onReceivedSslError(WebView view, final SslErrorHandler handler, SslError sslError) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(handler, "handler");
            AlertDialog.Builder builder = new AlertDialog.Builder(ActActivity.this);
            builder.setMessage(R$string.common_ssl_verified_fail);
            builder.setPositiveButton(R$string.common_continue, new DialogInterface.OnClickListener() { // from class: qh.r
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    ActActivity.g.d(handler, dialogInterface, i10);
                }
            });
            builder.setNegativeButton(R$string.common_cancel, new DialogInterface.OnClickListener() { // from class: qh.s
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    ActActivity.g.e(handler, dialogInterface, i10);
                }
            });
            builder.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: qh.t
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    boolean f10;
                    f10 = ActActivity.g.f(handler, dialogInterface, i10, keyEvent);
                    return f10;
                }
            });
            builder.create().show();
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements a.b {
        h() {
            ActActivity.this = r1;
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void a() {
            ActActivity.this.u0().Y(new a.i(null, null, 3, null));
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void onDismiss() {
            a.b.C0634a.a(this);
        }
    }

    /* compiled from: ActActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements Observer, FunctionAdapter {

        /* renamed from: a */
        private final /* synthetic */ Function1 f44946a;

        i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f44946a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f44946a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f44946a.invoke(obj);
        }
    }

    public static final void A0(ActActivity actActivity) {
        actActivity.E().f38140f.setVisibility(8);
    }

    public final void B0() {
        runOnUiThread(new Runnable() { // from class: qh.f
            @Override // java.lang.Runnable
            public final void run() {
                ActActivity.C0(ActActivity.this);
            }
        });
    }

    public static final void C0(ActActivity actActivity) {
        actActivity.E().f38143i.setVisibility(8);
    }

    private final void D0() {
        int i10;
        ConstraintLayout constraintLayout = E().f38143i;
        ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
        int dimension = (int) u.f51776a.c().getDimension(R$dimen.toolbar_view_height);
        if (v0() == 0) {
            i10 = DeviceUtil.f48146a.J();
        } else {
            i10 = 0;
        }
        layoutParams.height = i10 + dimension;
        constraintLayout.setLayoutParams(layoutParams);
        constraintLayout.setOnClickListener(new c());
        E().f38139e.setOnClickListener(new d());
        E().f38141g.setOnClickListener(new e());
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private final void E0(String str) {
        WebView webView = E().f38137c;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.getSettings().setDisplayZoomControls(false);
        webView.getSettings().setTextZoom(100);
        webView.getSettings().setSupportZoom(true);
        webView.addJavascriptInterface(new b(), "messageHandlers");
        s("initWebView start");
        webView.setWebChromeClient(new f());
        webView.setWebViewClient(new g());
        G0(this, str, false, 2, null);
    }

    public final void F0(final String str, final boolean z10) {
        final CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        Intrinsics.checkNotNull(cookieManager);
        S0(cookieManager, new Function0() { // from class: qh.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit H0;
                H0 = ActActivity.H0(cookieManager, str, this, z10);
                return H0;
            }
        });
    }

    static /* synthetic */ void G0(ActActivity actActivity, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        actActivity.F0(str, z10);
    }

    public static final Unit H0(CookieManager cookieManager, String str, ActActivity actActivity, boolean z10) {
        int recommendId;
        int position;
        String moduleId;
        int id2;
        String aBTestIds;
        for (Map.Entry entry : o.a.b(o.f41799c, null, 1, null).entrySet()) {
            cookieManager.setCookie(str, ((String) entry.getKey()) + '=' + ((String) entry.getValue()));
        }
        cookieManager.setCookie(str, "fromPosition=" + actActivity.r0());
        cookieManager.setCookie(str, "preferDisplayStyle=" + actActivity.v0());
        cookieManager.setCookie(str, "loadingTimestamp=" + System.currentTimeMillis());
        cookieManager.setCookie(str, "statusBarHeight=" + DeviceUtil.f48146a.J());
        cookieManager.setCookie(str, "openType=app");
        cookieManager.setCookie(str, "scene=activity_page");
        ud.b bVar = ud.b.f68412a;
        CMSConfigResult f02 = bVar.f0();
        if (f02 != null && (aBTestIds = f02.getABTestIds()) != null) {
            cookieManager.setCookie(str, "cmsAbTestId=" + aBTestIds);
        }
        ActResource s02 = actActivity.s0();
        if (s02 != null && (id2 = s02.getId()) != -1) {
            cookieManager.setCookie(str, "resourceBitId=" + id2);
        }
        ActResource s03 = actActivity.s0();
        if (s03 != null && (moduleId = s03.getModuleId()) != null && moduleId.length() > 0) {
            cookieManager.setCookie(str, "moduleId=" + moduleId);
        }
        ActResource s04 = actActivity.s0();
        if (s04 != null && (position = s04.getPosition()) != -1) {
            cookieManager.setCookie(str, "positionId=" + position);
        }
        ActResource s05 = actActivity.s0();
        if (s05 != null && (recommendId = s05.getRecommendId()) > 0) {
            cookieManager.setCookie(str, "audienceRecommendId=" + recommendId);
        }
        cookieManager.setCookie(str, "caseId=" + ABTestFactory.f42224a.f1().abTestIntValue());
        DiscoverTab t02 = actActivity.t0();
        if (t02 != null) {
            cookieManager.setCookie(str, "tabId=" + t02.getTabId());
            cookieManager.setCookie(str, "tabName=" + t02.getTabDisplayName());
        }
        try {
            String e10 = bVar.e();
            if (e10 != null && e10.length() != 0) {
                actActivity.s("set externalCookie -> " + e10);
                JSONObject jSONObject = new JSONObject(e10);
                Iterator<String> keys = jSONObject.keys();
                Intrinsics.checkNotNull(keys);
                while (keys.hasNext()) {
                    String next = keys.next();
                    cookieManager.setCookie(str, next + '=' + jSONObject.get(next));
                }
            }
        } catch (Exception e11) {
            actActivity.m("parse ActCookie failed -> " + e11.getMessage());
        }
        cookieManager.flush();
        actActivity.s("loadUrlWithCookie -> reload(" + z10 + ") url(" + str + ") Cookies(" + cookieManager.getCookie(str) + ')');
        if (z10) {
            actActivity.E().f38137c.reload();
        } else {
            actActivity.E().f38137c.loadUrl(str);
        }
        return Unit.f60915a;
    }

    private final void I0(String str) {
        EventManager.f42463a.h1(this.f44934u, str, this.f44935v, 0);
    }

    public static final String J0(ActActivity actActivity) {
        try {
            String stringExtra = actActivity.getIntent().getStringExtra("fromPosition");
            if (stringExtra == null) {
                return "";
            }
            return stringExtra;
        } catch (Exception e10) {
            actActivity.m("getActFromPosition exception -> " + e10.getMessage());
            return "";
        }
    }

    public static final ActResource K0(ActActivity actActivity) {
        String stringExtra = actActivity.getIntent().getStringExtra("act_resource_data");
        if (stringExtra != null) {
            return (ActResource) l.b(stringExtra, ActResource.class);
        }
        return null;
    }

    public static final DiscoverTab L0(ActActivity actActivity) {
        String stringExtra = actActivity.getIntent().getStringExtra("discover_tab");
        if (stringExtra != null) {
            return (DiscoverTab) l.b(stringExtra, DiscoverTab.class);
        }
        return null;
    }

    public static final PurchaseViewModel M0(ActActivity actActivity) {
        PurchaseViewModel purchaseViewModel = (PurchaseViewModel) actActivity.x0().get(PurchaseViewModel.class);
        purchaseViewModel.R().observe(actActivity, new i(new Function1() { // from class: qh.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit N0;
                N0 = ActActivity.N0(ActActivity.this, (com.startshorts.androidplayer.viewmodel.purchase.b) obj);
                return N0;
            }
        }));
        return purchaseViewModel;
    }

    public static final Unit N0(ActActivity actActivity, com.startshorts.androidplayer.viewmodel.purchase.b bVar) {
        if (bVar instanceof b.g) {
            b.g gVar = (b.g) bVar;
            Integer orderStatus = gVar.a().getOrderStatus();
            Integer num = actActivity.f44933t;
            if (num != null) {
                int intValue = num.intValue();
                String str = "";
                if (intValue != 0) {
                    if (intValue == 1) {
                        if (orderStatus != null && orderStatus.intValue() == 1) {
                            actActivity.x(R$string.subscription_detail_activity_subs_success);
                            actActivity.o0(H5Result.RESULT_PAYMENT_SUCCEED);
                            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                            actActivity.I0("success");
                            MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
                            String currencyCode = gVar.a().getCurrencyCode();
                            if (currencyCode == null) {
                                currencyCode = "";
                            }
                            String price = gVar.a().getPrice();
                            if (price == null) {
                                price = "";
                            }
                            String orderNo = gVar.a().getOrderNo();
                            if (orderNo != null) {
                                str = orderNo;
                            }
                            matchEventUtil.h(currencyCode, price, str);
                        } else {
                            actActivity.x(R$string.payment_failure);
                            actActivity.I0("failure");
                        }
                    }
                } else if (orderStatus != null && orderStatus.intValue() == 2) {
                    actActivity.x(R$string.top_up_fragment_recharge_success);
                    actActivity.o0(H5Result.RESULT_PAYMENT_SUCCEED);
                    AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                    actActivity.I0("success");
                    MatchEventUtil matchEventUtil2 = MatchEventUtil.f48183a;
                    String currencyCode2 = gVar.a().getCurrencyCode();
                    if (currencyCode2 == null) {
                        currencyCode2 = "";
                    }
                    String price2 = gVar.a().getPrice();
                    if (price2 == null) {
                        price2 = "";
                    }
                    String orderNo2 = gVar.a().getOrderNo();
                    if (orderNo2 != null) {
                        str = orderNo2;
                    }
                    matchEventUtil2.g(currencyCode2, price2, str);
                } else {
                    actActivity.x(R$string.payment_failure);
                    actActivity.I0("failure");
                }
            }
        }
        return Unit.f60915a;
    }

    public static final int O0(ActActivity actActivity) {
        ActResource s02 = actActivity.s0();
        if (s02 != null) {
            return s02.getShowType();
        }
        return 0;
    }

    public static final String P0(ActActivity actActivity) {
        return actActivity.getIntent().getStringExtra("act_resource_url");
    }

    public static final ViewModelProvider Q0(ActActivity actActivity) {
        return new ViewModelProvider(actActivity);
    }

    public static final void R0(ActActivity actActivity, View view) {
        actActivity.finish();
    }

    private final void S0(CookieManager cookieManager, final Function0<Unit> function0) {
        try {
            s("removeAllCookie async");
            cookieManager.removeAllCookies(new ValueCallback() { // from class: qh.b
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    ActActivity.T0(ActActivity.this, function0, (Boolean) obj);
                }
            });
        } catch (Exception e10) {
            m("removeAllCookie async exception -> " + e10.getMessage());
        }
    }

    public static final void T0(ActActivity actActivity, Function0 function0, Boolean bool) {
        actActivity.s("removeAllCookie callback,succeed=" + bool);
        function0.invoke();
    }

    private final void U0() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int v02 = v0();
        if (v02 != 0) {
            if (v02 != 1) {
                if (v02 == 2) {
                    H5ShowLayoutParam h5ShowLayoutParam = H5ShowLayoutParam.INSTANCE;
                    int embedded_padding = h5ShowLayoutParam.getEMBEDDED_PADDING();
                    i11 = 17;
                    i10 = h5ShowLayoutParam.getEMBEDDED_HEIGHT();
                    i14 = embedded_padding;
                    i13 = h5ShowLayoutParam.getRADIUS();
                    i12 = 0;
                }
            } else {
                H5ShowLayoutParam h5ShowLayoutParam2 = H5ShowLayoutParam.INSTANCE;
                int half_screen_height = h5ShowLayoutParam2.getHALF_SCREEN_HEIGHT();
                i12 = h5ShowLayoutParam2.getRADIUS();
                i11 = 80;
                i10 = half_screen_height;
                i13 = i12;
                i14 = 0;
            }
            s("setShowParams -> yOffset=" + i12 + " padding=" + i14 + " height=" + i10 + " gravity=" + i11);
            E().f38136b.setPadding(i14, i14, i14, i14);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, i10);
            layoutParams.gravity = i11;
            CardView cardView = E().f38135a;
            cardView.setLayoutParams(layoutParams);
            cardView.setRadius((float) i13);
            cardView.setTranslationY((float) i12);
            E().f38138d.setPadding(0, 0, 0, i12);
        }
        i10 = -1;
        i11 = 80;
        i12 = 0;
        i13 = 0;
        i14 = 0;
        s("setShowParams -> yOffset=" + i12 + " padding=" + i14 + " height=" + i10 + " gravity=" + i11);
        E().f38136b.setPadding(i14, i14, i14, i14);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, i10);
        layoutParams2.gravity = i11;
        CardView cardView2 = E().f38135a;
        cardView2.setLayoutParams(layoutParams2);
        cardView2.setRadius((float) i13);
        cardView2.setTranslationY((float) i12);
        E().f38138d.setPadding(0, 0, 0, i12);
    }

    public final void V0() {
        runOnUiThread(new Runnable() { // from class: qh.c
            @Override // java.lang.Runnable
            public final void run() {
                ActActivity.W0(ActActivity.this);
            }
        });
    }

    public static final void W0(ActActivity actActivity) {
        actActivity.E().f38143i.setVisibility(0);
    }

    public static final /* synthetic */ ActivityActBinding Z(ActActivity actActivity) {
        return actActivity.E();
    }

    public final void o0(final String str) {
        s("callH5 -> data=" + str);
        runOnUiThread(new Runnable() { // from class: qh.a
            @Override // java.lang.Runnable
            public final void run() {
                ActActivity.p0(ActActivity.this, str);
            }
        });
    }

    public static final void p0(ActActivity actActivity, String str) {
        WebView webView = actActivity.E().f38137c;
        webView.evaluateJavascript("javascript:callH5('" + str + "')", new ValueCallback() { // from class: qh.g
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                ActActivity.q0(ActActivity.this, (String) obj);
            }
        });
    }

    public static final void q0(ActActivity actActivity, String str) {
        actActivity.s("callH5 -> valueCallback " + str);
    }

    private final String r0() {
        return (String) this.f44930q.getValue();
    }

    public final ActResource s0() {
        return (ActResource) this.f44926m.getValue();
    }

    private final DiscoverTab t0() {
        return (DiscoverTab) this.f44927n.getValue();
    }

    public final PurchaseViewModel u0() {
        return (PurchaseViewModel) this.f44932s.getValue();
    }

    private final int v0() {
        return ((Number) this.f44928o.getValue()).intValue();
    }

    private final String w0() {
        return (String) this.f44929p.getValue();
    }

    private final ViewModelProvider x0() {
        return (ViewModelProvider) this.f44931r.getValue();
    }

    public final String y0() {
        String str;
        String w02 = w0();
        if (w02 != null && !StringsKt.t0(w02)) {
            s("getUrl -> url=" + w0());
            return v.o(w0());
        }
        ActResource s02 = s0();
        if (s02 != null) {
            str = s02.getSkipValue();
        } else {
            str = null;
        }
        if (str != null && !StringsKt.t0(str)) {
            s("getActUrl -> actUrl=" + str);
            return v.o(str);
        }
        m("getUrl failed -> url is null");
        return null;
    }

    public final void z0() {
        runOnUiThread(new Runnable() { // from class: qh.d
            @Override // java.lang.Runnable
            public final void run() {
                ActActivity.A0(ActActivity.this);
            }
        });
    }

    @Override // android.app.Activity
    public void finish() {
        HashMap hashMap = new HashMap();
        hashMap.put("type", 3);
        hashMap.put("timestamp", Long.valueOf(DeviceUtil.f48146a.K()));
        Unit unit = Unit.f60915a;
        o0(l.d(new ActCallH5Message(4, hashMap)));
        super.finish();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return this.f44939z;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onBackPressed() {
        boolean canGoBack = E().f38137c.canGoBack();
        s("onBackPressed -> canGoBack=" + canGoBack);
        if (canGoBack) {
            E().f38137c.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        try {
            super.onCreate(bundle);
            ed.a aVar = ed.a.f51339a;
            aVar.b(this, true);
            aVar.a(this);
            D0();
            U0();
            String y02 = y0();
            if (y02 != null) {
                E0(y02);
            }
            E().f38136b.setOnClickListener(new View.OnClickListener() { // from class: qh.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActActivity.R0(ActActivity.this, view);
                }
            });
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ActActivity", "show ActActivity failed -> " + e10.getMessage());
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f44925l) {
            o0(H5Result.RESULT_PAYMENT_REFRESH);
            this.f44925l = false;
        }
        ud.a aVar = ud.a.f68411a;
        if (aVar.O()) {
            aVar.p0(false);
            new com.startshorts.androidplayer.ui.dialog.immersion.a(this, new h()).show();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return this.A;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        s("receive AcknowledgePurchaseResult -> " + result);
        o0(H5Result.RESULT_RESTORE_SUCCEED);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAppStateEvent(@NotNull AppStateEvent event) {
        int i10;
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive AppStateEvent -> " + event);
        HashMap hashMap = new HashMap();
        if (event.isOnForeground()) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        hashMap.put("type", Integer.valueOf(i10));
        hashMap.put("timestamp", Long.valueOf(DeviceUtil.f48146a.K()));
        Unit unit = Unit.f60915a;
        o0(l.d(new ActCallH5Message(4, hashMap)));
        if (event.getState() == 2 && this.f44936w) {
            ud.a.f68411a.p0(true);
            this.f44936w = false;
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive RefreshAccountEvent");
        String y02 = y0();
        if (y02 != null) {
            F0(y02, true);
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshActEvent(@NotNull RefreshActEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive RefreshActEvent");
        String y02 = y0();
        if (y02 != null) {
            F0(y02, true);
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveTTPResultEvent(@NotNull TTPResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("Activity Page Receive OtherPayResult");
        this.f44933t = event.getOrderType();
        u0().Y(new a.i(event.getOrderNo(), event.getOrderType()));
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        try {
            WebView webView = E().f38137c;
            webView.loadUrl("about:blank");
            webView.removeAllViews();
            webView.destroy();
            Intrinsics.checkNotNull(webView);
        } catch (Exception e10) {
            m("release webview exception -> " + e10.getMessage());
        }
        j.f3485a.h("ActActivity");
        IntentUtil.f48164a.b(this);
        if (Intrinsics.areEqual(r0(), "outsideTheApp")) {
            fk.a aVar = fk.a.f51702a;
            if (aVar.c()) {
                aVar.g(this);
            } else {
                fk.a.j(aVar, true, false, 2, null);
            }
        }
    }
}
