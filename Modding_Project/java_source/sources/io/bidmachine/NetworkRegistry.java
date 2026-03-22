package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingConfig;
import io.bidmachine.ads.networks.mraid.MraidConfig;
import io.bidmachine.ads.networks.nast.NastConfig;
import io.bidmachine.ads.networks.vast.VastConfig;
import io.bidmachine.protobuf.AdNetwork;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes7.dex */
public class NetworkRegistry {
    @NonNull
    @VisibleForTesting
    static final Map<String, NetworkAdapter> NETWORK_ADAPTER_MAP = new ConcurrentHashMap();
    @NonNull
    @VisibleForTesting
    static final Map<String, NetworkConfig> CORE_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    @NonNull
    @VisibleForTesting
    static final Map<String, NetworkConfig> FROM_INIT_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    @NonNull
    @VisibleForTesting
    static final Map<String, NetworkConfig> PENDING_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    @NonNull
    @VisibleForTesting
    static final Map<String, NetworkConfig> INITIALIZING_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    @NonNull
    @VisibleForTesting
    static final Map<String, NetworkConfig> INITIALIZED_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    @NonNull
    @VisibleForTesting
    static final Map<AdsType, Map<String, NetworkConfig>> INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP = new ConcurrentHashMap(AdsType.values().length);
    @NonNull
    @VisibleForTesting
    static final Map<AdsType, Map<String, NetworkConfig>> INITIALIZED_NETWORK_CONFIG_TYPED_MAP = new ConcurrentHashMap(AdsType.values().length);
    @NonNull
    private static final AtomicBoolean IS_NETWORKS_INITIALIZING_EXECUTED = new AtomicBoolean(false);
    @NonNull
    private static final AtomicBoolean IS_CORE_NETWORKS_INITIALIZING = new AtomicBoolean(false);
    @NonNull
    private static final AtomicBoolean IS_CORE_NETWORKS_INITIALIZED = new AtomicBoolean(false);
    @NonNull
    private static final Object CORE_INITIALIZING_LOCK = new Object();
    @NonNull
    private static final Object INITIALIZING_LOCK = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f53576a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f53577b;

        a(Context context, c cVar) {
            this.f53576a = context;
            this.f53577b = cVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            NetworkRegistry.initializeNetworksAwait(this.f53576a);
            c cVar = this.f53577b;
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static final class b implements Runnable {
        @NonNull

        /* renamed from: g  reason: collision with root package name */
        private static final Executor f53578g = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));
        @NonNull

        /* renamed from: h  reason: collision with root package name */
        private static final Object f53579h = new Object();
        @NonNull
        @VisibleForTesting

        /* renamed from: i  reason: collision with root package name */
        static final List<b> f53580i = new CopyOnWriteArrayList();
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ContextProvider f53581a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final InitializationParams f53582b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final NetworkConfig f53583c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final c f53584d;
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        private final String f53585e;
        @NonNull

        /* renamed from: f  reason: collision with root package name */
        private final wq.k f53586f;

        /* loaded from: classes7.dex */
        private static class a implements InternalNetworkInitializationCallback {
            @NonNull

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<b> f53587a;

            public a(@NonNull b bVar) {
                this.f53587a = new WeakReference<>(bVar);
            }

            @Override // io.bidmachine.InternalNetworkInitializationCallback
            public void onFail(@NonNull NetworkAdapter networkAdapter, @NonNull String str) {
                b bVar = this.f53587a.get();
                if (bVar != null) {
                    bVar.h(str);
                }
            }

            @Override // io.bidmachine.InternalNetworkInitializationCallback
            public void onSuccess(@NonNull NetworkAdapter networkAdapter) {
                b bVar = this.f53587a.get();
                if (bVar != null) {
                    bVar.i(networkAdapter);
                }
            }
        }

        /* synthetic */ b(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfig networkConfig, c cVar, a aVar) {
            this(contextProvider, initializationParams, networkConfig, cVar);
        }

