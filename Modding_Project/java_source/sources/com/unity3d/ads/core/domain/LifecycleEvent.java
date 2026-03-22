package com.unity3d.ads.core.domain;

import android.app.Activity;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidGetLifecycleFlow.kt */
@Metadata
/* loaded from: classes7.dex */
public interface LifecycleEvent {

    /* compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Created implements LifecycleEvent {
        @NotNull
        private final WeakReference<Activity> activity;
        @Nullable
        private final Bundle bundle;

        public Created(@NotNull WeakReference<Activity> activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
            this.bundle = bundle;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Created copy$default(Created created, WeakReference weakReference, Bundle bundle, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = created.getActivity();
            }
            if ((i10 & 2) != 0) {
                bundle = created.bundle;
            }
            return created.copy(weakReference, bundle);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @Nullable
        public final Bundle component2() {
            return this.bundle;
        }

        @NotNull
        public final Created copy(@NotNull WeakReference<Activity> activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Created(activity, bundle);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Created)) {
                return false;
            }
            Created created = (Created) obj;
            if (Intrinsics.areEqual(getActivity(), created.getActivity()) && Intrinsics.areEqual(this.bundle, created.bundle)) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.domain.LifecycleEvent
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        @Nullable
        public final Bundle getBundle() {
            return this.bundle;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = getActivity().hashCode() * 31;
            Bundle bundle = this.bundle;
            if (bundle == null) {
                hashCode = 0;
            } else {
                hashCode = bundle.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "Created(activity=" + getActivity() + ", bundle=" + this.bundle + ')';
        }
    }

    /* compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Destroyed implements LifecycleEvent {
        @NotNull
        private final WeakReference<Activity> activity;

        public Destroyed(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Destroyed copy$default(Destroyed destroyed, WeakReference weakReference, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = destroyed.getActivity();
            }
            return destroyed.copy(weakReference);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @NotNull
        public final Destroyed copy(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Destroyed(activity);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Destroyed) && Intrinsics.areEqual(getActivity(), ((Destroyed) obj).getActivity())) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.domain.LifecycleEvent
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        public int hashCode() {
            return getActivity().hashCode();
        }

        @NotNull
        public String toString() {
            return "Destroyed(activity=" + getActivity() + ')';
        }
    }

    /* compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Paused implements LifecycleEvent {
        @NotNull
        private final WeakReference<Activity> activity;

        public Paused(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Paused copy$default(Paused paused, WeakReference weakReference, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = paused.getActivity();
            }
            return paused.copy(weakReference);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @NotNull
        public final Paused copy(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Paused(activity);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Paused) && Intrinsics.areEqual(getActivity(), ((Paused) obj).getActivity())) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.domain.LifecycleEvent
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        public int hashCode() {
            return getActivity().hashCode();
        }

        @NotNull
        public String toString() {
            return "Paused(activity=" + getActivity() + ')';
        }
    }

    /* compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Resumed implements LifecycleEvent {
        @NotNull
        private final WeakReference<Activity> activity;

        public Resumed(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Resumed copy$default(Resumed resumed, WeakReference weakReference, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = resumed.getActivity();
            }
            return resumed.copy(weakReference);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @NotNull
        public final Resumed copy(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Resumed(activity);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Resumed) && Intrinsics.areEqual(getActivity(), ((Resumed) obj).getActivity())) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.domain.LifecycleEvent
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        public int hashCode() {
            return getActivity().hashCode();
        }

        @NotNull
        public String toString() {
            return "Resumed(activity=" + getActivity() + ')';
        }
    }

    /* compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class SaveInstanceState implements LifecycleEvent {
        @NotNull
        private final WeakReference<Activity> activity;
        @Nullable
        private final Bundle bundle;

        public SaveInstanceState(@NotNull WeakReference<Activity> activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
            this.bundle = bundle;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SaveInstanceState copy$default(SaveInstanceState saveInstanceState, WeakReference weakReference, Bundle bundle, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = saveInstanceState.getActivity();
            }
            if ((i10 & 2) != 0) {
                bundle = saveInstanceState.bundle;
            }
            return saveInstanceState.copy(weakReference, bundle);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @Nullable
        public final Bundle component2() {
            return this.bundle;
        }

        @NotNull
        public final SaveInstanceState copy(@NotNull WeakReference<Activity> activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new SaveInstanceState(activity, bundle);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SaveInstanceState)) {
                return false;
            }
            SaveInstanceState saveInstanceState = (SaveInstanceState) obj;
            if (Intrinsics.areEqual(getActivity(), saveInstanceState.getActivity()) && Intrinsics.areEqual(this.bundle, saveInstanceState.bundle)) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.domain.LifecycleEvent
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        @Nullable
        public final Bundle getBundle() {
            return this.bundle;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = getActivity().hashCode() * 31;
            Bundle bundle = this.bundle;
            if (bundle == null) {
                hashCode = 0;
            } else {
                hashCode = bundle.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "SaveInstanceState(activity=" + getActivity() + ", bundle=" + this.bundle + ')';
        }
    }

    /* compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Started implements LifecycleEvent {
        @NotNull
        private final WeakReference<Activity> activity;

        public Started(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Started copy$default(Started started, WeakReference weakReference, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = started.getActivity();
            }
            return started.copy(weakReference);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @NotNull
        public final Started copy(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Started(activity);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Started) && Intrinsics.areEqual(getActivity(), ((Started) obj).getActivity())) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.domain.LifecycleEvent
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        public int hashCode() {
            return getActivity().hashCode();
        }

        @NotNull
        public String toString() {
            return "Started(activity=" + getActivity() + ')';
        }
    }

    /* compiled from: AndroidGetLifecycleFlow.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Stopped implements LifecycleEvent {
        @NotNull
        private final WeakReference<Activity> activity;

        public Stopped(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Stopped copy$default(Stopped stopped, WeakReference weakReference, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = stopped.getActivity();
            }
            return stopped.copy(weakReference);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @NotNull
        public final Stopped copy(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Stopped(activity);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Stopped) && Intrinsics.areEqual(getActivity(), ((Stopped) obj).getActivity())) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.domain.LifecycleEvent
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        public int hashCode() {
            return getActivity().hashCode();
        }

        @NotNull
        public String toString() {
            return "Stopped(activity=" + getActivity() + ')';
        }
    }

    @NotNull
    WeakReference<Activity> getActivity();
}
