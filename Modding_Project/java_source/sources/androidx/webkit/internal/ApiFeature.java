package androidx.webkit.internal;

import android.os.Build;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class ApiFeature implements ConditionallySupportedFeature {
    private static final Set<ApiFeature> sValues = new HashSet();
    private final String mInternalFeatureValue;
    private final String mPublicFeatureValue;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class LAZY_HOLDER {
        static final Set<String> WEBVIEW_APK_FEATURES = new HashSet(Arrays.asList(WebViewGlueCommunicator.getFactory().getWebViewFeatures()));

        private LAZY_HOLDER() {
        }
    }

    /* loaded from: classes2.dex */
    public static class M extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public M(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static class N extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public N(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static class NoFramework extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public NoFramework(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class O extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public O(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            if (Build.VERSION.SDK_INT >= 26) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class O_MR1 extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public O_MR1(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            if (Build.VERSION.SDK_INT >= 27) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class P extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public P(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            if (Build.VERSION.SDK_INT >= 28) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class Q extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public Q(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            if (Build.VERSION.SDK_INT >= 29) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class T extends ApiFeature {
        /* JADX INFO: Access modifiers changed from: package-private */
        public T(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            if (Build.VERSION.SDK_INT >= 33) {
                return true;
            }
            return false;
        }
    }

    ApiFeature(String str, String str2) {
        this.mPublicFeatureValue = str;
        this.mInternalFeatureValue = str2;
        sValues.add(this);
    }

    @VisibleForTesting
    public static Set<String> getWebViewApkFeaturesForTesting() {
        return LAZY_HOLDER.WEBVIEW_APK_FEATURES;
    }

    public static Set<ApiFeature> values() {
        return Collections.unmodifiableSet(sValues);
    }

    @Override // androidx.webkit.internal.ConditionallySupportedFeature
    public String getPublicFeatureName() {
        return this.mPublicFeatureValue;
    }

    @Override // androidx.webkit.internal.ConditionallySupportedFeature
    public boolean isSupported() {
        if (!isSupportedByFramework() && !isSupportedByWebView()) {
            return false;
        }
        return true;
    }

    public abstract boolean isSupportedByFramework();

    public boolean isSupportedByWebView() {
        return zt.a.b(LAZY_HOLDER.WEBVIEW_APK_FEATURES, this.mInternalFeatureValue);
    }
}
