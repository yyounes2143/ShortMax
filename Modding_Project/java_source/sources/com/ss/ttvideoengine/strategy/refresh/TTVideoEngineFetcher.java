package com.ss.ttvideoengine.strategy.refresh;

import androidx.annotation.NonNull;
/* loaded from: classes6.dex */
interface TTVideoEngineFetcher<Request, Result> {

    /* loaded from: classes6.dex */
    public interface Callback<R> {
        void onError(int i10, String str);

        void onSuccess(@NonNull R r10);
    }

    void cancel();

    void fetch(@NonNull Request request, @NonNull Callback<Result> callback);
}
