package com.pandora.ttlicense2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.NetworkInfo;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.pandora.ttlicense2.LicenseRetryTrigger;
import com.pandora.ttlicense2.LicenseSession;
import com.pandora.ttlicense2.loader.DiskCache;
import com.pandora.ttlicense2.loader.LicenseLoader;
import com.pandora.ttlicense2.loader.LicenseReader;
import com.pandora.ttlicense2.utils.Asserts;
import com.pandora.ttlicense2.utils.L;
import com.pandora.ttlicense2.utils.NetWorkUtils;
import com.pandora.ttlicense2.utils.Scheme;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes6.dex */
public final class LicenseManager {
    @SuppressLint({"StaticFieldLeak"})
    private static LicenseManager sInstance;
    private final Context mContext;
    private final DiskCache mDiskCache;
    private final LicenseLoader mLoader;
    private final LicenseReader mReader;
    private final LicenseRetryTrigger mRetryDetector;
    private final List<LicenseSession> mSessions = new ArrayList();

    /* loaded from: classes6.dex */
    public interface Callback {
        @MainThread
        void onLicenseLoadError(@NonNull String str, @NonNull Exception exc, boolean z10);

        @MainThread
        void onLicenseLoadRetry(@NonNull String str);

        @MainThread
        void onLicenseLoadSuccess(@NonNull String str, @NonNull String str2);

        @MainThread
        void onLicenseUpdateError(@NonNull String str, @NonNull Exception exc, boolean z10);

        @MainThread
        void onLicenseUpdateRetry(@NonNull String str);

        @MainThread
        void onLicenseUpdateSuccess(@NonNull String str, @NonNull String str2);
    }

