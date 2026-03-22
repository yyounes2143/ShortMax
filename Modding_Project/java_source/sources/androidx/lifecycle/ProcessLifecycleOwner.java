package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.lifecycle.ReportFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProcessLifecycleOwner.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ProcessLifecycleOwner implements LifecycleOwner {
    public static final long TIMEOUT_MS = 700;
    @Nullable
    private Handler handler;
    private int resumedCounter;
    private int startedCounter;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ProcessLifecycleOwner newInstance = new ProcessLifecycleOwner();
    private boolean pauseSent = true;
    private boolean stopSent = true;
    @NotNull
    private final LifecycleRegistry registry = new LifecycleRegistry(this);
    @NotNull
    private final Runnable delayedPauseRunnable = new Runnable() { // from class: androidx.lifecycle.k
        @Override // java.lang.Runnable
        public final void run() {
            ProcessLifecycleOwner.delayedPauseRunnable$lambda$0(ProcessLifecycleOwner.this);
        }
    };
    @NotNull
    private final ReportFragment.ActivityInitializationListener initializationListener = new ReportFragment.ActivityInitializationListener() { // from class: androidx.lifecycle.ProcessLifecycleOwner$initializationListener$1
        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onResume() {
            ProcessLifecycleOwner.this.activityResumed$lifecycle_process_release();
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onStart() {
            ProcessLifecycleOwner.this.activityStarted$lifecycle_process_release();
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onCreate() {
        }
    };

    /* compiled from: ProcessLifecycleOwner.kt */
    @RequiresApi(29)
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api29Impl {
        @NotNull
        public static final Api29Impl INSTANCE = new Api29Impl();

        private Api29Impl() {
        }

        public static final void registerActivityLifecycleCallbacks(@NotNull Activity activity, @NotNull Application.ActivityLifecycleCallbacks callback) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(callback, "callback");
            activity.registerActivityLifecycleCallbacks(callback);
        }
    }

    /* compiled from: ProcessLifecycleOwner.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LifecycleOwner get() {
            return ProcessLifecycleOwner.newInstance;
        }

        public final void init$lifecycle_process_release(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ProcessLifecycleOwner.newInstance.attach$lifecycle_process_release(context);
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getTIMEOUT_MS$lifecycle_process_release$annotations() {
        }
    }

    private ProcessLifecycleOwner() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void delayedPauseRunnable$lambda$0(ProcessLifecycleOwner processLifecycleOwner) {
        processLifecycleOwner.dispatchPauseIfNeeded$lifecycle_process_release();
        processLifecycleOwner.dispatchStopIfNeeded$lifecycle_process_release();
    }

    @NotNull
    public static final LifecycleOwner get() {
        return Companion.get();
    }

    public final void activityPaused$lifecycle_process_release() {
        int i10 = this.resumedCounter - 1;
        this.resumedCounter = i10;
        if (i10 == 0) {
            Handler handler = this.handler;
            Intrinsics.checkNotNull(handler);
            handler.postDelayed(this.delayedPauseRunnable, 700L);
        }
    }

    public final void activityResumed$lifecycle_process_release() {
        int i10 = this.resumedCounter + 1;
        this.resumedCounter = i10;
        if (i10 == 1) {
            if (this.pauseSent) {
                this.registry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
                this.pauseSent = false;
                return;
            }
            Handler handler = this.handler;
            Intrinsics.checkNotNull(handler);
            handler.removeCallbacks(this.delayedPauseRunnable);
        }
    }

    public final void activityStarted$lifecycle_process_release() {
        int i10 = this.startedCounter + 1;
        this.startedCounter = i10;
        if (i10 == 1 && this.stopSent) {
            this.registry.handleLifecycleEvent(Lifecycle.Event.ON_START);
            this.stopSent = false;
        }
    }

    public final void activityStopped$lifecycle_process_release() {
        this.startedCounter--;
        dispatchStopIfNeeded$lifecycle_process_release();
    }

    public final void attach$lifecycle_process_release(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.handler = new Handler();
        this.registry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                ReportFragment.ActivityInitializationListener activityInitializationListener;
                Intrinsics.checkNotNullParameter(activity, "activity");
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment reportFragment = ReportFragment.Companion.get(activity);
                    activityInitializationListener = ProcessLifecycleOwner.this.initializationListener;
                    reportFragment.setProcessListener(activityInitializationListener);
                }
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                ProcessLifecycleOwner.this.activityPaused$lifecycle_process_release();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            @RequiresApi(29)
            public void onActivityPreCreated(Activity activity, Bundle bundle) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                final ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.this;
                ProcessLifecycleOwner.Api29Impl.registerActivityLifecycleCallbacks(activity, new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(Activity activity2) {
                        Intrinsics.checkNotNullParameter(activity2, "activity");
                        ProcessLifecycleOwner.this.activityResumed$lifecycle_process_release();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(Activity activity2) {
                        Intrinsics.checkNotNullParameter(activity2, "activity");
                        ProcessLifecycleOwner.this.activityStarted$lifecycle_process_release();
                    }
                });
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                ProcessLifecycleOwner.this.activityStopped$lifecycle_process_release();
            }
        });
    }

    public final void dispatchPauseIfNeeded$lifecycle_process_release() {
        if (this.resumedCounter == 0) {
            this.pauseSent = true;
            this.registry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
    }

    public final void dispatchStopIfNeeded$lifecycle_process_release() {
        if (this.startedCounter == 0 && this.pauseSent) {
            this.registry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
            this.stopSent = true;
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public Lifecycle getLifecycle() {
        return this.registry;
    }
}
