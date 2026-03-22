package com.startshorts.androidplayer.bean.subs;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ad2PayResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Ad2PayPopupConfig {
    @Nullable
    private final List<Ad2PayConfig> config;
    @Nullable
    private final String scene;

    public Ad2PayPopupConfig(@Nullable List<Ad2PayConfig> list, @Nullable String str) {
        this.config = list;
        this.scene = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Ad2PayPopupConfig copy$default(Ad2PayPopupConfig ad2PayPopupConfig, List list, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = ad2PayPopupConfig.config;
        }
        if ((i10 & 2) != 0) {
            str = ad2PayPopupConfig.scene;
        }
        return ad2PayPopupConfig.copy(list, str);
    }

    @Nullable
    public final List<Ad2PayConfig> component1() {
        return this.config;
    }

    @Nullable
    public final String component2() {
        return this.scene;
    }

    @NotNull
    public final Ad2PayPopupConfig copy(@Nullable List<Ad2PayConfig> list, @Nullable String str) {
        return new Ad2PayPopupConfig(list, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ad2PayPopupConfig)) {
            return false;
        }
        Ad2PayPopupConfig ad2PayPopupConfig = (Ad2PayPopupConfig) obj;
        if (Intrinsics.areEqual(this.config, ad2PayPopupConfig.config) && Intrinsics.areEqual(this.scene, ad2PayPopupConfig.scene)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<Ad2PayConfig> getConfig() {
        return this.config;
    }

    @Nullable
    public final String getScene() {
        return this.scene;
    }

    public int hashCode() {
        int hashCode;
        List<Ad2PayConfig> list = this.config;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.scene;
        if (str != null) {
            i10 = str.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "Ad2PayPopupConfig(config=" + this.config + ", scene=" + this.scene + ')';
    }
}
