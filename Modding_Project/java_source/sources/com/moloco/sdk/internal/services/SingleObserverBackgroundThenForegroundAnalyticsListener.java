package com.moloco.sdk.internal.services;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes6.dex */
public final class SingleObserverBackgroundThenForegroundAnalyticsListener implements DefaultLifecycleObserver {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.analytics.a f33090a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final j f33091b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public Long f33092c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f33093d;

    public SingleObserverBackgroundThenForegroundAnalyticsListener(@NotNull com.moloco.sdk.internal.services.analytics.a analyticsService, @NotNull j timeProviderService) {
        Intrinsics.checkNotNullParameter(analyticsService, "analyticsService");
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        this.f33090a = analyticsService;
        this.f33091b = timeProviderService;
    }

    public final void a() {
        this.f33093d = true;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStart(owner);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "SingleObserverBackgroundThenForegroundAnalyticsListener", "Application onStart", false, 4, null);
        Long l10 = this.f33092c;
        if (l10 != null) {
            MolocoLogger.debug$default(molocoLogger, "SingleObserverBackgroundThenForegroundAnalyticsListener", "Background event has been recorded, recording foreground", false, 4, null);
            this.f33090a.a(this.f33091b.invoke(), l10.longValue());
            this.f33092c = null;
            this.f33093d = false;
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStop(owner);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "SingleObserverBackgroundThenForegroundAnalyticsListener", "Application onStop", false, 4, null);
        if (this.f33093d) {
            MolocoLogger.debug$default(molocoLogger, "SingleObserverBackgroundThenForegroundAnalyticsListener", "Tracking of event is true. Recording background", false, 4, null);
            long invoke = this.f33091b.invoke();
            this.f33092c = Long.valueOf(invoke);
            this.f33090a.a(invoke);
        }
    }
}
