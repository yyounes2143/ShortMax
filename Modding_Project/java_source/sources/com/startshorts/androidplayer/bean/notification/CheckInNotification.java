package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CheckInNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CheckInNotification {
    @c
    @Nullable
    private Bitmap bitmap;
    @NotNull
    private final String content;
    @NotNull
    private final String title;

    public CheckInNotification(@NotNull String title, @NotNull String content, @Nullable Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        this.title = title;
        this.content = content;
        this.bitmap = bitmap;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}
