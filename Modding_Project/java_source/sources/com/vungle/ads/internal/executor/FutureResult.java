package com.vungle.ads.internal.executor;

import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FutureResult.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FutureResult<T> implements Future<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String TAG = FutureResult.class.getSimpleName();
    @Nullable
    private final Future<T> future;

    /* compiled from: FutureResult.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getTAG() {
            return FutureResult.TAG;
        }

        private Companion() {
        }
    }

    public FutureResult(@Nullable Future<T> future) {
        this.future = future;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        Future<T> future = this.future;
        if (future != null) {
            return future.cancel(z10);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    @Nullable
    public T get() {
        try {
            Future<T> future = this.future;
            if (future != null) {
                return future.get();
            }
            return null;
        } catch (InterruptedException unused) {
            Logger.Companion companion = Logger.Companion;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            companion.w(TAG2, "future.get() Interrupted on Thread " + Thread.currentThread().getName());
            Thread.currentThread().interrupt();
            return null;
        } catch (ExecutionException e10) {
            Logger.Companion companion2 = Logger.Companion;
            String TAG3 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            companion2.e(TAG3, "error on execution", e10);
            return null;
        }
    }

    @Nullable
    public final Future<T> getFuture() {
        return this.future;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Future<T> future = this.future;
        if (future != null) {
            return future.isCancelled();
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Future<T> future = this.future;
        if (future != null) {
            return future.isDone();
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    @Nullable
    public T get(long j10, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        try {
            Future<T> future = this.future;
            if (future != null) {
                return future.get(j10, unit);
            }
            return null;
        } catch (InterruptedException unused) {
            Logger.Companion companion = Logger.Companion;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            companion.w(TAG2, "future.get() Interrupted on Thread " + Thread.currentThread().getName());
            Thread.currentThread().interrupt();
            return null;
        } catch (ExecutionException e10) {
            Logger.Companion companion2 = Logger.Companion;
            String TAG3 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            companion2.e(TAG3, "error on execution", e10);
            return null;
        } catch (TimeoutException e11) {
            Logger.Companion companion3 = Logger.Companion;
            String TAG4 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            companion3.e(TAG4, "error on timeout", e11);
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            companion3.w(TAG4, "future.get() Timeout on Thread " + Thread.currentThread().getName());
            return null;
        }
    }
}
