package com.startshorts.androidplayer.ui.activity.ad;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.startshorts.androidplayer.R$dimen;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.ActivityThirdAdBinding;
import com.startshorts.androidplayer.ui.activity.ad.ThirdAdActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThirdAdActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nThirdAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThirdAdActivity.kt\ncom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1863#2,2:236\n1#3:238\n*S KotlinDebug\n*F\n+ 1 ThirdAdActivity.kt\ncom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity\n*L\n88#1:236,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ThirdAdActivity extends BaseVDBActivity<ActivityThirdAdBinding> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f44952o = new a(null);
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f44953l;

    /* renamed from: m  reason: collision with root package name */
    private final int f44954m = R$layout.activity_third_ad;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final String f44955n = "ThirdAdActivity";

    /* compiled from: ThirdAdActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, @NotNull String url) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(url, "url");
            Intent intent = new Intent(context, ThirdAdActivity.class);
            intent.putExtra("url", url);
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThirdAdActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public final class b {
        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(ThirdAdActivity thirdAdActivity) {
            ThirdAdActivity.J(thirdAdActivity).f38553e.destroy();
            thirdAdActivity.v();
            thirdAdActivity.finish();
        }

        @JavascriptInterface
        public final void close() {
            final ThirdAdActivity thirdAdActivity = ThirdAdActivity.this;
            thirdAdActivity.runOnUiThread(new Runnable() { // from class: com.startshorts.androidplayer.ui.activity.ad.a
                @Override // java.lang.Runnable
                public final void run() {
                    ThirdAdActivity.b.b(ThirdAdActivity.this);
                }
            });
        }

        @JavascriptInterface
        public final void openBrowser(@NotNull String url) {
            Intent intent;
            Intrinsics.checkNotNullParameter(url, "url");
            try {
                if (StringsKt.V(url, CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, false, 2, null)) {
                    intent = Intent.parseUri(url, 1);
                } else {
                    intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(url));
                }
                if (intent != null) {
                    ThirdAdActivity thirdAdActivity = ThirdAdActivity.this;
                    if (thirdAdActivity.O()) {
                        intent.setPackage(thirdAdActivity.L());
                    }
                    intent.addCategory("android.intent.category.BROWSABLE");
                    intent.setComponent(null);
                    intent.setFlags(268435456);
                    thirdAdActivity.startActivity(intent);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: ThirdAdActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ThirdAdActivity.this.finish();
        }
    }

    /* compiled from: ThirdAdActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ThirdAdActivity.this.s("reload ThirdAdActivity webview");
            ThirdAdActivity.J(ThirdAdActivity.this).f38553e.reload();
        }
    }

    public static final /* synthetic */ ActivityThirdAdBinding J(ThirdAdActivity thirdAdActivity) {
        return thirdAdActivity.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String L() {
        ActivityInfo activityInfo;
        String str;
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse("https://"));
        ResolveInfo resolveActivity = getApplicationContext().getPackageManager().resolveActivity(intent, 65536);
        String str2 = null;
        if (resolveActivity != null) {
            activityInfo = resolveActivity.activityInfo;
        } else {
            activityInfo = null;
        }
        if (activityInfo != null) {
            str = resolveActivity.activityInfo.packageName;
        } else {
            str = null;
        }
        if (str == null || Intrinsics.areEqual(str, "android")) {
            List<ResolveInfo> queryIntentActivities = getApplicationContext().getPackageManager().queryIntentActivities(intent, 0);
            Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "queryIntentActivities(...)");
            String str3 = null;
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                ActivityInfo activityInfo2 = resolveInfo.activityInfo;
                if ((activityInfo2.flags & 1) != 0) {
                    str2 = activityInfo2.packageName;
                } else {
                    str3 = activityInfo2.packageName;
                    if (str3 != null) {
                        arrayList.add(str3);
                    }
                }
            }
            if (arrayList.contains("com.android.chrome")) {
                str = "com.android.chrome";
            } else if (str2 == null) {
                if (str3 != null) {
                    str = str3;
                }
            } else {
                str = str2;
            }
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    private final void M() {
        ConstraintLayout constraintLayout = E().f38555g;
        ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
        layoutParams.height = DeviceUtil.f48146a.J() + ((int) u.f51776a.c().getDimension(R$dimen.toolbar_view_height));
        constraintLayout.setLayoutParams(layoutParams);
        E().f38549a.setOnClickListener(new c());
        E().f38552d.setOnClickListener(new d());
    }

    @SuppressLint({"SetJavaScriptEnabled", "JavascriptInterface"})
    private final void N() {
        WebView webView = E().f38553e;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.getSettings().setDisplayZoomControls(false);
        webView.getSettings().setTextZoom(100);
        webView.getSettings().setSupportZoom(true);
        webView.addJavascriptInterface(new b(), "shortTvMax");
        webView.setWebViewClient(new WebViewClient());
        String str = this.f44953l;
        if (str != null) {
            webView.loadUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean O() {
        return StringsKt.G("huawei", Build.MANUFACTURER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(ThirdAdActivity thirdAdActivity, View view) {
        thirdAdActivity.finish();
    }

    private final void Q() {
        String queryParameter;
        Uri parse = Uri.parse(this.f44953l);
        if (parse.getQueryParameter("did") != null) {
            String m10 = ud.a.f68411a.m();
            if (m10.length() > 0) {
                Uri.Builder clearQuery = parse.buildUpon().clearQuery();
                Set<String> queryParameterNames = parse.getQueryParameterNames();
                Intrinsics.checkNotNullExpressionValue(queryParameterNames, "getQueryParameterNames(...)");
                for (String str : queryParameterNames) {
                    if (Intrinsics.areEqual(str, "did")) {
                        queryParameter = m10;
                    } else {
                        queryParameter = parse.getQueryParameter(str);
                    }
                    clearQuery.appendQueryParameter(str, queryParameter);
                }
                this.f44953l = clearQuery.build().toString();
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return this.f44954m;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onBackPressed() {
        boolean canGoBack = E().f38553e.canGoBack();
        s("onBackPressed -> canGoBack=" + canGoBack);
        if (canGoBack) {
            E().f38553e.goBack();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        try {
            super.onCreate(bundle);
            fk.a.f51702a.h(this);
            String stringExtra = getIntent().getStringExtra("url");
            this.f44953l = stringExtra;
            if (stringExtra != null && !v.g(stringExtra)) {
                m("ThirdAdActivity --> Not a website address");
                finish();
            }
            M();
            Q();
            v.o(this.f44953l);
            N();
            E().f38550b.setOnClickListener(new View.OnClickListener() { // from class: rh.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThirdAdActivity.P(ThirdAdActivity.this, view);
                }
            });
        } catch (Exception e10) {
            m("show ThirdAdActivity failed -> " + e10.getMessage());
            finish();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return this.f44955n;
    }
}
