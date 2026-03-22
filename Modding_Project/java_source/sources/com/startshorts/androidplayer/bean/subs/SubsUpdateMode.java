package com.startshorts.androidplayer.bean.subs;

import com.shorttv.aar.billing.core.SubscriptionUpdateMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsUpdateMode.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsUpdateMode {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int UPDATE_MODE_CHANGE_FULL_PRICE = 1;
    public static final int UPDATE_MODE_DEFERRED = 0;
    public static final int UPDATE_MODE_PURCHASE = 2;
    private final int changeMode;
    @Nullable
    private final String obfuscatedExternalAccountId;
    @Nullable
    private final String oldToken;

    /* compiled from: SubsUpdateMode.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SubsUpdateMode(int i10, @Nullable String str, @Nullable String str2) {
        this.changeMode = i10;
        this.oldToken = str;
        this.obfuscatedExternalAccountId = str2;
    }

    public static /* synthetic */ SubsUpdateMode copy$default(SubsUpdateMode subsUpdateMode, int i10, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = subsUpdateMode.changeMode;
        }
        if ((i11 & 2) != 0) {
            str = subsUpdateMode.oldToken;
        }
        if ((i11 & 4) != 0) {
            str2 = subsUpdateMode.obfuscatedExternalAccountId;
        }
        return subsUpdateMode.copy(i10, str, str2);
    }

    public final int component1() {
        return this.changeMode;
    }

    @Nullable
    public final String component2() {
        return this.oldToken;
    }

    @Nullable
    public final String component3() {
        return this.obfuscatedExternalAccountId;
    }

    @NotNull
    public final SubsUpdateMode copy(int i10, @Nullable String str, @Nullable String str2) {
        return new SubsUpdateMode(i10, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubsUpdateMode)) {
            return false;
        }
        SubsUpdateMode subsUpdateMode = (SubsUpdateMode) obj;
        if (this.changeMode == subsUpdateMode.changeMode && Intrinsics.areEqual(this.oldToken, subsUpdateMode.oldToken) && Intrinsics.areEqual(this.obfuscatedExternalAccountId, subsUpdateMode.obfuscatedExternalAccountId)) {
            return true;
        }
        return false;
    }

    public final int getChangeMode() {
        return this.changeMode;
    }

    @Nullable
    public final String getObfuscatedExternalAccountId() {
        return this.obfuscatedExternalAccountId;
    }

    @Nullable
    public final String getOldToken() {
        return this.oldToken;
    }

    @NotNull
    public final SubscriptionUpdateMode getSubscriptionReplacementMode() {
        int i10 = this.changeMode;
        if (i10 != 0) {
            if (i10 != 1) {
                return SubscriptionUpdateMode.NULL;
            }
            return SubscriptionUpdateMode.CHARGE_FULL_PRICE;
        }
        return SubscriptionUpdateMode.DEFERRED;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.changeMode) * 31;
        String str = this.oldToken;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        String str2 = this.obfuscatedExternalAccountId;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "SubsUpdateMode(changeMode=" + this.changeMode + ", oldToken=" + this.oldToken + ", obfuscatedExternalAccountId=" + this.obfuscatedExternalAccountId + ')';
    }

    public /* synthetic */ SubsUpdateMode(int i10, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, (i11 & 4) != 0 ? null : str2);
    }
}
