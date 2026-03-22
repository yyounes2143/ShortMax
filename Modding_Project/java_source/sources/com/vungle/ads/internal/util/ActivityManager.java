package com.vungle.ads.internal.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import com.vungle.ads.internal.util.Logger;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ActivityManager implements Application.ActivityLifecycleCallbacks {
    @NotNull
    private static final String TAG = "ActivityManager";
    private volatile int foregroundActivityCount;
    private volatile boolean isAppInForeground;
    @Nullable
    private volatile TargetActivityInfo targetActivityInfo;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ActivityManager instance = new ActivityManager();
    @NotNull
    private final AtomicBoolean isInitialized = new AtomicBoolean(false);
    @NotNull
    private final CopyOnWriteArraySet<LifeCycleCallback> callbacks = new CopyOnWriteArraySet<>();

    /* compiled from: ActivityManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void addLifecycleListener(@NotNull LifeCycleCallback listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            getInstance$vungle_ads_release().addListener(listener);
        }

        public final void deInit$vungle_ads_release(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            getInstance$vungle_ads_release().deInit(context);
        }

        @NotNull
        public final ActivityManager getInstance$vungle_ads_release() {
            return ActivityManager.instance;
        }

        public final void init(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            getInstance$vungle_ads_release().init(context);
        }

        public final boolean isForeground() {
            return getInstance$vungle_ads_release().isAppInForeground();
        }

        public final void removeLifecycleListener(@NotNull LifeCycleCallback listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            getInstance$vungle_ads_release().removeListener(listener);
        }

        public final boolean startWhenForeground(@NotNull Context context, @Nullable Intent intent, @Nullable Intent intent2, @Nullable PresenterAdOpenCallback presenterAdOpenCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (isForeground()) {
                return getInstance$vungle_ads_release().startActivitySafely(context, intent, intent2, presenterAdOpenCallback);
            }
            getInstance$vungle_ads_release().targetActivityInfo = new TargetActivityInfo(new WeakReference(context), intent, intent2, presenterAdOpenCallback);
            return false;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getInstance$vungle_ads_release$annotations() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class TargetActivityInfo {
        @Nullable
        private final PresenterAdOpenCallback adOpenCallback;
        @NotNull
        private final WeakReference<Context> context;
        @Nullable
        private final Intent deepLinkOverrideIntent;
        @Nullable
        private final Intent defaultIntent;

        public TargetActivityInfo(@NotNull WeakReference<Context> context, @Nullable Intent intent, @Nullable Intent intent2, @Nullable PresenterAdOpenCallback presenterAdOpenCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            this.deepLinkOverrideIntent = intent;
            this.defaultIntent = intent2;
            this.adOpenCallback = presenterAdOpenCallback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TargetActivityInfo copy$default(TargetActivityInfo targetActivityInfo, WeakReference weakReference, Intent intent, Intent intent2, PresenterAdOpenCallback presenterAdOpenCallback, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = targetActivityInfo.context;
            }
            if ((i10 & 2) != 0) {
                intent = targetActivityInfo.deepLinkOverrideIntent;
            }
            if ((i10 & 4) != 0) {
                intent2 = targetActivityInfo.defaultIntent;
            }
            if ((i10 & 8) != 0) {
                presenterAdOpenCallback = targetActivityInfo.adOpenCallback;
            }
            return targetActivityInfo.copy(weakReference, intent, intent2, presenterAdOpenCallback);
        }

        @NotNull
        public final WeakReference<Context> component1() {
            return this.context;
        }

        @Nullable
        public final Intent component2() {
            return this.deepLinkOverrideIntent;
        }

        @Nullable
        public final Intent component3() {
            return this.defaultIntent;
        }

        @Nullable
        public final PresenterAdOpenCallback component4() {
            return this.adOpenCallback;
        }

        @NotNull
        public final TargetActivityInfo copy(@NotNull WeakReference<Context> context, @Nullable Intent intent, @Nullable Intent intent2, @Nullable PresenterAdOpenCallback presenterAdOpenCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new TargetActivityInfo(context, intent, intent2, presenterAdOpenCallback);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TargetActivityInfo)) {
                return false;
            }
            TargetActivityInfo targetActivityInfo = (TargetActivityInfo) obj;
            if (Intrinsics.areEqual(this.context, targetActivityInfo.context) && Intrinsics.areEqual(this.deepLinkOverrideIntent, targetActivityInfo.deepLinkOverrideIntent) && Intrinsics.areEqual(this.defaultIntent, targetActivityInfo.defaultIntent) && Intrinsics.areEqual(this.adOpenCallback, targetActivityInfo.adOpenCallback)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final PresenterAdOpenCallback getAdOpenCallback() {
            return this.adOpenCallback;
        }

        @NotNull
        public final WeakReference<Context> getContext() {
            return this.context;
        }

        @Nullable
        public final Intent getDeepLinkOverrideIntent() {
            return this.deepLinkOverrideIntent;
        }

        @Nullable
        public final Intent getDefaultIntent() {
            return this.defaultIntent;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3 = this.context.hashCode() * 31;
            Intent intent = this.deepLinkOverrideIntent;
            int i10 = 0;
            if (intent == null) {
                hashCode = 0;
            } else {
                hashCode = intent.hashCode();
            }
            int i11 = (hashCode3 + hashCode) * 31;
            Intent intent2 = this.defaultIntent;
            if (intent2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = intent2.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            PresenterAdOpenCallback presenterAdOpenCallback = this.adOpenCallback;
            if (presenterAdOpenCallback != null) {
                i10 = presenterAdOpenCallback.hashCode();
            }
            return i12 + i10;
        }

        @NotNull
        public String toString() {
            return "TargetActivityInfo(context=" + this.context + ", deepLinkOverrideIntent=" + this.deepLinkOverrideIntent + ", defaultIntent=" + this.defaultIntent + ", adOpenCallback=" + this.adOpenCallback + ')';
        }
    }

    private ActivityManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addListener(LifeCycleCallback lifeCycleCallback) {
        this.callbacks.add(lifeCycleCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deInit(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
        this.isInitialized.set(false);
        this.targetActivityInfo = null;
        this.foregroundActivityCount = 0;
        this.isAppInForeground = false;
        this.callbacks.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void init(Context context) {
        Object d10;
        if (this.isInitialized.getAndSet(true)) {
            return;
        }
        try {
            Result.a aVar = Result.f60901b;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            d10 = Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            Logger.Companion.e(TAG, "Error initializing ActivityManager", g10);
            this.isInitialized.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAppInForeground() {
        if (this.isInitialized.get() && !this.isAppInForeground) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean startActivitySafely(Context context, Intent intent, Intent intent2, PresenterAdOpenCallback presenterAdOpenCallback) {
        try {
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Failed to start activity: " + e10);
            if (intent != null && presenterAdOpenCallback != null) {
                try {
                    presenterAdOpenCallback.onDeeplinkClick(false);
                } catch (Exception unused) {
                }
            }
            if (intent != null && intent2 != null) {
                context.startActivity(intent2);
                return true;
            }
        }
        if (intent != null) {
            context.startActivity(intent);
            if (presenterAdOpenCallback != null) {
                presenterAdOpenCallback.onDeeplinkClick(true);
            }
        } else {
            if (intent2 != null) {
                context.startActivity(intent2);
            }
            return false;
        }
        return true;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.foregroundActivityCount++;
        if (!this.isAppInForeground && this.foregroundActivityCount == 1) {
            this.isAppInForeground = true;
            TargetActivityInfo targetActivityInfo = this.targetActivityInfo;
            if (targetActivityInfo != null) {
                Context it = targetActivityInfo.getContext().get();
                if (it != null) {
                    Companion companion = Companion;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    companion.startWhenForeground(it, targetActivityInfo.getDeepLinkOverrideIntent(), targetActivityInfo.getDefaultIntent(), targetActivityInfo.getAdOpenCallback());
                }
                this.targetActivityInfo = null;
            }
            for (LifeCycleCallback lifeCycleCallback : this.callbacks) {
                lifeCycleCallback.onForeground();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.foregroundActivityCount--;
        if (this.isAppInForeground && this.foregroundActivityCount == 0) {
            this.isAppInForeground = false;
            for (LifeCycleCallback lifeCycleCallback : this.callbacks) {
                lifeCycleCallback.onBackground();
            }
        }
    }

    public final void removeListener(@NotNull LifeCycleCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callbacks.remove(callback);
    }

    /* compiled from: ActivityManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static class LifeCycleCallback {
        public void onBackground() {
        }

        public void onForeground() {
        }
    }
}
