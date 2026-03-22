package com.huawei.hms.support.api;

import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.Result;
import com.huawei.hms.support.api.client.Status;
/* loaded from: classes5.dex */
public class ResolvePendingResult<T extends e> extends PendingResultImpl<ResolveResult<T>, T> {
    protected ResolvePendingResult(ApiClient apiClient, String str, e eVar, Class<T> cls) {
        super(apiClient, str, eVar, cls);
    }

    public static <R extends e> ResolvePendingResult<R> build(ApiClient apiClient, String str, e eVar, Class<R> cls) {
        return new ResolvePendingResult<>(apiClient, str, eVar, cls);
    }

    public T get() {
        return (T) await().getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.huawei.hms.support.api.PendingResultImpl
    public /* bridge */ /* synthetic */ Result onComplete(e eVar) {
        return onComplete((ResolvePendingResult<T>) eVar);
    }

    @Override // com.huawei.hms.support.api.PendingResultImpl
    public ResolveResult<T> onComplete(T t10) {
        ResolveResult<T> resolveResult = new ResolveResult<>(t10);
        resolveResult.setStatus(new Status(0));
        return resolveResult;
    }
}
