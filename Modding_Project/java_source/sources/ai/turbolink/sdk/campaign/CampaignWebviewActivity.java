package ai.turbolink.sdk.campaign;

import ai.turbolink.sdk.R;
import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignBuilder;
import ai.turbolink.sdk.campaign.properties.CampaignCallbackProperties;
import ai.turbolink.sdk.campaign.webview.CampaignWebViewClient;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.mbridge.msdk.MBridgeConstans;
import java.io.ByteArrayInputStream;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignWebviewActivity.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignWebviewActivity extends AppCompatActivity {
    private View errorView;
    private boolean isTriggerLoginListener;
    private ImageView loadingImage;
    private View loadingOverlay;
    private long pageViewBeginTime;
    private long pageViewEndTime;
    private Button retryBtn;
    @Nullable
    private TurboLinkCampaignLayout turbolinkActionBar;
    private WebView webview;
    @NotNull
    private String campaignTitle = "";
    @NotNull
    private String _webviewUrl = "";
    @NotNull
    private String campaignHashId = "";

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: closeLoadingOverlay$lambda-6  reason: not valid java name */
    public static final void m2closeLoadingOverlay$lambda6(CampaignWebviewActivity this$0, CampaignWebviewActivity thisActivity) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(thisActivity, "$thisActivity");
        View view = thisActivity.loadingOverlay;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingOverlay");
            view = null;
        }
        view.setVisibility(8);
    }

    private final void enableFullScreenMode() {
        getWindow().getDecorView().setSystemUiVisibility(14082);
    }

    private final String encryptURL(String str) {
        String str2;
        long currentTimestamp = TurboLinkUtil.INSTANCE.getCurrentTimestamp() / 1000;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AppPrefHelper.Companion companion = AppPrefHelper.Companion;
        String app_campaign_user_tag = companion.getAPP_CAMPAIGN_USER_TAG();
        TurboLink.Companion companion2 = TurboLink.Companion;
        linkedHashMap.put(app_campaign_user_tag, companion2.getUserId());
        linkedHashMap.put(companion.getAPP_CAMPAIGN_LV_TAG(), companion2.getUserLevel());
        String app_campaign_language_tag = companion.getAPP_CAMPAIGN_LANGUAGE_TAG();
        TurboLink.Campaign campaign = TurboLink.Campaign.INSTANCE;
        linkedHashMap.put(app_campaign_language_tag, campaign.getLang());
        linkedHashMap.put(companion.getAPP_CAMPAIGN_TIME_TAG(), String.valueOf(currentTimestamp));
        linkedHashMap.put(companion.getAPP_CAMPAIGN_BLACKBOX_TAG(), companion2.getBlackbox());
        linkedHashMap.put(companion.getAPP_CAMPAIGN_VERSION_TAG(), companion.getCURRENT_ENCRYPT_VERSION());
        linkedHashMap.put(companion.getAPP_CAMPAIGN_PLATFORM_TAG(), MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        String app_campaign_full_screen = companion.getAPP_CAMPAIGN_FULL_SCREEN();
        if (campaign.getFullScreenMode()) {
            str2 = "1";
        } else {
            str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        linkedHashMap.put(app_campaign_full_screen, str2);
        linkedHashMap.put(companion.getAPP_CAMPAIGN_CUSTOM_PARAMS(), campaign.getCustomParams());
        String str3 = str;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            str3 = TurboLinkUtil.INSTANCE.removeParameterFromURL(str3, (String) entry.getKey());
        }
        TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
        AppPrefHelper.Companion companion3 = AppPrefHelper.Companion;
        String addParametersToURL = turboLinkUtil.addParametersToURL(turboLinkUtil.removeParameterFromURL(str3, companion3.getAPP_CAMPAIGN_TOKEN_TAG()), linkedHashMap);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%s%s%s%s%s%s%s%s%s", Arrays.copyOf(new Object[]{linkedHashMap.get(companion3.getAPP_CAMPAIGN_USER_TAG()), linkedHashMap.get(companion3.getAPP_CAMPAIGN_LV_TAG()), linkedHashMap.get(companion3.getAPP_CAMPAIGN_LANGUAGE_TAG()), linkedHashMap.get(companion3.getAPP_CAMPAIGN_TIME_TAG()), linkedHashMap.get(companion3.getAPP_CAMPAIGN_BLACKBOX_TAG()), linkedHashMap.get(companion3.getAPP_CAMPAIGN_VERSION_TAG()), linkedHashMap.get(companion3.getAPP_CAMPAIGN_PLATFORM_TAG()), companion3.getKEY_APPSECRET(), getAppEncrypt(currentTimestamp)}, 9));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return turboLinkUtil.addParameterToURL(addParametersToURL, companion3.getAPP_CAMPAIGN_TOKEN_TAG(), turboLinkUtil.getMD5(format));
    }

    private final String getAppEncrypt(long j10) {
        int i10 = (int) (j10 % 100);
        String substring = "5CfUxPK7avjguYtG8yAE4ud6n9s774zVVdKwSxPryzaKHSpS4Lgju4M7sLumdLuQWXpHC6peBp2afBwEBbYnENGbZWfkZ6n4s52D3Xye59bfeK4gS9nfjehK".substring(i10, i10 + 12);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    private final void hideErrorPage() {
        WebView webView = this.webview;
        View view = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView = null;
        }
        webView.setVisibility(0);
        View view2 = this.errorView;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("errorView");
        } else {
            view = view2;
        }
        view.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final void m3onCreate$lambda0(CampaignWebviewActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WebView webView = this$0.webview;
        WebView webView2 = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView = null;
        }
        if (webView.canGoBack()) {
            WebView webView3 = this$0.webview;
            if (webView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
            } else {
                webView2 = webView3;
            }
            webView2.goBack();
            return;
        }
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-1  reason: not valid java name */
    public static final WindowInsetsCompat m4onCreate$lambda1(View view, WindowInsetsCompat windowInsetsCompat) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(windowInsetsCompat, "windowInsetsCompat");
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars());
        Intrinsics.checkNotNullExpressionValue(insets, "windowInsetsCompat.getIn…Compat.Type.statusBars())");
        Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "windowInsetsCompat.getIn…at.Type.navigationBars())");
        view.setPadding(insets.left, insets.top, insets.right, insets2.bottom);
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-2  reason: not valid java name */
    public static final void m5onCreate$lambda2(CampaignWebviewActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WebView webView = this$0.webview;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView = null;
        }
        webView.loadUrl(this$0._webviewUrl);
        this$0.hideErrorPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onResume$lambda-7  reason: not valid java name */
    public static final void m6onResume$lambda7(WebView thisWebview) {
        Intrinsics.checkNotNullParameter(thisWebview, "$thisWebview");
        TurboLink.Companion companion = TurboLink.Companion;
        if (companion.getWebviewGoReloadUrl()) {
            thisWebview.loadUrl(String.valueOf(thisWebview.getUrl()));
            companion.reSetwebviewGoReloadUrl();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: openLoadingOverlay$lambda-4  reason: not valid java name */
    public static final void m7openLoadingOverlay$lambda4(CampaignWebviewActivity this$0, CampaignWebviewActivity thisActivity) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(thisActivity, "$thisActivity");
        View view = thisActivity.loadingOverlay;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingOverlay");
            view = null;
        }
        view.setBackgroundColor(Integer.MIN_VALUE);
        View view3 = thisActivity.loadingOverlay;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingOverlay");
            view3 = null;
        }
        view3.setClickable(true);
        View view4 = thisActivity.loadingOverlay;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingOverlay");
            view4 = null;
        }
        view4.setFocusable(true);
        View view5 = thisActivity.loadingOverlay;
        if (view5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingOverlay");
        } else {
            view2 = view5;
        }
        view2.setVisibility(0);
    }

    public final void closeLoadingOverlay() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ai.turbolink.sdk.campaign.e
            @Override // java.lang.Runnable
            public final void run() {
                CampaignWebviewActivity.m2closeLoadingOverlay$lambda6(CampaignWebviewActivity.this, this);
            }
        });
    }

    @NotNull
    public final String getCampaignHashId() {
        return this.campaignHashId;
    }

    public final long getPageViewBeginTime() {
        return this.pageViewBeginTime;
    }

    public final long getPageViewEndTime() {
        return this.pageViewEndTime;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        WebView webView = this.webview;
        WebView webView2 = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView = null;
        }
        if (webView.canGoBack()) {
            WebView webView3 = this.webview;
            if (webView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
            } else {
                webView2 = webView3;
            }
            webView2.goBack();
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        TurboLink.Campaign campaign = TurboLink.Campaign.INSTANCE;
        if (campaign.getFullScreenMode()) {
            enableFullScreenMode();
        }
        if (campaign.getNightMode()) {
            if (Build.VERSION.SDK_INT > 34) {
                getWindow().setBackgroundDrawableResource(17170444);
                WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
                new WindowInsetsControllerCompat(getWindow(), getWindow().getDecorView()).setAppearanceLightStatusBars(false);
            }
            setTheme(R.style.Theme_TurboLinkWebThemeNight);
        } else {
            setTheme(R.style.Theme_TurboLinkWebTheme);
        }
        if (!campaign.getScreenOrientationAll()) {
            setRequestedOrientation(1);
        }
        if (campaign.getFullScreenMode()) {
            setContentView(R.layout.webview_turbolink_fullscreen);
            View findViewById = findViewById(R.id.titleBack);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.titleBack)");
            ((Button) findViewById).setOnClickListener(new View.OnClickListener() { // from class: ai.turbolink.sdk.campaign.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CampaignWebviewActivity.m3onCreate$lambda0(CampaignWebviewActivity.this, view);
                }
            });
        } else {
            setContentView(R.layout.webview_turbolink);
            TurboLinkCampaignLayout turboLinkCampaignLayout = (TurboLinkCampaignLayout) findViewById(R.id.turbolinkActionBar);
            this.turbolinkActionBar = turboLinkCampaignLayout;
            if (turboLinkCampaignLayout != null) {
                turboLinkCampaignLayout.setTitle(campaign.getInitTitle());
            }
            if (campaign.getGoneBack()) {
                TurboLinkCampaignLayout turboLinkCampaignLayout2 = this.turbolinkActionBar;
                if (turboLinkCampaignLayout2 != null) {
                    turboLinkCampaignLayout2.setBack(false);
                }
            } else {
                TurboLinkCampaignLayout turboLinkCampaignLayout3 = this.turbolinkActionBar;
                if (turboLinkCampaignLayout3 != null) {
                    turboLinkCampaignLayout3.setBack(true);
                }
            }
            if (Build.VERSION.SDK_INT >= 35) {
                WindowCompat.setDecorFitsSystemWindows(getWindow(), true);
                ViewCompat.setOnApplyWindowInsetsListener((ViewGroup) findViewById(R.id.root_layout), new OnApplyWindowInsetsListener() { // from class: ai.turbolink.sdk.campaign.h
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        WindowInsetsCompat m4onCreate$lambda1;
                        m4onCreate$lambda1 = CampaignWebviewActivity.m4onCreate$lambda1(view, windowInsetsCompat);
                        return m4onCreate$lambda1;
                    }
                });
            }
        }
        campaign.setLastOpenWebviewActivity(this);
        View findViewById2 = findViewById(R.id.webView);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.webView)");
        this.webview = (WebView) findViewById2;
        View findViewById3 = findViewById(R.id.errorView);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.errorView)");
        this.errorView = findViewById3;
        View findViewById4 = findViewById(R.id.retryBtn);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.retryBtn)");
        this.retryBtn = (Button) findViewById4;
        View findViewById5 = findViewById(R.id.loadingOverlay);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.loadingOverlay)");
        this.loadingOverlay = findViewById5;
        View findViewById6 = findViewById(R.id.loadingLogo);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(R.id.loadingLogo)");
        this.loadingImage = (ImageView) findViewById6;
        View findViewById7 = findViewById(R.id.loadingProgressBar);
        Intrinsics.checkNotNullExpressionValue(findViewById7, "findViewById(R.id.loadingProgressBar)");
        ProgressBar progressBar = (ProgressBar) findViewById7;
        Button button = null;
        if (campaign.getLoadingPic() != null && Build.VERSION.SDK_INT >= 28) {
            Drawable createFromStream = Drawable.createFromStream(new ByteArrayInputStream(campaign.getLoadingPic()), null);
            ImageView imageView = this.loadingImage;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadingImage");
                imageView = null;
            }
            imageView.setImageDrawable(createFromStream);
            ImageView imageView2 = this.loadingImage;
            if (imageView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadingImage");
                imageView2 = null;
            }
            Drawable drawable = imageView2.getDrawable();
            if (b.a(drawable)) {
                c.a(drawable).start();
            }
            ImageView imageView3 = this.loadingImage;
            if (imageView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadingImage");
                imageView3 = null;
            }
            imageView3.setVisibility(0);
        } else {
            progressBar.setVisibility(0);
        }
        View view = this.loadingOverlay;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingOverlay");
            view = null;
        }
        view.setVisibility(0);
        TurboLinkCampaignLayout turboLinkCampaignLayout4 = this.turbolinkActionBar;
        if (turboLinkCampaignLayout4 != null) {
            WebView webView = this.webview;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView = null;
            }
            turboLinkCampaignLayout4.setWebView(webView);
        }
        WebView webView2 = this.webview;
        if (webView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView2 = null;
        }
        webView2.getSettings().setJavaScriptEnabled(true);
        WebView webView3 = this.webview;
        if (webView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView3 = null;
        }
        webView3.getSettings().setDomStorageEnabled(true);
        WebView webView4 = this.webview;
        if (webView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView4 = null;
        }
        webView4.getSettings().setCacheMode(-1);
        WebView webView5 = this.webview;
        if (webView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView5 = null;
        }
        webView5.getSettings().setMixedContentMode(0);
        WebView webView6 = this.webview;
        if (webView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView6 = null;
        }
        View view2 = this.loadingOverlay;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingOverlay");
            view2 = null;
        }
        WebView webView7 = this.webview;
        if (webView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView7 = null;
        }
        View view3 = this.errorView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("errorView");
            view3 = null;
        }
        webView6.setWebViewClient(new CampaignWebViewClient(this, view2, webView7, view3));
        WebView webView8 = this.webview;
        if (webView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView8 = null;
        }
        webView8.setWebChromeClient(new WebChromeClient() { // from class: ai.turbolink.sdk.campaign.CampaignWebviewActivity$onCreate$3
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(@Nullable ConsoleMessage consoleMessage) {
                String str;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("WebChromeClient failed to load h5 page. JavaScript error:");
                if (consoleMessage != null) {
                    str = consoleMessage.message();
                } else {
                    str = null;
                }
                sb2.append(str);
                TurboLinkLogger.e(sb2.toString());
                return super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(@Nullable WebView webView9, int i10) {
                super.onProgressChanged(webView9, i10);
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(@Nullable WebView webView9, @Nullable String str) {
                String str2;
                TurboLinkCampaignLayout turboLinkCampaignLayout5;
                if (str != null && !StringsKt.b0(str, AppPrefHelper.Companion.getAPP_CAMPAIGN_BLACKBOX_TAG(), false, 2, null)) {
                    str2 = str;
                } else {
                    str2 = "";
                }
                turboLinkCampaignLayout5 = CampaignWebviewActivity.this.turbolinkActionBar;
                if (turboLinkCampaignLayout5 != null) {
                    turboLinkCampaignLayout5.setTitle(str2);
                }
                CampaignWebviewActivity.this.campaignTitle = str2;
                super.onReceivedTitle(webView9, str);
            }
        });
        String stringExtra = getIntent().getStringExtra(AppPrefHelper.Companion.getWEBVIEW_INTENT_EXTRA_KEY());
        if (stringExtra == null) {
            stringExtra = "";
        }
        if (TextUtils.isEmpty(stringExtra)) {
            stringExtra = TurboLink.Companion.getLastOpenWebViewUrl();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Now! The context is:");
        sb2.append(getIntent());
        sb2.append(",current activity is:");
        TurboLink.Companion companion = TurboLink.Companion;
        TurboLink companion2 = companion.getInstance();
        sb2.append(companion2 != null ? companion2.getCurrentActivity() : null);
        sb2.append(", and the campaign url is:");
        sb2.append(stringExtra);
        TurboLinkLogger.i(sb2.toString());
        if (TextUtils.isEmpty(stringExtra)) {
            TurboLinkLogger.e("Thr url passed to the webview is empty and the webview can`t be loaded.");
        } else if (!URLUtil.isValidUrl(stringExtra)) {
            TurboLinkLogger.e("The url is not a normal URL format.");
        } else {
            this.campaignHashId = TurboLinkUtil.INSTANCE.getUriQueryKeyValue(stringExtra, "l");
            String encryptURL = encryptURL(stringExtra);
            if (!TextUtils.isEmpty(companion.getUserId())) {
                companion.setLastNoLoginWebviewUrl("");
            } else {
                companion.setLastNoLoginWebviewUrl(encryptURL);
            }
            WebView webView9 = this.webview;
            if (webView9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView9 = null;
            }
            webView9.addJavascriptInterface(new LinkShareListener(this), WebviewListener.LINK_SHARE_LISTENER.getListener());
            WebView webView10 = this.webview;
            if (webView10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView10 = null;
            }
            webView10.addJavascriptInterface(new LinkLoginListener(this), WebviewListener.LINK_LOGIN_LISTENER.getListener());
            WebView webView11 = this.webview;
            if (webView11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView11 = null;
            }
            webView11.addJavascriptInterface(new LinkEventListener(this), WebviewListener.LINK_EVENT_LISTENER.getListener());
            WebView webView12 = this.webview;
            if (webView12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView12 = null;
            }
            webView12.addJavascriptInterface(new LinkRegListener(this), WebviewListener.LINK_REG_LISTENER.getListener());
            WebView webView13 = this.webview;
            if (webView13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView13 = null;
            }
            webView13.addJavascriptInterface(new LinkPointsListener(this), WebviewListener.LINK_POINTS_LISTENER.getListener());
            WebView webView14 = this.webview;
            if (webView14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView14 = null;
            }
            webView14.addJavascriptInterface(new LinkRedirectListener(this), WebviewListener.LINK_REDIRECT_LISTENER.getListener());
            WebView webView15 = this.webview;
            if (webView15 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView15 = null;
            }
            webView15.addJavascriptInterface(new LinkUseBrowserOpenListener(this), WebviewListener.LINK_USE_BROWSER_OPEN_LISTENER.getListener());
            WebView webView16 = this.webview;
            if (webView16 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView16 = null;
            }
            webView16.addJavascriptInterface(new LinkClientRewardsListener(this), WebviewListener.LINK_CLIENT_REWARDS_LISTENER.getListener());
            WebView webView17 = this.webview;
            if (webView17 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView17 = null;
            }
            webView17.loadUrl(encryptURL);
            this._webviewUrl = encryptURL;
            Button button2 = this.retryBtn;
            if (button2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("retryBtn");
            } else {
                button = button2;
            }
            button.setOnClickListener(new View.OnClickListener() { // from class: ai.turbolink.sdk.campaign.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    CampaignWebviewActivity.m5onCreate$lambda2(CampaignWebviewActivity.this, view4);
                }
            });
            CampaignCallbackProperties campaignUser = new CampaignCallbackProperties().setCampaignTitle(this.campaignTitle).setCampaignUrl(encryptURL).setCampaignLang(campaign.getLang()).setCampaignUser(companion.getUserId());
            CampaignBuilder.CampaignCreateCallback campaignCreateCallback = companion.getCampaignCreateCallback();
            if (campaignCreateCallback != null) {
                campaignCreateCallback.onSuccess(this, campaignUser);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        TurboLink.Companion companion = TurboLink.Companion;
        if (!companion.isPlugin() || (companion.isPlugin() && !this.isTriggerLoginListener)) {
            companion.setLastNoLoginWebviewUrl("");
        }
        CampaignCallbackProperties campaignTitle = new CampaignCallbackProperties().setCampaignTitle(this.campaignTitle);
        WebView webView = this.webview;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView = null;
        }
        CampaignCallbackProperties campaignUser = campaignTitle.setCampaignUrl(String.valueOf(webView.getUrl())).setCampaignLang(TurboLink.Campaign.INSTANCE.getLang()).setCampaignUser(companion.getUserId());
        CampaignBuilder.CampaignDestroyCallback campaignDestroyCallback = companion.getCampaignDestroyCallback();
        if (campaignDestroyCallback != null) {
            campaignDestroyCallback.onSuccess(this, campaignUser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        CampaignCallbackProperties campaignLang = new CampaignCallbackProperties().setCampaignTitle(this.campaignTitle).setCampaignUrl(this._webviewUrl).setCampaignLang(TurboLink.Campaign.INSTANCE.getLang());
        TurboLink.Companion companion = TurboLink.Companion;
        CampaignCallbackProperties campaignUser = campaignLang.setCampaignUser(companion.getUserId());
        CampaignBuilder.CampaignPauseCallback campaignPauseCallback = companion.getCampaignPauseCallback();
        if (campaignPauseCallback != null) {
            campaignPauseCallback.onSuccess(this, campaignUser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        TurboLink.Companion companion = TurboLink.Companion;
        if (companion.getWebviewGoReloadUrl()) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            final WebView webView = this.webview;
            WebView webView2 = null;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webview");
                webView = null;
            }
            if (companion.getWebviewGoReloadUrlLastCustomEventTime() > 0 && currentTimeMillis - companion.getWebviewGoReloadUrlLastCustomEventTime() <= 2) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ai.turbolink.sdk.campaign.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        CampaignWebviewActivity.m6onResume$lambda7(webView);
                    }
                }, 2000L);
            } else {
                WebView webView3 = this.webview;
                if (webView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("webview");
                    webView3 = null;
                }
                WebView webView4 = this.webview;
                if (webView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("webview");
                } else {
                    webView2 = webView4;
                }
                webView3.loadUrl(String.valueOf(webView2.getUrl()));
                companion.reSetwebviewGoReloadUrl();
            }
        }
        CampaignCallbackProperties campaignUser = new CampaignCallbackProperties().setCampaignTitle(this.campaignTitle).setCampaignUrl(this._webviewUrl).setCampaignLang(TurboLink.Campaign.INSTANCE.getLang()).setCampaignUser(companion.getUserId());
        CampaignBuilder.CampaignResumeCallback campaignResumeCallback = companion.getCampaignResumeCallback();
        if (campaignResumeCallback != null) {
            campaignResumeCallback.onSuccess(this, campaignUser);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        getOnBackPressedDispatcher().onBackPressed();
        return super.onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10 && TurboLink.Campaign.INSTANCE.getFullScreenMode()) {
            enableFullScreenMode();
        }
    }

    public final void openLoadingOverlay() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ai.turbolink.sdk.campaign.j
            @Override // java.lang.Runnable
            public final void run() {
                CampaignWebviewActivity.m7openLoadingOverlay$lambda4(CampaignWebviewActivity.this, this);
            }
        });
    }

    public final void reloadCampaign() {
        WebView webView = this.webview;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webview");
            webView = null;
        }
        webView.evaluateJavascript("javascript:refreshStatusListener()", null);
        TurboLink.Companion.reSetwebviewGoReloadUrl();
    }

    public final void setCampaignHashId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.campaignHashId = str;
    }

    public final void setIsTriggerLoginListener() {
        this.isTriggerLoginListener = true;
    }

    public final void setPageViewBeginTime(long j10) {
        this.pageViewBeginTime = j10;
    }

    public final void setPageViewEndTime(long j10) {
        this.pageViewEndTime = j10;
    }
}
