.class public final Lio/bidmachine/protobuf/SdkAnalyticContext;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SdkAnalyticContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    }
.end annotation


# static fields
.field public static final APP_VER_FIELD_NUMBER:I = 0xd

.field public static final BM_IFV_FIELD_NUMBER:I = 0xc

.field public static final BUNDLE_FIELD_NUMBER:I = 0x2

.field public static final CONTYPE_FIELD_NUMBER:I = 0xa

.field public static final DCID_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x9

.field public static final EXPERIMENTS_FIELD_NUMBER:I = 0x11

.field public static final EXT_FIELD_NUMBER:I = 0x10

.field public static final GEO_FIELD_NUMBER:I = 0x5

.field public static final HWV_FIELD_NUMBER:I = 0x14

.field public static final IFA_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0xb

.field public static final MAKE_FIELD_NUMBER:I = 0x12

.field public static final MODEL_FIELD_NUMBER:I = 0x13

.field public static final OSV_FIELD_NUMBER:I = 0x4

.field public static final OS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVER_FIELD_NUMBER:I = 0x7

.field public static final SDK_FIELD_NUMBER:I = 0x6

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xe

.field public static final SOURCE_ID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile appVer_:Ljava/lang/Object;

.field private volatile bmIfv_:Ljava/lang/Object;

.field private volatile bundle_:Ljava/lang/Object;

.field private contype_:I

.field private volatile dcid_:Ljava/lang/Object;

.field private deviceType_:I

.field private experiments_:Lcom/explorestack/protobuf/n0;

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private volatile hwv_:Ljava/lang/Object;

.field private volatile ifa_:Ljava/lang/Object;

.field private volatile ifv_:Ljava/lang/Object;

.field private volatile make_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private os_:I

.field private volatile osv_:Ljava/lang/Object;

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;

