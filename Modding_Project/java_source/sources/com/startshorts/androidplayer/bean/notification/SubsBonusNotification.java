package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import lk.c;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsBonusNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsBonusNotification {
    @c
    @Nullable
    private Bitmap bitmap;
    @Nullable
    private final String content;
    @Nullable
    private final String icon;
    @Nullable
    private final String title;

    public SubsBonusNotification(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Bitmap bitmap) {
        this.title = str;
        this.content = str2;
        this.icon = str3;
        this.bitmap = bitmap;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}
