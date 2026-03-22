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
import vt.r2;
import vt.w2;
/* compiled from: RtbToken.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class RtbRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String sdkUserAgent;

    /* compiled from: RtbToken.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<RtbRequest> serializer() {
            return RtbRequest$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public RtbRequest() {
        this((String) null, 1, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ RtbRequest copy$default(RtbRequest rtbRequest, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = rtbRequest.sdkUserAgent;
        }
        return rtbRequest.copy(str);
    }

    public static final void write$Self(@NotNull RtbRequest self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.sdkUserAgent != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.sdkUserAgent);
        }
    }

    @Nullable
    public final String component1() {
        return this.sdkUserAgent;
    }

    @NotNull
    public final RtbRequest copy(@Nullable String str) {
        return new RtbRequest(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof RtbRequest) && Intrinsics.areEqual(this.sdkUserAgent, ((RtbRequest) obj).sdkUserAgent)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getSdkUserAgent() {
        return this.sdkUserAgent;
    }

    public int hashCode() {
        String str = this.sdkUserAgent;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        return "RtbRequest(sdkUserAgent=" + this.sdkUserAgent + ')';
    }

    @c
    public /* synthetic */ RtbRequest(int i10, String str, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.sdkUserAgent = null;
        } else {
            this.sdkUserAgent = str;
        }
    }

    public RtbRequest(@Nullable String str) {
        this.sdkUserAgent = str;
    }

    public /* synthetic */ RtbRequest(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }

    public static /* synthetic */ void getSdkUserAgent$annotations() {
    }
}
