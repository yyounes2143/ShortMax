package com.startshorts.androidplayer.bean.push;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CheckInPushContent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CheckInPushContent {
    @NotNull
    private final String body;
    @NotNull
    private final String title;

    public CheckInPushContent(@NotNull String title, @NotNull String body) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(body, "body");
        this.title = title;
        this.body = body;
    }

    public static /* synthetic */ CheckInPushContent copy$default(CheckInPushContent checkInPushContent, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = checkInPushContent.title;
        }
        if ((i10 & 2) != 0) {
            str2 = checkInPushContent.body;
        }
        return checkInPushContent.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.body;
    }

    @NotNull
    public final CheckInPushContent copy(@NotNull String title, @NotNull String body) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(body, "body");
        return new CheckInPushContent(title, body);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckInPushContent)) {
            return false;
        }
        CheckInPushContent checkInPushContent = (CheckInPushContent) obj;
        if (Intrinsics.areEqual(this.title, checkInPushContent.title) && Intrinsics.areEqual(this.body, checkInPushContent.body)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getBody() {
        return this.body;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + this.body.hashCode();
    }

    @NotNull
    public String toString() {
        return "CheckInPushContent(title=" + this.title + ", body=" + this.body + ')';
    }
}
