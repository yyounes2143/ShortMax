package com.adjust.sdk.scheduler;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public abstract class AsyncTaskExecutor<Params, Result> {

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Object[] f4367a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Handler f4368b;

        public a(Object[] objArr, Handler handler) {
            this.f4367a = objArr;
            this.f4368b = handler;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            this.f4368b.post(new com.adjust.sdk.scheduler.a(this, AsyncTaskExecutor.this.doInBackground(this.f4367a)));
        }
    }

    public abstract Result doInBackground(Params[] paramsArr);

    @SafeVarargs
    public final AsyncTaskExecutor<Params, Result> execute(Params... paramsArr) {
        onPreExecute();
        Executors.newSingleThreadExecutor().execute(new a(paramsArr, new Handler(Looper.getMainLooper())));
        return this;
    }

    public void onPreExecute() {
    }

    public void onPostExecute(Result result) {
    }
}
