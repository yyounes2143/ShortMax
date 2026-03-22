package com.startshorts.androidplayer.bean.auth;

import android.content.Context;
import com.startshorts.androidplayer.R$string;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BindInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BindInfo {
    public static final int BIND_EMAIL = 50;
    public static final int BIND_FACEBOOK = 20;
    public static final int BIND_GOOGLE = 10;
    public static final int BIND_HUAWEI = 100;
    public static final int BIND_PHONE = 60;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int provider;
    @Nullable
    private final String providerId;

    /* compiled from: BindInfo.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public BindInfo(int i10, @Nullable String str) {
        this.provider = i10;
        this.providerId = str;
    }

    public static /* synthetic */ BindInfo copy$default(BindInfo bindInfo, int i10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = bindInfo.provider;
        }
        if ((i11 & 2) != 0) {
            str = bindInfo.providerId;
        }
        return bindInfo.copy(i10, str);
    }

    public final int component1() {
        return this.provider;
    }

    @Nullable
    public final String component2() {
        return this.providerId;
    }

    @NotNull
    public final BindInfo copy(int i10, @Nullable String str) {
        return new BindInfo(i10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BindInfo)) {
            return false;
        }
        BindInfo bindInfo = (BindInfo) obj;
        if (this.provider == bindInfo.provider && Intrinsics.areEqual(this.providerId, bindInfo.providerId)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getBindName(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int i10 = this.provider;
        if (i10 != 10) {
            if (i10 != 20) {
                if (i10 != 50) {
                    if (i10 != 60) {
                        if (i10 != 100) {
                            return "Unknown";
                        }
                        return "HuaWei";
                    }
                    String string = context.getString(R$string.bind_info_fragment_phone);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    return string;
                }
                String string2 = context.getString(R$string.bind_info_fragment_email);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                return string2;
            }
            return "Facebook";
        }
        return "Google";
    }

    @NotNull
    public final String getBindStatus(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String str = this.providerId;
        if (str != null && str.length() != 0) {
            int i10 = this.provider;
            if (i10 != 20 && i10 != 10 && i10 != 60 && i10 != 100) {
                return this.providerId;
            }
            String string = context.getString(R$string.bind_info_fragment_bind);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        String string2 = context.getString(R$string.bind_info_fragment_unbound);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        return string2;
    }

    public final int getProvider() {
        return this.provider;
    }

    @Nullable
    public final String getProviderId() {
        return this.providerId;
    }

    public final boolean hasBind() {
        boolean z10;
        String str = this.providerId;
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        return !z10;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.provider) * 31;
        String str = this.providerId;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "BindInfo(provider=" + this.provider + ", providerId=" + this.providerId + ')';
    }
}
