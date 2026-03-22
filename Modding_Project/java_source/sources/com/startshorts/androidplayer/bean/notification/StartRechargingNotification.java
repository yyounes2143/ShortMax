package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StartRechargingNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class StartRechargingNotification extends BaseShortsNotification {
    @Nullable
    private String content;
    @c
    @Nullable
    private Bitmap cover;

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final Bitmap getCover() {
        return this.cover;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setCover(@Nullable Bitmap bitmap) {
        this.cover = bitmap;
    }

    @Override // com.startshorts.androidplayer.bean.notification.BaseShortsNotification
    @NotNull
    public String toString() {
        return "StartRechargingNotification(content=" + this.content + ')' + super.toString();
    }
}
