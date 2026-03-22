package androidx.webkit.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.WebViewCompat;
import com.ss.ttm.player.MediaPlayer;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class StartupApiFeature {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    @VisibleForTesting
    public static final String METADATA_HOLDER_SERVICE_NAME = "org.chromium.android_webview.services.StartupFeatureMetadataHolder";
    private static final Set<StartupApiFeature> sValues = new HashSet();
    private final String mInternalFeatureValue;
    private final String mPublicFeatureValue;

    /* loaded from: classes2.dex */
    public static class NoFramework extends StartupApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public NoFramework(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.StartupApiFeature
        public final boolean isSupportedByFramework() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class P extends StartupApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public P(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.StartupApiFeature
        public final boolean isSupportedByFramework() {
            if (Build.VERSION.SDK_INT >= 28) {
                return true;
            }
            return false;
        }
    }

    StartupApiFeature(String str, String str2) {
        this.mPublicFeatureValue = str;
        this.mInternalFeatureValue = str2;
        sValues.add(this);
    }

    private static Bundle getMetaDataFromWebViewManifestOrNull(Context context) {
        PackageInfo currentWebViewPackage = WebViewCompat.getCurrentWebViewPackage(context);
        if (currentWebViewPackage == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(currentWebViewPackage.packageName, METADATA_HOLDER_SERVICE_NAME);
        if (Build.VERSION.SDK_INT >= 33) {
            try {
                return ApiHelperForTiramisu.getServiceInfo(context.getPackageManager(), componentName, ApiHelperForTiramisu.of(640L)).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        try {
            return getServiceInfo(context, componentName, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK).metaData;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    private static ServiceInfo getServiceInfo(Context context, ComponentName componentName, int i10) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getServiceInfo(componentName, i10);
    }

    public static Set<StartupApiFeature> values() {
        return Collections.unmodifiableSet(sValues);
    }

    public String getPublicFeatureName() {
        return this.mPublicFeatureValue;
    }

    public boolean isSupported(Context context) {
        if (!isSupportedByFramework() && !isSupportedByWebView(context)) {
            return false;
        }
        return true;
    }

    public abstract boolean isSupportedByFramework();

    public boolean isSupportedByWebView(Context context) {
        Bundle metaDataFromWebViewManifestOrNull = getMetaDataFromWebViewManifestOrNull(context);
        if (metaDataFromWebViewManifestOrNull == null) {
            return false;
        }
        return metaDataFromWebViewManifestOrNull.containsKey(this.mInternalFeatureValue);
    }
}
