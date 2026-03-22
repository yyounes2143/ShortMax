package com.startshorts.androidplayer.bean.notification;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NotificationData.kt */
@Metadata
/* loaded from: classes6.dex */
public final class NotificationData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TARGET_UI_BONUS_WILL_EXPIRED = 10;
    public static final int TARGET_UI_CHECK_IN = 2;
    public static final int TARGET_UI_CUR_PLAY_SHORTS = 11;
    public static final int TARGET_UI_CUSTOM = 6;
    public static final int TARGET_UI_DISCOVER = 1;
    public static final int TARGET_UI_MISS_CHECK_IN = 9;
    public static final int TARGET_UI_NEW_SHORTS = 3;
    public static final int TARGET_UI_PERMANENT_SHORTS = 5;
    public static final int TARGET_UI_RECOMMEND_SHORTS = 4;
    public static final int TARGET_UI_REWARDS = 12;
    public static final int TARGET_UI_START_RECHARGING = 8;
    public static final int TARGET_UI_SUBS_BONUS = 7;
    @Nullable
    private final String extras;
    private final int targetUI;

    /* compiled from: NotificationData.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public NotificationData(int i10, @Nullable String str) {
        this.targetUI = i10;
        this.extras = str;
    }

    public static /* synthetic */ NotificationData copy$default(NotificationData notificationData, int i10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = notificationData.targetUI;
        }
        if ((i11 & 2) != 0) {
            str = notificationData.extras;
        }
        return notificationData.copy(i10, str);
    }

    public final int component1() {
        return this.targetUI;
    }

    @Nullable
    public final String component2() {
        return this.extras;
    }

    @NotNull
    public final NotificationData copy(int i10, @Nullable String str) {
        return new NotificationData(i10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationData)) {
            return false;
        }
        NotificationData notificationData = (NotificationData) obj;
        if (this.targetUI == notificationData.targetUI && Intrinsics.areEqual(this.extras, notificationData.extras)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getExtras() {
        return this.extras;
    }

    public final int getTargetUI() {
        return this.targetUI;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.targetUI) * 31;
        String str = this.extras;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "NotificationData(targetUI=" + this.targetUI + ", extras=" + this.extras + ')';
    }

    public /* synthetic */ NotificationData(int i10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : str);
    }
}
