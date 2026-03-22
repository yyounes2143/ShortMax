package ai.turbolink.sdk.campaign;

import ai.turbolink.sdk.R;
import ai.turbolink.sdk.TurboLink;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TurboLinkCampaignLayout.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkCampaignLayout extends FrameLayout {
    @NotNull
    private Button titleBack;
    @NotNull
    private TextView tvTitle;
    private WebView webview;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TurboLinkCampaignLayout(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TurboLink.Campaign campaign = TurboLink.Campaign.INSTANCE;
        if (campaign.getNightMode()) {
            LayoutInflater.from(context).inflate(R.layout.actionbar_night_turbolink, this);
        } else {
            LayoutInflater.from(context).inflate(R.layout.actionbar_turbolink, this);
        }
        View findViewById = findViewById(R.id.titleBack);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.titleBack)");
        this.titleBack = (Button) findViewById;
        View findViewById2 = findViewById(R.id.tvTitle);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.tvTitle)");
        TextView textView = (TextView) findViewById2;
        this.tvTitle = textView;
        textView.setTextSize(campaign.getTitleSize());
        this.titleBack.setOnClickListener(new View.OnClickListener() { // from class: ai.turbolink.sdk.campaign.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TurboLinkCampaignLayout.m8_init_$lambda0(TurboLinkCampaignLayout.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m8_init_$lambda0(TurboLinkCampaignLayout this$0, View view) {
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
        Context context = this$0.getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        ((Activity) context).finish();
    }

    public final void setBack(boolean z10) {
        if (!z10) {
            this.titleBack.setVisibility(8);
        } else {
            this.titleBack.setVisibility(0);
        }
    }

    public final void setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.tvTitle.setText(title);
    }

    public final void setWebView(@NotNull WebView webview) {
        Intrinsics.checkNotNullParameter(webview, "webview");
        this.webview = webview;
    }
}
