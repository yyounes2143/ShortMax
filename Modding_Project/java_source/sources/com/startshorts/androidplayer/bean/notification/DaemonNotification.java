package com.startshorts.androidplayer.bean.notification;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DaemonNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DaemonNotification {
    @NotNull
    private final String content;
    @NotNull
    private final String title;
    private final boolean wakeUp;

    public DaemonNotification(boolean z10, @NotNull String title, @NotNull String content) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        this.wakeUp = z10;
        this.title = title;
        this.content = content;
    }

    public static /* synthetic */ DaemonNotification copy$default(DaemonNotification daemonNotification, boolean z10, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = daemonNotification.wakeUp;
        }
        if ((i10 & 2) != 0) {
            str = daemonNotification.title;
        }
        if ((i10 & 4) != 0) {
            str2 = daemonNotification.content;
        }
        return daemonNotification.copy(z10, str, str2);
    }

    public final boolean component1() {
        return this.wakeUp;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final String component3() {
        return this.content;
    }

    @NotNull
    public final DaemonNotification copy(boolean z10, @NotNull String title, @NotNull String content) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        return new DaemonNotification(z10, title, content);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DaemonNotification)) {
            return false;
        }
        DaemonNotification daemonNotification = (DaemonNotification) obj;
        if (this.wakeUp == daemonNotification.wakeUp && Intrinsics.areEqual(this.title, daemonNotification.title) && Intrinsics.areEqual(this.content, daemonNotification.content)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final boolean getWakeUp() {
        return this.wakeUp;
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.wakeUp) * 31) + this.title.hashCode()) * 31) + this.content.hashCode();
    }

    @NotNull
    public String toString() {
        return "DaemonNotification(wakeUp=" + this.wakeUp + ", title=" + this.title + ", content=" + this.content + ')';
    }
}
