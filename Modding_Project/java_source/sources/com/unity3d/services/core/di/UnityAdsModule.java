package com.unity3d.services.core.di;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import com.unity3d.ads.core.data.datasource.AndroidByteStringDataSource;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.model.ByteStringSerializer;
import com.unity3d.ads.core.data.model.UniversalRequestStoreSerializer;
import com.unity3d.ads.core.data.model.WebViewConfigurationStoreSerializer;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.extensions.ContextExtensionsKt;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.ads.measurements.MeasurementsService;
import com.unity3d.services.ads.token.AsyncTokenStorage;
import com.unity3d.services.ads.token.InMemoryAsyncTokenStorage;
import com.unity3d.services.ads.token.TokenStorage;
import com.unity3d.services.ads.topics.TopicsService;
import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageManager;
import com.unity3d.services.core.device.VolumeChange;
import com.unity3d.services.core.device.VolumeChangeMonitor;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.domain.SDKDispatchers;
import com.unity3d.services.core.misc.JsonStorage;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.request.metrics.SDKMetrics;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import com.unity3d.services.core.webview.bridge.SharedInstances;
import gatewayprotocol.v1.AdOperationsConfigurationKt;
import gatewayprotocol.v1.DiagnosticEventsConfigurationKt;
import gatewayprotocol.v1.FeatureFlagsKt;
import gatewayprotocol.v1.NativeConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestPolicyKt;
import gatewayprotocol.v1.RequestRetryPolicyKt;
import gatewayprotocol.v1.RequestTimeoutPolicyKt;
import gt.c0;
import gt.d0;
import gt.f0;
import gt.g0;
import gt.q0;
import gt.r1;
import gt.s;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnityAdsModule.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnityAdsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsModule.kt\ncom/unity3d/services/core/di/UnityAdsModule\n+ 2 NativeConfigurationKt.kt\ngatewayprotocol/v1/NativeConfigurationKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DiagnosticEventsConfigurationKt.kt\ngatewayprotocol/v1/DiagnosticEventsConfigurationKtKt\n+ 5 FeatureFlagsKt.kt\ngatewayprotocol/v1/FeatureFlagsKtKt\n+ 6 AdOperationsConfigurationKt.kt\ngatewayprotocol/v1/AdOperationsConfigurationKtKt\n+ 7 RequestPolicyKt.kt\ngatewayprotocol/v1/RequestPolicyKtKt\n+ 8 RequestRetryPolicyKt.kt\ngatewayprotocol/v1/RequestRetryPolicyKtKt\n+ 9 RequestTimeoutPolicyKt.kt\ngatewayprotocol/v1/RequestTimeoutPolicyKtKt\n*L\n1#1,311:1\n10#2:312\n1#3:313\n1#3:315\n1#3:317\n1#3:319\n1#3:321\n1#3:323\n1#3:325\n10#4:314\n10#5:316\n10#6:318\n10#7:320\n10#8:322\n10#9:324\n*S KotlinDebug\n*F\n+ 1 UnityAdsModule.kt\ncom/unity3d/services/core/di/UnityAdsModule\n*L\n212#1:312\n212#1:313\n218#1:315\n224#1:317\n277#1:319\n285#1:321\n292#1:323\n303#1:325\n218#1:314\n224#1:316\n277#1:318\n285#1:320\n292#1:322\n303#1:324\n*E\n"})
/* loaded from: classes7.dex */
public final class UnityAdsModule {
    private final NativeConfigurationOuterClass.AdOperationsConfiguration getDefaultAdOperations() {
        AdOperationsConfigurationKt.Dsl.Companion companion = AdOperationsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.AdOperationsConfiguration.Builder newBuilder = NativeConfigurationOuterClass.AdOperationsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdOperationsConfigurationKt.Dsl _create = companion._create(newBuilder);
        _create.setLoadTimeoutMs(30000);
        _create.setShowTimeoutMs(10000);
        _create.setGetTokenTimeoutMs(750);
        return _create._build();
    }

    private final NativeConfigurationOuterClass.RequestPolicy getDefaultRequestPolicy() {
        RequestPolicyKt.Dsl.Companion companion = RequestPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestPolicy.Builder newBuilder = NativeConfigurationOuterClass.RequestPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        RequestPolicyKt.Dsl _create = companion._create(newBuilder);
        _create.setRetryPolicy(getDefaultRequestRetryPolicy());
        _create.setTimeoutPolicy(getDefaultRequestTimeoutPolicy());
        return _create._build();
    }

