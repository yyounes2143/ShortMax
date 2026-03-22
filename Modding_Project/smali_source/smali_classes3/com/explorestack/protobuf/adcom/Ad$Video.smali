.class public final Lcom/explorestack/protobuf/adcom/Ad$Video;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    }
.end annotation


# static fields
.field public static final ADM_FIELD_NUMBER:I = 0x4

.field public static final API_FIELD_NUMBER:I = 0x2

.field public static final CURL_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final MIME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x3

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

.field private static final type_converter_:Lcom/explorestack/protobuf/i0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile adm_:Ljava/lang/Object;

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

.field private volatile curl_:Ljava/lang/Object;

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

.field private mime_:Lcom/explorestack/protobuf/n0;

.field private typeMemoizedSerializedSize:I

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 14
    .line 15
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 21
    .line 22
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$3;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$3;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_18

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_12

    const/16 v5, 0x10

    if-eq v3, v5, :cond_10

    const/16 v5, 0x12

    if-eq v3, v5, :cond_d

    const/16 v5, 0x18

    if-eq v3, v5, :cond_b

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x22

    if-eq v3, v5, :cond_7

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x32

    if-eq v3, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_2

    .line 17
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    .line 18
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 20
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 22
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_5

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 24
    :cond_5
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 25
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 28
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 31
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 32
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 33
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_a

    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_9

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 36
    :cond_9
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_a
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 38
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_c

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 40
    :cond_c
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 42
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 43
    :goto_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_f

    .line 44
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_e

    .line 45
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 46
    :cond_e
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 47
    :cond_f
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 48
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_11

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 50
    :cond_11
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 51
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_13

    .line 52
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x1

    .line 53
    :cond_13
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 54
    :goto_4
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 55
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 56
    :goto_5
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_14

    .line 57
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    :cond_14
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_15

    .line 58
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_16

    .line 59
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_17

    .line 60
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 61
    :cond_17
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 62
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 63
    throw p1

    :cond_18
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_19

    .line 64
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    :cond_19
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1a

    .line 65
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1b

    .line 66
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1c

    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 68
    :cond_1c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 69
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$17700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$17900(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$17902(Lcom/explorestack/protobuf/adcom/Ad$Video;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18000(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18002(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18100(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18102(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18202(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18300(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18302(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18402(Lcom/explorestack/protobuf/adcom/Ad$Video;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18500(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18502(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18600()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$18700(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18800()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$18900(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$19000()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19100()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19200(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$19300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->A0:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 33
    .line 34
    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    return v2

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eq v1, v3, :cond_7

    .line 93
    .line 94
    return v2

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_8

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_a

    .line 140
    .line 141
    return v2

    .line 142
    :cond_a
    return v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAdmBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

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

.method public getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

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
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getCurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMime(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

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

.method public getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

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

.method public getMimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

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

.method public getMimeList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/j1;

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
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    .line 19
    .line 20
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/2addr v2, v3

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v2, v1

    .line 41
    move v1, v0

    .line 42
    move v3, v1

    .line 43
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v1, v4, :cond_2

    .line 50
    .line 51
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    add-int/2addr v3, v4

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    add-int/2addr v2, v3

    .line 72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getApiList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v2, v1

    .line 89
    :cond_3
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->apiMemoizedSerializedSize:I

    .line 90
    .line 91
    move v1, v0

    .line 92
    move v3, v1

    .line 93
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-ge v1, v4, :cond_4

    .line 100
    .line 101
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    add-int/2addr v3, v4

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    add-int/2addr v2, v3

    .line 122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getTypeList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/2addr v2, v1

    .line 139
    :cond_5
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->typeMemoizedSerializedSize:I

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdmBytes()Lcom/explorestack/protobuf/ByteString;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_6

    .line 150
    .line 151
    const/4 v1, 0x4

    .line 152
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 153
    .line 154
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    add-int/2addr v2, v1

    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_7

    .line 168
    .line 169
    const/4 v1, 0x5

    .line 170
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    add-int/2addr v2, v1

    .line 177
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-ge v0, v1, :cond_8

    .line 184
    .line 185
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 192
    .line 193
    const/4 v3, 0x6

    .line 194
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    add-int/2addr v2, v1

    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    const/4 v0, 0x7

    .line 207
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    add-int/2addr v2, v0

    .line 216
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    add-int/2addr v2, v0

    .line 223
    iput v2, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 224
    .line 225
    return v2
.end method

.method public getType(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 14
    .line 15
    return-object p1
.end method

.method public getTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

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

.method public getTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/i0$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/i0$h;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/i0$h$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getTypeValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

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

.method public getTypeValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x25

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getApiCount()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x25

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v1, v0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getTypeCount()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_3

    .line 62
    .line 63
    mul-int/lit8 v1, v1, 0x25

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x3

    .line 66
    .line 67
    mul-int/lit8 v1, v1, 0x35

    .line 68
    .line 69
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v1, v0

    .line 76
    :cond_3
    mul-int/lit8 v1, v1, 0x25

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x4

    .line 79
    .line 80
    mul-int/lit8 v1, v1, 0x35

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/2addr v1, v0

    .line 91
    mul-int/lit8 v1, v1, 0x25

    .line 92
    .line 93
    add-int/lit8 v1, v1, 0x5

    .line 94
    .line 95
    mul-int/lit8 v1, v1, 0x35

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-int/2addr v1, v0

    .line 106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x25

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x7

    .line 115
    .line 116
    mul-int/lit8 v1, v1, 0x35

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    add-int/2addr v1, v0

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoCount()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lez v0, :cond_5

    .line 132
    .line 133
    mul-int/lit8 v1, v1, 0x25

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x6

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x35

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    add-int/2addr v1, v0

    .line 148
    :cond_5
    mul-int/lit8 v1, v1, 0x1d

    .line 149
    .line 150
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    add-int/2addr v1, v0

    .line 157
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 158
    .line 159
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->B0:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/n0;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getApiList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x12

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->apiMemoizedSerializedSize:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    move v1, v0

    .line 48
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ge v1, v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getTypeList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-lez v1, :cond_3

    .line 83
    .line 84
    const/16 v1, 0x1a

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->typeMemoizedSerializedSize:I

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 92
    .line 93
    .line 94
    :cond_3
    move v1, v0

    .line 95
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-ge v1, v2, :cond_4

    .line 102
    .line 103
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdmBytes()Lcom/explorestack/protobuf/ByteString;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_5

    .line 130
    .line 131
    const/4 v1, 0x4

    .line 132
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 133
    .line 134
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_6

    .line 146
    .line 147
    const/4 v1, 0x5

    .line 148
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-ge v0, v1, :cond_7

    .line 160
    .line 161
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 168
    .line 169
    const/4 v2, 0x6

    .line 170
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 177
    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    const/4 v0, 0x7

    .line 181
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method
