package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import lk.c;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewShortsNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class NewShortsNotification extends BaseShortsNotification {
    @c
    @Nullable
    private Bitmap cover;

    @Nullable
    public final Bitmap getCover() {
        return this.cover;
    }

    public final void setCover(@Nullable Bitmap bitmap) {
        this.cover = bitmap;
    }
}
