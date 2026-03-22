package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.DoNotInline;
import androidx.annotation.MainThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OnBackPressedDispatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOnBackPressedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnBackPressedDispatcher.kt\nandroidx/activity/OnBackPressedDispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,430:1\n1747#2,3:431\n533#2,6:434\n533#2,6:440\n533#2,6:446\n533#2,6:452\n*S KotlinDebug\n*F\n+ 1 OnBackPressedDispatcher.kt\nandroidx/activity/OnBackPressedDispatcher\n*L\n114#1:431,3\n233#1:434,6\n251#1:440,6\n271#1:446,6\n290#1:452,6\n*E\n"})
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    private boolean backInvokedCallbackRegistered;
    @Nullable
    private final Runnable fallbackOnBackPressed;
    private boolean hasEnabledCallbacks;
    @Nullable
    private OnBackPressedCallback inProgressCallback;
    @Nullable
    private OnBackInvokedDispatcher invokedDispatcher;
    @Nullable
    private OnBackInvokedCallback onBackInvokedCallback;
    @NotNull
    private final kotlin.collections.m<OnBackPressedCallback> onBackPressedCallbacks;
    @Nullable
    private final Consumer<Boolean> onHasEnabledCallbacksChanged;

    /* compiled from: OnBackPressedDispatcher.kt */
    @RequiresApi(33)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api33Impl {
        @NotNull
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createOnBackInvokedCallback$lambda$0(Function0 onBackInvoked) {
            Intrinsics.checkNotNullParameter(onBackInvoked, "$onBackInvoked");
            onBackInvoked.invoke();
        }

        @DoNotInline
        @NotNull
        public final OnBackInvokedCallback createOnBackInvokedCallback(@NotNull final Function0<Unit> onBackInvoked) {
            Intrinsics.checkNotNullParameter(onBackInvoked, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: androidx.activity.k
                public final void onBackInvoked() {
                    OnBackPressedDispatcher.Api33Impl.createOnBackInvokedCallback$lambda$0(Function0.this);
                }
            };
        }

        @DoNotInline
        public final void registerOnBackInvokedCallback(@NotNull Object dispatcher, int i10, @NotNull Object callback) {
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            Intrinsics.checkNotNullParameter(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(i10, (OnBackInvokedCallback) callback);
        }

        @DoNotInline
        public final void unregisterOnBackInvokedCallback(@NotNull Object dispatcher, @NotNull Object callback) {
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            Intrinsics.checkNotNullParameter(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
        }
    }

    /* compiled from: OnBackPressedDispatcher.kt */
    @RequiresApi(34)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api34Impl {
        @NotNull
        public static final Api34Impl INSTANCE = new Api34Impl();

        private Api34Impl() {
        }

        @DoNotInline
        @NotNull
        public final OnBackInvokedCallback createOnBackAnimationCallback(@NotNull final Function1<? super BackEventCompat, Unit> onBackStarted, @NotNull final Function1<? super BackEventCompat, Unit> onBackProgressed, @NotNull final Function0<Unit> onBackInvoked, @NotNull final Function0<Unit> onBackCancelled) {
            Intrinsics.checkNotNullParameter(onBackStarted, "onBackStarted");
            Intrinsics.checkNotNullParameter(onBackProgressed, "onBackProgressed");
            Intrinsics.checkNotNullParameter(onBackInvoked, "onBackInvoked");
            Intrinsics.checkNotNullParameter(onBackCancelled, "onBackCancelled");
            return new OnBackAnimationCallback() { // from class: androidx.activity.OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1
                public void onBackCancelled() {
                    onBackCancelled.invoke();
                }

                public void onBackInvoked() {
                    onBackInvoked.invoke();
                }

                public void onBackProgressed(@NotNull BackEvent backEvent) {
                    Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                    onBackProgressed.invoke(new BackEventCompat(backEvent));
                }

                public void onBackStarted(@NotNull BackEvent backEvent) {
                    Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                    onBackStarted.invoke(new BackEventCompat(backEvent));
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OnBackPressedDispatcher.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class LifecycleOnBackPressedCancellable implements LifecycleEventObserver, Cancellable {
        @Nullable
        private Cancellable currentCancellable;
        @NotNull
        private final Lifecycle lifecycle;
        @NotNull
        private final OnBackPressedCallback onBackPressedCallback;
        final /* synthetic */ OnBackPressedDispatcher this$0;

        public LifecycleOnBackPressedCancellable(@NotNull OnBackPressedDispatcher onBackPressedDispatcher, @NotNull Lifecycle lifecycle, OnBackPressedCallback onBackPressedCallback) {
            Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
            Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
            this.this$0 = onBackPressedDispatcher;
            this.lifecycle = lifecycle;
            this.onBackPressedCallback = onBackPressedCallback;
            lifecycle.addObserver(this);
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            this.lifecycle.removeObserver(this);
            this.onBackPressedCallback.removeCancellable(this);
            Cancellable cancellable = this.currentCancellable;
            if (cancellable != null) {
                cancellable.cancel();
            }
            this.currentCancellable = null;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(event, "event");
            if (event == Lifecycle.Event.ON_START) {
                this.currentCancellable = this.this$0.addCancellableCallback$activity_release(this.onBackPressedCallback);
            } else if (event == Lifecycle.Event.ON_STOP) {
                Cancellable cancellable = this.currentCancellable;
                if (cancellable != null) {
                    cancellable.cancel();
                }
            } else if (event == Lifecycle.Event.ON_DESTROY) {
                cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OnBackPressedDispatcher.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class OnBackPressedCancellable implements Cancellable {
        @NotNull
        private final OnBackPressedCallback onBackPressedCallback;
        final /* synthetic */ OnBackPressedDispatcher this$0;

        public OnBackPressedCancellable(@NotNull OnBackPressedDispatcher onBackPressedDispatcher, OnBackPressedCallback onBackPressedCallback) {
            Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
            this.this$0 = onBackPressedDispatcher;
            this.onBackPressedCallback = onBackPressedCallback;
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            this.this$0.onBackPressedCallbacks.remove(this.onBackPressedCallback);
            if (Intrinsics.areEqual(this.this$0.inProgressCallback, this.onBackPressedCallback)) {
                this.onBackPressedCallback.handleOnBackCancelled();
                this.this$0.inProgressCallback = null;
            }
            this.onBackPressedCallback.removeCancellable(this);
            Function0<Unit> enabledChangedCallback$activity_release = this.onBackPressedCallback.getEnabledChangedCallback$activity_release();
            if (enabledChangedCallback$activity_release != null) {
                enabledChangedCallback$activity_release.invoke();
            }
            this.onBackPressedCallback.setEnabledChangedCallback$activity_release(null);
        }
    }

    public OnBackPressedDispatcher() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void onBackCancelled() {
        OnBackPressedCallback onBackPressedCallback;
        kotlin.collections.m<OnBackPressedCallback> mVar = this.onBackPressedCallbacks;
        ListIterator<OnBackPressedCallback> listIterator = mVar.listIterator(mVar.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                onBackPressedCallback = listIterator.previous();
                if (onBackPressedCallback.isEnabled()) {
                    break;
                }
            } else {
                onBackPressedCallback = null;
                break;
            }
        }
        OnBackPressedCallback onBackPressedCallback2 = onBackPressedCallback;
        this.inProgressCallback = null;
        if (onBackPressedCallback2 != null) {
            onBackPressedCallback2.handleOnBackCancelled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void onBackProgressed(BackEventCompat backEventCompat) {
        OnBackPressedCallback onBackPressedCallback;
        kotlin.collections.m<OnBackPressedCallback> mVar = this.onBackPressedCallbacks;
        ListIterator<OnBackPressedCallback> listIterator = mVar.listIterator(mVar.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                onBackPressedCallback = listIterator.previous();
                if (onBackPressedCallback.isEnabled()) {
                    break;
                }
            } else {
                onBackPressedCallback = null;
                break;
            }
        }
        OnBackPressedCallback onBackPressedCallback2 = onBackPressedCallback;
        if (onBackPressedCallback2 != null) {
            onBackPressedCallback2.handleOnBackProgressed(backEventCompat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void onBackStarted(BackEventCompat backEventCompat) {
        OnBackPressedCallback onBackPressedCallback;
        kotlin.collections.m<OnBackPressedCallback> mVar = this.onBackPressedCallbacks;
        ListIterator<OnBackPressedCallback> listIterator = mVar.listIterator(mVar.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                onBackPressedCallback = listIterator.previous();
                if (onBackPressedCallback.isEnabled()) {
                    break;
                }
            } else {
                onBackPressedCallback = null;
                break;
            }
        }
        OnBackPressedCallback onBackPressedCallback2 = onBackPressedCallback;
        this.inProgressCallback = onBackPressedCallback2;
        if (onBackPressedCallback2 != null) {
            onBackPressedCallback2.handleOnBackStarted(backEventCompat);
        }
    }

    @RequiresApi(33)
    private final void updateBackInvokedCallbackState(boolean z10) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.invokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback = this.onBackInvokedCallback;
        if (onBackInvokedDispatcher != null && onBackInvokedCallback != null) {
            if (z10 && !this.backInvokedCallbackRegistered) {
                Api33Impl.INSTANCE.registerOnBackInvokedCallback(onBackInvokedDispatcher, 0, onBackInvokedCallback);
                this.backInvokedCallbackRegistered = true;
            } else if (!z10 && this.backInvokedCallbackRegistered) {
                Api33Impl.INSTANCE.unregisterOnBackInvokedCallback(onBackInvokedDispatcher, onBackInvokedCallback);
                this.backInvokedCallbackRegistered = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateEnabledCallbacks() {
        boolean z10 = this.hasEnabledCallbacks;
        kotlin.collections.m<OnBackPressedCallback> mVar = this.onBackPressedCallbacks;
        boolean z11 = false;
        if (mVar == null || !mVar.isEmpty()) {
            Iterator<OnBackPressedCallback> it = mVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().isEnabled()) {
                    z11 = true;
                    break;
                }
            }
        }
        this.hasEnabledCallbacks = z11;
        if (z11 != z10) {
            Consumer<Boolean> consumer = this.onHasEnabledCallbacksChanged;
            if (consumer != null) {
                consumer.accept(Boolean.valueOf(z11));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                updateBackInvokedCallbackState(z11);
            }
        }
    }

    @MainThread
    public final void addCallback(@NotNull OnBackPressedCallback onBackPressedCallback) {
        Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
        addCancellableCallback$activity_release(onBackPressedCallback);
    }

    @MainThread
    @NotNull
    public final Cancellable addCancellableCallback$activity_release(@NotNull OnBackPressedCallback onBackPressedCallback) {
        Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
        this.onBackPressedCallbacks.add(onBackPressedCallback);
        OnBackPressedCancellable onBackPressedCancellable = new OnBackPressedCancellable(this, onBackPressedCallback);
        onBackPressedCallback.addCancellable(onBackPressedCancellable);
        updateEnabledCallbacks();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCancellableCallback$1(this));
        return onBackPressedCancellable;
    }

    @MainThread
    @VisibleForTesting
    public final void dispatchOnBackCancelled() {
        onBackCancelled();
    }

    @MainThread
    @VisibleForTesting
    public final void dispatchOnBackProgressed(@NotNull BackEventCompat backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        onBackProgressed(backEvent);
    }

    @MainThread
    @VisibleForTesting
    public final void dispatchOnBackStarted(@NotNull BackEventCompat backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        onBackStarted(backEvent);
    }

    @MainThread
    public final boolean hasEnabledCallbacks() {
        return this.hasEnabledCallbacks;
    }

    @MainThread
    public final void onBackPressed() {
        OnBackPressedCallback onBackPressedCallback;
        kotlin.collections.m<OnBackPressedCallback> mVar = this.onBackPressedCallbacks;
        ListIterator<OnBackPressedCallback> listIterator = mVar.listIterator(mVar.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                onBackPressedCallback = listIterator.previous();
                if (onBackPressedCallback.isEnabled()) {
                    break;
                }
            } else {
                onBackPressedCallback = null;
                break;
            }
        }
        OnBackPressedCallback onBackPressedCallback2 = onBackPressedCallback;
        this.inProgressCallback = null;
        if (onBackPressedCallback2 != null) {
            onBackPressedCallback2.handleOnBackPressed();
            return;
        }
        Runnable runnable = this.fallbackOnBackPressed;
        if (runnable != null) {
            runnable.run();
        }
    }

    @RequiresApi(33)
    public final void setOnBackInvokedDispatcher(@NotNull OnBackInvokedDispatcher invoker) {
        Intrinsics.checkNotNullParameter(invoker, "invoker");
        this.invokedDispatcher = invoker;
        updateBackInvokedCallbackState(this.hasEnabledCallbacks);
    }

    public OnBackPressedDispatcher(@Nullable Runnable runnable, @Nullable Consumer<Boolean> consumer) {
        OnBackInvokedCallback createOnBackInvokedCallback;
        this.fallbackOnBackPressed = runnable;
        this.onHasEnabledCallbacksChanged = consumer;
        this.onBackPressedCallbacks = new kotlin.collections.m<>();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            if (i10 >= 34) {
                createOnBackInvokedCallback = Api34Impl.INSTANCE.createOnBackAnimationCallback(new Function1<BackEventCompat, Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(BackEventCompat backEventCompat) {
                        invoke2(backEventCompat);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull BackEventCompat backEvent) {
                        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                        OnBackPressedDispatcher.this.onBackStarted(backEvent);
                    }
                }, new Function1<BackEventCompat, Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(BackEventCompat backEventCompat) {
                        invoke2(backEventCompat);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull BackEventCompat backEvent) {
                        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                        OnBackPressedDispatcher.this.onBackProgressed(backEvent);
                    }
                }, new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.3
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        OnBackPressedDispatcher.this.onBackPressed();
                    }
                }, new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.4
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        OnBackPressedDispatcher.this.onBackCancelled();
                    }
                });
            } else {
                createOnBackInvokedCallback = Api33Impl.INSTANCE.createOnBackInvokedCallback(new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.5
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        OnBackPressedDispatcher.this.onBackPressed();
                    }
                });
            }
            this.onBackInvokedCallback = createOnBackInvokedCallback;
        }
    }

    @MainThread
    public final void addCallback(@NotNull LifecycleOwner owner, @NotNull OnBackPressedCallback onBackPressedCallback) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
        Lifecycle lifecycle = owner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        onBackPressedCallback.addCancellable(new LifecycleOnBackPressedCancellable(this, lifecycle, onBackPressedCallback));
        updateEnabledCallbacks();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCallback$1(this));
    }

    public /* synthetic */ OnBackPressedDispatcher(Runnable runnable, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : runnable);
    }

    public OnBackPressedDispatcher(@Nullable Runnable runnable) {
        this(runnable, null);
    }
}
