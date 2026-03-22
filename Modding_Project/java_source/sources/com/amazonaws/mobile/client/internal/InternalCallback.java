package com.amazonaws.mobile.client.internal;

import android.util.Log;
import com.amazonaws.mobile.client.Callback;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
public class InternalCallback<R> implements Callback<R> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f5363f = "InternalCallback";

    /* renamed from: a  reason: collision with root package name */
    private Callback<R> f5364a;

    /* renamed from: b  reason: collision with root package name */
    private Mode f5365b;

    /* renamed from: c  reason: collision with root package name */
    private CountDownLatch f5366c;

    /* renamed from: d  reason: collision with root package name */
    private R f5367d;

    /* renamed from: e  reason: collision with root package name */
    private Exception f5368e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.mobile.client.internal.InternalCallback$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5371a;

        static {
            int[] iArr = new int[Mode.values().length];
            f5371a = iArr;
            try {
                iArr[Mode.Callback.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5371a[Mode.Async.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5371a[Mode.Sync.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5371a[Mode.Done.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum Mode {
        Callback,
        Async,
        Sync,
        Done
    }

    public InternalCallback() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(R r10, Exception exc) {
        int i10 = AnonymousClass2.f5371a[this.f5365b.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                if (i10 == 4) {
                    Log.w(f5363f, "Library attempted to call user callback twice, expected only once");
                }
            } else {
                this.f5367d = r10;
                this.f5368e = exc;
                this.f5366c.countDown();
            }
        } else if (exc == null) {
            this.f5364a.onResult(r10);
        } else {
            this.f5364a.onError(exc);
        }
        this.f5365b = Mode.Done;
        this.f5364a = null;
    }

    public void b(final Runnable runnable) {
        if (this.f5365b == Mode.Done) {
            Log.e(f5363f, "Duplicate call to execute code.", new RuntimeException("Internal error, duplicate call"));
        }
        this.f5365b = Mode.Async;
        this.f5366c = null;
        new Thread(new Runnable() { // from class: com.amazonaws.mobile.client.internal.InternalCallback.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } catch (Exception e10) {
                    InternalCallback.this.d(null, e10);
                }
            }
        }).start();
    }

    public R c(Runnable runnable) throws Exception {
        if (this.f5365b == Mode.Done) {
            Log.e(f5363f, "Duplicate call to execute code.", new RuntimeException("Internal error, duplicate call"));
        }
        this.f5365b = Mode.Sync;
        try {
            runnable.run();
            this.f5366c.await();
        } catch (Exception e10) {
            this.f5368e = e10;
        }
        Exception exc = this.f5368e;
        R r10 = this.f5367d;
        this.f5368e = null;
        this.f5367d = null;
        if (exc == null) {
            return r10;
        }
        throw exc;
    }

    @Override // com.amazonaws.mobile.client.Callback
    public void onError(Exception exc) {
        d(null, exc);
    }

    @Override // com.amazonaws.mobile.client.Callback
    public void onResult(R r10) {
        d(r10, null);
    }

    public InternalCallback(Callback<R> callback) {
        this.f5364a = callback;
        this.f5365b = Mode.Callback;
        this.f5366c = new CountDownLatch(1);
    }
}
