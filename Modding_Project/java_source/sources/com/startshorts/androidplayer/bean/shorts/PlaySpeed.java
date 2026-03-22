package com.startshorts.androidplayer.bean.shorts;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlaySpeed.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlaySpeed extends SelectableItem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final PlaySpeed PLAY_SPEED_1 = new PlaySpeed("1.0X", 1.0f);
    @NotNull
    private static final PlaySpeed PLAY_SPEED_2 = new PlaySpeed("1.25X", 1.25f);
    @NotNull
    private static final PlaySpeed PLAY_SPEED_3 = new PlaySpeed("1.5X", 1.5f);
    @NotNull
    private static final PlaySpeed PLAY_SPEED_4 = new PlaySpeed("2.0X", 2.0f);
    @NotNull
    private static final PlaySpeed PLAY_SPEED_5 = new PlaySpeed("0.5X", 0.5f);
    @NotNull
    private static final PlaySpeed PLAY_SPEED_6 = new PlaySpeed("0.75X", 0.75f);
    @NotNull
    private final String key;
    private final float value;

    /* compiled from: PlaySpeed.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final PlaySpeed create(float f10) {
            if (f10 == 1.0f) {
                return getPLAY_SPEED_1();
            }
            if (f10 == 1.25f) {
                return getPLAY_SPEED_2();
            }
            if (f10 == 1.5f) {
                return getPLAY_SPEED_3();
            }
            if (f10 == 2.0f) {
                return getPLAY_SPEED_4();
            }
            if (f10 == 0.5f) {
                return getPLAY_SPEED_5();
            }
            if (f10 == 0.75f) {
                return getPLAY_SPEED_6();
            }
            return null;
        }

        @NotNull
        public final PlaySpeed getPLAY_SPEED_1() {
            return PlaySpeed.PLAY_SPEED_1;
        }

        @NotNull
        public final PlaySpeed getPLAY_SPEED_2() {
            return PlaySpeed.PLAY_SPEED_2;
        }

        @NotNull
        public final PlaySpeed getPLAY_SPEED_3() {
            return PlaySpeed.PLAY_SPEED_3;
        }

        @NotNull
        public final PlaySpeed getPLAY_SPEED_4() {
            return PlaySpeed.PLAY_SPEED_4;
        }

        @NotNull
        public final PlaySpeed getPLAY_SPEED_5() {
            return PlaySpeed.PLAY_SPEED_5;
        }

        @NotNull
        public final PlaySpeed getPLAY_SPEED_6() {
            return PlaySpeed.PLAY_SPEED_6;
        }

        private Companion() {
        }
    }

    public PlaySpeed(@NotNull String key, float f10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.value = f10;
    }

    public static /* synthetic */ PlaySpeed copy$default(PlaySpeed playSpeed, String str, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = playSpeed.key;
        }
        if ((i10 & 2) != 0) {
            f10 = playSpeed.value;
        }
        return playSpeed.copy(str, f10);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    public final float component2() {
        return this.value;
    }

    @NotNull
    public final PlaySpeed copy(@NotNull String key, float f10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new PlaySpeed(key, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaySpeed)) {
            return false;
        }
        PlaySpeed playSpeed = (PlaySpeed) obj;
        if (Intrinsics.areEqual(this.key, playSpeed.key) && Float.compare(this.value, playSpeed.value) == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final int getSelectedColor(boolean z10, @NotNull Context context) {
        int i10;
        Intrinsics.checkNotNullParameter(context, "context");
        if (isSelected()) {
            i10 = R$color.colorPrimary;
        } else {
            i10 = 17170443;
        }
        return ContextCompat.getColor(context, i10);
    }

    public final float getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + Float.hashCode(this.value);
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "PlaySpeed(key=" + this.key + ", value=" + this.value + ')';
    }
}
