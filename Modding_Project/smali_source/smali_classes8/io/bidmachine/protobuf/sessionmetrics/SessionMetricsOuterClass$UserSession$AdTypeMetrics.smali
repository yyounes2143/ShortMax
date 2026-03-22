.class public final Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SessionMetricsOuterClass.java"

# interfaces
.implements Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetricsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdTypeMetrics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;
    }
.end annotation


# static fields
.field public static final AD_REQUESTS_FIELD_NUMBER:I = 0x3

.field public static final AD_TYPE_FIELD_NUMBER:I = 0x1

.field public static final AUCTIONS_FIELD_NUMBER:I = 0xd

.field public static final BIDS_FIELD_NUMBER:I = 0x4

.field public static final CUMULATIVE_BID_PRICE_FIELD_NUMBER:I = 0x9

.field public static final CUMULATIVE_LURL_PRICE_FIELD_NUMBER:I = 0xa

.field public static final CUMULATIVE_NURL_PRICE_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

.field public static final ECPM_FIELD_NUMBER:I = 0xc

.field public static final IMPRESSIONS_FIELD_NUMBER:I = 0x2

.field public static final LOSSES_FIELD_NUMBER:I = 0x6

.field public static final LURLS_FIELD_NUMBER:I = 0x7

.field public static final NURLS_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINS_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private adRequests_:I

.field private adType_:I

.field private auctions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Auction;",
            ">;"
        }
    .end annotation
.end field

.field private bids_:I

.field private cumulativeBidPrice_:F

.field private cumulativeLurlPrice_:F

.field private cumulativeNurlPrice_:F

.field private ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

.field private impressions_:I

.field private losses_:I

.field private lurls_:I

.field private memoizedIsInitialized:B

.field private nurls_:I

