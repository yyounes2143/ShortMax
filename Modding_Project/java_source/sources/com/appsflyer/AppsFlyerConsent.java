package com.appsflyer;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AppsFlyerConsent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final Boolean hasConsentForAdStorage;
    @Nullable
    private final Boolean hasConsentForAdsPersonalization;
    @Nullable
    private final Boolean hasConsentForDataUsage;
    @Nullable
    private final Boolean isUserSubjectToGDPR;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        @ms.c
        @NotNull
        public final AppsFlyerConsent forGDPRUser(boolean z10, boolean z11) {
            return new AppsFlyerConsent(Boolean.TRUE, Boolean.valueOf(z10), Boolean.valueOf(z11), null, 8, null);
        }

        @ms.c
        @NotNull
        public final AppsFlyerConsent forNonGDPRUser() {
            return new AppsFlyerConsent(Boolean.FALSE, null, null, null, 8, null);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AppsFlyerConsent(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4) {
        this.isUserSubjectToGDPR = bool;
        this.hasConsentForDataUsage = bool2;
        this.hasConsentForAdsPersonalization = bool3;
        this.hasConsentForAdStorage = bool4;
    }

    public static /* synthetic */ AppsFlyerConsent copy$default(AppsFlyerConsent appsFlyerConsent, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bool = appsFlyerConsent.isUserSubjectToGDPR;
        }
        if ((i10 & 2) != 0) {
            bool2 = appsFlyerConsent.hasConsentForDataUsage;
        }
        if ((i10 & 4) != 0) {
            bool3 = appsFlyerConsent.hasConsentForAdsPersonalization;
        }
        if ((i10 & 8) != 0) {
            bool4 = appsFlyerConsent.hasConsentForAdStorage;
        }
        return appsFlyerConsent.copy(bool, bool2, bool3, bool4);
    }

    @ms.c
    @NotNull
    public static final AppsFlyerConsent forGDPRUser(boolean z10, boolean z11) {
        return Companion.forGDPRUser(z10, z11);
    }

    @ms.c
    @NotNull
    public static final AppsFlyerConsent forNonGDPRUser() {
        return Companion.forNonGDPRUser();
    }

    @Nullable
    public final Boolean component1() {
        return this.isUserSubjectToGDPR;
    }

    @Nullable
    public final Boolean component2() {
        return this.hasConsentForDataUsage;
    }

    @Nullable
    public final Boolean component3() {
        return this.hasConsentForAdsPersonalization;
    }

    @Nullable
    public final Boolean component4() {
        return this.hasConsentForAdStorage;
    }

    @NotNull
    public final AppsFlyerConsent copy(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4) {
        return new AppsFlyerConsent(bool, bool2, bool3, bool4);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppsFlyerConsent)) {
            return false;
        }
        AppsFlyerConsent appsFlyerConsent = (AppsFlyerConsent) obj;
        if (Intrinsics.areEqual(this.isUserSubjectToGDPR, appsFlyerConsent.isUserSubjectToGDPR) && Intrinsics.areEqual(this.hasConsentForDataUsage, appsFlyerConsent.hasConsentForDataUsage) && Intrinsics.areEqual(this.hasConsentForAdsPersonalization, appsFlyerConsent.hasConsentForAdsPersonalization) && Intrinsics.areEqual(this.hasConsentForAdStorage, appsFlyerConsent.hasConsentForAdStorage)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Boolean getHasConsentForAdStorage() {
        return this.hasConsentForAdStorage;
    }

    @Nullable
    public final Boolean getHasConsentForAdsPersonalization() {
        return this.hasConsentForAdsPersonalization;
    }

    @Nullable
    public final Boolean getHasConsentForDataUsage() {
        return this.hasConsentForDataUsage;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        Boolean bool = this.isUserSubjectToGDPR;
        int i10 = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i11 = hashCode * 31;
        Boolean bool2 = this.hasConsentForDataUsage;
        if (bool2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = bool2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Boolean bool3 = this.hasConsentForAdsPersonalization;
        if (bool3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Boolean bool4 = this.hasConsentForAdStorage;
        if (bool4 != null) {
            i10 = bool4.hashCode();
        }
        return i13 + i10;
    }

    @Nullable
    public final Boolean isUserSubjectToGDPR() {
        return this.isUserSubjectToGDPR;
    }

    @NotNull
    public final String toString() {
        Boolean bool = this.isUserSubjectToGDPR;
        Boolean bool2 = this.hasConsentForDataUsage;
        Boolean bool3 = this.hasConsentForAdsPersonalization;
        Boolean bool4 = this.hasConsentForAdStorage;
        return "AppsFlyerConsent(isUserSubjectToGDPR=" + bool + ", hasConsentForDataUsage=" + bool2 + ", hasConsentForAdsPersonalization=" + bool3 + ", hasConsentForAdStorage=" + bool4 + ")";
    }

    public /* synthetic */ AppsFlyerConsent(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : bool2, (i10 & 4) != 0 ? null : bool3, (i10 & 8) != 0 ? null : bool4);
    }

    public AppsFlyerConsent() {
        this(null, null, null, null, 15, null);
    }

    public AppsFlyerConsent(@Nullable Boolean bool) {
        this(bool, null, null, null, 14, null);
    }

    public AppsFlyerConsent(@Nullable Boolean bool, @Nullable Boolean bool2) {
        this(bool, bool2, null, null, 12, null);
    }

    public AppsFlyerConsent(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        this(bool, bool2, bool3, null, 8, null);
    }
}
