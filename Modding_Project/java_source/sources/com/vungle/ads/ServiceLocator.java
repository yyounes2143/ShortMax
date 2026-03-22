package com.vungle.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.downloader.AssetDownloader;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.SDKExecutors;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.locale.LocaleInfo;
import com.vungle.ads.internal.locale.SystemLocaleInfo;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.platform.AndroidPlatform;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.task.JobCreator;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.task.JobRunnerThreadPriorityHelper;
import com.vungle.ads.internal.task.VungleJobCreator;
import com.vungle.ads.internal.task.VungleJobRunner;
import com.vungle.ads.internal.util.ConcurrencyTimeoutProvider;
import com.vungle.ads.internal.util.PathProvider;
import java.util.HashMap;
import java.util.Map;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ServiceLocator.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ServiceLocator {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @SuppressLint({"StaticFieldLeak"})
    @Nullable
    private static volatile ServiceLocator INSTANCE;
    @NotNull
    private final Map<Class<?>, Object> cache;
    @NotNull
    private final Map<Class<?>, Creator<?>> creators;
    @NotNull
    private final Context ctx;

    /* compiled from: ServiceLocator.kt */
    @Keep
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final synchronized void deInit() {
            setINSTANCE$vungle_ads_release(null);
        }

        @Nullable
        public final ServiceLocator getINSTANCE$vungle_ads_release() {
            return ServiceLocator.INSTANCE;
        }

        @NotNull
        public final ServiceLocator getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ServiceLocator iNSTANCE$vungle_ads_release = getINSTANCE$vungle_ads_release();
            if (iNSTANCE$vungle_ads_release == null) {
                synchronized (this) {
                    Companion companion = ServiceLocator.Companion;
                    ServiceLocator iNSTANCE$vungle_ads_release2 = companion.getINSTANCE$vungle_ads_release();
                    if (iNSTANCE$vungle_ads_release2 == null) {
                        iNSTANCE$vungle_ads_release2 = new ServiceLocator(context, null);
                        companion.setINSTANCE$vungle_ads_release(iNSTANCE$vungle_ads_release2);
                    }
                    iNSTANCE$vungle_ads_release = iNSTANCE$vungle_ads_release2;
                }
            }
            return iNSTANCE$vungle_ads_release;
        }

        public final /* synthetic */ <T> i<T> inject(final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Intrinsics.needClassReification();
            return kotlin.c.a(lazyThreadSafetyMode, new Function0<T>() { // from class: com.vungle.ads.ServiceLocator$Companion$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final T invoke() {
                    ServiceLocator companion = ServiceLocator.Companion.getInstance(context);
                    Intrinsics.reifiedOperationMarker(4, "T");
                    return (T) companion.getService(Object.class);
                }
            });
        }

        public final void setINSTANCE$vungle_ads_release(@Nullable ServiceLocator serviceLocator) {
            ServiceLocator.INSTANCE = serviceLocator;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getINSTANCE$vungle_ads_release$annotations() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ServiceLocator.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public abstract class Creator<T> {
        private final boolean isSingleton;

        public Creator(boolean z10) {
            this.isSingleton = z10;
        }

        public abstract T create();

        public final boolean isSingleton() {
            return this.isSingleton;
        }

        public /* synthetic */ Creator(ServiceLocator serviceLocator, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? true : z10);
        }
    }

    public /* synthetic */ ServiceLocator(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final void buildCreators() {
        this.creators.put(JobCreator.class, new Creator<JobCreator>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public JobCreator create() {
                Context context;
                Object orBuild;
                context = ServiceLocator.this.ctx;
                orBuild = ServiceLocator.this.getOrBuild(PathProvider.class);
                return new VungleJobCreator(context, (PathProvider) orBuild);
            }
        });
        this.creators.put(JobRunner.class, new Creator<JobRunner>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public JobRunner create() {
                Object orBuild;
                Object orBuild2;
                orBuild = ServiceLocator.this.getOrBuild(JobCreator.class);
                orBuild2 = ServiceLocator.this.getOrBuild(Executors.class);
                return new VungleJobRunner((JobCreator) orBuild, ((Executors) orBuild2).getJobExecutor(), new JobRunnerThreadPriorityHelper());
            }
        });
        this.creators.put(VungleApiClient.class, new Creator<VungleApiClient>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public VungleApiClient create() {
                Context context;
                Object orBuild;
                Object orBuild2;
                context = ServiceLocator.this.ctx;
                orBuild = ServiceLocator.this.getOrBuild(Platform.class);
                orBuild2 = ServiceLocator.this.getOrBuild(FilePreferences.class);
                return new VungleApiClient(context, (Platform) orBuild, (FilePreferences) orBuild2);
            }
        });
        this.creators.put(Platform.class, new Creator<Platform>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public Platform create() {
                Object orBuild;
                Context context;
                orBuild = ServiceLocator.this.getOrBuild(Executors.class);
                context = ServiceLocator.this.ctx;
                return new AndroidPlatform(context, ((Executors) orBuild).getUaExecutor());
            }
        });
        this.creators.put(Executors.class, new Creator<Executors>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public Executors create() {
                return new SDKExecutors();
            }
        });
        this.creators.put(OMInjector.class, new Creator<OMInjector>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$6
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public OMInjector create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new OMInjector(context);
            }
        });
        this.creators.put(OMTracker.Factory.class, new Creator<OMTracker.Factory>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public OMTracker.Factory create() {
                return new OMTracker.Factory();
            }
        });
        this.creators.put(FilePreferences.class, new Creator<FilePreferences>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$8
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public FilePreferences create() {
                Object orBuild;
                Object orBuild2;
                FilePreferences.Companion companion = FilePreferences.Companion;
                orBuild = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor ioExecutor = ((Executors) orBuild).getIoExecutor();
                orBuild2 = ServiceLocator.this.getOrBuild(PathProvider.class);
                return FilePreferences.Companion.get$default(companion, ioExecutor, (PathProvider) orBuild2, null, 4, null);
            }
        });
        this.creators.put(LocaleInfo.class, new Creator<LocaleInfo>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$9
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public LocaleInfo create() {
                return new SystemLocaleInfo();
            }
        });
        this.creators.put(BidTokenEncoder.class, new Creator<BidTokenEncoder>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$10
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public BidTokenEncoder create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new BidTokenEncoder(context);
            }
        });
        this.creators.put(PathProvider.class, new Creator<PathProvider>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$11
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public PathProvider create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new PathProvider(context);
            }
        });
        this.creators.put(Downloader.class, new Creator<Downloader>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$12
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(false);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public Downloader create() {
                Object orBuild;
                Object orBuild2;
                orBuild = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor downloaderExecutor = ((Executors) orBuild).getDownloaderExecutor();
                orBuild2 = ServiceLocator.this.getOrBuild(PathProvider.class);
                return new AssetDownloader(downloaderExecutor, (PathProvider) orBuild2);
            }
        });
        this.creators.put(ConcurrencyTimeoutProvider.class, new Creator<ConcurrencyTimeoutProvider>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$13
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public ConcurrencyTimeoutProvider create() {
                return new ConcurrencyTimeoutProvider();
            }
        });
        this.creators.put(SignalManager.class, new Creator<SignalManager>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$14
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public SignalManager create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new SignalManager(context);
            }
        });
        this.creators.put(TpatSender.class, new Creator<TpatSender>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$15
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public TpatSender create() {
                Object orBuild;
                Object orBuild2;
                Object orBuild3;
                Object orBuild4;
                Object orBuild5;
                orBuild = ServiceLocator.this.getOrBuild(VungleApiClient.class);
                VungleApiClient vungleApiClient = (VungleApiClient) orBuild;
                orBuild2 = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor ioExecutor = ((Executors) orBuild2).getIoExecutor();
                orBuild3 = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor jobExecutor = ((Executors) orBuild3).getJobExecutor();
                orBuild4 = ServiceLocator.this.getOrBuild(PathProvider.class);
                PathProvider pathProvider = (PathProvider) orBuild4;
                orBuild5 = ServiceLocator.this.getOrBuild(SignalManager.class);
                return new TpatSender(vungleApiClient, ioExecutor, jobExecutor, pathProvider, (SignalManager) orBuild5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T getOrBuild(Class<T> cls) {
        Class<?> serviceClass = getServiceClass(cls);
        T t10 = (T) this.cache.get(serviceClass);
        if (t10 == null) {
            Creator<?> creator = this.creators.get(serviceClass);
            if (creator != null) {
                T t11 = (T) creator.create();
                if (creator.isSingleton()) {
                    this.cache.put(serviceClass, t11);
                }
                return t11;
            }
            throw new IllegalArgumentException("Unknown class");
        }
        return t10;
    }

    private final Class<?> getServiceClass(Class<?> cls) {
        for (Class<?> cls2 : this.creators.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                return cls2;
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + cls);
    }

    @VisibleForTesting
    public final <T> void bindService$vungle_ads_release(@NotNull Class<?> serviceClass, T t10) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        this.cache.put(serviceClass, t10);
    }

    public final synchronized <T> T getService(@NotNull Class<T> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        return (T) getOrBuild(serviceClass);
    }

    public final synchronized <T> boolean isCreated(@NotNull Class<T> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        return this.cache.containsKey(getServiceClass(serviceClass));
    }

    private ServiceLocator(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.ctx = applicationContext;
        this.creators = new HashMap();
        this.cache = new HashMap();
        buildCreators();
    }
}