    private final NativeConfigurationOuterClass.RequestRetryPolicy getDefaultRequestRetryPolicy() {
        RequestRetryPolicyKt.Dsl.Companion companion = RequestRetryPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestRetryPolicy.Builder newBuilder = NativeConfigurationOuterClass.RequestRetryPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        RequestRetryPolicyKt.Dsl _create = companion._create(newBuilder);
        _create.setMaxDuration(UnityAdsConstants.RequestPolicy.RETRY_MAX_DURATION);
        _create.setRetryWaitBase(500);
        _create.setRetryJitterPct(0.1f);
        _create.setShouldStoreLocally(false);
        _create.setRetryMaxInterval(2500);
        _create.setRetryScalingFactor(2.0f);
        return _create._build();
    }

    private final NativeConfigurationOuterClass.RequestTimeoutPolicy getDefaultRequestTimeoutPolicy() {
        RequestTimeoutPolicyKt.Dsl.Companion companion = RequestTimeoutPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestTimeoutPolicy.Builder newBuilder = NativeConfigurationOuterClass.RequestTimeoutPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        RequestTimeoutPolicyKt.Dsl _create = companion._create(newBuilder);
        _create.setConnectTimeoutMs(30000);
        _create.setReadTimeoutMs(30000);
        _create.setWriteTimeoutMs(30000);
        _create.setOverallTimeoutMs(30000);
        return _create._build();
    }

    private final ByteStringDataSource provideByteStringDataSource(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return new AndroidByteStringDataSource(dataStore);
    }