    private LicenseManager(@NonNull Context context) {
        LicenseLogger.init(context);
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.pandora.ttlicense2.LicenseManager.1
            final AtomicInteger counter = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull Runnable runnable) {
                return new Thread(runnable, "ttsdk-license#" + this.counter.getAndIncrement());
            }
        };
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 1L, timeUnit, new LinkedBlockingQueue(), threadFactory);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(0, 1, 1L, timeUnit, new LinkedBlockingQueue(), threadFactory);
        File file = new File(context.getFilesDir(), "ttsdk/licenses");
        if (!file.exists()) {
            file.mkdirs();
        }
        this.mContext = context;
        DiskCache diskCache = new DiskCache(file);
        this.mDiskCache = diskCache;
        this.mLoader = new LicenseLoader(threadPoolExecutor, diskCache, context);
        this.mReader = new LicenseReader(threadPoolExecutor2, diskCache, context.getAssets());
        LicenseManagerNative.init(context.getPackageName());
        LicenseManagerNative.setAuthParams();
        LicenseRetryTrigger licenseRetryTrigger = new LicenseRetryTrigger(new LicenseRetryTrigger.LicenseRetryListener() { // from class: com.pandora.ttlicense2.LicenseManager.2
            @Override // com.pandora.ttlicense2.LicenseRetryTrigger.LicenseRetryListener
            public void onActivityResumed() {
                L.v(this, "onActivityResumed", new Object[0]);
                LicenseManager.this.scheduleRetry();
            }

            @Override // com.pandora.ttlicense2.LicenseRetryTrigger.LicenseRetryListener
            public void onNetworkConnectionChanged(@NonNull NetworkInfo networkInfo) {
                L.v(this, "onNetworkConnectionChanged", L.string(networkInfo));
                LicenseManager.this.scheduleRetry();
            }
        });
        this.mRetryDetector = licenseRetryTrigger;
        licenseRetryTrigger.init(context);
    }

    @NonNull
    private LicenseSession create(@NonNull final String str, @Nullable final Callback callback) {
        Asserts.checkState(Thread.holdsLock(this.mSessions), "mSessions lock not hold!");
        return new LicenseSession(str, Scheme.ofUri(str), this.mLoader, this.mReader, new LicenseSession.LicenseSessionListener() { // from class: com.pandora.ttlicense2.LicenseManager.3
            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            @MainThread
            public void onLicenseError(@NonNull Exception exc, boolean z10) {
                L.d(LicenseManager.this, "onLicenseError", exc, str, "retryAble", Boolean.valueOf(z10));
                Asserts.checkMainThread();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLicenseLoadError(str, exc, z10);
                }
            }

            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            @MainThread
            public void onLicenseRetry() {
                L.d(LicenseManager.this, "onLicenseRetry", new Object[0]);
                Asserts.checkMainThread();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLicenseLoadRetry(str);
                }
            }

            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            @MainThread
            public void onLicenseSuccess(@NonNull LicenseFile licenseFile) {
                L.d(LicenseManager.this, "onLicenseSuccess", str, licenseFile, L.string(licenseFile));
                Asserts.checkMainThread();
                LicenseLogger.getInstance().eventListener().onLicenseAddSuccess(licenseFile.getId());
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLicenseLoadSuccess(str, licenseFile.getId());
                }
            }

            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            public void onLicenseSuccessSync(@NonNull LicenseFile licenseFile) {
                LicenseManagerNative.addLicense(licenseFile);
            }

            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            @MainThread
            public void onLicenseUpdateError(@NonNull Exception exc, boolean z10) {
                L.d(LicenseManager.this, "onLicenseUpdateError", exc, str, "retryAble", Boolean.valueOf(z10));
                Asserts.checkMainThread();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLicenseUpdateError(str, exc, z10);
                }
            }

            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            @MainThread
            public void onLicenseUpdateRetry() {
                L.d(LicenseManager.this, "onLicenseUpdateRetry", new Object[0]);
                Asserts.checkMainThread();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLicenseUpdateRetry(str);
                }
            }

            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            @MainThread
            public void onLicenseUpdateSuccess(@NonNull LicenseFile licenseFile) {
                L.d(LicenseManager.this, "onLicenseUpdateSuccess", str, licenseFile, L.string(licenseFile));
                Asserts.checkMainThread();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLicenseUpdateSuccess(str, licenseFile.getId());
                }
            }

            @Override // com.pandora.ttlicense2.LicenseSession.LicenseSessionListener
            public void onLicenseUpdateSuccessSync(@NonNull LicenseFile licenseFile) {
                LicenseManagerNative.addLicense(licenseFile);
            }
        });
    }

    @Nullable
    private LicenseSession find(@NonNull String str) {
        Asserts.checkState(Thread.holdsLock(this.mSessions), "mSessions lock not hold!");
        for (LicenseSession licenseSession : this.mSessions) {
            if (TextUtils.equals(licenseSession.mLicenseUri, str)) {
                return licenseSession;
            }
        }
        return null;
    }

    @AnyThread
    public static synchronized LicenseManager getInstance() {
        LicenseManager licenseManager;
        synchronized (LicenseManager.class) {
            licenseManager = sInstance;
            if (licenseManager == null) {
                throw new NullPointerException("Call init first!");
            }
        }
        return licenseManager;
    }

    @AnyThread
    public static synchronized void init(@NonNull Context context) {
        synchronized (LicenseManager.class) {
            if (sInstance == null) {
                sInstance = new LicenseManager(context.getApplicationContext());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRetry() {
        if (!NetWorkUtils.isNetAvailableOptANR(this.mContext)) {
            return;
        }
        synchronized (this.mSessions) {
            try {
                if (this.mSessions.isEmpty()) {
                    return;
                }
                for (LicenseSession licenseSession : new ArrayList(this.mSessions)) {
                    L.v(this, "scheduleRetry", licenseSession, L.string(licenseSession));
                    licenseSession.retry();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @AnyThread
    public static void turnOnLogcat(boolean z10) {
        L.ENABLE_LOG = z10;
        LicenseManagerNative.openLog(z10);
    }

    @AnyThread
    public void addLicense(@NonNull String str, @Nullable Callback callback) {
        L.d(this, "addLicense", str, callback);
        Asserts.checkNotNull(str);
        if (Scheme.ofUri(str) != Scheme.UNKNOWN) {
            synchronized (this.mSessions) {
                try {
                    if (find(str) != null) {
                        L.d(this, "addLicense", "already added!", str, callback);
                        return;
                    }
                    LicenseSession create = create(str, callback);
                    this.mSessions.add(create);
                    create.start();
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException("Unsupported uri type! " + str);
    }

    @AnyThread
    public int checkFeatureAuth(@NonNull String str, @NonNull String str2) {
        return LicenseManagerNative.checkFeatureAuth(str, str2);
    }

    @AnyThread
    public int checkSDKAuth(@NonNull String str) {
        return LicenseManagerNative.checkSDKAuth(str);
    }

    @Nullable
    @AnyThread
    public License getLicense(String str) {
        return LicenseManagerNative.getLicense(str);
    }

    @NonNull
    @AnyThread
    public List<String> getLoadedLicenseIds() {
        LicenseReader.Result result;
        LicenseFile licenseFile;
        ArrayList arrayList = new ArrayList();
        synchronized (this.mSessions) {
            try {
                for (LicenseSession licenseSession : this.mSessions) {
                    if (licenseSession.mReadState == 2 && (result = licenseSession.mReadResult) != null && (licenseFile = result.licenseFile) != null) {
                        String id2 = licenseFile.getId();
                        if (!TextUtils.isEmpty(id2)) {
                            arrayList.add(id2);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Nullable
    @AnyThread
    public String getSDKEdition(@NonNull String str) {
        return LicenseManagerNative.getSDKEdition(str);
    }
}
