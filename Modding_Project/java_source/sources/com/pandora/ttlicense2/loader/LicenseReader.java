package com.pandora.ttlicense2.loader;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.pandora.ttlicense2.License;
import com.pandora.ttlicense2.LicenseFile;
import com.pandora.ttlicense2.LicenseLogger;
import com.pandora.ttlicense2.loader.LicenseReader;
import com.pandora.ttlicense2.loader.Loader;
import com.pandora.ttlicense2.utils.Asserts;
import com.pandora.ttlicense2.utils.L;
import com.pandora.ttlicense2.utils.Scheme;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes6.dex */
public class LicenseReader {
    private final AssetManager assetManager;
    private final DiskCache diskCache;
    private final Handler handler;
    private final Loader loader;
    private final Map<String, FileReadTask> taskMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pandora.ttlicense2.loader.LicenseReader$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass2 {
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
        }
    }

    /* loaded from: classes6.dex */
    public interface Callback {
        void onReadCanceled(@NonNull Request request);

        void onReadComplete(@NonNull Request request, @NonNull Result result);

        void onReadCompleteSync(@NonNull Request request, @NonNull Result result);

        void onReadError(@NonNull Request request, @NonNull IOException iOException);

        void onReadProgressChanged(@NonNull Request request, float f10);

        void onReadStart(@NonNull Request request);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class FileReadTask implements Loader.Loadable {
        private final AssetManager assetManager;
        private final Callback callback;
        private volatile boolean canceled;
        private final DiskCache diskCache;
        private final Request request;
        private Result result;

        public FileReadTask(Request request, DiskCache diskCache, AssetManager assetManager, Callback callback) {
            this.request = request;
            this.diskCache = diskCache;
            this.assetManager = assetManager;
            this.callback = callback;
        }

        private InputStream inputStream(String str) throws IOException {
            int i10 = AnonymousClass2.$SwitchMap$com$pandora$ttlicense2$utils$Scheme[Scheme.ofUri(str).ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    String path = Uri.parse(str).getPath();
                    if (!TextUtils.isEmpty(path)) {
                        if (path.indexOf(DomExceptionUtils.SEPARATOR) == 0) {
                            path = path.substring(1);
                        }
                        return this.assetManager.open(path);
                    }
                    throw new IOException("Can't parse license real assets path! " + str);
                }
                throw new IllegalArgumentException("Unexpected scheme! " + str);
            }
            return new FileInputStream(Uri.parse(str).getPath());
        }

        /* JADX WARN: Multi-variable type inference failed */
        private String read(String str) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream;
            Throwable th2;
            InputStream inputStream;
            InputStream inputStream2;
            try {
                try {
                    inputStream2 = inputStream(str);
                } catch (Throwable th3) {
                    th2 = th3;
                    inputStream = str;
                }
            } catch (IOException e10) {
                throw e10;
            } catch (Throwable th4) {
                byteArrayOutputStream = null;
                th2 = th4;
                inputStream = null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = inputStream2.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream2.write(bArr, 0, read);
                    }
                    String byteArrayOutputStream3 = byteArrayOutputStream2.toString("utf-8");
                    try {
                        inputStream2.close();
                    } catch (IOException unused) {
                    }
                    try {
                        byteArrayOutputStream2.close();
                    } catch (IOException unused2) {
                    }
                    return byteArrayOutputStream3;
                } catch (IOException e11) {
                    throw e11;
                }
            } catch (IOException e12) {
                throw e12;
            } catch (Throwable th5) {
                byteArrayOutputStream = null;
                th2 = th5;
                inputStream = inputStream2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th2;
            }
        }

        @Nullable
        private LicenseFile readCachedLicenseFile(String str) {
            LicenseFile licenseFile = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            long nanoTime = System.nanoTime();
            File file = this.diskCache.get(str);
            if (file != null && file.exists() && file.length() > 0) {
                String valueOf = String.valueOf(Uri.fromFile(file));
                if (!TextUtils.isEmpty(valueOf)) {
                    try {
                        licenseFile = readLicenseFile(valueOf);
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    L.v(this, "loadCache", Long.valueOf(System.nanoTime() - nanoTime));
                }
            }
            return licenseFile;
        }

        @NonNull
        private LicenseFile readLicenseFile(String str) throws IOException {
            try {
                return LicenseFile.parse(read(str));
            } catch (Exception e10) {
                throw new IOException(e10);
            }
        }

        @Override // com.pandora.ttlicense2.loader.Cancelable
        public void cancel(boolean z10, boolean z11, String str) {
            this.canceled = true;
        }

        @Override // com.pandora.ttlicense2.loader.Cancelable
        public boolean isCanceled() {
            return this.canceled;
        }

        @Override // com.pandora.ttlicense2.loader.Loader.Loadable
        public void load(Loader.ProgressNotifier progressNotifier) throws IOException {
            LicenseFile licenseFile;
            long nanoTime = System.nanoTime();
            LicenseFile readLicenseFile = readLicenseFile(this.request.uri);
            L.v(this, "load", Long.valueOf(System.nanoTime() - nanoTime));
            if (this.request.uploadLog) {
                LicenseLogger.getInstance().upLoadLicenseLog(new License(readLicenseFile.getContent()));
            }
            if (!this.request.ignoreCache && readLicenseFile.isUpdateAble()) {
                licenseFile = readCachedLicenseFile(readLicenseFile.cacheKey());
            } else {
                licenseFile = null;
            }
            if (licenseFile != null && licenseFile.getFileVersion() > readLicenseFile.getFileVersion()) {
                this.result = new Result(this.request, licenseFile, true);
            } else {
                this.result = new Result(this.request, readLicenseFile, false);
            }
            Callback callback = this.callback;
            if (callback != null) {
                callback.onReadCompleteSync(this.request, this.result);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class Request {
        public final boolean ignoreCache;
        public final Object tag;
        public final boolean uploadLog;
        public final String uri;

        public Request(@NonNull String str, boolean z10, @Nullable Object obj, boolean z11) {
            this.uri = str;
            this.ignoreCache = z10;
            this.tag = obj;
            this.uploadLog = z11;
        }

        public String toString() {
            return "Request{uri='" + this.uri + "', ignoreCache=" + this.ignoreCache + ", uploadLog=" + this.uploadLog + '}';
        }
    }

    /* loaded from: classes6.dex */
    public static class Result {
        public final boolean hintCache;
        public final LicenseFile licenseFile;
        public final Request request;

        public Result(@NonNull Request request, @NonNull LicenseFile licenseFile, boolean z10) {
            this.request = request;
            this.licenseFile = licenseFile;
            this.hintCache = z10;
        }

        public String toString() {
            return "Result{hintCache=" + this.hintCache + ", request=" + this.request + ", licenseFile=" + this.licenseFile + '}';
        }
    }

    public LicenseReader(@NonNull ThreadPoolExecutor threadPoolExecutor, DiskCache diskCache, AssetManager assetManager) {
        Looper mainLooper = Looper.getMainLooper();
        this.loader = new Loader(mainLooper, threadPoolExecutor);
        this.handler = new Handler(mainLooper);
        this.diskCache = diskCache;
        this.assetManager = assetManager;
        this.taskMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startReadSync$1(@Nullable Callback callback, @NonNull Request request, FileReadTask fileReadTask) {
        callback.onReadComplete(request, fileReadTask.result);
    }

    private void run(Runnable runnable) {
        if (this.handler.getLooper() != Looper.myLooper()) {
            this.handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void cancel(Request request) {
        Asserts.checkThread(this.handler.getLooper());
        cancel(request.uri);
    }

    public void cancelAll() {
        Asserts.checkThread(this.handler.getLooper());
        ArrayList<FileReadTask> arrayList = new ArrayList();
        for (Map.Entry<String, FileReadTask> entry : this.taskMap.entrySet()) {
            arrayList.add(entry.getValue());
        }
        this.taskMap.clear();
        for (FileReadTask fileReadTask : arrayList) {
            fileReadTask.cancel(true, true, null);
        }
    }

    public void release() {
        Asserts.checkThread(this.handler.getLooper());
        this.loader.cancel(true, true, null);
    }

    @MainThread
    public void startReadAsync(@NonNull Request request, @Nullable final Callback callback) {
        Asserts.checkThread(this.handler.getLooper());
        FileReadTask fileReadTask = new FileReadTask(request, this.diskCache, this.assetManager, callback);
        this.taskMap.put(request.uri, fileReadTask);
        this.loader.startLoad(fileReadTask, new Loader.Callback<FileReadTask>() { // from class: com.pandora.ttlicense2.loader.LicenseReader.1
            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadCanceled(FileReadTask fileReadTask2, String str) {
                LicenseReader.this.taskMap.remove(fileReadTask2.request.uri);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onReadCanceled(fileReadTask2.request);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadComplete(FileReadTask fileReadTask2) {
                LicenseReader.this.taskMap.remove(fileReadTask2.request.uri);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onReadComplete(fileReadTask2.request, fileReadTask2.result);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadError(FileReadTask fileReadTask2, IOException iOException) {
                LicenseReader.this.taskMap.remove(fileReadTask2.request.uri);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onReadError(fileReadTask2.request, iOException);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadProgressChanged(FileReadTask fileReadTask2, float f10) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onReadProgressChanged(fileReadTask2.request, f10);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadStart(FileReadTask fileReadTask2) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onReadStart(fileReadTask2.request);
                }
            }
        });
    }

    @AnyThread
    public void startReadSync(@NonNull final Request request, @Nullable final Callback callback) {
        final FileReadTask fileReadTask = new FileReadTask(request, this.diskCache, this.assetManager, callback);
        if (callback != null) {
            try {
                run(new Runnable() { // from class: com.pandora.ttlicense2.loader.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        LicenseReader.Callback.this.onReadStart(request);
                    }
                });
            } catch (IOException e10) {
                if (callback != null) {
                    run(new Runnable() { // from class: com.pandora.ttlicense2.loader.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            LicenseReader.Callback.this.onReadError(request, e10);
                        }
                    });
                    return;
                }
                return;
            }
        }
        fileReadTask.load(null);
        if (callback != null) {
            Asserts.checkNotNull(fileReadTask.result);
            run(new Runnable() { // from class: com.pandora.ttlicense2.loader.b
                @Override // java.lang.Runnable
                public final void run() {
                    LicenseReader.lambda$startReadSync$1(LicenseReader.Callback.this, request, fileReadTask);
                }
            });
        }
    }

    public void cancel(String str) {
        Asserts.checkThread(this.handler.getLooper());
        FileReadTask remove = this.taskMap.remove(str);
        if (remove != null) {
            remove.cancel(true, true, null);
        }
    }
}