    private final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideByteStringDataStore(final Context context, c0 c0Var, final String str) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, null, i.a(c0Var.plus(r1.b(null, 1, null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$provideByteStringDataStore$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, str);
            }
        }, 4, null);
    }

    private final JsonStorage provideJsonStorage(StorageManager.StorageType storageType) {
        if (StorageManager.init(ClientProperties.getApplicationContext())) {
            Storage storage = StorageManager.getStorage(storageType);
            Intrinsics.checkNotNullExpressionValue(storage, "getStorage(storageType)");
            return storage;
        }
        throw new IllegalStateException("StorageManager failed to initialize");
    }

    @NotNull
    public final Context androidContext() {
        Context applicationContext = ClientProperties.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext()");
        return applicationContext;
    }

    @NotNull
    public final AsyncTokenStorage asyncTokenStorage(@NotNull TokenStorage tokenStorage, @NotNull SDKMetricsSender sdkMetricsSender) {
        Intrinsics.checkNotNullParameter(tokenStorage, "tokenStorage");
        Intrinsics.checkNotNullParameter(sdkMetricsSender, "sdkMetricsSender");
        return new InMemoryAsyncTokenStorage(null, new Handler(Looper.getMainLooper()), sdkMetricsSender, tokenStorage);
    }

    @NotNull
    public final ByteStringDataSource auidDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final c0 defaultDispatcher() {
        return q0.a();
    }

    @NotNull
    public final NativeConfigurationOuterClass.NativeConfiguration defaultNativeConfiguration() {
        NativeConfigurationKt.Dsl.Companion companion = NativeConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.NativeConfiguration.Builder newBuilder = NativeConfigurationOuterClass.NativeConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        NativeConfigurationKt.Dsl _create = companion._create(newBuilder);
        _create.setAdOperations(getDefaultAdOperations());
        _create.setInitPolicy(getDefaultRequestPolicy());
        _create.setAdPolicy(getDefaultRequestPolicy());
        _create.setOtherPolicy(getDefaultRequestPolicy());
        _create.setOperativeEventPolicy(getDefaultRequestPolicy());
        DiagnosticEventsConfigurationKt.Dsl.Companion companion2 = DiagnosticEventsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder newBuilder2 = NativeConfigurationOuterClass.DiagnosticEventsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder2, "newBuilder()");
        DiagnosticEventsConfigurationKt.Dsl _create2 = companion2._create(newBuilder2);
        _create2.setEnabled(true);
        _create2.setMaxBatchSize(10);
        _create2.setMaxBatchIntervalMs(30000);
        _create2.setTtmEnabled(false);
        _create.setDiagnosticEvents(_create2._build());
        FeatureFlagsKt.Dsl.Companion companion3 = FeatureFlagsKt.Dsl.Companion;
        NativeConfigurationOuterClass.FeatureFlags.Builder newBuilder3 = NativeConfigurationOuterClass.FeatureFlags.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder3, "newBuilder()");
        FeatureFlagsKt.Dsl _create3 = companion3._create(newBuilder3);
        _create3.setBoldSdkNextSessionEnabled(true);
        _create.setFeatureFlags(_create3._build());
        return _create._build();
    }

    @NotNull
    public final ByteStringDataSource gatewayCacheDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> gatewayDataStore(@NotNull Context context, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_GATEWAY_CACHE);
    }

    @NotNull
    public final g0 getTokenCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_GET_TOKEN_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> glInfoDataStore(@NotNull final Context context, @NotNull c0 dispatcher, @NotNull DataMigration<ByteStringStoreOuterClass.ByteStringStore> fetchGLInfo) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(fetchGLInfo, "fetchGLInfo");
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, CollectionsKt.e(fetchGLInfo), i.a(dispatcher.plus(r1.b(null, 1, null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$glInfoDataStore$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_GL_INFO);
            }
        }, 2, null);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> iapTransactionDataStore(@NotNull Context context, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_IAP_TRANSACTION);
    }

    @NotNull
    public final ByteStringDataSource idfiDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final g0 initCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_INIT_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final c0 ioDispatcher() {
        return q0.b();
    }

    @NotNull
    public final g0 loadCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_LOAD_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final c0 mainDispatcher() {
        return q0.c();
    }

    @NotNull
    public final MeasurementsService measurementService(@NotNull Context context, @NotNull ISDKDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        return new MeasurementsService(context, dispatchers, SharedInstances.INSTANCE.getWebViewEventSender());
    }

    @NotNull
    public final JsonStorage memoryJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.MEMORY);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> nativeConfigurationDataStore(@NotNull Context context, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_NATIVE_CONFIG);
    }

    @NotNull
    public final g0 offerwallSignalsCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_OFFERWALL_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final g0 omidCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_OMID_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> privacyDataStore(@NotNull Context context, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_PRIVACY);
    }

    @NotNull
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> privacyFsmDataStore(@NotNull Context context, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_PRIVACY_FSM);
    }

    @NotNull
    public final JsonStorage privateJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.PRIVATE);
    }

    @NotNull
    public final r publicApiJob(@NotNull final DiagnosticEventRepository diagnosticEventRepository) {
        s b10;
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        b10 = JobKt__JobKt.b(null, 1, null);
        b10.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: com.unity3d.services.core.di.UnityAdsModule$publicApiJob$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                DiagnosticEventRepository.this.flush();
            }
        });
        return b10;
    }

    @NotNull
    public final JsonStorage publicJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.PUBLIC);
    }

    @NotNull
    public final g0 scarSignalsCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_SCAR_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final ISDKDispatchers sdkDispatchers() {
        return new SDKDispatchers();
    }

    @NotNull
    public final SDKMetricsSender sdkMetrics() {
        SDKMetricsSender sDKMetrics = SDKMetrics.getInstance();
        Intrinsics.checkNotNullExpressionValue(sDKMetrics, "getInstance()");
        return sDKMetrics;
    }

    @NotNull
    public final g0 showCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_SHOW_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final TopicsService topicsService(@NotNull Context context, @NotNull ISDKDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        return new TopicsService(context, dispatchers, SharedInstances.INSTANCE.getWebViewEventSender());
    }

    @NotNull
    public final g0 transactionCoroutineScope(@NotNull ISDKDispatchers dispatchers, @NotNull d0 errorHandler, @NotNull r parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return i.a(parentJob.plus(dispatchers.getDefault()).plus(new f0(ServiceProvider.NAMED_TRANSACTION_SCOPE)).plus(errorHandler));
    }

    @NotNull
    public final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> universalRequestDataStore(@NotNull final Context context, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new UniversalRequestStoreSerializer(), null, null, i.a(dispatcher.plus(r1.b(null, 1, null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$universalRequestDataStore$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_UNIVERSAL_REQUEST);
            }
        }, 4, null);
    }

    @NotNull
    public final VolumeChangeMonitor volumeChangeMonitor(@NotNull VolumeChange volumeChange) {
        Intrinsics.checkNotNullParameter(volumeChange, "volumeChange");
        return new VolumeChangeMonitor(SharedInstances.INSTANCE.getWebViewEventSender(), volumeChange);
    }

    @NotNull
    public final DataStore<WebviewConfigurationStore.WebViewConfigurationStore> webViewConfigurationDataStore(@NotNull final Context context, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new WebViewConfigurationStoreSerializer(), null, null, i.a(dispatcher.plus(r1.b(null, 1, null))), new Function0<File>() { // from class: com.unity3d.services.core.di.UnityAdsModule$webViewConfigurationDataStore$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_WEBVIEW_CONFIG);
            }
        }, 4, null);
    }

    @NotNull
    public final ByteStringDataSource iapTransactionDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource nativeConfigurationDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource privacyDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource privacyFsmDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    @NotNull
    public final ByteStringDataSource glInfoDataStore(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }
}
