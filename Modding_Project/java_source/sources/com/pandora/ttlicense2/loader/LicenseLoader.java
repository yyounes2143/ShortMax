package com.pandora.ttlicense2.loader;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.pandora.ttlicense2.loader.DiskCache;
import com.pandora.ttlicense2.loader.Loader;
import com.pandora.ttlicense2.utils.Asserts;
import com.pandora.ttlicense2.utils.NetWorkUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes6.dex */
public class LicenseLoader {
    private final Context context;
    private final DiskCache diskCache;
    private final Handler handler;
    private final Loader loader;
    private final Map<String, FileLoadTask> taskMap;

    /* loaded from: classes6.dex */
    public interface Callback {
        void onLoadCanceled(@NonNull Request request);

        void onLoadComplete(@NonNull Request request, @NonNull Result result);

        void onLoadError(@NonNull Request request, @NonNull IOException iOException);

        void onLoadProgressChanged(@NonNull Request request, float f10);

        void onLoadStart(@NonNull Request request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class FileLoadTask implements Loader.Loadable {
        private volatile boolean canceled;
        private final Context context;
        private final DiskCache diskCache;
        private DiskCache.HttpWriter httpWriter;
        private final Request request;
        private Result result;

        public FileLoadTask(Request request, DiskCache diskCache, Context context) {
            this.request = request;
            this.diskCache = diskCache;
            this.context = context;
        }

        private void loadWithRetryPolicy(final Loader.ProgressNotifier progressNotifier) throws IOException, InterruptedException {
            String str;
            DiskCache.HttpWriter httpWriter;
            String str2 = this.request.uri;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    synchronized (this) {
                        httpWriter = new DiskCache.HttpWriter(str2, new DiskCache.Writer.ProgressListener() { // from class: com.pandora.ttlicense2.loader.LicenseLoader.FileLoadTask.1
                            @Override // com.pandora.ttlicense2.loader.DiskCache.Writer.ProgressListener
                            public void update(long j10, long j11, boolean z10) {
                                Loader.ProgressNotifier progressNotifier2 = progressNotifier;
                                if (progressNotifier2 != null) {
                                    progressNotifier2.notifyProgressChanged(((float) j10) / ((float) j11));
                                }
                            }
                        });
                        this.httpWriter = httpWriter;
                    }
                    this.diskCache.put(this.request.cacheKey, httpWriter);
                    return;
                } catch (IOException e10) {
                    if (!isCanceled()) {
                        Request request = this.request;
                        RetryPolicy retryPolicy = request.retryPolicy;
                        if (retryPolicy != null) {
                            if (i10 < retryPolicy.mainRetryCount) {
                                str2 = request.uri;
                                i10++;
                                if (!NetWorkUtils.isNetAvailable(this.context)) {
                                    Thread.sleep(retryPolicy.mainRetryWaitTime);
                                }
                            } else if (i11 < retryPolicy.backupRetryCount && (str = request.backupUri) != null) {
                                i11++;
                                if (!NetWorkUtils.isNetAvailable(this.context)) {
                                    Thread.sleep(retryPolicy.backupRetryWaitTime);
                                }
                                str2 = str;
                            } else {
                                throw e10;
                            }
                        } else {
                            throw e10;
                        }
                    } else {
                        throw e10;
                    }
                }
            }
        }

        @Override // com.pandora.ttlicense2.loader.Cancelable
        public void cancel(boolean z10, boolean z11, String str) {
            DiskCache.HttpWriter httpWriter;
            this.canceled = true;
            synchronized (this) {
                httpWriter = this.httpWriter;
            }
            if (httpWriter != null) {
                httpWriter.cancel();
                synchronized (this) {
                    this.httpWriter = null;
                }
            }
        }

        @Override // com.pandora.ttlicense2.loader.Cancelable
        public boolean isCanceled() {
            return this.canceled;
        }

        @Override // com.pandora.ttlicense2.loader.Loader.Loadable
        public void load(Loader.ProgressNotifier progressNotifier) throws IOException, InterruptedException {
            File file;
            Request request = this.request;
            if (request.ignoreCache) {
                file = null;
            } else {
                file = this.diskCache.get(request.cacheKey);
            }
            if (file != null && file.exists()) {
                progressNotifier.notifyProgressChanged(1.0f);
                this.result = new Result(file.getAbsolutePath(), this.request, true);
                return;
            }
            loadWithRetryPolicy(progressNotifier);
            File file2 = this.diskCache.get(this.request.cacheKey);
            if (file2 != null && file2.exists()) {
                this.result = new Result(file2.getAbsolutePath(), this.request, false);
                return;
            }
            throw new FileNotFoundException("cacheKey = " + this.request.cacheKey);
        }
    }