.field private volatile sourceId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 10
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 16
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 17
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 18
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 29
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v5

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

    .line 30
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 31
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 33
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 35
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    .line 37
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    move v2, v5

    .line 38
    :cond_1
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :sswitch_5
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 41
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 43
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 44
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 45
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 47
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 48
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 49
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    goto :goto_0

    .line 50
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 51
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 52
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 53
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 54
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 55
    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    goto/16 :goto_0

    .line 56
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 57
    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    goto/16 :goto_0

    .line 58
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 59
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 60
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 61
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 62
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 63
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :sswitch_10
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v3, :cond_3

    .line 65
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v4

    .line 66
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 68
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto/16 :goto_0

    .line 69
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 70
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 71
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 72
    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    goto/16 :goto_0

    .line 73
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 74
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 75
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 76
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 77
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 78
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 79
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_4

    .line 80
    iget-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 81
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 82
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 83
    throw p1

    :cond_5
    if-eqz v2, :cond_6

    .line 84
    iget-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 85
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 86
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_14
        0x12 -> :sswitch_13
        0x18 -> :sswitch_12
        0x22 -> :sswitch_11
        0x2a -> :sswitch_10
        0x32 -> :sswitch_f
        0x3a -> :sswitch_e
        0x42 -> :sswitch_d
        0x48 -> :sswitch_c
        0x50 -> :sswitch_b
        0x5a -> :sswitch_a
        0x62 -> :sswitch_9
        0x6a -> :sswitch_8
        0x72 -> :sswitch_7
        0x7a -> :sswitch_6
        0x82 -> :sswitch_5
        0x8a -> :sswitch_4
        0x92 -> :sswitch_3
        0x9a -> :sswitch_2
        0xa2 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$1000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1400(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1402(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1500(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1502(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1602(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1800(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1802(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2002(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2500()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$2700(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$2800(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3000(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3100(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3200(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3300(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3400(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3500(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3600(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3700(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3800(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$3900(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4000(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$402(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

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
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 48
    .line 49
    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 50
    .line 51
    if-eq v1, v3, :cond_4

    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_5

    .line 67
    .line 68
    return v2

    .line 69
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eq v1, v3, :cond_6

    .line 78
    .line 79
    return v2

    .line 80
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_7

    .line 99
    .line 100
    return v2

    .line 101
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_8

    .line 114
    .line 115
    return v2

    .line 116
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_9

    .line 129
    .line 130
    return v2

    .line 131
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_a

    .line 144
    .line 145
    return v2

    .line 146
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_b

    .line 159
    .line 160
    return v2

    .line 161
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_c

    .line 174
    .line 175
    return v2

    .line 176
    :cond_c
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 177
    .line 178
    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 179
    .line 180
    if-eq v1, v3, :cond_d

    .line 181
    .line 182
    return v2

    .line 183
    :cond_d
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 184
    .line 185
    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 186
    .line 187
    if-eq v1, v3, :cond_e

    .line 188
    .line 189
    return v2

    .line 190
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_f

    .line 203
    .line 204
    return v2

    .line 205
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_10

    .line 218
    .line 219
    return v2

    .line 220
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_11

    .line 233
    .line 234
    return v2

    .line 235
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eq v1, v3, :cond_12

    .line 244
    .line 245
    return v2

    .line 246
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_13

    .line 251
    .line 252
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-nez v1, :cond_13

    .line 265
    .line 266
    return v2

    .line 267
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/m1;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/m1;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_14

    .line 280
    .line 281
    return v2

    .line 282
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_15

    .line 295
    .line 296
    return v2

    .line 297
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_16

    .line 310
    .line 311
    return v2

    .line 312
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_17

    .line 325
    .line 326
    return v2

    .line 327
    :cond_17
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 328
    .line 329
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 330
    .line 331
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-nez p1, :cond_18

    .line 336
    .line 337
    return v2

    .line 338
    :cond_18
    return v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

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

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

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

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

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

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getContypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 2
    .line 3
    return v0
.end method

.method public getDcid()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDcidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getExperiments(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getExperimentsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getExperimentsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExperimentsList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getExperimentsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/x1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getHwv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

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

.method public getIfa()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

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

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

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

.method public getMake()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

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

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

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

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getOsValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 2
    .line 3
    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

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

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

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

.method public getSdkver()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;

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
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/2addr v0, v2

    .line 45
    :cond_2
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 46
    .line 47
    sget-object v4, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eq v2, v4, :cond_3

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    iget v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 57
    .line 58
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/2addr v0, v2

    .line 63
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    add-int/2addr v0, v2

    .line 81
    :cond_4
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    const/4 v2, 0x5

    .line 86
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    add-int/2addr v0, v2

    .line 95
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    const/4 v2, 0x6

    .line 106
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    add-int/2addr v0, v2

    .line 113
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_7

    .line 122
    .line 123
    const/4 v2, 0x7

    .line 124
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    add-int/2addr v0, v2

    .line 131
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_8

    .line 140
    .line 141
    const/16 v2, 0x8

    .line 142
    .line 143
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    add-int/2addr v0, v2

    .line 150
    :cond_8
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 151
    .line 152
    sget-object v4, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eq v2, v4, :cond_9

    .line 159
    .line 160
    const/16 v2, 0x9

    .line 161
    .line 162
    iget v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 163
    .line 164
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    add-int/2addr v0, v2

    .line 169
    :cond_9
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 170
    .line 171
    sget-object v4, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eq v2, v4, :cond_a

    .line 178
    .line 179
    const/16 v2, 0xa

    .line 180
    .line 181
    iget v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 182
    .line 183
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    add-int/2addr v0, v2

    .line 188
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_b

    .line 197
    .line 198
    const/16 v2, 0xb

    .line 199
    .line 200
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 201
    .line 202
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    add-int/2addr v0, v2

    .line 207
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-nez v2, :cond_c

    .line 216
    .line 217
    const/16 v2, 0xc

    .line 218
    .line 219
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 220
    .line 221
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    add-int/2addr v0, v2

    .line 226
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-nez v2, :cond_d

    .line 235
    .line 236
    const/16 v2, 0xd

    .line 237
    .line 238
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 239
    .line 240
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    add-int/2addr v0, v2

    .line 245
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-nez v2, :cond_e

    .line 254
    .line 255
    const/16 v2, 0xe

    .line 256
    .line 257
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 258
    .line 259
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    add-int/2addr v0, v2

    .line 264
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcidBytes()Lcom/explorestack/protobuf/ByteString;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-nez v2, :cond_f

    .line 273
    .line 274
    const/16 v2, 0xf

    .line 275
    .line 276
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 277
    .line 278
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    add-int/2addr v0, v2

    .line 283
    :cond_f
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 284
    .line 285
    if-eqz v2, :cond_10

    .line 286
    .line 287
    const/16 v2, 0x10

    .line 288
    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    add-int/2addr v0, v2

    .line 298
    :cond_10
    move v2, v1

    .line 299
    :goto_1
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 300
    .line 301
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-ge v1, v4, :cond_11

    .line 306
    .line 307
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 308
    .line 309
    invoke-interface {v4, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    add-int/2addr v2, v4

    .line 318
    add-int/lit8 v1, v1, 0x1

    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_11
    add-int/2addr v0, v2

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/m1;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    mul-int/2addr v1, v3

    .line 331
    add-int/2addr v0, v1

    .line 332
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_12

    .line 341
    .line 342
    const/16 v1, 0x12

    .line 343
    .line 344
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 345
    .line 346
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    add-int/2addr v0, v1

    .line 351
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-nez v1, :cond_13

    .line 360
    .line 361
    const/16 v1, 0x13

    .line 362
    .line 363
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 364
    .line 365
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    add-int/2addr v0, v1

    .line 370
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-nez v1, :cond_14

    .line 379
    .line 380
    const/16 v1, 0x14

    .line 381
    .line 382
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    .line 383
    .line 384
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    add-int/2addr v0, v1

    .line 389
    :cond_14
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 390
    .line 391
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    add-int/2addr v0, v1

    .line 396
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 397
    .line 398
    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

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

.method public getSourceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

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

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasGeo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

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
    .locals 2

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
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    mul-int/lit8 v1, v1, 0x25

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x3

    .line 50
    .line 51
    mul-int/lit8 v1, v1, 0x35

    .line 52
    .line 53
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 54
    .line 55
    add-int/2addr v1, v0

    .line 56
    mul-int/lit8 v1, v1, 0x25

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x4

    .line 59
    .line 60
    mul-int/lit8 v1, v1, 0x35

    .line 61
    .line 62
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/2addr v1, v0

    .line 71
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x25

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x5

    .line 80
    .line 81
    mul-int/lit8 v1, v1, 0x35

    .line 82
    .line 83
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v1, v0

    .line 92
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x6

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x35

    .line 97
    .line 98
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    add-int/2addr v1, v0

    .line 107
    mul-int/lit8 v1, v1, 0x25

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x7

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v1, v0

    .line 122
    mul-int/lit8 v1, v1, 0x25

    .line 123
    .line 124
    add-int/lit8 v1, v1, 0x8

    .line 125
    .line 126
    mul-int/lit8 v1, v1, 0x35

    .line 127
    .line 128
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    add-int/2addr v1, v0

    .line 137
    mul-int/lit8 v1, v1, 0x25

    .line 138
    .line 139
    add-int/lit8 v1, v1, 0xb

    .line 140
    .line 141
    mul-int/lit8 v1, v1, 0x35

    .line 142
    .line 143
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v1, v0

    .line 152
    mul-int/lit8 v1, v1, 0x25

    .line 153
    .line 154
    add-int/lit8 v1, v1, 0xc

    .line 155
    .line 156
    mul-int/lit8 v1, v1, 0x35

    .line 157
    .line 158
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    add-int/2addr v1, v0

    .line 167
    mul-int/lit8 v1, v1, 0x25

    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x9

    .line 170
    .line 171
    mul-int/lit8 v1, v1, 0x35

    .line 172
    .line 173
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 174
    .line 175
    add-int/2addr v1, v0

    .line 176
    mul-int/lit8 v1, v1, 0x25

    .line 177
    .line 178
    add-int/lit8 v1, v1, 0xa

    .line 179
    .line 180
    mul-int/lit8 v1, v1, 0x35

    .line 181
    .line 182
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 183
    .line 184
    add-int/2addr v1, v0

    .line 185
    mul-int/lit8 v1, v1, 0x25

    .line 186
    .line 187
    add-int/lit8 v1, v1, 0xd

    .line 188
    .line 189
    mul-int/lit8 v1, v1, 0x35

    .line 190
    .line 191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    add-int/2addr v1, v0

    .line 200
    mul-int/lit8 v1, v1, 0x25

    .line 201
    .line 202
    add-int/lit8 v1, v1, 0xe

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x35

    .line 205
    .line 206
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    add-int/2addr v1, v0

    .line 215
    mul-int/lit8 v1, v1, 0x25

    .line 216
    .line 217
    add-int/lit8 v1, v1, 0xf

    .line 218
    .line 219
    mul-int/lit8 v1, v1, 0x35

    .line 220
    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    add-int/2addr v1, v0

    .line 230
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_2

    .line 235
    .line 236
    mul-int/lit8 v1, v1, 0x25

    .line 237
    .line 238
    add-int/lit8 v1, v1, 0x10

    .line 239
    .line 240
    mul-int/lit8 v1, v1, 0x35

    .line 241
    .line 242
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    add-int/2addr v1, v0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsCount()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-lez v0, :cond_3

    .line 256
    .line 257
    mul-int/lit8 v1, v1, 0x25

    .line 258
    .line 259
    add-int/lit8 v1, v1, 0x11

    .line 260
    .line 261
    mul-int/lit8 v1, v1, 0x35

    .line 262
    .line 263
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/m1;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    add-int/2addr v1, v0

    .line 272
    :cond_3
    mul-int/lit8 v1, v1, 0x25

    .line 273
    .line 274
    add-int/lit8 v1, v1, 0x12

    .line 275
    .line 276
    mul-int/lit8 v1, v1, 0x35

    .line 277
    .line 278
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    add-int/2addr v1, v0

    .line 287
    mul-int/lit8 v1, v1, 0x25

    .line 288
    .line 289
    add-int/lit8 v1, v1, 0x13

    .line 290
    .line 291
    mul-int/lit8 v1, v1, 0x35

    .line 292
    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    add-int/2addr v1, v0

    .line 302
    mul-int/lit8 v1, v1, 0x25

    .line 303
    .line 304
    add-int/lit8 v1, v1, 0x14

    .line 305
    .line 306
    mul-int/lit8 v1, v1, 0x35

    .line 307
    .line 308
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    add-int/2addr v1, v0

    .line 317
    mul-int/lit8 v1, v1, 0x1d

    .line 318
    .line 319
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    add-int/2addr v1, v0

    .line 326
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 327
    .line 328
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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
    iget-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;

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
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 34
    .line 35
    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    const/4 v0, 0x4

    .line 60
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_6

    .line 102
    .line 103
    const/4 v0, 0x7

    .line 104
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    const/16 v0, 0x8

    .line 120
    .line 121
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 127
    .line 128
    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eq v0, v1, :cond_8

    .line 135
    .line 136
    const/16 v0, 0x9

    .line 137
    .line 138
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 139
    .line 140
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 141
    .line 142
    .line 143
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 144
    .line 145
    sget-object v1, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eq v0, v1, :cond_9

    .line 152
    .line 153
    const/16 v0, 0xa

    .line 154
    .line 155
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 156
    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 158
    .line 159
    .line 160
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_a

    .line 169
    .line 170
    const/16 v0, 0xb

    .line 171
    .line 172
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_b

    .line 186
    .line 187
    const/16 v0, 0xc

    .line 188
    .line 189
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_c

    .line 203
    .line 204
    const/16 v0, 0xd

    .line 205
    .line 206
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 207
    .line 208
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_d

    .line 220
    .line 221
    const/16 v0, 0xe

    .line 222
    .line 223
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcidBytes()Lcom/explorestack/protobuf/ByteString;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_e

    .line 237
    .line 238
    const/16 v0, 0xf

    .line 239
    .line 240
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 241
    .line 242
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_e
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 246
    .line 247
    if-eqz v0, :cond_f

    .line 248
    .line 249
    const/16 v0, 0x10

    .line 250
    .line 251
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 256
    .line 257
    .line 258
    :cond_f
    const/4 v0, 0x0

    .line 259
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 260
    .line 261
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-ge v0, v1, :cond_10

    .line 266
    .line 267
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 268
    .line 269
    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const/16 v2, 0x11

    .line 274
    .line 275
    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    add-int/lit8 v0, v0, 0x1

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_11

    .line 290
    .line 291
    const/16 v0, 0x12

    .line 292
    .line 293
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 294
    .line 295
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_12

    .line 307
    .line 308
    const/16 v0, 0x13

    .line 309
    .line 310
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 311
    .line 312
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_13

    .line 324
    .line 325
    const/16 v0, 0x14

    .line 326
    .line 327
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    .line 328
    .line 329
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_13
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 333
    .line 334
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 335
    .line 336
    .line 337
    return-void
.end method
