package com.startshorts.androidplayer.bean.search;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: YouMightLikeKey.kt */
@Metadata
/* loaded from: classes6.dex */
public final class YouMightLikeKey {
    @Nullable
    private final String hotName;
    @Nullable
    private final Boolean isHot;

    public YouMightLikeKey(@Nullable String str, @Nullable Boolean bool) {
        this.hotName = str;
        this.isHot = bool;
    }

    public static /* synthetic */ YouMightLikeKey copy$default(YouMightLikeKey youMightLikeKey, String str, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = youMightLikeKey.hotName;
        }
        if ((i10 & 2) != 0) {
            bool = youMightLikeKey.isHot;
        }
        return youMightLikeKey.copy(str, bool);
    }

    @Nullable
    public final String component1() {
        return this.hotName;
    }

    @Nullable
    public final Boolean component2() {
        return this.isHot;
    }

    @NotNull
    public final YouMightLikeKey copy(@Nullable String str, @Nullable Boolean bool) {
        return new YouMightLikeKey(str, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof YouMightLikeKey)) {
            return false;
        }
        YouMightLikeKey youMightLikeKey = (YouMightLikeKey) obj;
        if (Intrinsics.areEqual(this.hotName, youMightLikeKey.hotName) && Intrinsics.areEqual(this.isHot, youMightLikeKey.isHot)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getHotName() {
        return this.hotName;
    }

    public int hashCode() {
        int hashCode;
        String str = this.hotName;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        Boolean bool = this.isHot;
        if (bool != null) {
            i10 = bool.hashCode();
        }
        return i11 + i10;
    }

    @Nullable
    public final Boolean isHot() {
        return this.isHot;
    }

    @NotNull
    public String toString() {
        return "YouMightLikeKey(hotName=" + this.hotName + ", isHot=" + this.isHot + ')';
    }
}
