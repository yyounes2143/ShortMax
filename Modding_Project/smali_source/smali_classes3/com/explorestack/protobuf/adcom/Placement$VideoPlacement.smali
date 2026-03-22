.class public final Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Placement.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoPlacement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;
    }
.end annotation


# static fields
.field public static final API_FIELD_NUMBER:I = 0xb

.field public static final BOXING_FIELD_NUMBER:I = 0x18

.field public static final CLKTYPE_FIELD_NUMBER:I = 0x9

.field public static final COMPTYPE_FIELD_NUMBER:I = 0x1a

.field public static final COMP_FIELD_NUMBER:I = 0x19

.field public static final CTYPE_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

.field public static final DELAY_FIELD_NUMBER:I = 0x3

.field public static final DELIVERY_FIELD_NUMBER:I = 0x15

.field public static final EXT_FIELD_NUMBER:I = 0x1c

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x1b

.field public static final H_FIELD_NUMBER:I = 0xe

.field public static final LINEAR_FIELD_NUMBER:I = 0x17

.field public static final MAXBITR_FIELD_NUMBER:I = 0x14

.field public static final MAXDUR_FIELD_NUMBER:I = 0x11

.field public static final MAXEXT_FIELD_NUMBER:I = 0x12

.field public static final MAXSEQ_FIELD_NUMBER:I = 0x16

.field public static final MIME_FIELD_NUMBER:I = 0xa

.field public static final MINBITR_FIELD_NUMBER:I = 0x13

.field public static final MINDUR_FIELD_NUMBER:I = 0x10

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYEND_FIELD_NUMBER:I = 0x8

.field public static final PLAYMETHOD_FIELD_NUMBER:I = 0x7

.field public static final POS_FIELD_NUMBER:I = 0x2

.field public static final PTYPE_FIELD_NUMBER:I = 0x1

.field public static final SKIPAFTER_FIELD_NUMBER:I = 0x6

.field public static final SKIPMIN_FIELD_NUMBER:I = 0x5

.field public static final SKIP_FIELD_NUMBER:I = 0x4

.field public static final UNIT_FIELD_NUMBER:I = 0xf

.field public static final W_FIELD_NUMBER:I = 0xd

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

.field private static final comptype_converter_:Lcom/explorestack/protobuf/i0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/CompanionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ctype_converter_:Lcom/explorestack/protobuf/i0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation
.end field

.field private static final delivery_converter_:Lcom/explorestack/protobuf/i0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/DeliveryMethod;",
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

.field private boxing_:Z

.field private clktype_:I

.field private comp_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation
.end field

.field private comptypeMemoizedSerializedSize:I

.field private comptype_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ctypeMemoizedSerializedSize:I

.field private ctype_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private delay_:I

.field private deliveryMemoizedSerializedSize:I

.field private delivery_:Ljava/util/List;
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

.field private linear_:I

.field private maxbitr_:I

.field private maxdur_:I

.field private maxext_:I

.field private maxseq_:I

.field private memoizedIsInitialized:B

.field private mime_:Lcom/explorestack/protobuf/n0;

.field private minbitr_:I

.field private mindur_:I

.field private playend_:I

.field private playmethod_:I

.field private pos_:I

.field private ptype_:I

.field private skip_:Z

.field private skipafter_:I

.field private skipmin_:I

.field private unit_:I

