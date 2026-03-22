package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppStateEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AppStateEvent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int STATE_BACKGROUND = 2;
    public static final int STATE_FOREGROUND = 1;
    private final int state;

    /* compiled from: AppStateEvent.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AppStateEvent(int i10) {
        this.state = i10;
    }

    public static /* synthetic */ AppStateEvent copy$default(AppStateEvent appStateEvent, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = appStateEvent.state;
        }
        return appStateEvent.copy(i10);
    }

    public final int component1() {
        return this.state;
    }

    @NotNull
    public final AppStateEvent copy(int i10) {
        return new AppStateEvent(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AppStateEvent) && this.state == ((AppStateEvent) obj).state) {
            return true;
        }
        return false;
    }

    public final int getState() {
        return this.state;
    }

    public int hashCode() {
        return Integer.hashCode(this.state);
    }

    public final boolean isOnForeground() {
        if (this.state == 1) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return "AppStateEvent(state=" + this.state + ')';
    }
}
