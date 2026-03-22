package com.moloco.sdk.publisher.privacy;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes6.dex */
public final class MolocoPrivacy {
    @NotNull
    public static final MolocoPrivacy INSTANCE = new MolocoPrivacy();
    @NotNull
    private static PrivacySettings privacySettings = new PrivacySettings((Boolean) null, (Boolean) null, (Boolean) null, 7, (DefaultConstructorMarker) null);
    public static final int $stable = 8;

    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes6.dex */
    public static final class PrivacySettings {
        public static final int $stable = 8;
        @Nullable
        private String TCFConsent;
        @NotNull
        private String _usPrivacy;
        @Nullable
        private final Boolean isAgeRestrictedUser;
        @Nullable
        private final Boolean isDoNotSell;
        @Nullable
        private final Boolean isUserConsent;

        public PrivacySettings() {
            this((Boolean) null, (Boolean) null, (Boolean) null, 7, (DefaultConstructorMarker) null);
        }

        private final String getUSPrivacy(Boolean bool) {
            if (bool == null) {
                return "1---";
            }
            if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                return "1-Y-";
            }
            return "1-N-";
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PrivacySettings)) {
                return false;
            }
            PrivacySettings privacySettings = (PrivacySettings) obj;
            if (Intrinsics.areEqual(this.isUserConsent, privacySettings.isUserConsent) && Intrinsics.areEqual(this.isAgeRestrictedUser, privacySettings.isAgeRestrictedUser) && Intrinsics.areEqual(this.isDoNotSell, privacySettings.isDoNotSell) && Intrinsics.areEqual(this.TCFConsent, privacySettings.TCFConsent)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getTCFConsent() {
            return this.TCFConsent;
        }

        @NotNull
        public final String getUsPrivacy() {
            return this._usPrivacy;
        }

        public int hashCode() {
            int i10;
            int i11;
            int i12;
            Boolean bool = this.isUserConsent;
            int i13 = 0;
            if (bool != null) {
                i10 = bool.hashCode();
            } else {
                i10 = 0;
            }
            int i14 = i10 * 31;
            Boolean bool2 = this.isAgeRestrictedUser;
            if (bool2 != null) {
                i11 = bool2.hashCode();
            } else {
                i11 = 0;
            }
            int i15 = (i14 + i11) * 31;
            Boolean bool3 = this.isDoNotSell;
            if (bool3 != null) {
                i12 = bool3.hashCode();
            } else {
                i12 = 0;
            }
            int i16 = (i15 + i12) * 31;
            String str = this.TCFConsent;
            if (str != null) {
                i13 = str.hashCode();
            }
            return i16 + i13;
        }

        @Nullable
        public final Boolean isAgeRestrictedUser() {
            return this.isAgeRestrictedUser;
        }

        @Nullable
        public final Boolean isDoNotSell() {
            return this.isDoNotSell;
        }

        @Nullable
        public final Boolean isUserConsent() {
            return this.isUserConsent;
        }

        public PrivacySettings(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
            this.isUserConsent = bool;
            this.isAgeRestrictedUser = bool2;
            this.isDoNotSell = bool3;
            this._usPrivacy = getUSPrivacy(bool3);
        }

        public /* synthetic */ PrivacySettings(Boolean bool, Boolean bool2, Boolean bool3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : bool2, (i10 & 4) != 0 ? null : bool3);
        }

        public PrivacySettings(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable String str, @Nullable String str2) {
            this(bool, bool2, bool3);
            this.TCFConsent = str;
            if (str2 != null) {
                this._usPrivacy = str2;
            }
        }
    }

    private MolocoPrivacy() {
    }

    public static final void setPrivacy(@NotNull PrivacySettings privacySettings2) {
        Intrinsics.checkNotNullParameter(privacySettings2, "privacySettings");
        privacySettings = privacySettings2;
    }

    @NotNull
    public final PrivacySettings getPrivacySettings() {
        return privacySettings;
    }

    public final void setPrivacySettings(@NotNull PrivacySettings privacySettings2) {
        Intrinsics.checkNotNullParameter(privacySettings2, "<set-?>");
        privacySettings = privacySettings2;
    }
}
