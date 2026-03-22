package com.startshorts.androidplayer.bean.unlock;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockEpisodeMethod.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UnlockEpisodeMethod {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_AD = 2;
    public static final int TYPE_COIN = 1;
    public static final int TYPE_THIRD_PARTY = 3;
    @NotNull
    private Object extra;
    private final int type;

    /* compiled from: UnlockEpisodeMethod.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public UnlockEpisodeMethod(int i10, @NotNull Object extra) {
        Intrinsics.checkNotNullParameter(extra, "extra");
        this.type = i10;
        this.extra = extra;
    }

    public static /* synthetic */ UnlockEpisodeMethod copy$default(UnlockEpisodeMethod unlockEpisodeMethod, int i10, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = unlockEpisodeMethod.type;
        }
        if ((i11 & 2) != 0) {
            obj = unlockEpisodeMethod.extra;
        }
        return unlockEpisodeMethod.copy(i10, obj);
    }

    public final int component1() {
        return this.type;
    }

    @NotNull
    public final Object component2() {
        return this.extra;
    }

    @NotNull
    public final UnlockEpisodeMethod copy(int i10, @NotNull Object extra) {
        Intrinsics.checkNotNullParameter(extra, "extra");
        return new UnlockEpisodeMethod(i10, extra);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnlockEpisodeMethod)) {
            return false;
        }
        UnlockEpisodeMethod unlockEpisodeMethod = (UnlockEpisodeMethod) obj;
        if (this.type == unlockEpisodeMethod.type && Intrinsics.areEqual(this.extra, unlockEpisodeMethod.extra)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Object getExtra() {
        return this.extra;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (Integer.hashCode(this.type) * 31) + this.extra.hashCode();
    }

    public final void setExtra(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<set-?>");
        this.extra = obj;
    }

    @NotNull
    public String toString() {
        return "UnlockEpisodeMethod(type=" + this.type + ", extra=" + this.extra + ')';
    }
}
