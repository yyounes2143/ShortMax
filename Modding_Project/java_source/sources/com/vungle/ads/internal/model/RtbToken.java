package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.CommonRequestBody;
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
/* compiled from: RtbToken.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class RtbToken {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final DeviceNode device;
    @Nullable
    private final CommonRequestBody.RequestExt ext;
    private final int ordinalView;
    @Nullable
    private final RtbRequest request;
    @Nullable
    private final CommonRequestBody.User user;

    /* compiled from: RtbToken.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<RtbToken> serializer() {
            return RtbToken$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    @c
    public /* synthetic */ RtbToken(int i10, DeviceNode deviceNode, CommonRequestBody.User user, CommonRequestBody.RequestExt requestExt, RtbRequest rtbRequest, int i11, r2 r2Var) {
        if (17 != (i10 & 17)) {
            c2.a(i10, 17, RtbToken$$serializer.INSTANCE.getDescriptor());
        }
        this.device = deviceNode;
        if ((i10 & 2) == 0) {
            this.user = null;
        } else {
            this.user = user;
        }
        if ((i10 & 4) == 0) {
            this.ext = null;
        } else {
            this.ext = requestExt;
        }
        if ((i10 & 8) == 0) {
            this.request = null;
        } else {
            this.request = rtbRequest;
        }
        this.ordinalView = i11;
    }

    public static /* synthetic */ RtbToken copy$default(RtbToken rtbToken, DeviceNode deviceNode, CommonRequestBody.User user, CommonRequestBody.RequestExt requestExt, RtbRequest rtbRequest, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            deviceNode = rtbToken.device;
        }
        if ((i11 & 2) != 0) {
            user = rtbToken.user;
        }
        CommonRequestBody.User user2 = user;
        if ((i11 & 4) != 0) {
            requestExt = rtbToken.ext;
        }
        CommonRequestBody.RequestExt requestExt2 = requestExt;
        if ((i11 & 8) != 0) {
            rtbRequest = rtbToken.request;
        }
        RtbRequest rtbRequest2 = rtbRequest;
        if ((i11 & 16) != 0) {
            i10 = rtbToken.ordinalView;
        }
        return rtbToken.copy(deviceNode, user2, requestExt2, rtbRequest2, i10);
    }

    public static final void write$Self(@NotNull RtbToken self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, DeviceNode$$serializer.INSTANCE, self.device);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.user != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, CommonRequestBody$User$$serializer.INSTANCE, self.user);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.ext != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, CommonRequestBody$RequestExt$$serializer.INSTANCE, self.ext);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.request != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, RtbRequest$$serializer.INSTANCE, self.request);
        }
        output.encodeIntElement(serialDesc, 4, self.ordinalView);
    }

    @NotNull
    public final DeviceNode component1() {
        return this.device;
    }

    @Nullable
    public final CommonRequestBody.User component2() {
        return this.user;
    }

    @Nullable
    public final CommonRequestBody.RequestExt component3() {
        return this.ext;
    }

    @Nullable
    public final RtbRequest component4() {
        return this.request;
    }

    public final int component5() {
        return this.ordinalView;
    }

    @NotNull
    public final RtbToken copy(@NotNull DeviceNode device, @Nullable CommonRequestBody.User user, @Nullable CommonRequestBody.RequestExt requestExt, @Nullable RtbRequest rtbRequest, int i10) {
        Intrinsics.checkNotNullParameter(device, "device");
        return new RtbToken(device, user, requestExt, rtbRequest, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RtbToken)) {
            return false;
        }
        RtbToken rtbToken = (RtbToken) obj;
        if (Intrinsics.areEqual(this.device, rtbToken.device) && Intrinsics.areEqual(this.user, rtbToken.user) && Intrinsics.areEqual(this.ext, rtbToken.ext) && Intrinsics.areEqual(this.request, rtbToken.request) && this.ordinalView == rtbToken.ordinalView) {
            return true;
        }
        return false;
    }

    @NotNull
    public final DeviceNode getDevice() {
        return this.device;
    }

    @Nullable
    public final CommonRequestBody.RequestExt getExt() {
        return this.ext;
    }

    public final int getOrdinalView() {
        return this.ordinalView;
    }

    @Nullable
    public final RtbRequest getRequest() {
        return this.request;
    }

    @Nullable
    public final CommonRequestBody.User getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.device.hashCode() * 31;
        CommonRequestBody.User user = this.user;
        int i10 = 0;
        if (user == null) {
            hashCode = 0;
        } else {
            hashCode = user.hashCode();
        }
        int i11 = (hashCode3 + hashCode) * 31;
        CommonRequestBody.RequestExt requestExt = this.ext;
        if (requestExt == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = requestExt.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        RtbRequest rtbRequest = this.request;
        if (rtbRequest != null) {
            i10 = rtbRequest.hashCode();
        }
        return ((i12 + i10) * 31) + Integer.hashCode(this.ordinalView);
    }

    @NotNull
    public String toString() {
        return "RtbToken(device=" + this.device + ", user=" + this.user + ", ext=" + this.ext + ", request=" + this.request + ", ordinalView=" + this.ordinalView + ')';
    }

    public RtbToken(@NotNull DeviceNode device, @Nullable CommonRequestBody.User user, @Nullable CommonRequestBody.RequestExt requestExt, @Nullable RtbRequest rtbRequest, int i10) {
        Intrinsics.checkNotNullParameter(device, "device");
        this.device = device;
        this.user = user;
        this.ext = requestExt;
        this.request = rtbRequest;
        this.ordinalView = i10;
    }

    public /* synthetic */ RtbToken(DeviceNode deviceNode, CommonRequestBody.User user, CommonRequestBody.RequestExt requestExt, RtbRequest rtbRequest, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(deviceNode, (i11 & 2) != 0 ? null : user, (i11 & 4) != 0 ? null : requestExt, (i11 & 8) != 0 ? null : rtbRequest, i10);
    }

    public static /* synthetic */ void getOrdinalView$annotations() {
    }
}
