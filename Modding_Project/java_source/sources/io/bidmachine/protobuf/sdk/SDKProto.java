package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.q2;
import com.explorestack.protobuf.w;
import com.explorestack.protobuf.y;
import com.explorestack.protobuf.y1;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingProto;
/* loaded from: classes8.dex */
public final class SDKProto {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n!bidmachine/protobuf/sdk/sdk.proto\u0012\u0017bidmachine.protobuf.sdk\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a5bidmachine/protobuf/headerbidding/headerbidding.proto\"Ï\u0001\n\tPlacement\u0012\u000f\n\u0007ad_type\u0018\u0001 \u0001(\t\u00122\n\fplacement_id\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012,\n\u000bcustom_data\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012O\n\fhb_placement\u0018\u0004 \u0001(\u000b29.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementB(\n\u001aio.bidmachine.protobuf.sdkB\bSDKProtoP\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{y1.a(), q2.a(), HeaderBiddingProto.getDescriptor()});
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_sdk_Placement_descriptor;
    static final GeneratedMessageV3.e internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable;

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_bidmachine_protobuf_sdk_Placement_descriptor = descriptor2;
        internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable = new GeneratedMessageV3.e(descriptor2, new String[]{"AdType", "PlacementId", "CustomData", "HbPlacement"});
        y1.a();
        q2.a();
        HeaderBiddingProto.getDescriptor();
    }

    private SDKProto() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(y yVar) {
    }

    public static void registerAllExtensions(w wVar) {
        registerAllExtensions((y) wVar);
    }
}
