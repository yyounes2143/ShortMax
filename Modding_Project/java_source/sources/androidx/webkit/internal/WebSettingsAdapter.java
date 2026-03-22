package androidx.webkit.internal;

import androidx.webkit.BackForwardCacheSettings;
import androidx.webkit.UserAgentMetadata;
import androidx.webkit.WebSettingsCompat;
import androidx.webkit.WebViewMediaIntegrityApiStatusConfig;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewBackForwardCacheSettingsBoundaryInterface;
/* loaded from: classes2.dex */
public class WebSettingsAdapter {
    private final WebSettingsBoundaryInterface mBoundaryInterface;

    public WebSettingsAdapter(WebSettingsBoundaryInterface webSettingsBoundaryInterface) {
        this.mBoundaryInterface = webSettingsBoundaryInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$getBackForwardCacheSettings$0(WebViewBackForwardCacheSettingsBoundaryInterface webViewBackForwardCacheSettingsBoundaryInterface) throws Exception {
        return new BackForwardCacheSettings.Builder().setMaxPagesInCache(webViewBackForwardCacheSettingsBoundaryInterface.getMaxPagesInCache()).setTimeoutSeconds(webViewBackForwardCacheSettingsBoundaryInterface.getTimeoutInSeconds()).build();
    }

    public int getAttributionRegistrationBehavior() {
        return this.mBoundaryInterface.getAttributionBehavior();
    }

    public boolean getBackForwardCacheEnabled() {
        return this.mBoundaryInterface.getBackForwardCacheEnabled();
    }

    @WebSettingsCompat.ExperimentalBackForwardCacheSettings
    public BackForwardCacheSettings getBackForwardCacheSettings() {
        final WebViewBackForwardCacheSettingsBoundaryInterface webViewBackForwardCacheSettingsBoundaryInterface = (WebViewBackForwardCacheSettingsBoundaryInterface) zt.a.a(WebViewBackForwardCacheSettingsBoundaryInterface.class, this.mBoundaryInterface.getBackForwardCacheSettings());
        BackForwardCacheSettings backForwardCacheSettings = (BackForwardCacheSettings) webViewBackForwardCacheSettingsBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.j0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object lambda$getBackForwardCacheSettings$0;
                lambda$getBackForwardCacheSettings$0 = WebSettingsAdapter.lambda$getBackForwardCacheSettings$0(WebViewBackForwardCacheSettingsBoundaryInterface.this);
                return lambda$getBackForwardCacheSettings$0;
            }
        });
        if (backForwardCacheSettings != null) {
            return backForwardCacheSettings;
        }
        return new BackForwardCacheSettings.Builder().build();
    }

    public boolean getCookieAccessForShouldInterceptRequestEnabled() {
        return this.mBoundaryInterface.getIncludeCookiesOnIntercept();
    }

    public int getDisabledActionModeMenuItems() {
        return this.mBoundaryInterface.getDisabledActionModeMenuItems();
    }

    public boolean getEnterpriseAuthenticationAppLinkPolicyEnabled() {
        return this.mBoundaryInterface.getEnterpriseAuthenticationAppLinkPolicyEnabled();
    }

    public int getForceDark() {
        return this.mBoundaryInterface.getForceDark();
    }

    public int getForceDarkStrategy() {
        return this.mBoundaryInterface.getForceDarkBehavior();
    }

    public boolean getHasEnrolledInstrumentEnabled() {
        return this.mBoundaryInterface.getHasEnrolledInstrumentEnabled();
    }

    public boolean getOffscreenPreRaster() {
        return this.mBoundaryInterface.getOffscreenPreRaster();
    }

    public boolean getPaymentRequestEnabled() {
        return this.mBoundaryInterface.getPaymentRequestEnabled();
    }

    public boolean getSafeBrowsingEnabled() {
        return this.mBoundaryInterface.getSafeBrowsingEnabled();
    }

    public int getSpeculativeLoadingStatus() {
        return this.mBoundaryInterface.getSpeculativeLoadingStatus();
    }

    public UserAgentMetadata getUserAgentMetadata() {
        return UserAgentMetadataInternal.getUserAgentMetadataFromMap(this.mBoundaryInterface.getUserAgentMetadataMap());
    }

    public int getWebAuthenticationSupport() {
        return this.mBoundaryInterface.getWebauthnSupport();
    }

    public WebViewMediaIntegrityApiStatusConfig getWebViewMediaIntegrityApiStatus() {
        return new WebViewMediaIntegrityApiStatusConfig.Builder(this.mBoundaryInterface.getWebViewMediaIntegrityApiDefaultStatus()).setOverrideRules(this.mBoundaryInterface.getWebViewMediaIntegrityApiOverrideRules()).build();
    }

    public boolean isAlgorithmicDarkeningAllowed() {
        return this.mBoundaryInterface.isAlgorithmicDarkeningAllowed();
    }

    public void setAlgorithmicDarkeningAllowed(boolean z10) {
        this.mBoundaryInterface.setAlgorithmicDarkeningAllowed(z10);
    }

    public void setAttributionRegistrationBehavior(int i10) {
        this.mBoundaryInterface.setAttributionBehavior(i10);
    }

    public void setBackForwardCacheEnabled(boolean z10) {
        this.mBoundaryInterface.setBackForwardCacheEnabled(z10);
    }

    @WebSettingsCompat.ExperimentalBackForwardCacheSettings
    public void setBackForwardCacheSettings(BackForwardCacheSettings backForwardCacheSettings) {
        this.mBoundaryInterface.setBackForwardCacheSettings(zt.a.c(new BackForwardCacheSettingsImpl(backForwardCacheSettings)));
    }

    public void setCookieAccessForShouldInterceptRequestEnabled(boolean z10) {
        this.mBoundaryInterface.setIncludeCookiesOnIntercept(z10);
    }

    public void setDisabledActionModeMenuItems(int i10) {
        this.mBoundaryInterface.setDisabledActionModeMenuItems(i10);
    }

    public void setEnterpriseAuthenticationAppLinkPolicyEnabled(boolean z10) {
        this.mBoundaryInterface.setEnterpriseAuthenticationAppLinkPolicyEnabled(z10);
    }

    public void setForceDark(int i10) {
        this.mBoundaryInterface.setForceDark(i10);
    }

    public void setForceDarkStrategy(int i10) {
        this.mBoundaryInterface.setForceDarkBehavior(i10);
    }

    public void setHasEnrolledInstrumentEnabled(boolean z10) {
        this.mBoundaryInterface.setHasEnrolledInstrumentEnabled(z10);
    }

    public void setHyperlinkContextMenuItems(int i10) {
        this.mBoundaryInterface.setHyperlinkContextMenuItems(i10);
    }

    public void setOffscreenPreRaster(boolean z10) {
        this.mBoundaryInterface.setOffscreenPreRaster(z10);
    }

    public void setPaymentRequestEnabled(boolean z10) {
        this.mBoundaryInterface.setPaymentRequestEnabled(z10);
    }

    public void setSafeBrowsingEnabled(boolean z10) {
        this.mBoundaryInterface.setSafeBrowsingEnabled(z10);
    }

    public void setSpeculativeLoadingStatus(int i10) {
        this.mBoundaryInterface.setSpeculativeLoadingStatus(i10);
    }

    public void setUserAgentMetadata(UserAgentMetadata userAgentMetadata) {
        this.mBoundaryInterface.setUserAgentMetadataFromMap(UserAgentMetadataInternal.convertUserAgentMetadataToMap(userAgentMetadata));
    }

    public void setWebAuthenticationSupport(int i10) {
        this.mBoundaryInterface.setWebauthnSupport(i10);
    }

    public void setWebViewMediaIntegrityApiStatus(WebViewMediaIntegrityApiStatusConfig webViewMediaIntegrityApiStatusConfig) {
        this.mBoundaryInterface.setWebViewMediaIntegrityApiStatus(webViewMediaIntegrityApiStatusConfig.getDefaultStatus(), webViewMediaIntegrityApiStatusConfig.getOverrideRules());
    }
}
