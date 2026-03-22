package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PermanentShortsNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PermanentShortsNotification extends BaseShortsNotification {
    @c
    @Nullable
    private Bitmap cover;
    @NotNull
    private String language = "";

    @Nullable
    public final Bitmap getCover() {
        return this.cover;
    }

    @NotNull
    public final String getLanguage() {
        return this.language;
    }

    public final void setCover(@Nullable Bitmap bitmap) {
        this.cover = bitmap;
    }

    public final void setLanguage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.language = str;
    }
}