.field private w_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 14
    .line 15
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$3;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 21
    .line 22
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$4;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$4;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 28
    .line 29
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 35
    .line 36
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$5;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$5;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 9
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 10
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 11
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 12
    sget-object v1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 15
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 17
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>()V

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_18

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 25
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_7

    .line 26
    :sswitch_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 30
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_2
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_2

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 32
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 33
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 34
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 36
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 37
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_4

    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_3

    .line 39
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 40
    :cond_3
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_4
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 42
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_5

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 44
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_6

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 46
    :cond_6
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    goto/16 :goto_0

    .line 50
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 51
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    goto/16 :goto_0

    .line 52
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    goto/16 :goto_0

    .line 53
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 54
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 55
    :goto_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_8

    .line 56
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_7

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 58
    :cond_7
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 59
    :cond_8
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 60
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_9

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 62
    :cond_9
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 63
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    goto/16 :goto_0

    .line 64
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    goto/16 :goto_0

    .line 65
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    goto/16 :goto_0

    .line 66
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    goto/16 :goto_0

    .line 67
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    goto/16 :goto_0

    .line 68
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 69
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    goto/16 :goto_0

    .line 70
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    goto/16 :goto_0

    .line 71
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    goto/16 :goto_0

    .line 72
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 73
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 74
    :goto_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_b

    .line 75
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_a

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 77
    :cond_a
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 78
    :cond_b
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 79
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_c

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 81
    :cond_c
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 82
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 83
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 84
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_e

    .line 85
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_d

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 87
    :cond_d
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 88
    :cond_e
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 89
    :sswitch_16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_f

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 91
    :cond_f
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 92
    :sswitch_17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_10

    .line 93
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x1

    .line 94
    :cond_10
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 95
    :sswitch_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 96
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    goto/16 :goto_0

    .line 97
    :sswitch_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 98
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    goto/16 :goto_0

    .line 99
    :sswitch_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 100
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    goto/16 :goto_0

    .line 101
    :sswitch_1b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    goto/16 :goto_0

    .line 102
    :sswitch_1c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    goto/16 :goto_0

    .line 103
    :sswitch_1d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    goto/16 :goto_0

    .line 104
    :sswitch_1e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    goto/16 :goto_0

    .line 105
    :sswitch_1f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 106
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    goto/16 :goto_0

    .line 107
    :sswitch_20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 108
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 109
    :goto_6
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 110
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 111
    :goto_7
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_11

    .line 112
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    :cond_11
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_12

    .line 113
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_13

    .line 114
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_14

    .line 115
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_15

    .line 116
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_16

    .line 117
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_17

    .line 118
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 119
    :cond_17
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 121
    throw p1

    :cond_18
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_19

    .line 122
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    :cond_19
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1a

    .line 123
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1b

    .line 124
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1c

    .line 125
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_1d

    .line 126
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    :cond_1d
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_1e

    .line 127
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    :cond_1e
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_1f

    .line 128
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 129
    :cond_1f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_20
        0x10 -> :sswitch_1f
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_1d
        0x28 -> :sswitch_1c
        0x30 -> :sswitch_1b
        0x38 -> :sswitch_1a
        0x40 -> :sswitch_19
        0x48 -> :sswitch_18
        0x52 -> :sswitch_17
        0x58 -> :sswitch_16
        0x5a -> :sswitch_15
        0x60 -> :sswitch_14
        0x62 -> :sswitch_13
        0x68 -> :sswitch_12
        0x70 -> :sswitch_11
        0x78 -> :sswitch_10
        0x80 -> :sswitch_f
        0x88 -> :sswitch_e
        0x90 -> :sswitch_d
        0x98 -> :sswitch_c
        0xa0 -> :sswitch_b
        0xa8 -> :sswitch_a
        0xaa -> :sswitch_9
        0xb0 -> :sswitch_8
        0xb8 -> :sswitch_7
        0xc0 -> :sswitch_6
        0xca -> :sswitch_5
        0xd0 -> :sswitch_4
        0xd2 -> :sswitch_3
        0xda -> :sswitch_2
        0xe2 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$15700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$15900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$15902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$16002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16500(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$16502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$16602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16700(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$16702(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16800(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$16802(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$16900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$16902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$17000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$17002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$17102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$17302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17702(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17802(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$17900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$17902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18100(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$18102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18400(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$18602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$18800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$18900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$19000()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19100(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$19200()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19300()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19400()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19500()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->W:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 15
    .line 16
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 17
    .line 18
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 25
    .line 26
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    return v3

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eq v1, v2, :cond_4

    .line 40
    .line 41
    return v3

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eq v1, v2, :cond_5

    .line 51
    .line 52
    return v3

    .line 53
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eq v1, v2, :cond_6

    .line 62
    .line 63
    return v3

    .line 64
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eq v1, v2, :cond_7

    .line 73
    .line 74
    return v3

    .line 75
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 76
    .line 77
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_8

    .line 80
    .line 81
    return v3

    .line 82
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 83
    .line 84
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 85
    .line 86
    if-eq v1, v2, :cond_9

    .line 87
    .line 88
    return v3

    .line 89
    :cond_9
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 90
    .line 91
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 92
    .line 93
    if-eq v1, v2, :cond_a

    .line 94
    .line 95
    return v3

    .line 96
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v3

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 112
    .line 113
    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v3

    .line 122
    :cond_c
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 123
    .line 124
    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    return v3

    .line 133
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eq v1, v2, :cond_e

    .line 142
    .line 143
    return v3

    .line 144
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eq v1, v2, :cond_f

    .line 153
    .line 154
    return v3

    .line 155
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 156
    .line 157
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 158
    .line 159
    if-eq v1, v2, :cond_10

    .line 160
    .line 161
    return v3

    .line 162
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eq v1, v2, :cond_11

    .line 171
    .line 172
    return v3

    .line 173
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eq v1, v2, :cond_12

    .line 182
    .line 183
    return v3

    .line 184
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eq v1, v2, :cond_13

    .line 193
    .line 194
    return v3

    .line 195
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eq v1, v2, :cond_14

    .line 204
    .line 205
    return v3

    .line 206
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eq v1, v2, :cond_15

    .line 215
    .line 216
    return v3

    .line 217
    :cond_15
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 218
    .line 219
    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_16

    .line 226
    .line 227
    return v3

    .line 228
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eq v1, v2, :cond_17

    .line 237
    .line 238
    return v3

    .line 239
    :cond_17
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 240
    .line 241
    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 242
    .line 243
    if-eq v1, v2, :cond_18

    .line 244
    .line 245
    return v3

    .line 246
    :cond_18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eq v1, v2, :cond_19

    .line 255
    .line 256
    return v3

    .line 257
    :cond_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompList()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompList()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_1a

    .line 270
    .line 271
    return v3

    .line 272
    :cond_1a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 273
    .line 274
    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_1b

    .line 281
    .line 282
    return v3

    .line 283
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eq v1, v2, :cond_1c

    .line 292
    .line 293
    return v3

    .line 294
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_1d

    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-nez v1, :cond_1d

    .line 313
    .line 314
    return v3

    .line 315
    :cond_1d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoList()Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoList()Ljava/util/List;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-nez v1, :cond_1e

    .line 328
    .line 329
    return v3

    .line 330
    :cond_1e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 331
    .line 332
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 333
    .line 334
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-nez p1, :cond_1f

    .line 339
    .line 340
    return v3

    .line 341
    :cond_1f
    return v0
.end method

.method public getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

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
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/i0$h$a;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBoxing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getClktype()Lcom/explorestack/protobuf/adcom/ClickType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ClickType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ClickType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/ClickType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ClickType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getClktypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 2
    .line 3
    return v0
.end method

.method public getComp(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    .line 8
    .line 9
    return-object p1
.end method

.method public getCompCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

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

.method public getCompList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompOrBuilder(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getCompOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComptype(I)Lcom/explorestack/protobuf/adcom/CompanionType;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/CompanionType;

    .line 14
    .line 15
    return-object p1
.end method

.method public getComptypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

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

.method public getComptypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CompanionType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/i0$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/i0$h;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/i0$h$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getComptypeValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

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

.method public getComptypeValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCtype(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

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

.method public getCtypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

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

.method public getCtypeList()Ljava/util/List;
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
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/i0$h;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/i0$h$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getCtypeValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

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

.method public getCtypeValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object v0
.end method

.method public getDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    .line 2
    .line 3
    return v0
.end method

.method public getDelivery(I)Lcom/explorestack/protobuf/adcom/DeliveryMethod;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/DeliveryMethod;

    .line 14
    .line 15
    return-object p1
.end method

.method public getDeliveryCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

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

.method public getDeliveryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/DeliveryMethod;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/i0$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/i0$h;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/i0$h$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getDeliveryValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

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

.method public getDeliveryValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLinear()Lcom/explorestack/protobuf/adcom/LinearityMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/LinearityMode;->valueOf(I)Lcom/explorestack/protobuf/adcom/LinearityMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/LinearityMode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/LinearityMode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getLinearValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxbitr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxdur()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxext()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxseq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMime(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getMinbitr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMindur()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

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
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayend()Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPlayendValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlaymethod()Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPlaymethodValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPos()Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPosValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPtype()Lcom/explorestack/protobuf/adcom/VideoPlacementType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->valueOf(I)Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPtypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 8
    .line 9
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->VIDEO_PLACEMENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->getNumber()I

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 28
    .line 29
    sget-object v3, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getNumber()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    :cond_3
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    const/4 v3, 0x5

    .line 70
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/4 v3, 0x6

    .line 80
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v0, v1

    .line 85
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 86
    .line 87
    sget-object v3, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getNumber()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eq v1, v3, :cond_7

    .line 94
    .line 95
    const/4 v1, 0x7

    .line 96
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 97
    .line 98
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    add-int/2addr v0, v1

    .line 103
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 104
    .line 105
    sget-object v3, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->PLAYBACK_CESSATION_MODE_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->getNumber()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eq v1, v3, :cond_8

    .line 112
    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 116
    .line 117
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    add-int/2addr v0, v1

    .line 122
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 123
    .line 124
    sget-object v3, Lcom/explorestack/protobuf/adcom/ClickType;->CLICK_TYPE_NON_CLICKABLE:Lcom/explorestack/protobuf/adcom/ClickType;

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/ClickType;->getNumber()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eq v1, v3, :cond_9

    .line 131
    .line 132
    const/16 v1, 0x9

    .line 133
    .line 134
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 135
    .line 136
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    add-int/2addr v0, v1

    .line 141
    :cond_9
    move v1, v2

    .line 142
    move v3, v1

    .line 143
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    .line 144
    .line 145
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-ge v1, v4, :cond_a

    .line 150
    .line 151
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    .line 152
    .line 153
    invoke-interface {v4, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    add-int/2addr v3, v4

    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_a
    add-int/2addr v0, v3

    .line 166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v0, v1

    .line 175
    move v1, v2

    .line 176
    move v3, v1

    .line 177
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-ge v1, v4, :cond_b

    .line 184
    .line 185
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    add-int/2addr v3, v4

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_b
    add-int/2addr v0, v3

    .line 206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getApiList()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_c

    .line 215
    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 217
    .line 218
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    add-int/2addr v0, v1

    .line 223
    :cond_c
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->apiMemoizedSerializedSize:I

    .line 224
    .line 225
    move v1, v2

    .line 226
    move v3, v1

    .line 227
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-ge v1, v4, :cond_d

    .line 234
    .line 235
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    add-int/2addr v3, v4

    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_d
    add-int/2addr v0, v3

    .line 256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCtypeList()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-nez v1, :cond_e

    .line 265
    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 267
    .line 268
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    add-int/2addr v0, v1

    .line 273
    :cond_e
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctypeMemoizedSerializedSize:I

    .line 274
    .line 275
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    .line 276
    .line 277
    if-eqz v1, :cond_f

    .line 278
    .line 279
    const/16 v3, 0xd

    .line 280
    .line 281
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    add-int/2addr v0, v1

    .line 286
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    .line 287
    .line 288
    if-eqz v1, :cond_10

    .line 289
    .line 290
    const/16 v3, 0xe

    .line 291
    .line 292
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    add-int/2addr v0, v1

    .line 297
    :cond_10
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 298
    .line 299
    sget-object v3, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_INVALID:Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/SizeUnit;->getNumber()I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-eq v1, v3, :cond_11

    .line 306
    .line 307
    const/16 v1, 0xf

    .line 308
    .line 309
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 310
    .line 311
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    add-int/2addr v0, v1

    .line 316
    :cond_11
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    .line 317
    .line 318
    if-eqz v1, :cond_12

    .line 319
    .line 320
    const/16 v3, 0x10

    .line 321
    .line 322
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    add-int/2addr v0, v1

    .line 327
    :cond_12
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    .line 328
    .line 329
    if-eqz v1, :cond_13

    .line 330
    .line 331
    const/16 v3, 0x11

    .line 332
    .line 333
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    add-int/2addr v0, v1

    .line 338
    :cond_13
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    .line 339
    .line 340
    if-eqz v1, :cond_14

    .line 341
    .line 342
    const/16 v3, 0x12

    .line 343
    .line 344
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    add-int/2addr v0, v1

    .line 349
    :cond_14
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    .line 350
    .line 351
    if-eqz v1, :cond_15

    .line 352
    .line 353
    const/16 v3, 0x13

    .line 354
    .line 355
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    add-int/2addr v0, v1

    .line 360
    :cond_15
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    .line 361
    .line 362
    if-eqz v1, :cond_16

    .line 363
    .line 364
    const/16 v3, 0x14

    .line 365
    .line 366
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    add-int/2addr v0, v1

    .line 371
    :cond_16
    move v1, v2

    .line 372
    move v3, v1

    .line 373
    :goto_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 374
    .line 375
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-ge v1, v4, :cond_17

    .line 380
    .line 381
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 382
    .line 383
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Ljava/lang/Integer;

    .line 388
    .line 389
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    add-int/2addr v3, v4

    .line 398
    add-int/lit8 v1, v1, 0x1

    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_17
    add-int/2addr v0, v3

    .line 402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDeliveryList()Ljava/util/List;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-nez v1, :cond_18

    .line 411
    .line 412
    add-int/lit8 v0, v0, 0x2

    .line 413
    .line 414
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    add-int/2addr v0, v1

    .line 419
    :cond_18
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->deliveryMemoizedSerializedSize:I

    .line 420
    .line 421
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    .line 422
    .line 423
    if-eqz v1, :cond_19

    .line 424
    .line 425
    const/16 v3, 0x16

    .line 426
    .line 427
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    add-int/2addr v0, v1

    .line 432
    :cond_19
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 433
    .line 434
    sget-object v3, Lcom/explorestack/protobuf/adcom/LinearityMode;->LINEARITY_MODE_INVALID:Lcom/explorestack/protobuf/adcom/LinearityMode;

    .line 435
    .line 436
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/LinearityMode;->getNumber()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eq v1, v3, :cond_1a

    .line 441
    .line 442
    const/16 v1, 0x17

    .line 443
    .line 444
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 445
    .line 446
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    add-int/2addr v0, v1

    .line 451
    :cond_1a
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    .line 452
    .line 453
    if-eqz v1, :cond_1b

    .line 454
    .line 455
    const/16 v3, 0x18

    .line 456
    .line 457
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    add-int/2addr v0, v1

    .line 462
    :cond_1b
    move v1, v2

    .line 463
    :goto_5
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 464
    .line 465
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-ge v1, v3, :cond_1c

    .line 470
    .line 471
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 472
    .line 473
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 478
    .line 479
    const/16 v4, 0x19

    .line 480
    .line 481
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    add-int/2addr v0, v3

    .line 486
    add-int/lit8 v1, v1, 0x1

    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_1c
    move v1, v2

    .line 490
    move v3, v1

    .line 491
    :goto_6
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 492
    .line 493
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-ge v1, v4, :cond_1d

    .line 498
    .line 499
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 500
    .line 501
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    check-cast v4, Ljava/lang/Integer;

    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    add-int/2addr v3, v4

    .line 516
    add-int/lit8 v1, v1, 0x1

    .line 517
    .line 518
    goto :goto_6

    .line 519
    :cond_1d
    add-int/2addr v0, v3

    .line 520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getComptypeList()Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-nez v1, :cond_1e

    .line 529
    .line 530
    add-int/lit8 v0, v0, 0x2

    .line 531
    .line 532
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    add-int/2addr v0, v1

    .line 537
    :cond_1e
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptypeMemoizedSerializedSize:I

    .line 538
    .line 539
    :goto_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 540
    .line 541
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-ge v2, v1, :cond_1f

    .line 546
    .line 547
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 548
    .line 549
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 554
    .line 555
    const/16 v3, 0x1b

    .line 556
    .line 557
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    add-int/2addr v0, v1

    .line 562
    add-int/lit8 v2, v2, 0x1

    .line 563
    .line 564
    goto :goto_7

    .line 565
    :cond_1f
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 566
    .line 567
    if-eqz v1, :cond_20

    .line 568
    .line 569
    const/16 v1, 0x1c

    .line 570
    .line 571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    add-int/2addr v0, v1

    .line 580
    :cond_20
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 581
    .line 582
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    add-int/2addr v0, v1

    .line 587
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 588
    .line 589
    return v0
.end method

.method public getSkip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSkipafter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSkipmin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnit()Lcom/explorestack/protobuf/adcom/SizeUnit;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/SizeUnit;->valueOf(I)Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/SizeUnit;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getUnitValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

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

.method public getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 33
    .line 34
    add-int/2addr v1, v0

    .line 35
    mul-int/lit8 v1, v1, 0x25

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x3

    .line 38
    .line 39
    mul-int/lit8 v1, v1, 0x35

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v1, v0

    .line 46
    mul-int/lit8 v1, v1, 0x25

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x4

    .line 49
    .line 50
    mul-int/lit8 v1, v1, 0x35

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v1, v0

    .line 61
    mul-int/lit8 v1, v1, 0x25

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x5

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x35

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v1, v0

    .line 72
    mul-int/lit8 v1, v1, 0x25

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x6

    .line 75
    .line 76
    mul-int/lit8 v1, v1, 0x35

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    add-int/2addr v1, v0

    .line 83
    mul-int/lit8 v1, v1, 0x25

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x7

    .line 86
    .line 87
    mul-int/lit8 v1, v1, 0x35

    .line 88
    .line 89
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 90
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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 99
    .line 100
    add-int/2addr v1, v0

    .line 101
    mul-int/lit8 v1, v1, 0x25

    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x9

    .line 104
    .line 105
    mul-int/lit8 v1, v1, 0x35

    .line 106
    .line 107
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 108
    .line 109
    add-int/2addr v1, v0

    .line 110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeCount()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-lez v0, :cond_1

    .line 115
    .line 116
    mul-int/lit8 v1, v1, 0x25

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0xa

    .line 119
    .line 120
    mul-int/lit8 v1, v1, 0x35

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/m1;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getApiCount()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lez v0, :cond_2

    .line 136
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v1, v0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCtypeCount()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-lez v0, :cond_3

    .line 155
    .line 156
    mul-int/lit8 v1, v1, 0x25

    .line 157
    .line 158
    add-int/lit8 v1, v1, 0xc

    .line 159
    .line 160
    mul-int/lit8 v1, v1, 0x35

    .line 161
    .line 162
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    add-int/2addr v1, v0

    .line 169
    :cond_3
    mul-int/lit8 v1, v1, 0x25

    .line 170
    .line 171
    add-int/lit8 v1, v1, 0xd

    .line 172
    .line 173
    mul-int/lit8 v1, v1, 0x35

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    add-int/2addr v1, v0

    .line 180
    mul-int/lit8 v1, v1, 0x25

    .line 181
    .line 182
    add-int/lit8 v1, v1, 0xe

    .line 183
    .line 184
    mul-int/lit8 v1, v1, 0x35

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    add-int/2addr v1, v0

    .line 191
    mul-int/lit8 v1, v1, 0x25

    .line 192
    .line 193
    add-int/lit8 v1, v1, 0xf

    .line 194
    .line 195
    mul-int/lit8 v1, v1, 0x35

    .line 196
    .line 197
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 198
    .line 199
    add-int/2addr v1, v0

    .line 200
    mul-int/lit8 v1, v1, 0x25

    .line 201
    .line 202
    add-int/lit8 v1, v1, 0x10

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x35

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    add-int/2addr v1, v0

    .line 211
    mul-int/lit8 v1, v1, 0x25

    .line 212
    .line 213
    add-int/lit8 v1, v1, 0x11

    .line 214
    .line 215
    mul-int/lit8 v1, v1, 0x35

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    add-int/2addr v1, v0

    .line 222
    mul-int/lit8 v1, v1, 0x25

    .line 223
    .line 224
    add-int/lit8 v1, v1, 0x12

    .line 225
    .line 226
    mul-int/lit8 v1, v1, 0x35

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    add-int/2addr v1, v0

    .line 233
    mul-int/lit8 v1, v1, 0x25

    .line 234
    .line 235
    add-int/lit8 v1, v1, 0x13

    .line 236
    .line 237
    mul-int/lit8 v1, v1, 0x35

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    add-int/2addr v1, v0

    .line 244
    mul-int/lit8 v1, v1, 0x25

    .line 245
    .line 246
    add-int/lit8 v1, v1, 0x14

    .line 247
    .line 248
    mul-int/lit8 v1, v1, 0x35

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    add-int/2addr v1, v0

    .line 255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDeliveryCount()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-lez v0, :cond_4

    .line 260
    .line 261
    mul-int/lit8 v1, v1, 0x25

    .line 262
    .line 263
    add-int/lit8 v1, v1, 0x15

    .line 264
    .line 265
    mul-int/lit8 v1, v1, 0x35

    .line 266
    .line 267
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    add-int/2addr v1, v0

    .line 274
    :cond_4
    mul-int/lit8 v1, v1, 0x25

    .line 275
    .line 276
    add-int/lit8 v1, v1, 0x16

    .line 277
    .line 278
    mul-int/lit8 v1, v1, 0x35

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    add-int/2addr v1, v0

    .line 285
    mul-int/lit8 v1, v1, 0x25

    .line 286
    .line 287
    add-int/lit8 v1, v1, 0x17

    .line 288
    .line 289
    mul-int/lit8 v1, v1, 0x35

    .line 290
    .line 291
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 292
    .line 293
    add-int/2addr v1, v0

    .line 294
    mul-int/lit8 v1, v1, 0x25

    .line 295
    .line 296
    add-int/lit8 v1, v1, 0x18

    .line 297
    .line 298
    mul-int/lit8 v1, v1, 0x35

    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    add-int/2addr v1, v0

    .line 309
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompCount()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-lez v0, :cond_5

    .line 314
    .line 315
    mul-int/lit8 v1, v1, 0x25

    .line 316
    .line 317
    add-int/lit8 v1, v1, 0x19

    .line 318
    .line 319
    mul-int/lit8 v1, v1, 0x35

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompList()Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    add-int/2addr v1, v0

    .line 330
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getComptypeCount()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-lez v0, :cond_6

    .line 335
    .line 336
    mul-int/lit8 v1, v1, 0x25

    .line 337
    .line 338
    add-int/lit8 v1, v1, 0x1a

    .line 339
    .line 340
    mul-int/lit8 v1, v1, 0x35

    .line 341
    .line 342
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    add-int/2addr v1, v0

    .line 349
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_7

    .line 354
    .line 355
    mul-int/lit8 v1, v1, 0x25

    .line 356
    .line 357
    add-int/lit8 v1, v1, 0x1c

    .line 358
    .line 359
    mul-int/lit8 v1, v1, 0x35

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    add-int/2addr v1, v0

    .line 370
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoCount()I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-lez v0, :cond_8

    .line 375
    .line 376
    mul-int/lit8 v1, v1, 0x25

    .line 377
    .line 378
    add-int/lit8 v1, v1, 0x1b

    .line 379
    .line 380
    mul-int/lit8 v1, v1, 0x35

    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoList()Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    add-int/2addr v1, v0

    .line 391
    :cond_8
    mul-int/lit8 v1, v1, 0x1d

    .line 392
    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    add-int/2addr v1, v0

    .line 400
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 401
    .line 402
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->X:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 5
    .line 6
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->VIDEO_PLACEMENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->getNumber()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 21
    .line 22
    sget-object v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getNumber()I

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 66
    .line 67
    .line 68
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 69
    .line 70
    sget-object v1, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getNumber()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eq v0, v1, :cond_6

    .line 77
    .line 78
    const/4 v0, 0x7

    .line 79
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 85
    .line 86
    sget-object v1, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->PLAYBACK_CESSATION_MODE_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->getNumber()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eq v0, v1, :cond_7

    .line 93
    .line 94
    const/16 v0, 0x8

    .line 95
    .line 96
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 99
    .line 100
    .line 101
    :cond_7
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 102
    .line 103
    sget-object v1, Lcom/explorestack/protobuf/adcom/ClickType;->CLICK_TYPE_NON_CLICKABLE:Lcom/explorestack/protobuf/adcom/ClickType;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ClickType;->getNumber()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eq v0, v1, :cond_8

    .line 110
    .line 111
    const/16 v0, 0x9

    .line 112
    .line 113
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 116
    .line 117
    .line 118
    :cond_8
    const/4 v0, 0x0

    .line 119
    move v1, v0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    .line 121
    .line 122
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-ge v1, v2, :cond_9

    .line 127
    .line 128
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/n0;

    .line 129
    .line 130
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/16 v3, 0xa

    .line 135
    .line 136
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getApiList()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-lez v1, :cond_a

    .line 151
    .line 152
    const/16 v1, 0x5a

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->apiMemoizedSerializedSize:I

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 160
    .line 161
    .line 162
    :cond_a
    move v1, v0

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-ge v1, v2, :cond_b

    .line 170
    .line 171
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCtypeList()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-lez v1, :cond_c

    .line 198
    .line 199
    const/16 v1, 0x62

    .line 200
    .line 201
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 202
    .line 203
    .line 204
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctypeMemoizedSerializedSize:I

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 207
    .line 208
    .line 209
    :cond_c
    move v1, v0

    .line 210
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-ge v1, v2, :cond_d

    .line 217
    .line 218
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/lang/Integer;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 231
    .line 232
    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_d
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    .line 237
    .line 238
    if-eqz v1, :cond_e

    .line 239
    .line 240
    const/16 v2, 0xd

    .line 241
    .line 242
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 243
    .line 244
    .line 245
    :cond_e
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    .line 246
    .line 247
    if-eqz v1, :cond_f

    .line 248
    .line 249
    const/16 v2, 0xe

    .line 250
    .line 251
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 252
    .line 253
    .line 254
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 255
    .line 256
    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_INVALID:Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/SizeUnit;->getNumber()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eq v1, v2, :cond_10

    .line 263
    .line 264
    const/16 v1, 0xf

    .line 265
    .line 266
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 267
    .line 268
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 269
    .line 270
    .line 271
    :cond_10
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    .line 272
    .line 273
    if-eqz v1, :cond_11

    .line 274
    .line 275
    const/16 v2, 0x10

    .line 276
    .line 277
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 278
    .line 279
    .line 280
    :cond_11
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    .line 281
    .line 282
    if-eqz v1, :cond_12

    .line 283
    .line 284
    const/16 v2, 0x11

    .line 285
    .line 286
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 287
    .line 288
    .line 289
    :cond_12
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    .line 290
    .line 291
    if-eqz v1, :cond_13

    .line 292
    .line 293
    const/16 v2, 0x12

    .line 294
    .line 295
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 296
    .line 297
    .line 298
    :cond_13
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    .line 299
    .line 300
    if-eqz v1, :cond_14

    .line 301
    .line 302
    const/16 v2, 0x13

    .line 303
    .line 304
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 305
    .line 306
    .line 307
    :cond_14
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    .line 308
    .line 309
    if-eqz v1, :cond_15

    .line 310
    .line 311
    const/16 v2, 0x14

    .line 312
    .line 313
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 314
    .line 315
    .line 316
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDeliveryList()Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-lez v1, :cond_16

    .line 325
    .line 326
    const/16 v1, 0xaa

    .line 327
    .line 328
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 329
    .line 330
    .line 331
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->deliveryMemoizedSerializedSize:I

    .line 332
    .line 333
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 334
    .line 335
    .line 336
    :cond_16
    move v1, v0

    .line 337
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 338
    .line 339
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-ge v1, v2, :cond_17

    .line 344
    .line 345
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 346
    .line 347
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Ljava/lang/Integer;

    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 358
    .line 359
    .line 360
    add-int/lit8 v1, v1, 0x1

    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_17
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    .line 364
    .line 365
    if-eqz v1, :cond_18

    .line 366
    .line 367
    const/16 v2, 0x16

    .line 368
    .line 369
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 370
    .line 371
    .line 372
    :cond_18
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 373
    .line 374
    sget-object v2, Lcom/explorestack/protobuf/adcom/LinearityMode;->LINEARITY_MODE_INVALID:Lcom/explorestack/protobuf/adcom/LinearityMode;

    .line 375
    .line 376
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/LinearityMode;->getNumber()I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eq v1, v2, :cond_19

    .line 381
    .line 382
    const/16 v1, 0x17

    .line 383
    .line 384
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 385
    .line 386
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 387
    .line 388
    .line 389
    :cond_19
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    .line 390
    .line 391
    if-eqz v1, :cond_1a

    .line 392
    .line 393
    const/16 v2, 0x18

    .line 394
    .line 395
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 396
    .line 397
    .line 398
    :cond_1a
    move v1, v0

    .line 399
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 400
    .line 401
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-ge v1, v2, :cond_1b

    .line 406
    .line 407
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 408
    .line 409
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 414
    .line 415
    const/16 v3, 0x19

    .line 416
    .line 417
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 418
    .line 419
    .line 420
    add-int/lit8 v1, v1, 0x1

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getComptypeList()Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-lez v1, :cond_1c

    .line 432
    .line 433
    const/16 v1, 0xd2

    .line 434
    .line 435
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 436
    .line 437
    .line 438
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptypeMemoizedSerializedSize:I

    .line 439
    .line 440
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 441
    .line 442
    .line 443
    :cond_1c
    move v1, v0

    .line 444
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 445
    .line 446
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-ge v1, v2, :cond_1d

    .line 451
    .line 452
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 453
    .line 454
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    check-cast v2, Ljava/lang/Integer;

    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 465
    .line 466
    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_1d
    :goto_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 471
    .line 472
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    if-ge v0, v1, :cond_1e

    .line 477
    .line 478
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 479
    .line 480
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 485
    .line 486
    const/16 v2, 0x1b

    .line 487
    .line 488
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 489
    .line 490
    .line 491
    add-int/lit8 v0, v0, 0x1

    .line 492
    .line 493
    goto :goto_6

    .line 494
    :cond_1e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 495
    .line 496
    if-eqz v0, :cond_1f

    .line 497
    .line 498
    const/16 v0, 0x1c

    .line 499
    .line 500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 505
    .line 506
    .line 507
    :cond_1f
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 508
    .line 509
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 510
    .line 511
    .line 512
    return-void
.end method
