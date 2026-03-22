package com.vungle.ads.internal.signals;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.c2;
import vt.r2;
import vt.w2;
/* compiled from: SignaledAd.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class SignaledAd {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private long adAvailabilityCallbackTime;
    @Nullable
    private String eventId;
    @Nullable
    private final Long lastAdLoadTime;
    private final long loadAdTime;
    private long playAdTime;
    private int screenOrientation;
    @Nullable
    private String templateSignals;
    private long timeBetweenAdAvailabilityAndPlayAd;
    private final long timeSinceLastAdLoad;

    /* compiled from: SignaledAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<SignaledAd> serializer() {
            return SignaledAd$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public SignaledAd() {
        this(null, 0L, 3, null);
    }

    public static /* synthetic */ SignaledAd copy$default(SignaledAd signaledAd, Long l10, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = signaledAd.lastAdLoadTime;
        }
        if ((i10 & 2) != 0) {
            j10 = signaledAd.loadAdTime;
        }
        return signaledAd.copy(l10, j10);
    }

    private final long getTimeDifference(Long l10, long j10) {
        if (l10 == null) {
            return -1L;
        }
        long longValue = j10 - l10.longValue();
        if (longValue < 0) {
            return -1L;
        }
        return longValue;
    }

    public static final void write$Self(@NotNull SignaledAd self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.templateSignals != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.templateSignals);
        }
        output.encodeLongElement(serialDesc, 1, self.timeSinceLastAdLoad);
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.eventId != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, w2.f69539a, self.eventId);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.timeBetweenAdAvailabilityAndPlayAd != 0) {
            output.encodeLongElement(serialDesc, 3, self.timeBetweenAdAvailabilityAndPlayAd);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.screenOrientation != 0) {
            output.encodeIntElement(serialDesc, 4, self.screenOrientation);
        }
    }

    public final void calculateTimeBetweenAdAvailabilityAndPlayAd() {
        this.timeBetweenAdAvailabilityAndPlayAd = getTimeDifference(Long.valueOf(this.adAvailabilityCallbackTime), this.playAdTime);
    }

    @Nullable
    public final Long component1() {
        return this.lastAdLoadTime;
    }

    public final long component2() {
        return this.loadAdTime;
    }

    @NotNull
    public final SignaledAd copy(@Nullable Long l10, long j10) {
        return new SignaledAd(l10, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignaledAd)) {
            return false;
        }
        SignaledAd signaledAd = (SignaledAd) obj;
        if (Intrinsics.areEqual(this.lastAdLoadTime, signaledAd.lastAdLoadTime) && this.loadAdTime == signaledAd.loadAdTime) {
            return true;
        }
        return false;
    }

    public final long getAdAvailabilityCallbackTime() {
        return this.adAvailabilityCallbackTime;
    }

    @Nullable
    public final String getEventId() {
        return this.eventId;
    }

    @Nullable
    public final Long getLastAdLoadTime() {
        return this.lastAdLoadTime;
    }

    public final long getLoadAdTime() {
        return this.loadAdTime;
    }

    public final long getPlayAdTime() {
        return this.playAdTime;
    }

    public final int getScreenOrientation() {
        return this.screenOrientation;
    }

    @Nullable
    public final String getTemplateSignals() {
        return this.templateSignals;
    }

    public final long getTimeBetweenAdAvailabilityAndPlayAd() {
        return this.timeBetweenAdAvailabilityAndPlayAd;
    }

    public final long getTimeSinceLastAdLoad() {
        return this.timeSinceLastAdLoad;
    }

    public int hashCode() {
        int hashCode;
        Long l10 = this.lastAdLoadTime;
        if (l10 == null) {
            hashCode = 0;
        } else {
            hashCode = l10.hashCode();
        }
        return (hashCode * 31) + Long.hashCode(this.loadAdTime);
    }

    public final void setAdAvailabilityCallbackTime(long j10) {
        this.adAvailabilityCallbackTime = j10;
    }

    public final void setEventId(@Nullable String str) {
        this.eventId = str;
    }

    public final void setPlayAdTime(long j10) {
        this.playAdTime = j10;
    }

    public final void setScreenOrientation(int i10) {
        this.screenOrientation = i10;
    }

    public final void setTemplateSignals(@Nullable String str) {
        this.templateSignals = str;
    }

    public final void setTimeBetweenAdAvailabilityAndPlayAd(long j10) {
        this.timeBetweenAdAvailabilityAndPlayAd = j10;
    }

    @NotNull
    public String toString() {
        return "SignaledAd(lastAdLoadTime=" + this.lastAdLoadTime + ", loadAdTime=" + this.loadAdTime + ')';
    }

    @c
    public /* synthetic */ SignaledAd(int i10, String str, long j10, String str2, long j11, int i11, r2 r2Var) {
        if (2 != (i10 & 2)) {
            c2.a(i10, 2, SignaledAd$$serializer.INSTANCE.getDescriptor());
        }
        this.lastAdLoadTime = 0L;
        this.loadAdTime = 0L;
        if ((i10 & 1) == 0) {
            this.templateSignals = null;
        } else {
            this.templateSignals = str;
        }
        this.timeSinceLastAdLoad = j10;
        if ((i10 & 4) == 0) {
            this.eventId = null;
        } else {
            this.eventId = str2;
        }
        if ((i10 & 8) == 0) {
            this.timeBetweenAdAvailabilityAndPlayAd = 0L;
        } else {
            this.timeBetweenAdAvailabilityAndPlayAd = j11;
        }
        if ((i10 & 16) == 0) {
            this.screenOrientation = 0;
        } else {
            this.screenOrientation = i11;
        }
        this.adAvailabilityCallbackTime = 0L;
        this.playAdTime = 0L;
        this.timeSinceLastAdLoad = getTimeDifference(0L, 0L);
    }

    public SignaledAd(@Nullable Long l10, long j10) {
        this.lastAdLoadTime = l10;
        this.loadAdTime = j10;
        this.timeSinceLastAdLoad = getTimeDifference(l10, j10);
    }

    public /* synthetic */ SignaledAd(Long l10, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : l10, (i10 & 2) != 0 ? 0L : j10);
    }

    public static /* synthetic */ void getAdAvailabilityCallbackTime$annotations() {
    }

    public static /* synthetic */ void getEventId$annotations() {
    }

    public static /* synthetic */ void getLastAdLoadTime$annotations() {
    }

    public static /* synthetic */ void getLoadAdTime$annotations() {
    }

    public static /* synthetic */ void getPlayAdTime$annotations() {
    }

    public static /* synthetic */ void getScreenOrientation$annotations() {
    }

    public static /* synthetic */ void getTemplateSignals$annotations() {
    }

    public static /* synthetic */ void getTimeBetweenAdAvailabilityAndPlayAd$annotations() {
    }

    public static /* synthetic */ void getTimeSinceLastAdLoad$annotations() {
    }
}