    /* loaded from: classes6.dex */
    public static class Request {
        public final String backupUri;
        public final String cacheKey;
        public final boolean ignoreCache;
        public final RetryPolicy retryPolicy;
        public final Object tag;
        public final String uri;

        public Request(String str, boolean z10, String str2, String str3, RetryPolicy retryPolicy, Object obj) {
            this.cacheKey = str;
            this.ignoreCache = z10;
            this.uri = str2;
            this.backupUri = str3;
            this.retryPolicy = retryPolicy;
            this.tag = obj;
        }

        public String toString() {
            return "Request{cacheKey='" + this.cacheKey + "', url='" + this.uri + "', backupUri='" + this.backupUri + "'}";
        }
    }

    /* loaded from: classes6.dex */
    public static class Result {
        public final boolean hintCache;
        public final String path;
        public final Request request;

        protected Result(String str, Request request, boolean z10) {
            this.path = str;
            this.request = request;
            this.hintCache = z10;
        }

        @NonNull
        public String toString() {
            return "Result{path='" + this.path + "', request=" + this.request + ", hintCache=" + this.hintCache + '}';
        }
    }

    /* loaded from: classes6.dex */
    public static class RetryPolicy {
        public final int backupRetryCount;
        public final long backupRetryWaitTime;
        public final int mainRetryCount;
        public final long mainRetryWaitTime;

        public RetryPolicy(int i10, long j10, int i11, long j11) {
            this.mainRetryCount = i10;
            this.mainRetryWaitTime = j10;
            this.backupRetryCount = i11;
            this.backupRetryWaitTime = j11;
        }
    }

    public LicenseLoader(ThreadPoolExecutor threadPoolExecutor, DiskCache diskCache, Context context) {
        Looper mainLooper = Looper.getMainLooper();
        this.diskCache = diskCache;
        this.loader = new Loader(mainLooper, threadPoolExecutor);
        this.handler = new Handler(mainLooper);
        this.taskMap = new LinkedHashMap();
        this.context = context;
    }

    public void cancel(Request request) {
        Asserts.checkThread(this.handler.getLooper());
        cancel(request.cacheKey);
    }

    public void cancelAll() {
        Asserts.checkThread(this.handler.getLooper());
        ArrayList<FileLoadTask> arrayList = new ArrayList();
        for (Map.Entry<String, FileLoadTask> entry : this.taskMap.entrySet()) {
            arrayList.add(entry.getValue());
        }
        this.taskMap.clear();
        for (FileLoadTask fileLoadTask : arrayList) {
            fileLoadTask.cancel(true, true, null);
        }
    }

    public boolean isFree() {
        Asserts.checkThread(this.handler.getLooper());
        return this.loader.isFree();
    }

    public void release() {
        Asserts.checkThread(this.handler.getLooper());
        this.loader.cancel(true, true, null);
    }

    public void startLoad(Request request, final Callback callback) {
        File file;
        Asserts.checkThread(this.handler.getLooper());
        if (!request.ignoreCache && (file = this.diskCache.get(request.cacheKey)) != null && file.exists()) {
            callback.onLoadStart(request);
            callback.onLoadComplete(request, new Result(file.getAbsolutePath(), request, true));
            return;
        }
        FileLoadTask fileLoadTask = new FileLoadTask(request, this.diskCache, this.context);
        this.taskMap.put(request.cacheKey, fileLoadTask);
        this.loader.startLoad(fileLoadTask, new Loader.Callback<FileLoadTask>() { // from class: com.pandora.ttlicense2.loader.LicenseLoader.1
            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadCanceled(FileLoadTask fileLoadTask2, String str) {
                LicenseLoader.this.taskMap.remove(fileLoadTask2.request.cacheKey);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLoadCanceled(fileLoadTask2.request);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadComplete(FileLoadTask fileLoadTask2) {
                LicenseLoader.this.taskMap.remove(fileLoadTask2.request.cacheKey);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLoadComplete(fileLoadTask2.request, fileLoadTask2.result);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadError(FileLoadTask fileLoadTask2, IOException iOException) {
                LicenseLoader.this.taskMap.remove(fileLoadTask2.request.cacheKey);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLoadError(fileLoadTask2.request, iOException);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadProgressChanged(FileLoadTask fileLoadTask2, float f10) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLoadProgressChanged(fileLoadTask2.request, f10);
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.Callback
            public void onLoadStart(FileLoadTask fileLoadTask2) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onLoadStart(fileLoadTask2.request);
                }
            }
        });
    }

    public void cancel(String str) {
        Asserts.checkThread(this.handler.getLooper());
        FileLoadTask remove = this.taskMap.remove(str);
        if (remove != null) {
            remove.cancel(true, true, null);
        }
    }
}
