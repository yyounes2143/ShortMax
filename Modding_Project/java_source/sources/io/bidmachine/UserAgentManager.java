package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.webkit.WebSettings;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UserAgentManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UserAgentManager {
    @Nullable
    private static final String SYSTEM_HTTP_AGENT;
    @NotNull
    private static final String SYSTEM_PROPERTY_HTTP_AGENT = "http.agent";
    @NotNull
    private static final AtomicBoolean WEB_USER_AGENT_PROCESSED;
    @NotNull
    private static final AtomicBoolean WEB_USER_AGENT_UPDATED;
    @Nullable
    private static Context applicationContext;
    @Nullable
    private static String generatedUserAgent;
    @Nullable
    public static String webUserAgent;
    @NotNull
    public static final UserAgentManager INSTANCE = new UserAgentManager();
    private static final long DEFAULT_EXPIRATION_MS = TimeUnit.DAYS.toMillis(14);

    /* compiled from: UserAgentManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ApplovinUserAgentSource extends SharedPreferenceUserAgentSource {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApplovinUserAgentSource(@NotNull Context context) {
            super(context, "com.applovin.sdk.shared", "com.applovin.sdk.user_agent");
            Intrinsics.checkNotNullParameter(context, "context");
        }
    }

    /* compiled from: UserAgentManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class BidMachineUserAgentSource implements UserAgentSource, Runnable {
        @NotNull
        private final Context applicationContext;
        private final long expirationMs;

        public BidMachineUserAgentSource(@NotNull Context context, long j10) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.expirationMs = j10;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.applicationContext = applicationContext;
        }

        public final long calculateExpirationMs() {
            return System.currentTimeMillis() + this.expirationMs;
        }

        public final void checkAndUpdate() {
            String str = get();
            if (str == null || str.length() == 0) {
                yq.n.b(this);
            }
        }

        @Override // io.bidmachine.UserAgentManager.UserAgentSource
        @Nullable
        public String get() {
            return m2.n(this.applicationContext);
        }

        public final long getExpirationMs() {
            return this.expirationMs;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                UserAgentManager userAgentManager = UserAgentManager.INSTANCE;
                String defaultUserAgent = WebSettings.getDefaultUserAgent(this.applicationContext);
                if (defaultUserAgent != null) {
                    Intrinsics.checkNotNullExpressionValue(defaultUserAgent, "getDefaultUserAgent(applicationContext)");
                    m2.v(this.applicationContext, defaultUserAgent, calculateExpirationMs());
                } else {
                    defaultUserAgent = null;
                }
                UserAgentManager.webUserAgent = defaultUserAgent;
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: UserAgentManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class FacebookUserAgentSource extends SharedPreferenceUserAgentSource {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FacebookUserAgentSource(@NotNull Context context) {
            super(context, "com.facebook.ads.internal.ua", "user_agent");
            Intrinsics.checkNotNullParameter(context, "context");
        }
    }

    /* compiled from: UserAgentManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class GeneratedUserAgentSource implements UserAgentSource {
        @NotNull
        private final Context applicationContext;

        public GeneratedUserAgentSource(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.applicationContext = applicationContext;
        }

        private final void appendChromeToUserAgent(PackageManager packageManager, StringBuilder sb2) {
            String[] strArr = {"com.android.chrome", "com.google.android.webview", "com.android.webview"};
            for (int i10 = 0; i10 < 3; i10++) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(strArr[i10], 0);
                    sb2.append(" Chrome/");
                    sb2.append(packageInfo.versionName);
                    return;
                } catch (Throwable unused) {
                }
            }
        }

        private final void appendMobileToUserAgent(Context context, PackageManager packageManager, StringBuilder sb2) {
            String string;
            try {
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                sb2.append(" Mobile");
                sb2.append(" ");
                int i10 = applicationInfo.labelRes;
                if (i10 == 0) {
                    string = applicationInfo.nonLocalizedLabel.toString();
                } else {
                    string = context.getString(i10);
                    Intrinsics.checkNotNullExpressionValue(string, "{\n                      …                        }");
                }
                sb2.append(string);
                sb2.append(DomExceptionUtils.SEPARATOR);
                sb2.append(packageInfo.versionName);
            } catch (Throwable unused) {
            }
        }

        private final String create(Context context) {
            try {
                StringBuilder userAgentBuilder = new StringBuilder("Mozilla/5.0");
                userAgentBuilder.append(" (Linux; Android ");
                userAgentBuilder.append(yq.b.d());
                userAgentBuilder.append("; ");
                userAgentBuilder.append(yq.b.c());
                userAgentBuilder.append(" Build/");
                userAgentBuilder.append(yq.b.a());
                userAgentBuilder.append("; wv)");
                userAgentBuilder.append(" AppleWebKit/537.36 (KHTML, like Gecko)");
                userAgentBuilder.append(" Version/4.0");
                PackageManager packageManager = context.getPackageManager();
                Intrinsics.checkNotNullExpressionValue(packageManager, "packageManager");
                Intrinsics.checkNotNullExpressionValue(userAgentBuilder, "userAgentBuilder");
                appendChromeToUserAgent(packageManager, userAgentBuilder);
                appendMobileToUserAgent(context, packageManager, userAgentBuilder);
                String sb2 = userAgentBuilder.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "userAgentBuilder.toString()");
                return sb2;
            } catch (Throwable unused) {
                return "";
            }
        }

        @Override // io.bidmachine.UserAgentManager.UserAgentSource
        @NotNull
        public String get() {
            return create(this.applicationContext);
        }
    }

    /* compiled from: UserAgentManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class IronSourceUserAgentSource extends SharedPreferenceUserAgentSource {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IronSourceUserAgentSource(@NotNull Context context) {
            super(context, "Mediation_Shared_Preferences", "browser_user_agent");
            Intrinsics.checkNotNullParameter(context, "context");
        }
    }

    /* compiled from: UserAgentManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static class SharedPreferenceUserAgentSource implements UserAgentSource {
        @NotNull
        private final Context applicationContext;
        @NotNull
        private final String field;
        @NotNull
        private final String name;
        @Nullable
        private SharedPreferences sharedPreferences;

        public SharedPreferenceUserAgentSource(@NotNull Context context, @NotNull String name, @NotNull String field) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(field, "field");
            this.name = name;
            this.field = field;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.applicationContext = applicationContext;
        }

        @Override // io.bidmachine.UserAgentManager.UserAgentSource
        @Nullable
        public String get() {
            try {
                if (this.sharedPreferences == null) {
                    this.sharedPreferences = this.applicationContext.getSharedPreferences(this.name, 0);
                }
                SharedPreferences sharedPreferences = this.sharedPreferences;
                if (sharedPreferences == null) {
                    return null;
                }
                return sharedPreferences.getString(this.field, null);
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    /* compiled from: UserAgentManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface UserAgentSource {
        @Nullable
        String get();
    }

    static {
        String str;
        try {
            str = System.getProperty(SYSTEM_PROPERTY_HTTP_AGENT);
        } catch (Throwable unused) {
            str = null;
        }
        SYSTEM_HTTP_AGENT = str;
        WEB_USER_AGENT_PROCESSED = new AtomicBoolean(false);
        WEB_USER_AGENT_UPDATED = new AtomicBoolean(false);
    }

    private UserAgentManager() {
    }

    public static final void clear() {
        WEB_USER_AGENT_PROCESSED.set(false);
        webUserAgent = null;
        generatedUserAgent = null;
    }

    @Nullable
    public static final String getUserAgent() {
        return getUserAgent(applicationContext);
    }

    public static final void initialize(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        applicationContext = context.getApplicationContext();
        INSTANCE.findWebUserAgent$bidmachine_android_sdk_bh_3_4_0(context);
    }

    public static final void updateWebViewUserAgent() {
        Context context;
        if (!WEB_USER_AGENT_UPDATED.compareAndSet(false, true) || (context = applicationContext) == null) {
            return;
        }
        try {
            new BidMachineUserAgentSource(context, DEFAULT_EXPIRATION_MS).checkAndUpdate();
            Unit unit = Unit.f60915a;
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public final String findWebUserAgent$bidmachine_android_sdk_bh_3_4_0(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!WEB_USER_AGENT_PROCESSED.compareAndSet(false, true)) {
            return webUserAgent;
        }
        String str = new BidMachineUserAgentSource(context, DEFAULT_EXPIRATION_MS).get();
        if (str != null && str.length() > 0) {
            return str;
        }
        String str2 = new ApplovinUserAgentSource(context).get();
        if (str2 != null && str2.length() > 0) {
            return str2;
        }
        String str3 = new IronSourceUserAgentSource(context).get();
        if (str3 != null && str3.length() > 0) {
            return str3;
        }
        String str4 = new FacebookUserAgentSource(context).get();
        if (str4 != null && str4.length() > 0) {
            return str4;
        }
        updateWebViewUserAgent();
        return webUserAgent;
    }

    @Nullable
    public static final String getUserAgent(@Nullable Context context) {
        if (context == null) {
            context = applicationContext;
        }
        if (webUserAgent == null && context != null) {
            webUserAgent = INSTANCE.findWebUserAgent$bidmachine_android_sdk_bh_3_4_0(context);
        }
        String str = webUserAgent;
        if (str != null && str.length() > 0) {
            return webUserAgent;
        }
        if (generatedUserAgent == null && context != null) {
            generatedUserAgent = new GeneratedUserAgentSource(context).get();
        }
        String str2 = generatedUserAgent;
        if (str2 != null && str2.length() > 0) {
            return generatedUserAgent;
        }
        return SYSTEM_HTTP_AGENT;
    }
}
