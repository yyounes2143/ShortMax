package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComputableLiveData.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public abstract class ComputableLiveData<T> {
    @NotNull
    private final LiveData<T> _liveData;
    @NotNull
    private final AtomicBoolean computing;
    @NotNull
    private final Executor executor;
    @NotNull
    private final AtomicBoolean invalid;
    @NotNull
    public final Runnable invalidationRunnable;
    @NotNull
    private final LiveData<T> liveData;
    @NotNull
    public final Runnable refreshRunnable;

    public ComputableLiveData() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invalidationRunnable$lambda$1(ComputableLiveData computableLiveData) {
        boolean hasActiveObservers = computableLiveData.getLiveData().hasActiveObservers();
        if (computableLiveData.invalid.compareAndSet(false, true) && hasActiveObservers) {
            computableLiveData.executor.execute(computableLiveData.refreshRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshRunnable$lambda$0(ComputableLiveData computableLiveData) {
        do {
            boolean z10 = false;
            if (computableLiveData.computing.compareAndSet(false, true)) {
                T t10 = null;
                boolean z11 = false;
                while (computableLiveData.invalid.compareAndSet(true, false)) {
                    try {
                        t10 = (T) computableLiveData.compute();
                        z11 = true;
                    } catch (Throwable th2) {
                        computableLiveData.computing.set(false);
                        throw th2;
                    }
                }
                if (z11) {
                    computableLiveData.getLiveData().postValue(t10);
                }
                computableLiveData.computing.set(false);
                z10 = z11;
            }
            if (!z10) {
                return;
            }
        } while (computableLiveData.invalid.get());
    }

    @WorkerThread
    protected abstract T compute();

    @NotNull
    public final AtomicBoolean getComputing$lifecycle_livedata_release() {
        return this.computing;
    }

    @NotNull
    public final Executor getExecutor$lifecycle_livedata_release() {
        return this.executor;
    }

    @NotNull
    public final AtomicBoolean getInvalid$lifecycle_livedata_release() {
        return this.invalid;
    }

    @NotNull
    public LiveData<T> getLiveData() {
        return this.liveData;
    }

    public void invalidate() {
        ArchTaskExecutor.getInstance().executeOnMainThread(this.invalidationRunnable);
    }

    public ComputableLiveData(@NotNull Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.executor = executor;
        LiveData<T> liveData = new LiveData<T>(this) { // from class: androidx.lifecycle.ComputableLiveData$_liveData$1
            final /* synthetic */ ComputableLiveData<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.lifecycle.LiveData
            public void onActive() {
                this.this$0.getExecutor$lifecycle_livedata_release().execute(this.this$0.refreshRunnable);
            }
        };
        this._liveData = liveData;
        this.liveData = liveData;
        this.invalid = new AtomicBoolean(true);
        this.computing = new AtomicBoolean(false);
        this.refreshRunnable = new Runnable() { // from class: androidx.lifecycle.a
            @Override // java.lang.Runnable
            public final void run() {
                ComputableLiveData.refreshRunnable$lambda$0(ComputableLiveData.this);
            }
        };
        this.invalidationRunnable = new Runnable() { // from class: androidx.lifecycle.b
            @Override // java.lang.Runnable
            public final void run() {
                ComputableLiveData.invalidationRunnable$lambda$1(ComputableLiveData.this);
            }
        };
    }

    public /* synthetic */ ComputableLiveData(Executor executor, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? ArchTaskExecutor.getIOThreadExecutor() : executor);
    }

    @VisibleForTesting
    public static /* synthetic */ void getInvalidationRunnable$lifecycle_livedata_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getRefreshRunnable$lifecycle_livedata_release$annotations() {
    }
}
