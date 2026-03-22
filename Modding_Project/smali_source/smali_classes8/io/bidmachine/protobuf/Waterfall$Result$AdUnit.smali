.class public final Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Waterfall.java"

# interfaces
.implements Lio/bidmachine/protobuf/Waterfall$Result$AdUnitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Waterfall$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdUnit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;,
        Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;,
        Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$ErrorOrBuilder;,
        Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;
    }
.end annotation


# static fields
.field public static final AD_RESPONSE_FIELD_NUMBER:I = 0x4

.field public static final AD_UNIT_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

.field public static final ERROR_FIELD_NUMBER:I = 0x6

.field public static final ESTIMATED_PRICE_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICE_FIELD_NUMBER:I = 0x2

.field public static final SERVER_PARAMS_FIELD_NUMBER:I = 0x7

.field public static final STATUS_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private adResponse_:Lcom/explorestack/protobuf/StringValue;

.field private volatile adUnitId_:Ljava/lang/Object;

.field private error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

.field private estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

.field private memoizedIsInitialized:B

.field private price_:D

.field private serverParams_:Lcom/explorestack/protobuf/StringValue;

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/Waterfall$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_c

    const/16 v4, 0x11

    if-eq v2, v4, :cond_b

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-eq v2, v4, :cond_9

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7

    const/16 v4, 0x28

    if-eq v2, v4, :cond_6

    const/16 v4, 0x32

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_2

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 14
    :cond_2
    iget-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 16
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 18
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_0

    .line 19
    :cond_4
    iget-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->toBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v5

    .line 21
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    if-eqz v5, :cond_0

    .line 22
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    .line 23
    invoke-virtual {v5}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->buildPartial()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v2

    .line 25
    iput v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    goto :goto_0

    .line 26
    :cond_7
    iget-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 30
    invoke-virtual {v5}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_0

    .line 31
    :cond_9
    iget-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    if-eqz v2, :cond_a

    .line 32
    invoke-virtual {v2}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;->toBuilder()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    move-result-object v5

    .line 33
    :cond_a
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 35
    invoke-virtual {v5}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->buildPartial()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    goto/16 :goto_0

    .line 36
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->s()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->price_:D

    goto/16 :goto_0

    .line 37
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 38
    iput-object v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 39
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 40
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 41
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 44
    throw p1

    .line 45
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 46
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/Waterfall$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$6100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$6300(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$6302(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6402(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->price_:D

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$6502(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6602(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6700(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$6702(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6802(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6902(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$7000(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$7100()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$7200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->toBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->toBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getPrice()D

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getPrice()D

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    cmp-long v1, v3, v5

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    return v2

    .line 53
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasEstimatedPrice()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasEstimatedPrice()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eq v1, v3, :cond_4

    .line 62
    .line 63
    return v2

    .line 64
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasEstimatedPrice()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getEstimatedPrice()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getEstimatedPrice()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    return v2

    .line 85
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasAdResponse()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasAdResponse()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eq v1, v3, :cond_6

    .line 94
    .line 95
    return v2

    .line 96
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasAdResponse()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdResponse()Lcom/explorestack/protobuf/StringValue;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdResponse()Lcom/explorestack/protobuf/StringValue;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_7

    .line 115
    .line 116
    return v2

    .line 117
    :cond_7
    iget v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 118
    .line 119
    iget v3, p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 120
    .line 121
    if-eq v1, v3, :cond_8

    .line 122
    .line 123
    return v2

    .line 124
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasError()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasError()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eq v1, v3, :cond_9

    .line 133
    .line 134
    return v2

    .line 135
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasError()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_a

    .line 140
    .line 141
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getError()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getError()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_a

    .line 154
    .line 155
    return v2

    .line 156
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasServerParams()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasServerParams()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eq v1, v3, :cond_b

    .line 165
    .line 166
    return v2

    .line 167
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasServerParams()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_c

    .line 172
    .line 173
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_c

    .line 186
    .line 187
    return v2

    .line 188
    :cond_c
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 191
    .line 192
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_d

    .line 197
    .line 198
    return v2

    .line 199
    :cond_d
    return v0
.end method

.method public getAdResponse()Lcom/explorestack/protobuf/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAdResponseOrBuilder()Lcom/explorestack/protobuf/w1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdResponse()Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAdUnitIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    return-object v0
.end method

.method public getError()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getDefaultInstance()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getErrorOrBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$ErrorOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getError()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getEstimatedPrice()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;->getDefaultInstance()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getEstimatedPriceOrBuilder()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPriceOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getEstimatedPrice()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->price_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdUnitIdBytes()Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iget-object v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-wide v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->price_:D

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    cmpl-double v3, v1, v3

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->j(ID)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getEstimatedPrice()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdResponse()Lcom/explorestack/protobuf/StringValue;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    :cond_4
    iget v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 69
    .line 70
    sget-object v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_INVALID:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 71
    .line 72
    invoke-virtual {v2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->getNumber()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eq v1, v2, :cond_5

    .line 77
    .line 78
    const/4 v1, 0x5

    .line 79
    iget v2, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/2addr v0, v1

    .line 86
    :cond_5
    iget-object v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    const/4 v1, 0x6

    .line 91
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getError()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr v0, v1

    .line 100
    :cond_6
    iget-object v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    .line 101
    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    const/4 v1, 0x7

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/2addr v0, v1

    .line 114
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 122
    .line 123
    return v0
.end method

.method public getServerParams()Lcom/explorestack/protobuf/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getServerParamsOrBuilder()Lcom/explorestack/protobuf/w1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getStatus()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->valueOf(I)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->UNRECOGNIZED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAdResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasEstimatedPrice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasServerParams()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x35

    .line 37
    .line 38
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getPrice()D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v1, v0

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasEstimatedPrice()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x25

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x3

    .line 60
    .line 61
    mul-int/lit8 v1, v1, 0x35

    .line 62
    .line 63
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getEstimatedPrice()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v1, v0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasAdResponse()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    mul-int/lit8 v1, v1, 0x25

    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x4

    .line 81
    .line 82
    mul-int/lit8 v1, v1, 0x35

    .line 83
    .line 84
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdResponse()Lcom/explorestack/protobuf/StringValue;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v1, v0

    .line 93
    :cond_2
    mul-int/lit8 v1, v1, 0x25

    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x5

    .line 96
    .line 97
    mul-int/lit8 v1, v1, 0x35

    .line 98
    .line 99
    iget v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 100
    .line 101
    add-int/2addr v1, v0

    .line 102
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasError()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    mul-int/lit8 v1, v1, 0x25

    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x6

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x35

    .line 113
    .line 114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getError()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v1, v0

    .line 123
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->hasServerParams()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    mul-int/lit8 v1, v1, 0x25

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x7

    .line 132
    .line 133
    mul-int/lit8 v1, v1, 0x35

    .line 134
    .line 135
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    add-int/2addr v1, v0

    .line 144
    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 145
    .line 146
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    add-int/2addr v1, v0

    .line 153
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 154
    .line 155
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->newBuilderForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->newBuilderForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/Waterfall$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->toBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->toBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;-><init>(Lio/bidmachine/protobuf/Waterfall$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;-><init>(Lio/bidmachine/protobuf/Waterfall$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdUnitIdBytes()Lcom/explorestack/protobuf/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adUnitId_:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-wide v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->price_:D

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmpl-double v2, v0, v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->t0(ID)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->estimatedPrice_:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getEstimatedPrice()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->adResponse_:Lcom/explorestack/protobuf/StringValue;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getAdResponse()Lcom/explorestack/protobuf/StringValue;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 54
    .line 55
    sget-object v1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_INVALID:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 56
    .line 57
    invoke-virtual {v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->getNumber()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eq v0, v1, :cond_4

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    iget v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->status_:I

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->error_:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getError()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->serverParams_:Lcom/explorestack/protobuf/StringValue;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/4 v0, 0x7

    .line 86
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
