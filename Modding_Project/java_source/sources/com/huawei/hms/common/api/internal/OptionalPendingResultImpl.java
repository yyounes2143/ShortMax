package com.huawei.hms.common.api.internal;

import android.os.Looper;
import com.huawei.hms.common.api.OptionalPendingResult;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.Result;
import com.huawei.hms.support.api.client.ResultCallback;
import java.util.concurrent.TimeUnit;
@Deprecated
/* loaded from: classes5.dex */
public final class OptionalPendingResultImpl<R extends Result> extends OptionalPendingResult<R> {

    /* renamed from: g  reason: collision with root package name */
    private final PendingResult<R> f21990g;

    public OptionalPendingResultImpl(PendingResult<R> pendingResult) {
        this.f21990g = pendingResult;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final R await() {
        return this.f21990g.await();
    }

    @Override // com.huawei.hms.common.api.OptionalPendingResult
    public final R get() {
        throw new IllegalStateException("Result is not available. Check that isDone() returns true before calling get().");
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final boolean isCanceled() {
        return false;
    }

    @Override // com.huawei.hms.common.api.OptionalPendingResult
    public final boolean isDone() {
        return false;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final void setResultCallback(ResultCallback<R> resultCallback) {
        this.f21990g.setResultCallback(resultCallback);
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final R await(long j10, TimeUnit timeUnit) {
        return this.f21990g.await(j10, timeUnit);
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public void setResultCallback(Looper looper, ResultCallback<R> resultCallback) {
        this.f21990g.setResultCallback(looper, resultCallback);
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final void setResultCallback(ResultCallback<R> resultCallback, long j10, TimeUnit timeUnit) {
        setResultCallback(resultCallback);
    }

    public final void addStatusListener() {
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final void cancel() {
    }
}
