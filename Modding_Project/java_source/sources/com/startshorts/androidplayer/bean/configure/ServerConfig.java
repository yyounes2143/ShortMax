package com.startshorts.androidplayer.bean.configure;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ServerConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ServerConfig {
    private final int ggLoginBonus;
    private final int metaLoginBonus;
    private final int mobileLoginBonus;
    private final int notificationsBonus;
    private final int userAccountMergeBonus;

    public ServerConfig(int i10, int i11, int i12, int i13, int i14) {
        this.mobileLoginBonus = i10;
        this.metaLoginBonus = i11;
        this.ggLoginBonus = i12;
        this.notificationsBonus = i13;
        this.userAccountMergeBonus = i14;
    }

    public static /* synthetic */ ServerConfig copy$default(ServerConfig serverConfig, int i10, int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i10 = serverConfig.mobileLoginBonus;
        }
        if ((i15 & 2) != 0) {
            i11 = serverConfig.metaLoginBonus;
        }
        int i16 = i11;
        if ((i15 & 4) != 0) {
            i12 = serverConfig.ggLoginBonus;
        }
        int i17 = i12;
        if ((i15 & 8) != 0) {
            i13 = serverConfig.notificationsBonus;
        }
        int i18 = i13;
        if ((i15 & 16) != 0) {
            i14 = serverConfig.userAccountMergeBonus;
        }
        return serverConfig.copy(i10, i16, i17, i18, i14);
    }

    public final int component1() {
        return this.mobileLoginBonus;
    }

    public final int component2() {
        return this.metaLoginBonus;
    }

    public final int component3() {
        return this.ggLoginBonus;
    }

    public final int component4() {
        return this.notificationsBonus;
    }

    public final int component5() {
        return this.userAccountMergeBonus;
    }

    @NotNull
    public final ServerConfig copy(int i10, int i11, int i12, int i13, int i14) {
        return new ServerConfig(i10, i11, i12, i13, i14);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerConfig)) {
            return false;
        }
        ServerConfig serverConfig = (ServerConfig) obj;
        if (this.mobileLoginBonus == serverConfig.mobileLoginBonus && this.metaLoginBonus == serverConfig.metaLoginBonus && this.ggLoginBonus == serverConfig.ggLoginBonus && this.notificationsBonus == serverConfig.notificationsBonus && this.userAccountMergeBonus == serverConfig.userAccountMergeBonus) {
            return true;
        }
        return false;
    }

    public final int getGgLoginBonus() {
        return this.ggLoginBonus;
    }

    public final int getMetaLoginBonus() {
        return this.metaLoginBonus;
    }

    public final int getMobileLoginBonus() {
        return this.mobileLoginBonus;
    }

    public final int getNotificationsBonus() {
        return this.notificationsBonus;
    }

    public final int getUserAccountMergeBonus() {
        return this.userAccountMergeBonus;
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.mobileLoginBonus) * 31) + Integer.hashCode(this.metaLoginBonus)) * 31) + Integer.hashCode(this.ggLoginBonus)) * 31) + Integer.hashCode(this.notificationsBonus)) * 31) + Integer.hashCode(this.userAccountMergeBonus);
    }

    @NotNull
    public String toString() {
        return "ServerConfig(mobileLoginBonus=" + this.mobileLoginBonus + ", metaLoginBonus=" + this.metaLoginBonus + ", ggLoginBonus=" + this.ggLoginBonus + ", notificationsBonus=" + this.notificationsBonus + ", userAccountMergeBonus=" + this.userAccountMergeBonus + ')';
    }
}
