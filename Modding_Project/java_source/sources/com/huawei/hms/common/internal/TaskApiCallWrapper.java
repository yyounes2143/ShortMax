package com.huawei.hms.common.internal;

import ua.g;
/* loaded from: classes5.dex */
public class TaskApiCallWrapper<TResult> extends BaseContentWrapper {

    /* renamed from: a  reason: collision with root package name */
    private final TaskApiCall<? extends AnyClient, TResult> f22097a;

    /* renamed from: b  reason: collision with root package name */
    private final g<TResult> f22098b;

    public TaskApiCallWrapper(TaskApiCall<? extends AnyClient, TResult> taskApiCall, g<TResult> gVar) {
        super(1);
        this.f22097a = taskApiCall;
        this.f22098b = gVar;
    }

    public TaskApiCall<? extends AnyClient, TResult> getTaskApiCall() {
        return this.f22097a;
    }

    public g<TResult> getTaskCompletionSource() {
        return this.f22098b;
    }
}
