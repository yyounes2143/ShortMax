package com.startshorts.androidplayer.bean.reward;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsModule.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RewardsModule {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NEW_USER_TASK_TITLE = 8;
    public static final int STYLE_ACT_BANNER = 7;
    public static final int STYLE_CHECK_IN_AND_YOUR_BONUS = 1;
    public static final int STYLE_DAILY_BONUS = 6;
    public static final int STYLE_DES = 4;
    public static final int STYLE_NEWBIE_BONUS = 5;
    public static final int STYLE_TASK = 2;
    public static final int STYLE_UNKNOWN = -1;
    public static final int STYLE_WATCH_AD_BONUSES = 3;
    private int bottomMargin;
    private final int moduleType;
    @Nullable
    private Object payloads;
    @Nullable
    private Object state;
    private int topMargin;

    /* compiled from: RewardsModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RewardsModule(int i10, @Nullable Object obj, @Nullable Object obj2) {
        this.moduleType = i10;
        this.state = obj;
        this.payloads = obj2;
    }

    public final int getBottomMargin() {
        return this.bottomMargin;
    }

    public final int getModuleType() {
        return this.moduleType;
    }

    @Nullable
    public final Object getPayloads() {
        return this.payloads;
    }

    @Nullable
    public final Object getState() {
        return this.state;
    }

    public final int getTopMargin() {
        return this.topMargin;
    }

    public final void setBottomMargin(int i10) {
        this.bottomMargin = i10;
    }

    public final void setPayloads(@Nullable Object obj) {
        this.payloads = obj;
    }

    public final void setState(@Nullable Object obj) {
        this.state = obj;
    }

    public final void setTopMargin(int i10) {
        this.topMargin = i10;
    }

    public /* synthetic */ RewardsModule(int i10, Object obj, Object obj2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : obj, (i11 & 4) != 0 ? null : obj2);
    }
}
