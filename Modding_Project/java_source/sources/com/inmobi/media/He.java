package com.inmobi.media;

import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Response;
/* loaded from: classes5.dex */
public abstract class He {
    public static final boolean a(Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        int o10 = response.o();
        return !(400 <= o10 && o10 < 600);
    }

    public static final Object a(ExecutorService executorService, long j10, TimeUnit unit, Callable task) {
        Intrinsics.checkNotNullParameter(executorService, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        Intrinsics.checkNotNullParameter(task, "task");
        Future submit = executorService.submit(task);
        Intrinsics.checkNotNullExpressionValue(submit, "submit(...)");
        try {
            return submit.get(j10, unit);
        } catch (InterruptedException e10) {
            submit.cancel(true);
            Thread.currentThread().interrupt();
            throw e10;
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (cause == null) {
                throw e11;
            }
            throw cause;
        } catch (TimeoutException unused) {
            submit.cancel(true);
            throw new SocketTimeoutException();
        }
    }
}
