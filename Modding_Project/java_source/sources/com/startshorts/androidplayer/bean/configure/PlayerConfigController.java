package com.startshorts.androidplayer.bean.configure;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayerConfigController.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayerConfigController {
    @Nullable
    private List<PlayerPreloadConfig> preloadConfigs;

    public PlayerConfigController(@Nullable List<PlayerPreloadConfig> list) {
        this.preloadConfigs = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PlayerConfigController copy$default(PlayerConfigController playerConfigController, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = playerConfigController.preloadConfigs;
        }
        return playerConfigController.copy(list);
    }

    @Nullable
    public final List<PlayerPreloadConfig> component1() {
        return this.preloadConfigs;
    }

    @NotNull
    public final PlayerConfigController copy(@Nullable List<PlayerPreloadConfig> list) {
        return new PlayerConfigController(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof PlayerConfigController) && Intrinsics.areEqual(this.preloadConfigs, ((PlayerConfigController) obj).preloadConfigs)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<PlayerPreloadConfig> getPreloadConfigs() {
        return this.preloadConfigs;
    }

    public int hashCode() {
        List<PlayerPreloadConfig> list = this.preloadConfigs;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final void setPreloadConfigs(@Nullable List<PlayerPreloadConfig> list) {
        this.preloadConfigs = list;
    }

    @NotNull
    public String toString() {
        return "PlayerConfigController(preloadConfigs=" + this.preloadConfigs + ')';
    }
}
