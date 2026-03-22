.class public final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;
.super Ljava/lang/Object;
.source "HeaderBiddingProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_ClientParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_ClientParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "\n5bidmachine/protobuf/headerbidding/headerbidding.proto\u0012!bidmachine.protobuf.headerbidding\"\u00d6\u0002\n\u0016HeaderBiddingPlacement\u0012R\n\u0008ad_units\u0018\u0001 \u0003(\u000b2@.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit\u001a\u00e7\u0001\n\u0006AdUnit\u0012\u000e\n\u0006bidder\u0018\u0001 \u0001(\t\u0012\u0015\n\rbidder_sdkver\u0018\u0002 \u0001(\t\u0012i\n\rclient_params\u0018\u0003 \u0003(\u000b2R.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit.ClientParamsEntry\u0012\u0016\n\u000eprice_estimate\u0018\u0004 \u0001(\u0001\u001a3\n\u0011ClientParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u00c5\u0002\n\u000fHeaderBiddingAd\u0012\u000e\n\u0006bidder\u0018\u0001 \u0001(\t\u0012[\n\rclient_params\u0018\u0002 \u0003(\u000b2D.bidmachine.protobuf.headerbidding.HeaderBiddingAd.ClientParamsEntry\u0012[\n\rserver_params\u0018\u0003 \u0003(\u000b2D.bidmachine.protobuf.headerbidding.HeaderBiddingAd.ServerParamsEntry\u001a3\n\u0011ClientParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a3\n\u0011ServerParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001BB\n$io.bidmachine.protobuf.headerbiddingB\u0012HeaderBiddingProtoP\u0001\u00a2\u0002\u0003BDMb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 29
    .line 30
    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 33
    .line 34
    const-string v3, "AdUnits"

    .line 35
    .line 36
    filled-new-array {v3}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 54
    .line 55
    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 56
    .line 57
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 58
    .line 59
    const-string v3, "PriceEstimate"

    .line 60
    .line 61
    const-string v4, "Bidder"

    .line 62
    .line 63
    const-string v5, "BidderSdkver"

    .line 64
    .line 65
    const-string v6, "ClientParams"

    .line 66
    .line 67
    filled-new-array {v4, v5, v6, v3}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 85
    .line 86
    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_ClientParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 87
    .line 88
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 89
    .line 90
    const-string v3, "Key"

    .line 91
    .line 92
    const-string v5, "Value"

    .line 93
    .line 94
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-direct {v2, v0, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_ClientParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 102
    .line 103
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/4 v2, 0x1

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 117
    .line 118
    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 119
    .line 120
    new-instance v7, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 121
    .line 122
    const-string v8, "ServerParams"

    .line 123
    .line 124
    filled-new-array {v4, v6, v8}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-direct {v7, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v7, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 142
    .line 143
    sput-object v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 144
    .line 145
    new-instance v4, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 146
    .line 147
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-direct {v4, v1, v6}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sput-object v4, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 165
    .line 166
    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 167
    .line 168
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 169
    .line 170
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sput-object v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 178
    .line 179
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
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
