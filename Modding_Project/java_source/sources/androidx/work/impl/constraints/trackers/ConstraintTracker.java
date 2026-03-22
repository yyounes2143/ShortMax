package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConstraintTracker.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public abstract class ConstraintTracker<T> {
    @NotNull
    private final Context appContext;
    @Nullable
    private T currentState;
    @NotNull
    private final LinkedHashSet<ConstraintListener<T>> listeners;
    @NotNull
    private final Object lock;
    @NotNull
    private final TaskExecutor taskExecutor;

    /* JADX INFO: Access modifiers changed from: protected */
    public ConstraintTracker(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        this.taskExecutor = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.appContext = applicationContext;
        this.lock = new Object();
        this.listeners = new LinkedHashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _set_state_$lambda$4$lambda$3(List listenersList, ConstraintTracker this$0) {
        Intrinsics.checkNotNullParameter(listenersList, "$listenersList");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Iterator<T> it = listenersList.iterator();
        while (it.hasNext()) {
            ((ConstraintListener) it.next()).onConstraintChanged(this$0.currentState);
        }
    }

    public final void addListener(@NotNull ConstraintListener<T> listener) {
        String str;
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            try {
                if (this.listeners.add(listener)) {
                    if (this.listeners.size() == 1) {
                        this.currentState = getInitialState();
                        Logger logger = Logger.get();
                        str = ConstraintTrackerKt.TAG;
                        logger.debug(str, getClass().getSimpleName() + ": initial state = " + this.currentState);
                        startTracking();
                    }
                    listener.onConstraintChanged(this.currentState);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Context getAppContext() {
        return this.appContext;
    }

    public abstract T getInitialState();

    public final T getState() {
        T t10 = this.currentState;
        if (t10 == null) {
            return getInitialState();
        }
        return t10;
    }

    public final void removeListener(@NotNull ConstraintListener<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            try {
                if (this.listeners.remove(listener) && this.listeners.isEmpty()) {
                    stopTracking();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void setState(T t10) {
        synchronized (this.lock) {
            T t11 = this.currentState;
            if (t11 != null && Intrinsics.areEqual(t11, t10)) {
                return;
            }
            this.currentState = t10;
            final List d12 = CollectionsKt.d1(this.listeners);
            this.taskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: androidx.work.impl.constraints.trackers.a
                @Override // java.lang.Runnable
                public final void run() {
                    ConstraintTracker._set_state_$lambda$4$lambda$3(d12, this);
                }
            });
            Unit unit = Unit.f60915a;
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();
}
