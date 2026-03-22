package com.startshorts.androidplayer.bean.eventbus;

import android.view.MotionEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MainTabClickEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MainTabClickEvent {
    @NotNull
    private final MotionEvent motionEvent;

    public MainTabClickEvent(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        this.motionEvent = motionEvent;
    }

    public static /* synthetic */ MainTabClickEvent copy$default(MainTabClickEvent mainTabClickEvent, MotionEvent motionEvent, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            motionEvent = mainTabClickEvent.motionEvent;
        }
        return mainTabClickEvent.copy(motionEvent);
    }

    @NotNull
    public final MotionEvent component1() {
        return this.motionEvent;
    }

    @NotNull
    public final MainTabClickEvent copy(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return new MainTabClickEvent(motionEvent);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof MainTabClickEvent) && Intrinsics.areEqual(this.motionEvent, ((MainTabClickEvent) obj).motionEvent)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final MotionEvent getMotionEvent() {
        return this.motionEvent;
    }

    public int hashCode() {
        return this.motionEvent.hashCode();
    }

    @NotNull
    public String toString() {
        return "MainTabClickEvent(motionEvent=" + this.motionEvent + ')';
    }
}
