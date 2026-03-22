package com.startshorts.androidplayer.bean.configure;

import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RemoteConfigValue.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RemoteConfigValue {
    @NotNull
    private final String from;
    private final long updateTime;
    @NotNull
    private final String value;

    public RemoteConfigValue(@NotNull String from, @NotNull String value, long j10) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(value, "value");
        this.from = from;
        this.value = value;
        this.updateTime = j10;
    }

    public static /* synthetic */ RemoteConfigValue copy$default(RemoteConfigValue remoteConfigValue, String str, String str2, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = remoteConfigValue.from;
        }
        if ((i10 & 2) != 0) {
            str2 = remoteConfigValue.value;
        }
        if ((i10 & 4) != 0) {
            j10 = remoteConfigValue.updateTime;
        }
        return remoteConfigValue.copy(str, str2, j10);
    }

    @NotNull
    public final String component1() {
        return this.from;
    }

    @NotNull
    public final String component2() {
        return this.value;
    }

    public final long component3() {
        return this.updateTime;
    }

    @NotNull
    public final RemoteConfigValue copy(@NotNull String from, @NotNull String value, long j10) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(value, "value");
        return new RemoteConfigValue(from, value, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemoteConfigValue)) {
            return false;
        }
        RemoteConfigValue remoteConfigValue = (RemoteConfigValue) obj;
        if (Intrinsics.areEqual(this.from, remoteConfigValue.from) && Intrinsics.areEqual(this.value, remoteConfigValue.value) && this.updateTime == remoteConfigValue.updateTime) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getFrom() {
        return this.from;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return (((this.from.hashCode() * 31) + this.value.hashCode()) * 31) + Long.hashCode(this.updateTime);
    }

    @NotNull
    public String toString() {
        return "RemoteConfigValue(from=" + this.from + ", value=" + this.value + ", updateTime=" + this.updateTime + ')';
    }

    public /* synthetic */ RemoteConfigValue(String str, String str2, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? DeviceUtil.f48146a.K() : j10);
    }

    @NotNull
    public final String toString(@NotNull String configKey) {
        Intrinsics.checkNotNullParameter(configKey, "configKey");
        StringBuilder sb2 = new StringBuilder();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%-27s", Arrays.copyOf(new Object[]{this.from}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        String substring = format.substring(0, 16);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        sb2.append(substring);
        sb2.append('|');
        sb2.append(RemoteConfigValueKt.formatTimestampToDate(this.updateTime));
        String sb3 = sb2.toString();
        String format2 = String.format("%-26s", Arrays.copyOf(new Object[]{configKey}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        return sb3 + '|' + format2 + "=[" + this.value + ']';
    }
}