        private void d(@NonNull Map<AdsType, Map<String, NetworkConfig>> map, @NonNull AdsType adsType, @NonNull String str, @NonNull NetworkConfig networkConfig) {
            Map<String, NetworkConfig> map2 = map.get(adsType);
            if (map2 == null) {
                map2 = new ConcurrentHashMap<>();
                map.put(adsType, map2);
            }
            map2.put(str, networkConfig);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String f(String str) {
            return String.format("Initialization error: %s", str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String g(NetworkAdapter networkAdapter) {
            return String.format("Initialization completed: %s, %s", networkAdapter.obtainNetworkSdkVersion(), networkAdapter.getAdapterVersion());
        }

        void e() {
            f53580i.add(this);
            try {
                f53578g.execute(this);
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
                h("Exception creating network initialization task");
            }
        }

        void h(@NonNull final String str) {
            io.bidmachine.core.a.f(this.f53585e, new hr.b() { // from class: io.bidmachine.v4
                @Override // hr.b
                public final Object get() {
                    String f10;
                    f10 = NetworkRegistry.b.f(str);
                    return f10;
                }
            });
            this.f53586f.eventFinish(TrackEventType.HeaderBiddingNetworkInitialize, null, new wq.a().h(this.f53585e), fr.a.c(str));
            f53580i.remove(this);
        }

        void i(@NonNull final NetworkAdapter networkAdapter) {
            io.bidmachine.core.a.b(this.f53585e, new hr.b() { // from class: io.bidmachine.w4
                @Override // hr.b
                public final Object get() {
                    String g10;
                    g10 = NetworkRegistry.b.g(NetworkAdapter.this);
                    return g10;
                }
            });
            if (networkAdapter instanceof HeaderBiddingAdapter) {
                this.f53586f.eventFinish(TrackEventType.HeaderBiddingNetworkInitialize, null, new wq.a().h(this.f53585e), null);
            } else {
                this.f53586f.clearEvent(TrackEventType.HeaderBiddingNetworkInitialize);
            }
            f53580i.remove(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            AdsType[] supportedAdsTypes;
            io.bidmachine.core.a.c(this.f53585e, "Initialization started");
            try {
                this.f53586f.eventStart(TrackEventType.HeaderBiddingNetworkInitialize, new wq.j().e("HB_NETWORK", this.f53585e));
                NetworkAdapter obtainAdapter = NetworkRegistry.obtainAdapter(this.f53583c);
                obtainAdapter.setLogging(io.bidmachine.core.a.h());
                obtainAdapter.initialize(this.f53581a, this.f53582b, this.f53583c.getNetworkConfigParams(), new a(this));
                Map<String, NetworkConfig> map = NetworkRegistry.INITIALIZED_NETWORK_CONFIG_MAP;
                if (!map.containsKey(this.f53585e)) {
                    map.put(this.f53585e, this.f53583c);
                }
                for (AdsType adsType : this.f53583c.getSupportedAdsTypes(obtainAdapter)) {
                    synchronized (f53579h) {
                        if (NetworkRegistry.CORE_NETWORK_CONFIG_MAP.containsKey(this.f53585e)) {
                            d(NetworkRegistry.INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP, adsType, this.f53585e, this.f53583c);
                        }
                        d(NetworkRegistry.INITIALIZED_NETWORK_CONFIG_TYPED_MAP, adsType, this.f53585e, this.f53583c);
                    }
                }
                NetworkRegistry.PENDING_NETWORK_CONFIG_MAP.remove(this.f53585e);
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
                h("Network initialization exception");
            }
            c cVar = this.f53584d;
            if (cVar != null) {
                cVar.a();
            }
        }

        private b(@NonNull ContextProvider contextProvider, @NonNull InitializationParams initializationParams, @NonNull NetworkConfig networkConfig, @Nullable c cVar) {
            this.f53581a = contextProvider;
            this.f53582b = initializationParams;
            this.f53583c = networkConfig;
            this.f53584d = cVar;
            String networkKey = networkConfig.getNetworkKey();
            this.f53585e = networkKey;
            this.f53586f = new BidMachineTrackingObject(networkKey + "_initialize");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface c {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String checkAndPutNetwork(@NonNull Context context, @NonNull AdsType adsType, @NonNull NetworkConfig networkConfig, @NonNull Map<String, NetworkConfig> map) {
        NetworkAdapter adapter = getAdapter(networkConfig.getNetworkKey());
        if (adapter == null) {
            return "Network not registered";
        }
        if (!adapter.isAdsTypeSupported(adsType)) {
            return "Network does not support this ad type";
        }
        if (!adapter.isInitialized(context)) {
            return "Network not initialized";
        }
        map.put(networkConfig.getNetworkKey(), networkConfig);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Map<String, NetworkConfig> copyOrNullInitializedCoreNetworkConfigs(@NonNull AdsType adsType) {
        Map<String, NetworkConfig> map = INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP.get(adsType);
        if (map == null) {
            return null;
        }
        return new HashMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Map<String, NetworkConfig> copyOrNullInitializedNetworkConfigs(@NonNull AdsType adsType) {
        Map<String, NetworkConfig> map = INITIALIZED_NETWORK_CONFIG_TYPED_MAP.get(adsType);
        if (map == null) {
            return null;
        }
        return new HashMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Map<String, NetworkConfig> createInitNetworkConfigMap() {
        return new HashMap(FROM_INIT_NETWORK_CONFIG_MAP);
    }

    @Nullable
    public static NetworkAdapter getAdapter(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return NETWORK_ADAPTER_MAP.get(str);
    }

    @Nullable
    static NetworkConfig getConfig(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return INITIALIZED_NETWORK_CONFIG_MAP.get(str);
    }

    static Collection<NetworkConfig> getCoreNetworkConfigList() {
        return CORE_NETWORK_CONFIG_MAP.values();
    }

    static Collection<NetworkConfig> getPendingNetworkConfigList() {
        return PENDING_NETWORK_CONFIG_MAP.values();
    }

    private static void initializeNetwork(@NonNull ContextProvider contextProvider, @NonNull InitializationParams initializationParams, @NonNull NetworkConfig networkConfig, @Nullable c cVar) {
        synchronized (INITIALIZING_LOCK) {
            try {
                String networkKey = networkConfig.getNetworkKey();
                Map<String, NetworkConfig> map = INITIALIZING_NETWORK_CONFIG_MAP;
                if (map.containsKey(networkKey)) {
                    PENDING_NETWORK_CONFIG_MAP.remove(networkKey);
                    if (cVar != null) {
                        cVar.a();
                    }
                    return;
                }
                map.put(networkKey, networkConfig);
                new b(contextProvider, initializationParams, networkConfig, cVar, null).e();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void initializeNetworksAsync(@NonNull Context context, @Nullable c cVar) {
        if (!IS_NETWORKS_INITIALIZING_EXECUTED.compareAndSet(false, true)) {
            return;
        }
        new a(context.getApplicationContext(), cVar).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initializeNetworksAwait(@NonNull Context context) {
        initializeNetworksAwait(context, getPendingNetworkConfigList());
    }

    static void initializeNetworksSync(@NonNull Context context) {
        if (!IS_NETWORKS_INITIALIZING_EXECUTED.compareAndSet(false, true)) {
            return;
        }
        initializeNetworksAwait(context.getApplicationContext());
    }

    static boolean isNetworkRegistered(@NonNull String str) {
        if (getAdapter(str) != null) {
            return true;
        }
        return false;
    }

    static boolean isNetworksInitializingExecuted() {
        return IS_NETWORKS_INITIALIZING_EXECUTED.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$registerNetworks$0(NetworkRegistryCallback networkRegistryCallback) {
        if (networkRegistryCallback != null) {
            networkRegistryCallback.onRegistered();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$registerNetworks$1(Context context, String str, final NetworkRegistryCallback networkRegistryCallback) throws Throwable {
        registerNetworks(context, str);
        io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.u4
            @Override // java.lang.Runnable
            public final void run() {
                NetworkRegistry.lambda$registerNetworks$0(NetworkRegistryCallback.this);
            }
        });
    }

    @NonNull
    static NetworkAdapter obtainAdapter(@NonNull NetworkConfig networkConfig) {
        synchronized (NetworkRegistry.class) {
            try {
                String networkKey = networkConfig.getNetworkKey();
                NetworkAdapter adapter = getAdapter(networkKey);
                if (adapter != null) {
                    return adapter;
                }
                NetworkAdapter createNetworkAdapter = networkConfig.createNetworkAdapter();
                NETWORK_ADAPTER_MAP.put(networkKey, createNetworkAdapter);
                return createNetworkAdapter;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerAndInitializeCoreNetworks(@NonNull Context context) {
        AtomicBoolean atomicBoolean = IS_CORE_NETWORKS_INITIALIZED;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (CORE_INITIALIZING_LOCK) {
            try {
                if (!IS_CORE_NETWORKS_INITIALIZING.compareAndSet(false, true)) {
                    return;
                }
                registerCoreNetworks();
                initializeNetworksAwait(context, getCoreNetworkConfigList());
                atomicBoolean.set(true);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void registerCoreNetwork(@NonNull NetworkConfig networkConfig) {
        String networkKey = networkConfig.getNetworkKey();
        Map<String, NetworkConfig> map = CORE_NETWORK_CONFIG_MAP;
        if (map.containsKey(networkKey)) {
            return;
        }
        map.put(networkKey, networkConfig);
        registerNetwork(networkConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerCoreNetworks() {
        MraidConfig mraidConfig = new MraidConfig();
        AdsFormat adsFormat = AdsFormat.Banner;
        registerCoreNetwork(mraidConfig.withMediationConfig(adsFormat, new HashMap()).withMediationConfig(AdsFormat.InterstitialStatic, new HashMap()).withMediationConfig(AdsFormat.RewardedStatic, new HashMap()));
        registerCoreNetwork(new VastConfig().withMediationConfig(AdsFormat.InterstitialVideo, new HashMap()).withMediationConfig(AdsFormat.RewardedVideo, new HashMap()));
        registerCoreNetwork(new NastConfig().withMediationConfig(AdsFormat.Native, new HashMap()));
        registerCoreNetwork(new AdaptiveRenderingConfig().withMediationConfig(adsFormat, new HashMap()).withMediationConfig(AdsFormat.Interstitial, new HashMap()).withMediationConfig(AdsFormat.Rewarded, new HashMap()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerInitNetwork(@NonNull Context context, @NonNull AdNetwork adNetwork) {
        NetworkConfig f10;
        if (!isNetworkRegistered(adNetwork.getName()) && (f10 = r4.f(context, adNetwork)) != null) {
            FROM_INIT_NETWORK_CONFIG_MAP.put(f10.getNetworkKey(), f10);
            registerNetwork(f10);
        }
    }

    static void registerNetwork(@Nullable NetworkConfig networkConfig) {
        j2 e10;
        Context g10;
        if (networkConfig == null || isNetworkRegistered(networkConfig.getNetworkKey())) {
            return;
        }
        obtainAdapter(networkConfig);
        PENDING_NETWORK_CONFIG_MAP.put(networkConfig.getNetworkKey(), networkConfig);
        if (!isNetworksInitializingExecuted() || (g10 = (e10 = j2.e()).g()) == null) {
            return;
        }
        initializeNetwork(new SimpleContextProvider(g10), new g4(e10.s(), e10.u()), networkConfig, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetworks(@Nullable NetworkConfig... networkConfigArr) {
        if (networkConfigArr == null) {
            return;
        }
        for (NetworkConfig networkConfig : networkConfigArr) {
            registerNetwork(networkConfig);
        }
    }

    @VisibleForTesting
    static void reset() {
        NETWORK_ADAPTER_MAP.clear();
        CORE_NETWORK_CONFIG_MAP.clear();
        FROM_INIT_NETWORK_CONFIG_MAP.clear();
        PENDING_NETWORK_CONFIG_MAP.clear();
        INITIALIZING_NETWORK_CONFIG_MAP.clear();
        INITIALIZED_NETWORK_CONFIG_MAP.clear();
        INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP.clear();
        INITIALIZED_NETWORK_CONFIG_TYPED_MAP.clear();
        IS_NETWORKS_INITIALIZING_EXECUTED.set(false);
        IS_CORE_NETWORKS_INITIALIZING.set(false);
        IS_CORE_NETWORKS_INITIALIZED.set(false);
        b.f53580i.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLoggingEnabled(boolean z10) {
        for (Map.Entry<String, NetworkAdapter> entry : NETWORK_ADAPTER_MAP.entrySet()) {
            try {
                entry.getValue().setLogging(z10);
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    private static void initializeNetworksAwait(@NonNull Context context, @NonNull Collection<NetworkConfig> collection) {
        j2 e10 = j2.e();
        initializeNetworksAwait(new SimpleContextProvider(context), new g4(e10.s(), e10.u()), collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetworks(@NonNull Context context, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                NetworkConfig h10 = r4.h(context, jSONArray.getJSONObject(i10));
                if (h10 != null) {
                    registerNetwork(h10);
                }
            }
        } catch (JSONException e10) {
            io.bidmachine.core.a.m(e10);
        }
    }

    private static void initializeNetworksAwait(@NonNull ContextProvider contextProvider, @NonNull InitializationParams initializationParams, @NonNull Collection<NetworkConfig> collection) {
        if (collection.isEmpty()) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(collection.size());
        for (NetworkConfig networkConfig : collection) {
            initializeNetwork(contextProvider, initializationParams, networkConfig, new c() { // from class: io.bidmachine.t4
                @Override // io.bidmachine.NetworkRegistry.c
                public final void a() {
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e10) {
            io.bidmachine.core.a.m(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetworks(@NonNull final Context context, @Nullable final String str, @Nullable final NetworkRegistryCallback networkRegistryCallback) {
        v2.a().execute(new vm.a() { // from class: io.bidmachine.s4
            @Override // fr.h
            public final void s() {
                NetworkRegistry.lambda$registerNetworks$1(context, str, networkRegistryCallback);
            }
        });
    }
}
