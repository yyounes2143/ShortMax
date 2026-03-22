package com.unity3d.ads.core.data.repository;

import android.app.Activity;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public interface FocusState {

    /* compiled from: FocusRepository.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Focused implements FocusState {
        @NotNull
        private final WeakReference<Activity> activity;

        public Focused(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Focused copy$default(Focused focused, WeakReference weakReference, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = focused.getActivity();
            }
            return focused.copy(weakReference);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @NotNull
        public final Focused copy(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Focused(activity);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Focused) && Intrinsics.areEqual(getActivity(), ((Focused) obj).getActivity())) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.data.repository.FocusState
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        public int hashCode() {
            return getActivity().hashCode();
        }

        @NotNull
        public String toString() {
            return "Focused(activity=" + getActivity() + ')';
        }
    }

    /* compiled from: FocusRepository.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Unfocused implements FocusState {
        @NotNull
        private final WeakReference<Activity> activity;

        public Unfocused(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Unfocused copy$default(Unfocused unfocused, WeakReference weakReference, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = unfocused.getActivity();
            }
            return unfocused.copy(weakReference);
        }

        @NotNull
        public final WeakReference<Activity> component1() {
            return getActivity();
        }

        @NotNull
        public final Unfocused copy(@NotNull WeakReference<Activity> activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return new Unfocused(activity);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Unfocused) && Intrinsics.areEqual(getActivity(), ((Unfocused) obj).getActivity())) {
                return true;
            }
            return false;
        }

        @Override // com.unity3d.ads.core.data.repository.FocusState
        @NotNull
        public WeakReference<Activity> getActivity() {
            return this.activity;
        }

        public int hashCode() {
            return getActivity().hashCode();
        }

        @NotNull
        public String toString() {
            return "Unfocused(activity=" + getActivity() + ')';
        }
    }

    @NotNull
    WeakReference<Activity> getActivity();
}
