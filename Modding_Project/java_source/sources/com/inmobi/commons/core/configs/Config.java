package com.inmobi.commons.core.configs;

import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import com.inmobi.media.G2;
import com.inmobi.media.W5;
import com.inmobi.media.Z4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Keep
@Metadata
/* loaded from: classes5.dex */
public abstract class Config {
    @NotNull
    public static final G2 Companion = new G2();
    @Z4
    @Nullable
    private String accountId;
    @NotNull
    private W5 includeIds = new W5(false, 1, null);
    @Z4
    private long lastUpdateTimeStamp;

    public Config(@Nullable String str) {
        this.accountId = str;
    }

    @Nullable
    public static final Config fromJSON(@NotNull String str, @NotNull JSONObject jSONObject, @Nullable String str2, long j10) {
        Companion.getClass();
        return G2.a(str, jSONObject, str2, j10);
    }

    @NotNull
    public static final Config newInstance(@NotNull String str, @Nullable String str2) {
        Companion.getClass();
        return G2.a(str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Config)) {
            return false;
        }
        Config config = (Config) obj;
        if (!Intrinsics.areEqual(config.getType(), getType())) {
            return false;
        }
        String str = this.accountId;
        if ((str != null || config.accountId != null) && (str == null || !StringsKt.H(str, config.accountId, false, 2, null))) {
            return false;
        }
        return true;
    }

    @VisibleForTesting
    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final String getAccountId$media_release() {
        return this.accountId;
    }

    @NotNull
    public final W5 getIncludeIdParams() {
        return this.includeIds;
    }

    public final long getLastUpdateTimeStamp() {
        return this.lastUpdateTimeStamp;
    }

    @NotNull
    public abstract String getType();

    public int hashCode() {
        int hashCode;
        int hashCode2 = getType().hashCode();
        String str = this.accountId;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public abstract boolean isValid();

    public final void setAccountId$media_release(@Nullable String str) {
        this.accountId = str;
    }

    public final void setLastUpdateTimeStamp(long j10) {
        this.lastUpdateTimeStamp = j10;
    }

    @NotNull
    public abstract JSONObject toJson();
}
