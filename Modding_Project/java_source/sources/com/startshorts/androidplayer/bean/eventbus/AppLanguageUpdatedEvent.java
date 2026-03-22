package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppLanguageUpdatedEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AppLanguageUpdatedEvent {
    @NotNull
    private final String newLanguage;
    @NotNull
    private final String oldLanguage;

    public AppLanguageUpdatedEvent(@NotNull String oldLanguage, @NotNull String newLanguage) {
        Intrinsics.checkNotNullParameter(oldLanguage, "oldLanguage");
        Intrinsics.checkNotNullParameter(newLanguage, "newLanguage");
        this.oldLanguage = oldLanguage;
        this.newLanguage = newLanguage;
    }

    public static /* synthetic */ AppLanguageUpdatedEvent copy$default(AppLanguageUpdatedEvent appLanguageUpdatedEvent, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = appLanguageUpdatedEvent.oldLanguage;
        }
        if ((i10 & 2) != 0) {
            str2 = appLanguageUpdatedEvent.newLanguage;
        }
        return appLanguageUpdatedEvent.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.oldLanguage;
    }

    @NotNull
    public final String component2() {
        return this.newLanguage;
    }

    @NotNull
    public final AppLanguageUpdatedEvent copy(@NotNull String oldLanguage, @NotNull String newLanguage) {
        Intrinsics.checkNotNullParameter(oldLanguage, "oldLanguage");
        Intrinsics.checkNotNullParameter(newLanguage, "newLanguage");
        return new AppLanguageUpdatedEvent(oldLanguage, newLanguage);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppLanguageUpdatedEvent)) {
            return false;
        }
        AppLanguageUpdatedEvent appLanguageUpdatedEvent = (AppLanguageUpdatedEvent) obj;
        if (Intrinsics.areEqual(this.oldLanguage, appLanguageUpdatedEvent.oldLanguage) && Intrinsics.areEqual(this.newLanguage, appLanguageUpdatedEvent.newLanguage)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getNewLanguage() {
        return this.newLanguage;
    }

    @NotNull
    public final String getOldLanguage() {
        return this.oldLanguage;
    }

    public int hashCode() {
        return (this.oldLanguage.hashCode() * 31) + this.newLanguage.hashCode();
    }

    @NotNull
    public String toString() {
        return "AppLanguageUpdatedEvent(oldLanguage=" + this.oldLanguage + ", newLanguage=" + this.newLanguage + ')';
    }
}
