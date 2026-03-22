package com.vungle.ads.internal.omsdk;

import android.webkit.WebView;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.vungle.Omid;
import com.iab.omid.library.vungle.adsession.AdSession;
import com.iab.omid.library.vungle.adsession.AdSessionConfiguration;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
import com.iab.omid.library.vungle.adsession.Partner;
import com.vungle.ads.BuildConfig;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OMTracker.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OMTracker implements WebViewObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long DESTROY_DELAY_MS = TimeUnit.SECONDS.toMillis(1);
    @Nullable
    private AdSession adSession;
    private final boolean enabled;
    private boolean started;

    /* compiled from: OMTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getDESTROY_DELAY_MS() {
            return OMTracker.DESTROY_DELAY_MS;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getDESTROY_DELAY_MS$annotations() {
        }
    }

    /* compiled from: OMTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Factory {
        @NotNull
        public final OMTracker make(boolean z10) {
            return new OMTracker(z10, null);
        }
    }

    public /* synthetic */ OMTracker(boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10);
    }

    @Override // com.vungle.ads.internal.omsdk.WebViewObserver
    public void onPageFinished(@NotNull WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        if (this.started && this.adSession == null) {
            CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
            ImpressionType impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
            Owner owner = Owner.JAVASCRIPT;
            AdSession createAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false), AdSessionContext.createHtmlAdSessionContext(Partner.createPartner(BuildConfig.OMSDK_PARTNER_NAME, BuildConfig.VERSION_NAME), webView, null, null));
            this.adSession = createAdSession;
            if (createAdSession != null) {
                createAdSession.registerAdView(webView);
            }
            AdSession adSession = this.adSession;
            if (adSession != null) {
                adSession.start();
            }
        }
    }

    public final void start() {
        if (this.enabled && Omid.isActive()) {
            this.started = true;
        }
    }

    public final long stop() {
        long j10;
        AdSession adSession;
        if (this.started && (adSession = this.adSession) != null) {
            if (adSession != null) {
                adSession.finish();
            }
            j10 = DESTROY_DELAY_MS;
        } else {
            j10 = 0;
        }
        this.started = false;
        this.adSession = null;
        return j10;
    }

    private OMTracker(boolean z10) {
        this.enabled = z10;
    }
}