.field private wins_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    if-nez v2, :cond_1

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    move v2, v4

    .line 15
    :cond_1
    iget-object v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Auction;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :sswitch_2
    iget-object v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;->toBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 20
    :goto_1
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    iput-object v4, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm$Builder;->mergeFrom(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm$Builder;

    .line 22
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm$Builder;->buildPartial()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    goto :goto_0

    .line 23
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeNurlPrice_:F

    goto :goto_0

    .line 24
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeLurlPrice_:F

    goto :goto_0

    .line 25
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeBidPrice_:F

    goto :goto_0

    .line 26
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->nurls_:I

    goto :goto_0

    .line 27
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->lurls_:I

    goto :goto_0

    .line 28
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->losses_:I

    goto :goto_0

    .line 29
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->wins_:I

    goto/16 :goto_0

    .line 30
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->bids_:I

    goto/16 :goto_0

    .line 31
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adRequests_:I

    goto/16 :goto_0

    .line 32
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->impressions_:I

    goto/16 :goto_0

    .line 33
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 34
    iput v3, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 35
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 37
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v2, :cond_3

    .line 38
    iget-object p2, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 39
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 40
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 41
    throw p1

    :cond_4
    if-eqz v2, :cond_5

    .line 42
    iget-object p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 43
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 44
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x28 -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x4d -> :sswitch_5
        0x55 -> :sswitch_4
        0x5d -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$5800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$6000(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$6002(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6102(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->impressions_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6202(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adRequests_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6302(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->bids_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6402(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->wins_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6502(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->losses_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6602(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->lurls_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6702(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->nurls_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6802(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeBidPrice_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6902(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeLurlPrice_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7002(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeNurlPrice_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7102(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$7200(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$7202(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$7300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$7400(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$7500()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->access$5400()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->toBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->toBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;->mergeFrom(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

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
    check-cast p1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    .line 15
    .line 16
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 17
    .line 18
    iget v2, p1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getImpressions()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getImpressions()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    return v3

    .line 35
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getAdRequests()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getAdRequests()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eq v1, v2, :cond_4

    .line 44
    .line 45
    return v3

    .line 46
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getBids()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getBids()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eq v1, v2, :cond_5

    .line 55
    .line 56
    return v3

    .line 57
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getWins()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getWins()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eq v1, v2, :cond_6

    .line 66
    .line 67
    return v3

    .line 68
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getLosses()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getLosses()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eq v1, v2, :cond_7

    .line 77
    .line 78
    return v3

    .line 79
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getLurls()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getLurls()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eq v1, v2, :cond_8

    .line 88
    .line 89
    return v3

    .line 90
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getNurls()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getNurls()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eq v1, v2, :cond_9

    .line 99
    .line 100
    return v3

    .line 101
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeBidPrice()F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeBidPrice()F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eq v1, v2, :cond_a

    .line 118
    .line 119
    return v3

    .line 120
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeLurlPrice()F

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeLurlPrice()F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eq v1, v2, :cond_b

    .line 137
    .line 138
    return v3

    .line 139
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeNurlPrice()F

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeNurlPrice()F

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eq v1, v2, :cond_c

    .line 156
    .line 157
    return v3

    .line 158
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->hasEcpm()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->hasEcpm()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eq v1, v2, :cond_d

    .line 167
    .line 168
    return v3

    .line 169
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->hasEcpm()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_e

    .line 174
    .line 175
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_e

    .line 188
    .line 189
    return v3

    .line 190
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getAuctionsList()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getAuctionsList()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_f

    .line 203
    .line 204
    return v3

    .line 205
    :cond_f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 208
    .line 209
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_10

    .line 214
    .line 215
    return v3

    .line 216
    :cond_10
    return v0
.end method

.method public getAdRequests()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adRequests_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;->valueOf(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;->UNRECOGNIZED:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getAdTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAuctions(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Auction;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Auction;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAuctionsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

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

.method public getAuctionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Auction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuctionsOrBuilder(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AuctionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AuctionOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAuctionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AuctionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBids()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->bids_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCumulativeBidPrice()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeBidPrice_:F

    .line 2
    .line 3
    return v0
.end method

.method public getCumulativeLurlPrice()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeLurlPrice_:F

    .line 2
    .line 3
    return v0
.end method

.method public getCumulativeNurlPrice()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeNurlPrice_:F

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    return-object v0
.end method

.method public getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;->getDefaultInstance()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getEcpmOrBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$EcpmOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getImpressions()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->impressions_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLosses()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->losses_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLurls()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->lurls_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNurls()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->nurls_:I

    .line 2
    .line 3
    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
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
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 8
    .line 9
    sget-object v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;->UNKNOWN:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v2

    .line 27
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->impressions_:I

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    :cond_2
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adRequests_:I

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    :cond_3
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->bids_:I

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    :cond_4
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->wins_:I

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v0, v1

    .line 67
    :cond_5
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->losses_:I

    .line 68
    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    const/4 v3, 0x6

    .line 72
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_6
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->lurls_:I

    .line 78
    .line 79
    if-eqz v1, :cond_7

    .line 80
    .line 81
    const/4 v3, 0x7

    .line 82
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/2addr v0, v1

    .line 87
    :cond_7
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->nurls_:I

    .line 88
    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    const/16 v3, 0x8

    .line 92
    .line 93
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_8
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeBidPrice_:F

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    cmpl-float v4, v1, v3

    .line 102
    .line 103
    if-eqz v4, :cond_9

    .line 104
    .line 105
    const/16 v4, 0x9

    .line 106
    .line 107
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    :cond_9
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeLurlPrice_:F

    .line 113
    .line 114
    cmpl-float v4, v1, v3

    .line 115
    .line 116
    if-eqz v4, :cond_a

    .line 117
    .line 118
    const/16 v4, 0xa

    .line 119
    .line 120
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    add-int/2addr v0, v1

    .line 125
    :cond_a
    iget v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeNurlPrice_:F

    .line 126
    .line 127
    cmpl-float v3, v1, v3

    .line 128
    .line 129
    if-eqz v3, :cond_b

    .line 130
    .line 131
    const/16 v3, 0xb

    .line 132
    .line 133
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr v0, v1

    .line 138
    :cond_b
    iget-object v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 139
    .line 140
    if-eqz v1, :cond_c

    .line 141
    .line 142
    const/16 v1, 0xc

    .line 143
    .line 144
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-int/2addr v0, v1

    .line 153
    :cond_c
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-ge v2, v1, :cond_d

    .line 160
    .line 161
    iget-object v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 168
    .line 169
    const/16 v3, 0xd

    .line 170
    .line 171
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    add-int/2addr v0, v1

    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    add-int/2addr v0, v1

    .line 186
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 187
    .line 188
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

.method public getWins()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->wins_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasEcpm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

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
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    mul-int/lit8 v1, v1, 0x25

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x35

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getImpressions()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v1, v0

    .line 37
    mul-int/lit8 v1, v1, 0x25

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x3

    .line 40
    .line 41
    mul-int/lit8 v1, v1, 0x35

    .line 42
    .line 43
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getAdRequests()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v1, v0

    .line 48
    mul-int/lit8 v1, v1, 0x25

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x4

    .line 51
    .line 52
    mul-int/lit8 v1, v1, 0x35

    .line 53
    .line 54
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getBids()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    mul-int/lit8 v1, v1, 0x25

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x5

    .line 62
    .line 63
    mul-int/lit8 v1, v1, 0x35

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getWins()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    mul-int/lit8 v1, v1, 0x25

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x6

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x35

    .line 75
    .line 76
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getLosses()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr v1, v0

    .line 81
    mul-int/lit8 v1, v1, 0x25

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x7

    .line 84
    .line 85
    mul-int/lit8 v1, v1, 0x35

    .line 86
    .line 87
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getLurls()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v1, v0

    .line 92
    mul-int/lit8 v1, v1, 0x25

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x8

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x35

    .line 97
    .line 98
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getNurls()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    mul-int/lit8 v1, v1, 0x25

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x9

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x35

    .line 108
    .line 109
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeBidPrice()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    add-int/2addr v1, v0

    .line 118
    mul-int/lit8 v1, v1, 0x25

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0xa

    .line 121
    .line 122
    mul-int/lit8 v1, v1, 0x35

    .line 123
    .line 124
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeLurlPrice()F

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    add-int/2addr v1, v0

    .line 133
    mul-int/lit8 v1, v1, 0x25

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0xb

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x35

    .line 138
    .line 139
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getCumulativeNurlPrice()F

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    add-int/2addr v1, v0

    .line 148
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->hasEcpm()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    mul-int/lit8 v1, v1, 0x25

    .line 155
    .line 156
    add-int/lit8 v1, v1, 0xc

    .line 157
    .line 158
    mul-int/lit8 v1, v1, 0x35

    .line 159
    .line 160
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    add-int/2addr v1, v0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getAuctionsCount()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-lez v0, :cond_2

    .line 174
    .line 175
    mul-int/lit8 v1, v1, 0x25

    .line 176
    .line 177
    add-int/lit8 v1, v1, 0xd

    .line 178
    .line 179
    mul-int/lit8 v1, v1, 0x35

    .line 180
    .line 181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getAuctionsList()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    add-int/2addr v1, v0

    .line 190
    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 191
    .line 192
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    add-int/2addr v1, v0

    .line 199
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 200
    .line 201
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->access$5500()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    .line 6
    .line 7
    const-class v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->newBuilderForType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->newBuilderForType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->newBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->toBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->toBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;-><init>(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;-><init>(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;->mergeFrom(Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder;

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
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;->UNKNOWN:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;->getNumber()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adType_:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->impressions_:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->adRequests_:I

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->bids_:I

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->wins_:I

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 47
    .line 48
    .line 49
    :cond_4
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->losses_:I

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 55
    .line 56
    .line 57
    :cond_5
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->lurls_:I

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    const/4 v1, 0x7

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 63
    .line 64
    .line 65
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->nurls_:I

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 72
    .line 73
    .line 74
    :cond_7
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeBidPrice_:F

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    cmpl-float v2, v0, v1

    .line 78
    .line 79
    if-eqz v2, :cond_8

    .line 80
    .line 81
    const/16 v2, 0x9

    .line 82
    .line 83
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 84
    .line 85
    .line 86
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeLurlPrice_:F

    .line 87
    .line 88
    cmpl-float v2, v0, v1

    .line 89
    .line 90
    if-eqz v2, :cond_9

    .line 91
    .line 92
    const/16 v2, 0xa

    .line 93
    .line 94
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 95
    .line 96
    .line 97
    :cond_9
    iget v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->cumulativeNurlPrice_:F

    .line 98
    .line 99
    cmpl-float v1, v0, v1

    .line 100
    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    const/16 v1, 0xb

    .line 104
    .line 105
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 106
    .line 107
    .line 108
    :cond_a
    iget-object v0, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->ecpm_:Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 109
    .line 110
    if-eqz v0, :cond_b

    .line 111
    .line 112
    const/16 v0, 0xc

    .line 113
    .line 114
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 119
    .line 120
    .line 121
    :cond_b
    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ge v0, v1, :cond_c

    .line 129
    .line 130
    iget-object v1, p0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetrics;->auctions_:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 137
    .line 138
    const/16 v2, 0xd

    .line 139
    .line 140
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
