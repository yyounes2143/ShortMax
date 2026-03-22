package com.unity3d.ads.beta;

import android.app.Activity;
import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InterstitialAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InterstitialAd {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final AdObject adObject;
    @NotNull
    private final LoadOptions loadOptions;

    /* compiled from: InterstitialAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void load(@NotNull LoadOptions options, @NotNull LoadListener<InterstitialAd> listener) {
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(listener, "listener");
        }

        private Companion() {
        }
    }

    public InterstitialAd(@NotNull AdObject adObject, @NotNull LoadOptions loadOptions) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        this.adObject = adObject;
        this.loadOptions = loadOptions;
    }

    public static final void load(@NotNull LoadOptions loadOptions, @NotNull LoadListener<InterstitialAd> loadListener) {
        Companion.load(loadOptions, loadListener);
    }

    public final void show(@NotNull Activity activity, @Nullable ShowOptions showOptions, @NotNull ShowListener<InterstitialAd> listener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }
}
