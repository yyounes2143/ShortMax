.class public final Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Placement.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

.field public static final EXPDIR_FIELD_NUMBER:I = 0x5

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final HRATIO_FIELD_NUMBER:I = 0x4

.field public static final H_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRATIO_FIELD_NUMBER:I = 0x3

.field public static final W_FIELD_NUMBER:I = 0x1

.field private static final expdir_converter_:Lcom/explorestack/protobuf/i0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private expdirMemoizedSerializedSize:I

.field private expdir_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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

.field private h_:I

.field private hratio_:I

.field private memoizedIsInitialized:B

.field private w_:I

.field private wratio_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    .line 14
    .line 15
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_11

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0x8

    if-eq v3, v5, :cond_e

    const/16 v5, 0x10

    if-eq v3, v5, :cond_d

    const/16 v5, 0x18

    if-eq v3, v5, :cond_c

    const/16 v5, 0x20

    if-eq v3, v5, :cond_b

    const/16 v5, 0x28

    if-eq v3, v5, :cond_9

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x32

    if-eq v3, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_2

    .line 13
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

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 16
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 18
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_5

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 20
    :cond_5
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 21
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 24
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 25
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_7

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 28
    :cond_7
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 30
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_a

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 32
    :cond_a
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hratio_:I

    goto/16 :goto_0

    .line 34
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->wratio_:I

    goto/16 :goto_0

    .line 35
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->h_:I

    goto/16 :goto_0

    .line 36
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->w_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 37
    :goto_3
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 39
    :goto_4
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_f

    .line 40
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_10

    .line 41
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 42
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 44
    throw p1

    :cond_11
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_12

    .line 45
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_13

    .line 46
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 47
    :cond_13
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 48
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1400()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->w_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->h_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->wratio_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hratio_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->I:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getW()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getW()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getH()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getH()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    return v3

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getWratio()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getWratio()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    return v3

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getHratio()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getHratio()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eq v1, v2, :cond_5

    .line 59
    .line 60
    return v3

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 62
    .line 63
    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hasExt()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hasExt()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hasExt()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_8

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExt()Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExtProtoList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExtProtoList()Ljava/util/List;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object v0
.end method

.method public getExpdir(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 14
    .line 15
    return-object p1
.end method

.method public getExpdirCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

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

.method public getExpdirList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/i0$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/i0$h;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/i0$h$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getExpdirValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

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

.method public getExpdirValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExt()Lcom/explorestack/protobuf/Struct;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->h_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHratio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hratio_:I

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
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->w_:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->h_:I

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v0, v2

    .line 29
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->wratio_:I

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v0, v2

    .line 39
    :cond_3
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hratio_:I

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v0, v2

    .line 49
    :cond_4
    move v2, v1

    .line 50
    move v3, v2

    .line 51
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ge v2, v4, :cond_5

    .line 58
    .line 59
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    add-int/2addr v3, v4

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    add-int/2addr v0, v3

    .line 80
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExpdirList()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_6

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    add-int/2addr v0, v2

    .line 97
    :cond_6
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdirMemoizedSerializedSize:I

    .line 98
    .line 99
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-ge v1, v2, :cond_7

    .line 106
    .line 107
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 114
    .line 115
    const/4 v3, 0x6

    .line 116
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    add-int/2addr v0, v2

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 125
    .line 126
    if-eqz v1, :cond_8

    .line 127
    .line 128
    const/4 v1, 0x7

    .line 129
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr v0, v1

    .line 138
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    add-int/2addr v0, v1

    .line 145
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 146
    .line 147
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

.method public getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->w_:I

    .line 2
    .line 3
    return v0
.end method

.method public getWratio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->wratio_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getW()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x25

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    mul-int/lit8 v1, v1, 0x35

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getH()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v1, v0

    .line 39
    mul-int/lit8 v1, v1, 0x25

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x3

    .line 42
    .line 43
    mul-int/lit8 v1, v1, 0x35

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getWratio()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v1, v0

    .line 50
    mul-int/lit8 v1, v1, 0x25

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x4

    .line 53
    .line 54
    mul-int/lit8 v1, v1, 0x35

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getHratio()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v1, v0

    .line 61
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExpdirCount()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-lez v0, :cond_1

    .line 66
    .line 67
    mul-int/lit8 v1, v1, 0x25

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x5

    .line 70
    .line 71
    mul-int/lit8 v1, v1, 0x35

    .line 72
    .line 73
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hasExt()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x25

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x7

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x35

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExtProtoCount()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_3

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x25

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x6

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExtProtoList()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v1, v0

    .line 122
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 123
    .line 124
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 132
    .line 133
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->J:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->w_:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->h_:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->wratio_:I

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->hratio_:I

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 34
    .line 35
    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExpdirList()Ljava/util/List;

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
    if-lez v0, :cond_4

    .line 45
    .line 46
    const/16 v0, 0x2a

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdirMemoizedSerializedSize:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    const/4 v0, 0x0

    .line 57
    move v1, v0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ge v1, v2, :cond_5

    .line 65
    .line 66
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->expdir_:Ljava/util/List;

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
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ge v0, v1, :cond_6

    .line 91
    .line 92
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->extProto_:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 99
    .line 100
    const/4 v2, 0x6

    .line 101
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    const/4 v0, 0x7

    .line 112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
