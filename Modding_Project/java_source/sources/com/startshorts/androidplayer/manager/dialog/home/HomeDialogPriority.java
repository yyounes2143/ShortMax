package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: HomeDialogPriority.kt */
@Metadata
/* loaded from: classes6.dex */
public final class HomeDialogPriority {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ HomeDialogPriority[] $VALUES;
    private final int value;
    public static final HomeDialogPriority DIALOG_REWARD_TAB_GUIDE = new HomeDialogPriority("DIALOG_REWARD_TAB_GUIDE", 0, 1);
    public static final HomeDialogPriority DIALOG_UPDATE_RECOMMEND = new HomeDialogPriority("DIALOG_UPDATE_RECOMMEND", 1, 2);
    public static final HomeDialogPriority DIALOG_NOTIFICATION_PERMISSION = new HomeDialogPriority("DIALOG_NOTIFICATION_PERMISSION", 2, 3);
    public static final HomeDialogPriority DIALOG_RECOMMEND_SHORTS = new HomeDialogPriority("DIALOG_RECOMMEND_SHORTS", 3, 4);
    public static final HomeDialogPriority DIALOG_COMBINE_ACCOUNT = new HomeDialogPriority("DIALOG_COMBINE_ACCOUNT", 4, 5);
    public static final HomeDialogPriority DIALOG_COINS_2_SUB = new HomeDialogPriority("DIALOG_COINS_2_SUB", 5, 6);
    public static final HomeDialogPriority DIALOG_CHECK_IN = new HomeDialogPriority("DIALOG_CHECK_IN", 6, 7);
    public static final HomeDialogPriority DIALOG_RFM_GUIDE = new HomeDialogPriority("DIALOG_RFM_GUIDE", 7, 8);
    public static final HomeDialogPriority DIALOG_LOGIN_GUIDE = new HomeDialogPriority("DIALOG_LOGIN_GUIDE", 8, 9);
    public static final HomeDialogPriority DIALOG_ACCUMULATIVEA_WATCH = new HomeDialogPriority("DIALOG_ACCUMULATIVEA_WATCH", 9, 10);
    public static final HomeDialogPriority DIALOG_ACT = new HomeDialogPriority("DIALOG_ACT", 10, 11);
    public static final HomeDialogPriority DIALOG_RATING = new HomeDialogPriority("DIALOG_RATING", 11, 12);

    private static final /* synthetic */ HomeDialogPriority[] $values() {
        return new HomeDialogPriority[]{DIALOG_REWARD_TAB_GUIDE, DIALOG_UPDATE_RECOMMEND, DIALOG_NOTIFICATION_PERMISSION, DIALOG_RECOMMEND_SHORTS, DIALOG_COMBINE_ACCOUNT, DIALOG_COINS_2_SUB, DIALOG_CHECK_IN, DIALOG_RFM_GUIDE, DIALOG_LOGIN_GUIDE, DIALOG_ACCUMULATIVEA_WATCH, DIALOG_ACT, DIALOG_RATING};
    }

    static {
        HomeDialogPriority[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private HomeDialogPriority(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static ss.a<HomeDialogPriority> getEntries() {
        return $ENTRIES;
    }

    public static HomeDialogPriority valueOf(String str) {
        return (HomeDialogPriority) Enum.valueOf(HomeDialogPriority.class, str);
    }

    public static HomeDialogPriority[] values() {
        return (HomeDialogPriority[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
