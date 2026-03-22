package com.pandora.ttlicense2;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.pandora.ttlicense2.loader.LicenseLoader;
import com.pandora.ttlicense2.loader.LicenseReader;
import com.pandora.ttlicense2.utils.Asserts;
import com.pandora.ttlicense2.utils.L;
import com.pandora.ttlicense2.utils.Scheme;
import java.io.File;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class LicenseSession {
    static final int STATE_CANCELED = 4;
    static final int STATE_COMPLETED = 2;
    static final int STATE_ERROR = 3;
    static final int STATE_IDLE = 0;
    static final int STATE_STARTED = 1;
    final String mLicenseUri;
    LicenseSessionListener mListener;
    Exception mLoadException;
    LicenseLoader.Request mLoadRequest;
    LicenseLoader.Result mLoadResult;
    final LicenseLoader mLoader;
    Exception mReadException;
    LicenseReader.Request mReadRequest;
    LicenseReader.Result mReadResult;
    final LicenseReader mReader;
    int mRetryCount;
    final Scheme mScheme;
    int mSessionState;
    Exception mUpdateLoadException;
    LicenseLoader.Request mUpdateLoadRequest;
    LicenseLoader.Result mUpdateLoadResult;
    Exception mUpdateReadException;
    LicenseReader.Request mUpdateReadRequest;
    LicenseReader.Result mUpdateReadResult;
    int mLoadState = 0;
    int mReadState = 0;
    int mUpdateLoadState = 0;
    int mUpdateReadState = 0;
    final Handler mH = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pandora.ttlicense2.LicenseSession$4  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$pandora$ttlicense2$utils$Scheme;

        static {
            int[] iArr = new int[Scheme.values().length];
            $SwitchMap$com$pandora$ttlicense2$utils$Scheme = iArr;
            try {
                iArr[Scheme.FILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$pandora$ttlicense2$utils$Scheme[Scheme.ASSETS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$pandora$ttlicense2$utils$Scheme[Scheme.HTTP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$pandora$ttlicense2$utils$Scheme[Scheme.HTTPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$pandora$ttlicense2$utils$Scheme[Scheme.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public interface LicenseSessionListener {
        @MainThread
        void onLicenseError(@NonNull Exception exc, boolean z10);

        @MainThread
        void onLicenseRetry();

        @MainThread
        void onLicenseSuccess(@NonNull LicenseFile licenseFile);

        void onLicenseSuccessSync(@NonNull LicenseFile licenseFile);

        @MainThread
        void onLicenseUpdateError(@NonNull Exception exc, boolean z10);

        @MainThread
        void onLicenseUpdateRetry();

        @MainThread
        void onLicenseUpdateSuccess(@NonNull LicenseFile licenseFile);

        @WorkerThread
        void onLicenseUpdateSuccessSync(@NonNull LicenseFile licenseFile);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public LicenseSession(@NonNull String str, @NonNull Scheme scheme, @NonNull LicenseLoader licenseLoader, @NonNull LicenseReader licenseReader, @NonNull LicenseSessionListener licenseSessionListener) {
        this.mLicenseUri = (String) Asserts.checkNotNull(str);
        this.mScheme = (Scheme) Asserts.checkNotNull(scheme);
        this.mLoader = (LicenseLoader) Asserts.checkNotNull(licenseLoader);
        this.mReader = (LicenseReader) Asserts.checkNotNull(licenseReader);
        this.mListener = (LicenseSessionListener) Asserts.checkNotNull(licenseSessionListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public boolean isUpdateAble() {
        LicenseFile licenseFile;
        LicenseReader.Result result = this.mReadResult;
        if (result == null || (licenseFile = result.licenseFile) == null) {
            return false;
        }
        return licenseFile.isUpdateAble();
    }

    static String mapState(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return "canceled";
                        }
                        throw new IllegalArgumentException("Unsupported state: " + i10);
                    }
                    return "error";
                }
                return "completed";
            }
            return "started";
        }
        return "idle";
    }

    @MainThread
    private void resetLoadResult() {
        this.mLoadResult = null;
        this.mLoadException = null;
        this.mLoadState = 0;
    }

    @MainThread
    private void resetUpdateLoadResult() {
        this.mUpdateLoadResult = null;
        this.mUpdateLoadException = null;
        this.mUpdateLoadState = 0;
    }

    @MainThread
    private void retryWithLoadState() {
        int i10 = this.mLoadState;
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalArgumentException("Unsupported state");
                    }
                    throw new IllegalStateException(this.mScheme + " load " + mapState(this.mLoadState));
                }
                int i11 = this.mRetryCount;
                if (i11 < 10) {
                    resetLoadResult();
                    this.mRetryCount++;
                    LicenseSessionListener licenseSessionListener = this.mListener;
                    if (licenseSessionListener != null) {
                        licenseSessionListener.onLicenseRetry();
                    }
                    startLoad();
                    return;
                }
                L.e(this, "retryWithLoadState", "error", "load max retry error!", Integer.valueOf(i11));
                return;
            }
            retryWithReadState();
        }
    }

    @MainThread
    private void retryWithReadState() {
        int i10 = this.mReadState;
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalArgumentException("Unsupported state");
                    }
                    throw new IllegalStateException(this.mScheme + " read " + mapState(this.mReadState));
                }
                return;
            }
            Scheme scheme = this.mScheme;
            if (scheme != Scheme.FILE && scheme != Scheme.ASSETS) {
                if (scheme != Scheme.HTTP && scheme != Scheme.HTTPS) {
                    throw new IllegalArgumentException("Unsupported scheme: " + this.mLicenseUri);
                }
                Asserts.checkNotNull(this.mLoadResult);
                if (this.mLoadResult.hintCache) {
                    retryWithUpdateLoadState();
                }
            } else if (isUpdateAble()) {
                retryWithUpdateLoadState();
            }
        }
    }

    @MainThread
    private void retryWithUpdateLoadState() {
        int i10 = this.mUpdateLoadState;
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalArgumentException("Unsupported state");
                }
                throw new IllegalStateException(this.mScheme + " updateLoad " + mapState(this.mUpdateLoadState));
            }
            int i11 = this.mRetryCount;
            if (i11 < 10) {
                resetUpdateLoadResult();
                this.mRetryCount++;
                LicenseSessionListener licenseSessionListener = this.mListener;
                if (licenseSessionListener != null) {
                    licenseSessionListener.onLicenseUpdateRetry();
                }
                startUpdateLoad();
                return;
            }
            L.e(this, "retryWithUpdateLoadState", "error", "update max retry error!", Integer.valueOf(i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public void startLoad() {
        Asserts.checkMainThread();
        LicenseLoader.RetryPolicy retryPolicy = new LicenseLoader.RetryPolicy(5, 1000L, 3, 1000L);
        String str = this.mLicenseUri;
        LicenseLoader.Request request = new LicenseLoader.Request(str, false, str, null, retryPolicy, this);
        this.mLoadRequest = request;
        this.mLoader.startLoad(request, new LicenseLoader.Callback() { // from class: com.pandora.ttlicense2.LicenseSession.1
            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadCanceled(@NonNull LicenseLoader.Request request2) {
                L.v(LicenseSession.this, "startLoad", "onLoadCanceled", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession.this.mLoadState = 4;
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadComplete(@NonNull LicenseLoader.Request request2, @NonNull LicenseLoader.Result result) {
                L.v(LicenseSession.this, "startLoad", "onLoadComplete", request2, request2.uri, L.string(result));
                Asserts.checkMainThread();
                LicenseSession licenseSession = LicenseSession.this;
                licenseSession.mLoadResult = result;
                licenseSession.mLoadState = 2;
                licenseSession.mReadRequest = new LicenseReader.Request(Uri.fromFile(new File(result.path)).toString(), true, request2, false);
                LicenseSession licenseSession2 = LicenseSession.this;
                licenseSession2.mReader.startReadAsync(licenseSession2.mReadRequest, new LicenseReader.Callback() { // from class: com.pandora.ttlicense2.LicenseSession.1.1
                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadCanceled(@NonNull LicenseReader.Request request3) {
                        L.v(LicenseSession.this, "startRead", "onReadCanceled", request3, request3.uri);
                        Asserts.checkMainThread();
                        LicenseSession.this.mReadState = 4;
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadComplete(@NonNull LicenseReader.Request request3, @NonNull LicenseReader.Result result2) {
                        L.v(LicenseSession.this, "startRead", "onReadComplete", request3, request3.uri, L.string(result2));
                        Asserts.checkMainThread();
                        LicenseSession licenseSession3 = LicenseSession.this;
                        licenseSession3.mReadResult = result2;
                        licenseSession3.mReadState = 2;
                        licenseSession3.mListener.onLicenseSuccess(result2.licenseFile);
                        if (LicenseSession.this.isUpdateAble()) {
                            LicenseSession licenseSession4 = LicenseSession.this;
                            Scheme scheme = licenseSession4.mScheme;
                            if (scheme != Scheme.HTTP && scheme != Scheme.HTTPS) {
                                throw new IllegalArgumentException("Unsupported scheme: " + LicenseSession.this.mLicenseUri);
                            }
                            Asserts.checkNotNull(licenseSession4.mLoadResult);
                            LicenseSession licenseSession5 = LicenseSession.this;
                            if (licenseSession5.mLoadResult.hintCache) {
                                licenseSession5.startUpdateLoad();
                            }
                        }
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadCompleteSync(@NonNull LicenseReader.Request request3, @NonNull LicenseReader.Result result2) {
                        L.v(LicenseSession.this, "startRead", "onReadCompleteSync", request3, request3.uri);
                        LicenseSession.this.mListener.onLicenseSuccessSync(result2.licenseFile);
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadError(@NonNull LicenseReader.Request request3, @NonNull IOException iOException) {
                        L.v(LicenseSession.this, "startRead", iOException, "onReadError", request3, request3.uri);
                        Asserts.checkMainThread();
                        LicenseSession licenseSession3 = LicenseSession.this;
                        licenseSession3.mReadException = iOException;
                        licenseSession3.mReadState = 3;
                        LicenseSessionListener licenseSessionListener = licenseSession3.mListener;
                        if (licenseSessionListener != null) {
                            licenseSessionListener.onLicenseError(iOException, false);
                        }
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadStart(@NonNull LicenseReader.Request request3) {
                        L.v(LicenseSession.this, "startRead", "onReadStart", request3, request3.uri);
                        Asserts.checkMainThread();
                        LicenseSession.this.mReadState = 1;
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadProgressChanged(@NonNull LicenseReader.Request request3, float f10) {
                    }
                });
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadError(@NonNull LicenseLoader.Request request2, @NonNull IOException iOException) {
                boolean z10;
                L.v(LicenseSession.this, "startLoad", iOException, "onLoadError", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession licenseSession = LicenseSession.this;
                licenseSession.mLoadException = iOException;
                licenseSession.mLoadState = 3;
                LicenseSessionListener licenseSessionListener = licenseSession.mListener;
                if (licenseSessionListener != null) {
                    if (licenseSession.mRetryCount < 10) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    licenseSessionListener.onLicenseError(iOException, z10);
                }
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadStart(@NonNull LicenseLoader.Request request2) {
                L.v(LicenseSession.this, "startLoad", "onLoadStart", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession.this.mLoadState = 1;
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadProgressChanged(@NonNull LicenseLoader.Request request2, float f10) {
            }
        });
    }

    @AnyThread
    @SuppressLint({"WrongThread"})
    private void startLoadOnLineLicense() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            startLoad();
        } else {
            this.mH.post(new Runnable() { // from class: com.pandora.ttlicense2.a
                @Override // java.lang.Runnable
                public final void run() {
                    LicenseSession.this.startLoad();
                }
            });
        }
    }

    @AnyThread
    private void startReadOfflineLicense() {
        LicenseReader.Request request = new LicenseReader.Request(this.mLicenseUri, false, this, true);
        this.mReadRequest = request;
        this.mReader.startReadSync(request, new LicenseReader.Callback() { // from class: com.pandora.ttlicense2.LicenseSession.2
            @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
            public void onReadCanceled(@NonNull LicenseReader.Request request2) {
                L.v(LicenseSession.this, "startRead", "onReadCanceled", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession.this.mReadState = 4;
            }

            @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
            public void onReadComplete(@NonNull LicenseReader.Request request2, @NonNull LicenseReader.Result result) {
                L.v(LicenseSession.this, "startRead", "onReadComplete", request2, request2.uri, L.string(result));
                Asserts.checkMainThread();
                LicenseSession licenseSession = LicenseSession.this;
                licenseSession.mReadResult = result;
                licenseSession.mReadState = 2;
                licenseSession.mListener.onLicenseSuccess(result.licenseFile);
                if (LicenseSession.this.isUpdateAble()) {
                    LicenseSession licenseSession2 = LicenseSession.this;
                    Scheme scheme = licenseSession2.mScheme;
                    if (scheme == Scheme.FILE || scheme == Scheme.ASSETS) {
                        licenseSession2.startUpdateLoad();
                        return;
                    }
                    throw new IllegalArgumentException("Unsupported scheme: " + LicenseSession.this.mLicenseUri);
                }
            }

            @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
            public void onReadCompleteSync(@NonNull LicenseReader.Request request2, @NonNull LicenseReader.Result result) {
                L.v(LicenseSession.this, "startRead", "onReadCompleteSync", request2, request2.uri);
                LicenseSession.this.mListener.onLicenseSuccessSync(result.licenseFile);
            }

            @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
            public void onReadError(@NonNull LicenseReader.Request request2, @NonNull IOException iOException) {
                L.v(LicenseSession.this, "startRead", iOException, "onReadError", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession licenseSession = LicenseSession.this;
                licenseSession.mReadException = iOException;
                licenseSession.mReadState = 3;
                LicenseSessionListener licenseSessionListener = licenseSession.mListener;
                if (licenseSessionListener != null) {
                    licenseSessionListener.onLicenseError(iOException, false);
                }
            }

            @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
            public void onReadStart(@NonNull LicenseReader.Request request2) {
                L.v(LicenseSession.this, "startRead", "onReadStart", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession.this.mReadState = 1;
            }

            @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
            public void onReadProgressChanged(@NonNull LicenseReader.Request request2, float f10) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public void startUpdateLoad() {
        Asserts.checkMainThread();
        Asserts.checkNotNull(this.mReadResult);
        Asserts.checkNotNull(this.mReadResult.licenseFile);
        LicenseLoader.Request request = new LicenseLoader.Request(this.mReadResult.licenseFile.cacheKey(), true, this.mReadResult.licenseFile.getMainUrl(), this.mReadResult.licenseFile.getBackupUrl(), new LicenseLoader.RetryPolicy(5, 1000L, 3, 1000L), this);
        this.mUpdateLoadRequest = request;
        this.mLoader.startLoad(request, new LicenseLoader.Callback() { // from class: com.pandora.ttlicense2.LicenseSession.3
            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadCanceled(@NonNull LicenseLoader.Request request2) {
                L.v(LicenseSession.this, "startUpdateLoad", "onLoadCanceled", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession.this.mUpdateLoadState = 4;
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadComplete(@NonNull LicenseLoader.Request request2, @NonNull LicenseLoader.Result result) {
                L.v(LicenseSession.this, "startUpdateLoad", "onLoadComplete", request2, request2.uri, L.string(result));
                Asserts.checkMainThread();
                LicenseSession licenseSession = LicenseSession.this;
                licenseSession.mUpdateLoadResult = result;
                licenseSession.mUpdateLoadState = 2;
                licenseSession.mUpdateReadRequest = new LicenseReader.Request(Uri.fromFile(new File(result.path)).toString(), true, request2, false);
                LicenseSession licenseSession2 = LicenseSession.this;
                licenseSession2.mReader.startReadAsync(licenseSession2.mUpdateReadRequest, new LicenseReader.Callback() { // from class: com.pandora.ttlicense2.LicenseSession.3.1
                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadCanceled(@NonNull LicenseReader.Request request3) {
                        L.v(LicenseSession.this, "startUpdateRead", "onReadCanceled", request3, request3.uri);
                        Asserts.checkMainThread();
                        LicenseSession.this.mUpdateReadState = 4;
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadComplete(@NonNull LicenseReader.Request request3, @NonNull LicenseReader.Result result2) {
                        L.v(LicenseSession.this, "startUpdateRead", "onReadComplete", request3, request3.uri, L.string(result2));
                        Asserts.checkMainThread();
                        LicenseSession licenseSession3 = LicenseSession.this;
                        licenseSession3.mUpdateReadResult = result2;
                        licenseSession3.mUpdateReadState = 2;
                        LicenseSessionListener licenseSessionListener = licenseSession3.mListener;
                        if (licenseSessionListener != null) {
                            licenseSessionListener.onLicenseUpdateSuccess(result2.licenseFile);
                        }
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadCompleteSync(@NonNull LicenseReader.Request request3, @NonNull LicenseReader.Result result2) {
                        L.v(LicenseSession.this, "startUpdateRead", "onReadCompleteSync", request3, request3.uri, L.string(result2));
                        LicenseSession.this.mListener.onLicenseUpdateSuccessSync(result2.licenseFile);
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadError(@NonNull LicenseReader.Request request3, @NonNull IOException iOException) {
                        L.v(LicenseSession.this, "startUpdateRead", iOException, "onReadError", request3, request3.uri);
                        Asserts.checkMainThread();
                        LicenseSession licenseSession3 = LicenseSession.this;
                        licenseSession3.mUpdateReadException = iOException;
                        licenseSession3.mUpdateReadState = 3;
                        LicenseSessionListener licenseSessionListener = licenseSession3.mListener;
                        if (licenseSessionListener != null) {
                            licenseSessionListener.onLicenseUpdateError(iOException, false);
                        }
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadStart(@NonNull LicenseReader.Request request3) {
                        L.v(LicenseSession.this, "startUpdateRead", "onReadStart", request3, request3.uri);
                        Asserts.checkMainThread();
                        LicenseSession.this.mUpdateReadState = 1;
                    }

                    @Override // com.pandora.ttlicense2.loader.LicenseReader.Callback
                    public void onReadProgressChanged(@NonNull LicenseReader.Request request3, float f10) {
                    }
                });
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadError(@NonNull LicenseLoader.Request request2, @NonNull IOException iOException) {
                boolean z10;
                L.v(LicenseSession.this, "startUpdateLoad", iOException, "onLoadError", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession licenseSession = LicenseSession.this;
                licenseSession.mUpdateLoadException = iOException;
                licenseSession.mUpdateLoadState = 3;
                LicenseSessionListener licenseSessionListener = licenseSession.mListener;
                if (licenseSessionListener != null) {
                    if (licenseSession.mRetryCount < 10) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    licenseSessionListener.onLicenseUpdateError(iOException, z10);
                }
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadStart(@NonNull LicenseLoader.Request request2) {
                L.v(LicenseSession.this, "startUpdateLoad", "onLoadStart", request2, request2.uri);
                Asserts.checkMainThread();
                LicenseSession.this.mUpdateLoadState = 1;
            }

            @Override // com.pandora.ttlicense2.loader.LicenseLoader.Callback
            public void onLoadProgressChanged(@NonNull LicenseLoader.Request request2, float f10) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void retry() {
        Asserts.checkMainThread();
        int i10 = AnonymousClass4.$SwitchMap$com$pandora$ttlicense2$utils$Scheme[this.mScheme.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3 && i10 != 4) {
                throw new IllegalArgumentException("Unsupported scheme: " + this.mLicenseUri);
            }
            retryWithLoadState();
            return;
        }
        retryWithReadState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public void start() {
        int i10 = AnonymousClass4.$SwitchMap$com$pandora$ttlicense2$utils$Scheme[this.mScheme.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3 && i10 != 4) {
                if (i10 != 5) {
                    return;
                }
                throw new IllegalArgumentException("Unsupported uri type! " + this.mLicenseUri);
            }
            startLoadOnLineLicense();
            return;
        }
        startReadOfflineLicense();
    }

    public String toString() {
        return "LicenseSession{mScheme=" + this.mScheme + ", mLicenseUri='" + this.mLicenseUri + "', mLoadState=" + mapState(this.mLoadState) + ", mReadState=" + mapState(this.mReadState) + ", mUpdateLoadState=" + mapState(this.mUpdateLoadState) + ", mUpdateReadState=" + mapState(this.mUpdateReadState) + ", mRetryCount=" + this.mRetryCount + '}';
    }
}
