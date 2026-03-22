package com.vungle.ads.internal.model;

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
/* compiled from: UnclosedAd.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class UnclosedAd {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String eventId;
    @NotNull
    private String sessionId;

    /* compiled from: UnclosedAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<UnclosedAd> serializer() {
            return UnclosedAd$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    @c
    public /* synthetic */ UnclosedAd(int i10, String str, String str2, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, UnclosedAd$$serializer.INSTANCE.getDescriptor());
        }
        this.eventId = str;
        if ((i10 & 2) == 0) {
            this.sessionId = "";
        } else {
            this.sessionId = str2;
        }
    }

    public static /* synthetic */ UnclosedAd copy$default(UnclosedAd unclosedAd, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = unclosedAd.eventId;
        }
        if ((i10 & 2) != 0) {
            str2 = unclosedAd.sessionId;
        }
        return unclosedAd.copy(str, str2);
    }

    public static final void write$Self(@NotNull UnclosedAd self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.eventId);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || !Intrinsics.areEqual(self.sessionId, "")) {
            output.encodeStringElement(serialDesc, 1, self.sessionId);
        }
    }

    @NotNull
    public final String component1() {
        return this.eventId;
    }

    @NotNull
    public final String component2() {
        return this.sessionId;
    }

    @NotNull
    public final UnclosedAd copy(@NotNull String eventId, @NotNull String sessionId) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        return new UnclosedAd(eventId, sessionId);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !Intrinsics.areEqual(UnclosedAd.class, obj.getClass())) {
            return false;
        }
        UnclosedAd unclosedAd = (UnclosedAd) obj;
        if (!Intrinsics.areEqual(this.eventId, unclosedAd.eventId) || !Intrinsics.areEqual(this.sessionId, unclosedAd.sessionId)) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String getEventId() {
        return this.eventId;
    }

    @NotNull
    public final String getSessionId() {
        return this.sessionId;
    }

    public int hashCode() {
        return (this.eventId.hashCode() * 31) + this.sessionId.hashCode();
    }

    public final void setSessionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sessionId = str;
    }

    @NotNull
    public String toString() {
        return "UnclosedAd(eventId=" + this.eventId + ", sessionId=" + this.sessionId + ')';
    }

    public UnclosedAd(@NotNull String eventId, @NotNull String sessionId) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.eventId = eventId;
        this.sessionId = sessionId;
    }

    public /* synthetic */ UnclosedAd(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ void getEventId$annotations() {
    }

    public static /* synthetic */ void getSessionId$annotations() {
    }
}
