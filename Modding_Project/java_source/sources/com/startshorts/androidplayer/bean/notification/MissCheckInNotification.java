package com.startshorts.androidplayer.bean.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MissCheckInNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MissCheckInNotification {
    @c
    @Nullable
    private Bitmap bitmap;
    @NotNull
    private final String content;
    @Nullable
    private final String icon;
    @NotNull
    private final String title;

    public MissCheckInNotification(@NotNull String title, @NotNull String content, @Nullable String str, @Nullable Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        this.title = title;
        this.content = content;
        this.icon = str;
        this.bitmap = bitmap;
    }

    public static /* synthetic */ MissCheckInNotification copy$default(MissCheckInNotification missCheckInNotification, String str, String str2, String str3, Bitmap bitmap, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = missCheckInNotification.title;
        }
        if ((i10 & 2) != 0) {
            str2 = missCheckInNotification.content;
        }
        if ((i10 & 4) != 0) {
            str3 = missCheckInNotification.icon;
        }
        if ((i10 & 8) != 0) {
            bitmap = missCheckInNotification.bitmap;
        }
        return missCheckInNotification.copy(str, str2, str3, bitmap);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.content;
    }

    @Nullable
    public final String component3() {
        return this.icon;
    }

    @Nullable
    public final Bitmap component4() {
        return this.bitmap;
    }

    @NotNull
    public final MissCheckInNotification copy(@NotNull String title, @NotNull String content, @Nullable String str, @Nullable Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        return new MissCheckInNotification(title, content, str, bitmap);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MissCheckInNotification)) {
            return false;
        }
        MissCheckInNotification missCheckInNotification = (MissCheckInNotification) obj;
        if (Intrinsics.areEqual(this.title, missCheckInNotification.title) && Intrinsics.areEqual(this.content, missCheckInNotification.content) && Intrinsics.areEqual(this.icon, missCheckInNotification.icon) && Intrinsics.areEqual(this.bitmap, missCheckInNotification.bitmap)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.title.hashCode() * 31) + this.content.hashCode()) * 31;
        String str = this.icon;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            i10 = bitmap.hashCode();
        }
        return i11 + i10;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    @NotNull
    public String toString() {
        return "MissCheckInNotification(title=" + this.title + ", content=" + this.content + ", icon=" + this.icon + ", bitmap=" + this.bitmap + ')';
    }
}
