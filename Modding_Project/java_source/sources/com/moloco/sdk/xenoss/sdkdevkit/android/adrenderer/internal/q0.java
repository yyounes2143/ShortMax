package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nIntentFullscreenAdRenderingOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntentFullscreenAdRenderingOptions.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/IntentFullscreenAdRenderingOptionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
/* loaded from: classes6.dex */
public final class q0 {
    public static final void a(@NotNull Intent intent, int i10) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        intent.putExtra("CLOSE_DELAY_SECONDS", i10);
    }

    public static final void b(@NotNull Intent intent, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (bool != null) {
            intent.putExtra("SKIP_ENABLED", bool.booleanValue());
        }
    }

    public static final void c(@NotNull Intent intent, boolean z10) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        intent.putExtra("AUTO_STORE_ON_COMPLETE", z10);
    }

    public static final boolean d(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        return intent.getBooleanExtra("AUTO_STORE_ON_COMPLETE", false);
    }

    public static final void e(@NotNull Intent intent, int i10) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        intent.putExtra("DEC_DELAY_SECONDS", i10);
    }

    public static final void f(@NotNull Intent intent, boolean z10) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        intent.putExtra("AUTO_STORE_ON_SKIP", z10);
    }

    public static final boolean g(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        return intent.getBooleanExtra("AUTO_STORE_ON_SKIP", false);
    }

    public static final int h(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        return intent.getIntExtra("CLOSE_DELAY_SECONDS", 0);
    }

    public static final void i(@NotNull Intent intent, int i10) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        intent.putExtra("SKIP_DELAY_SECONDS", i10);
    }

    public static final void j(@NotNull Intent intent, boolean z10) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        intent.putExtra("START_MUTED", z10);
    }

    public static final int k(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        return intent.getIntExtra("DEC_DELAY_SECONDS", 0);
    }

    @Nullable
    public static final Boolean l(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (intent.hasExtra("SKIP_ENABLED")) {
            return Boolean.valueOf(intent.getBooleanExtra("SKIP_ENABLED", false));
        }
        return null;
    }

    public static final int m(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        return intent.getIntExtra("SKIP_DELAY_SECONDS", 0);
    }

    public static final boolean n(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        return intent.getBooleanExtra("START_MUTED", true);
    }
}
