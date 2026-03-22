package com.startshorts.androidplayer.bean.notification;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsNotification.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RewardsNotification {
    @Nullable
    private Integer bonusIconResource;
    @Nullable
    private String content;
    @Nullable
    private String title;

    @Nullable
    public final Integer getBonusIconResource() {
        return this.bonusIconResource;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setBonusIconResource(@Nullable Integer num) {
        this.bonusIconResource = num;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }
}
