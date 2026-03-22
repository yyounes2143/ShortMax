package com.adjust.sdk.scheduler;

import com.adjust.sdk.scheduler.AsyncTaskExecutor;
/* loaded from: classes2.dex */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f4380a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AsyncTaskExecutor.a f4381b;

    public a(AsyncTaskExecutor.a aVar, Object obj) {
        this.f4381b = aVar;
        this.f4380a = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AsyncTaskExecutor.this.onPostExecute(this.f4380a);
    }
}
