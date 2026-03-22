.class final Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;
.super Ljava/lang/Object;
.source "InitResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdCachePlacementControlDefaultEntryHolder"
.end annotation


# static fields
.field static final defaultEntry:Lcom/explorestack/protobuf/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/s0<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_AdCachePlacementControlEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 6
    .line 7
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, ""

    .line 12
    .line 13
    invoke-static {v0, v1, v4, v2, v3}, Lcom/explorestack/protobuf/s0;->q(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/s0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 18
    .line 19
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
