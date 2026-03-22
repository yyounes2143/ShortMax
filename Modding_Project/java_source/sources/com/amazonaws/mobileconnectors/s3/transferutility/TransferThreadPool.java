package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TransferThreadPool {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f5725a = LogFactory.b(TransferService.class);

    /* renamed from: b  reason: collision with root package name */
    private static ExecutorService f5726b;

    /* renamed from: c  reason: collision with root package name */
    private static ExecutorService f5727c;

    private static ExecutorService a(int i10) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void b(int i10) {
        synchronized (TransferThreadPool.class) {
            try {
                Log log = f5725a;
                log.h("Initializing the thread pool of size: " + i10);
                int max = Math.max((int) Math.ceil(((double) i10) / 2.0d), 1);
                if (f5726b == null) {
                    f5726b = a(max);
                }
                if (f5727c == null) {
                    f5727c = a(max);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static <T> Future<T> c(Callable<T> callable) {
        b(TransferUtilityOptions.d());
        if (callable instanceof UploadPartTask) {
            return f5727c.submit(callable);
        }
        return f5726b.submit(callable);
    }
}
