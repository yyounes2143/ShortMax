package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import com.startshorts.androidplayer.bean.push.CustomPush;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CustomNotification {
    @c
    @Nullable
    private Bitmap cover;
    private final int notificationFullScreenIntentRequestCode;
    private final int notificationId;
    private final int notificationRequestCode;
    @NotNull
    private final CustomPush push;

    public CustomNotification(int i10, int i11, int i12, @NotNull CustomPush push, @Nullable Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(push, "push");
        this.notificationId = i10;
        this.notificationRequestCode = i11;
        this.notificationFullScreenIntentRequestCode = i12;
        this.push = push;
        this.cover = bitmap;
    }

    @Nullable
    public final Bitmap getCover() {
        return this.cover;
    }

    public final int getNotificationFullScreenIntentRequestCode() {
        return this.notificationFullScreenIntentRequestCode;
    }

    public final int getNotificationId() {
        return this.notificationId;
    }

    public final int getNotificationRequestCode() {
        return this.notificationRequestCode;
    }

    @NotNull
    public final CustomPush getPush() {
        return this.push;
    }

    public final void setCover(@Nullable Bitmap bitmap) {
        this.cover = bitmap;
    }

    public /* synthetic */ CustomNotification(int i10, int i11, int i12, CustomPush customPush, Bitmap bitmap, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, customPush, (i13 & 16) != 0 ? null : bitmap);
    }
}
