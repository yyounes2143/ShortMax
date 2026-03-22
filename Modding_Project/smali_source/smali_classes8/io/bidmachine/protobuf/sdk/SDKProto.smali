.class public final Lio/bidmachine/protobuf/sdk/SDKProto;
.super Ljava/lang/Object;
.source "SDKProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_sdk_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "\n!bidmachine/protobuf/sdk/sdk.proto\u0012\u0017bidmachine.protobuf.sdk\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a5bidmachine/protobuf/headerbidding/headerbidding.proto\"\u00cf\u0001\n\tPlacement\u0012\u000f\n\u0007ad_type\u0018\u0001 \u0001(\t\u00122\n\u000cplacement_id\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012,\n\u000bcustom_data\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012O\n\u000chb_placement\u0018\u0004 \u0001(\u000b29.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementB(\n\u001aio.bidmachine.protobuf.sdkB\u0008SDKProtoP\u0001b\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/q2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    filled-new-array {v1, v2, v3}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 28
    .line 29
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 43
    .line 44
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 45
    .line 46
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 47
    .line 48
    const-string v2, "CustomData"

    .line 49
    .line 50
    const-string v3, "HbPlacement"

    .line 51
    .line 52
    const-string v4, "AdType"

    .line 53
    .line 54
    const-string v5, "PlacementId"

    .line 55
    .line 56
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKProto;->internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 64
    .line 65
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/explorestack/protobuf/q2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/SDKProto;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
