package com.google.android.ump;

import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes5.dex */
public class ConsentRequestParameters {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f20030a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f20031b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ConsentDebugSettings f20032c;

    /* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private boolean f20033a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f20034b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private ConsentDebugSettings f20035c;

        @RecentlyNonNull
        public ConsentRequestParameters build() {
            return new ConsentRequestParameters(this, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setAdMobAppId(@Nullable String str) {
            this.f20034b = str;
            return this;
        }

        @RecentlyNonNull
        public Builder setConsentDebugSettings(@Nullable ConsentDebugSettings consentDebugSettings) {
            this.f20035c = consentDebugSettings;
            return this;
        }

        @RecentlyNonNull
        public Builder setTagForUnderAgeOfConsent(boolean z10) {
            this.f20033a = z10;
            return this;
        }
    }

    /* synthetic */ ConsentRequestParameters(Builder builder, zzb zzbVar) {
        this.f20030a = builder.f20033a;
        this.f20031b = builder.f20034b;
        this.f20032c = builder.f20035c;
    }

    @RecentlyNullable
    public ConsentDebugSettings getConsentDebugSettings() {
        return this.f20032c;
    }

    public boolean isTagForUnderAgeOfConsent() {
        return this.f20030a;
    }

    @RecentlyNullable
    public final String zza() {
        return this.f20031b;
    }
}
