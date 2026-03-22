package com.vungle.ads.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.InvalidAppId;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.SdkNotInitialized;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.VungleWrapperFramework;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.load.MraidJsLoader;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.VungleHeader;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.task.CleanupJob;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.ThreadUtil;
import com.vungle.ads.internal.util.Utils;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleInitializer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleInitializer";
    @NotNull
    private AtomicBoolean isInitialized = new AtomicBoolean(false);
    @NotNull
    private AtomicBoolean isInitializing = new AtomicBoolean(false);
    @NotNull
    private final CopyOnWriteArrayList<InitializationListener> initializationCallbackArray = new CopyOnWriteArrayList<>();
    @NotNull
    private final TimeIntervalMetric initDurationMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);

    /* compiled from: VungleInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final void configure(final Context context, String str) {
        boolean z10;
        try {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.VungleInitializer$configure$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final FilePreferences invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
                }
            });
            ConfigManager configManager = ConfigManager.INSTANCE;
            ConfigPayload cachedConfig = configManager.getCachedConfig(m4778configure$lambda4(a10), str);
            if (cachedConfig != null) {
                ConfigManager.initWithConfig$vungle_ads_release$default(configManager, context, cachedConfig, true, null, 8, null);
                z10 = true;
            } else {
                z10 = false;
            }
            this.isInitialized.set(true);
            onInitSuccess();
            Logger.Companion.d(TAG, "Running cleanup and resend tpat jobs. " + Thread.currentThread().getId());
            m4779configure$lambda5(kotlin.c.a(lazyThreadSafetyMode, new Function0<JobRunner>() { // from class: com.vungle.ads.internal.VungleInitializer$configure$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.task.JobRunner] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final JobRunner invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(JobRunner.class);
                }
            })).execute(CleanupJob.Companion.makeJobInfo$default(CleanupJob.Companion, null, 1, null));
            if (!z10) {
                configManager.fetchConfigAsync$vungle_ads_release(context, new Function1<Boolean, Unit>() { // from class: com.vungle.ads.internal.VungleInitializer$configure$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return Unit.f60915a;
                    }

                    public final void invoke(boolean z11) {
                        if (z11) {
                            VungleInitializer.this.downloadMraidJs(context);
                        }
                    }
                });
            } else {
                downloadMraidJs(context);
            }
        } catch (Throwable th2) {
            Logger.Companion.e(TAG, "Cannot get config", th2);
        }
    }

    /* renamed from: configure$lambda-4  reason: not valid java name */
    private static final FilePreferences m4778configure$lambda4(i<FilePreferences> iVar) {
        return iVar.getValue();
    }

    /* renamed from: configure$lambda-5  reason: not valid java name */
    private static final JobRunner m4779configure$lambda5(i<? extends JobRunner> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadMraidJs(final Context context) {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        MraidJsLoader.downloadJs$default(MraidJsLoader.INSTANCE, m4780downloadMraidJs$lambda6(kotlin.c.a(lazyThreadSafetyMode, new Function0<PathProvider>() { // from class: com.vungle.ads.internal.VungleInitializer$downloadMraidJs$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.util.PathProvider] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathProvider invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(PathProvider.class);
            }
        })), m4781downloadMraidJs$lambda7(kotlin.c.a(lazyThreadSafetyMode, new Function0<Downloader>() { // from class: com.vungle.ads.internal.VungleInitializer$downloadMraidJs$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.downloader.Downloader, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Downloader invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(Downloader.class);
            }
        })), m4782downloadMraidJs$lambda8(kotlin.c.a(lazyThreadSafetyMode, new Function0<Executors>() { // from class: com.vungle.ads.internal.VungleInitializer$downloadMraidJs$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Executors invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
            }
        })).getBackgroundExecutor(), null, null, 24, null);
    }

    /* renamed from: downloadMraidJs$lambda-6  reason: not valid java name */
    private static final PathProvider m4780downloadMraidJs$lambda6(i<PathProvider> iVar) {
        return iVar.getValue();
    }

    /* renamed from: downloadMraidJs$lambda-7  reason: not valid java name */
    private static final Downloader m4781downloadMraidJs$lambda7(i<? extends Downloader> iVar) {
        return iVar.getValue();
    }

    /* renamed from: downloadMraidJs$lambda-8  reason: not valid java name */
    private static final Executors m4782downloadMraidJs$lambda8(i<? extends Executors> iVar) {
        return iVar.getValue();
    }

    private final boolean hasInvalidChar(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (!Character.isLetterOrDigit(charAt) && charAt != '.') {
                return true;
            }
        }
        return false;
    }

    /* renamed from: init$lambda-0  reason: not valid java name */
    private static final Executors m4783init$lambda0(i<? extends Executors> iVar) {
        return iVar.getValue();
    }

    /* renamed from: init$lambda-1  reason: not valid java name */
    private static final VungleApiClient m4784init$lambda1(i<VungleApiClient> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: init$lambda-2  reason: not valid java name */
    public static final void m4785init$lambda2(Context context, String appId, VungleInitializer this$0, i vungleApiClient$delegate) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(appId, "$appId");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(vungleApiClient$delegate, "$vungleApiClient$delegate");
        PrivacyManager.INSTANCE.init(context);
        m4784init$lambda1(vungleApiClient$delegate).initialize(appId);
        this$0.configure(context, appId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: init$lambda-3  reason: not valid java name */
    public static final void m4786init$lambda3(VungleInitializer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onInitError(new OutOfMemory("Config: Out of Memory").logError$vungle_ads_release());
    }

    private final boolean isAppIdInvalid(String str) {
        if (!StringsKt.t0(str) && !hasInvalidChar(str)) {
            return false;
        }
        return true;
    }

    private final void onInitError(final VungleError vungleError) {
        this.isInitializing.set(false);
        String localizedMessage = vungleError.getLocalizedMessage();
        if (localizedMessage == null) {
            localizedMessage = "Exception code is " + vungleError.getCode();
        }
        this.initDurationMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS);
        this.initDurationMetric.markEnd();
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(this.initDurationMetric, (LogEntry) null, localizedMessage);
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.VungleInitializer$onInitError$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CopyOnWriteArrayList<InitializationListener> copyOnWriteArrayList;
                CopyOnWriteArrayList copyOnWriteArrayList2;
                Logger.Companion.e("VungleInitializer", "onError");
                copyOnWriteArrayList = VungleInitializer.this.initializationCallbackArray;
                VungleError vungleError2 = vungleError;
                for (InitializationListener initializationListener : copyOnWriteArrayList) {
                    initializationListener.onError(vungleError2);
                }
                copyOnWriteArrayList2 = VungleInitializer.this.initializationCallbackArray;
                copyOnWriteArrayList2.clear();
            }
        });
        Logger.Companion.e(TAG, localizedMessage);
    }

    private final void onInitSuccess() {
        this.isInitializing.set(false);
        this.initDurationMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);
        this.initDurationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.initDurationMetric, (LogEntry) null, (String) null, 6, (Object) null);
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "onSuccess " + Thread.currentThread().getId());
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.VungleInitializer$onInitSuccess$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CopyOnWriteArrayList<InitializationListener> copyOnWriteArrayList;
                CopyOnWriteArrayList copyOnWriteArrayList2;
                copyOnWriteArrayList = VungleInitializer.this.initializationCallbackArray;
                for (InitializationListener initializationListener : copyOnWriteArrayList) {
                    initializationListener.onSuccess();
                }
                copyOnWriteArrayList2 = VungleInitializer.this.initializationCallbackArray;
                copyOnWriteArrayList2.clear();
            }
        });
    }

    public final void deInit$vungle_ads_release() {
        ServiceLocator.Companion.deInit();
        VungleApiClient.Companion.reset$vungle_ads_release();
        this.isInitialized.set(false);
        this.isInitializing.set(false);
        this.initializationCallbackArray.clear();
    }

    public final void init(@NotNull final String appId, @NotNull final Context context, @NotNull InitializationListener initializationCallback) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationCallback, "initializationCallback");
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.SDK_INIT_API), (LogEntry) null, (String) null, 6, (Object) null);
        this.initDurationMetric.markStart();
        this.initializationCallbackArray.add(initializationCallback);
        if (isAppIdInvalid(appId)) {
            onInitError(new InvalidAppId("App id invalid: " + appId + ", package name: " + context.getPackageName()).logError$vungle_ads_release());
        } else if (Utils.INSTANCE.isOSVersionInvalid()) {
            Logger.Companion.e(TAG, "Init: SDK is supported only for API versions 25 and above.");
            onInitError(new SdkVersionTooLow("Init: SDK is supported only for API versions 25 and above.").logError$vungle_ads_release());
        } else {
            ConfigManager.INSTANCE.setAppId$vungle_ads_release(appId);
            if (this.isInitialized.get()) {
                Logger.Companion.d(TAG, "init already complete");
                onInitSuccess();
            } else if (this.isInitializing.getAndSet(true)) {
                Logger.Companion.d(TAG, "init already in progress");
            } else if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0 && ContextCompat.checkSelfPermission(context, "android.permission.INTERNET") == 0) {
                ServiceLocator.Companion companion = ServiceLocator.Companion;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Executors>() { // from class: com.vungle.ads.internal.VungleInitializer$init$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Executors invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
                    }
                });
                final i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.VungleInitializer$init$$inlined$inject$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final VungleApiClient invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                    }
                });
                m4783init$lambda0(a10).getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        VungleInitializer.m4785init$lambda2(context, appId, this, a11);
                    }
                }, new Runnable() { // from class: com.vungle.ads.internal.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        VungleInitializer.m4786init$lambda3(VungleInitializer.this);
                    }
                });
            } else {
                Logger.Companion.e(TAG, "Network permissions not granted");
                onInitError(new SdkNotInitialized("Network permissions not granted").logError$vungle_ads_release());
            }
        }
    }

    public final boolean isInitialized() {
        return this.isInitialized.get();
    }

    @NotNull
    public final AtomicBoolean isInitialized$vungle_ads_release() {
        return this.isInitialized;
    }

    @NotNull
    public final AtomicBoolean isInitializing$vungle_ads_release() {
        return this.isInitializing;
    }

    public final void setInitialized$vungle_ads_release(@NotNull AtomicBoolean atomicBoolean) {
        Intrinsics.checkNotNullParameter(atomicBoolean, "<set-?>");
        this.isInitialized = atomicBoolean;
    }

    public final void setInitializing$vungle_ads_release(@NotNull AtomicBoolean atomicBoolean) {
        Intrinsics.checkNotNullParameter(atomicBoolean, "<set-?>");
        this.isInitializing = atomicBoolean;
    }

    public final void setIntegrationName(@NotNull VungleWrapperFramework wrapperFramework, @NotNull String wrapperFrameworkVersion) {
        String str;
        Intrinsics.checkNotNullParameter(wrapperFramework, "wrapperFramework");
        Intrinsics.checkNotNullParameter(wrapperFrameworkVersion, "wrapperFrameworkVersion");
        if (wrapperFramework == VungleWrapperFramework.none) {
            Logger.Companion.e(TAG, "Wrapper is null or is none");
            return;
        }
        VungleHeader vungleHeader = VungleHeader.INSTANCE;
        String headerUa = vungleHeader.getHeaderUa();
        if (wrapperFrameworkVersion.length() > 0) {
            str = '/' + wrapperFrameworkVersion;
        } else {
            str = "";
        }
        String str2 = wrapperFramework.name() + str;
        if (StringsKt.b0(headerUa, str2, false, 2, null)) {
            Logger.Companion.w(TAG, "Wrapper info already set");
            return;
        }
        vungleHeader.setHeaderUa(headerUa + ';' + str2);
        if (isInitialized()) {
            Logger.Companion.w(TAG, "VUNGLE WARNING: SDK already initialized, you should've set wrapper info before");
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitialized$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitializing$vungle_ads_release$annotations() {
    }
}
