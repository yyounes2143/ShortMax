.class public final Lcom/explorestack/protobuf/adcom/Ad$Event;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;,
        Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final API_FIELD_NUMBER:I = 0x3

.field public static final CDATA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Event;

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x4

.field private static final api_converter_:Lcom/explorestack/protobuf/i0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private apiMemoizedSerializedSize:I

.field private api_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cdata_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private memoizedIsInitialized:B

.field private method_:I

.field private type_:I

.field private volatile url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Event$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 14
    .line 15
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Event$2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event$2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0x8

    if-eq v3, v5, :cond_f

    const/16 v5, 0x10

    if-eq v3, v5, :cond_e

    const/16 v5, 0x18

    if-eq v3, v5, :cond_c

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_9

    const/16 v5, 0x22

    if-eq v3, v5, :cond_8

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x32

    if-eq v3, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_2

    .line 16
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 19
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 21
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 23
    :cond_5
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 24
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 25
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_7

    .line 26
    sget-object v3, Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    invoke-static {v3}, Lcom/explorestack/protobuf/MapField;->p(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->cdata_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x2

    .line 27
    :cond_7
    sget-object v3, Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 28
    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0;->getParserForType()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    .line 29
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/s0;

    .line 30
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->cdata_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    move-result-object v4

    .line 31
    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0;->h()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0;->j()Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 33
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 34
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 35
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 36
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 37
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_b

    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_a

    .line 39
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 40
    :cond_a
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_b
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 42
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_d

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 44
    :cond_d
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 45
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 46
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    goto/16 :goto_0

    .line 47
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 48
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 49
    :goto_3
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 50
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 51
    :goto_4
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_10

    .line 52
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    :cond_10
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_11

    .line 53
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 54
    :cond_11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 55
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 56
    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_13

    .line 57
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_14

    .line 58
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 59
    :cond_14
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 60
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/explorestack/protobuf/adcom/Ad$Event;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1500()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1600(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/adcom/Ad$Event;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/adcom/Ad$Event;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/adcom/Ad$Event;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/adcom/Ad$Event;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/adcom/Ad$Event;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/adcom/Ad$Event;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->cdata_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/adcom/Ad$Event;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->cdata_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/adcom/Ad$Event;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->c0:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private internalGetCdata()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->cdata_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->g(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Event;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Event;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public containsCdata(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

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
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 15
    .line 16
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 17
    .line 18
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 25
    .line 26
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    return v3

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 32
    .line 33
    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v3

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v3

    .line 57
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    return v3

    .line 72
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->hasExt()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->hasExt()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eq v1, v2, :cond_7

    .line 81
    .line 82
    return v3

    .line 83
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->hasExt()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_8

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_8

    .line 102
    .line 103
    return v3

    .line 104
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExtProtoList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExtProtoList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_9

    .line 117
    .line 118
    return v3

    .line 119
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_a

    .line 128
    .line 129
    return v3

    .line 130
    :cond_a
    return v0
.end method

.method public getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/i0$h$a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 14
    .line 15
    return-object p1
.end method

.method public getApiCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

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

.method public getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/i0$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/i0$h;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/i0$h$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getApiValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getApiValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCdata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getCdataMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCdataCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getCdataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCdataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object p2, p1

    .line 23
    check-cast p2, Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    return-object p2
.end method

.method public getCdataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/Any;

    .line 8
    .line 9
    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

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

.method public getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/e;

    .line 8
    .line 9
    return-object p1
.end method

.method public getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMethod()Lcom/explorestack/protobuf/adcom/EventTrackingMethod;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->valueOf(I)Lcom/explorestack/protobuf/adcom/EventTrackingMethod;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/EventTrackingMethod;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getMethodValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

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
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 8
    .line 9
    sget-object v1, Lcom/explorestack/protobuf/adcom/EventType;->EVENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/EventType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/EventType;->getNumber()I

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 28
    .line 29
    sget-object v3, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->EVENT_TRACKING_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/EventTrackingMethod;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->getNumber()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 39
    .line 40
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    :cond_2
    move v1, v2

    .line 46
    move v3, v1

    .line 47
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ge v1, v4, :cond_3

    .line 54
    .line 55
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    add-int/2addr v3, v4

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    add-int/2addr v0, v3

    .line 76
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getApiList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    :cond_4
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->apiMemoizedSerializedSize:I

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    const/4 v1, 0x4

    .line 106
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    add-int/2addr v0, v1

    .line 113
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_6

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Ljava/util/Map$Entry;

    .line 140
    .line 141
    sget-object v4, Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/explorestack/protobuf/s0;->n()Lcom/explorestack/protobuf/s0$b;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/s0$b;->o(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/s0$b;->r(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0$b;->b()Lcom/explorestack/protobuf/s0;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const/4 v4, 0x5

    .line 168
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    add-int/2addr v0, v3

    .line 173
    goto :goto_2

    .line 174
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-ge v2, v1, :cond_7

    .line 181
    .line 182
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 189
    .line 190
    const/4 v3, 0x6

    .line 191
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    add-int/2addr v0, v1

    .line 196
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 200
    .line 201
    if-eqz v1, :cond_8

    .line 202
    .line 203
    const/4 v1, 0x7

    .line 204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    add-int/2addr v0, v1

    .line 213
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    add-int/2addr v0, v1

    .line 220
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 221
    .line 222
    return v0
.end method

.method public getType()Lcom/explorestack/protobuf/adcom/EventType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/EventType;->valueOf(I)Lcom/explorestack/protobuf/adcom/EventType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/EventType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/EventType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

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

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

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

.method public hasExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 33
    .line 34
    add-int/2addr v1, v0

    .line 35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getApiCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    mul-int/lit8 v1, v1, 0x25

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    mul-int/lit8 v1, v1, 0x35

    .line 46
    .line 47
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/2addr v1, v0

    .line 54
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x4

    .line 57
    .line 58
    mul-int/lit8 v1, v1, 0x35

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    mul-int/lit8 v1, v1, 0x25

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x5

    .line 86
    .line 87
    mul-int/lit8 v1, v1, 0x35

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v1, v0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->hasExt()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    mul-int/lit8 v1, v1, 0x25

    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x7

    .line 107
    .line 108
    mul-int/lit8 v1, v1, 0x35

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    add-int/2addr v1, v0

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExtProtoCount()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-lez v0, :cond_4

    .line 124
    .line 125
    mul-int/lit8 v1, v1, 0x25

    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x6

    .line 128
    .line 129
    mul-int/lit8 v1, v1, 0x35

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExtProtoList()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 141
    .line 142
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    add-int/2addr v1, v0

    .line 149
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 150
    .line 151
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->d0:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

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

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Invalid map field number: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Event;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 5
    .line 6
    sget-object v1, Lcom/explorestack/protobuf/adcom/EventType;->EVENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/EventType;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/EventType;->getNumber()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->type_:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 21
    .line 22
    sget-object v1, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->EVENT_TRACKING_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/EventTrackingMethod;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->getNumber()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->method_:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getApiList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x1a

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->apiMemoizedSerializedSize:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    const/4 v0, 0x0

    .line 57
    move v1, v0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ge v1, v2, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->api_:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    const/4 v1, 0x4

    .line 95
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->url_:Ljava/lang/Object;

    .line 96
    .line 97
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 105
    .line 106
    const/4 v3, 0x5

    .line 107
    invoke-static {p1, v1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/s0;I)V

    .line 108
    .line 109
    .line 110
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-ge v0, v1, :cond_5

    .line 117
    .line 118
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->extProto_:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 125
    .line 126
    const/4 v2, 0x6

    .line 127
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    const/4 v0, 0x7

    .line 138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method
