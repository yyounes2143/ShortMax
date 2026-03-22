.class public final Lcom/explorestack/protobuf/adcom/Placement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Placement.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$Builder;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;
    }
.end annotation


# static fields
.field public static final ADMX_FIELD_NUMBER:I = 0xe

.field public static final BADV_FIELD_NUMBER:I = 0x9

.field public static final BAPP_FIELD_NUMBER:I = 0xa

.field public static final BATTR_FIELD_NUMBER:I = 0xb

.field public static final BCAT_FIELD_NUMBER:I = 0x6

.field public static final CATTAX_FIELD_NUMBER:I = 0x7

.field public static final CURLX_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

.field public static final DISPLAY_FIELD_NUMBER:I = 0x10

.field public static final EXT_FIELD_NUMBER:I = 0x14

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x13

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARD_FIELD_NUMBER:I = 0x5

.field public static final SDKVER_FIELD_NUMBER:I = 0x4

.field public static final SDK_FIELD_NUMBER:I = 0x3

.field public static final SECURE_FIELD_NUMBER:I = 0xd

.field public static final SSAI_FIELD_NUMBER:I = 0x2

.field public static final TAGID_FIELD_NUMBER:I = 0x1

.field public static final VIDEO_FIELD_NUMBER:I = 0x11

.field public static final WLANG_FIELD_NUMBER:I = 0xc

.field private static final battr_converter_:Lcom/explorestack/protobuf/i0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private admx_:Z

.field private badv_:Lcom/explorestack/protobuf/n0;

.field private bapp_:Lcom/explorestack/protobuf/n0;

.field private battrMemoizedSerializedSize:I

.field private battr_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bcat_:Lcom/explorestack/protobuf/n0;

.field private cattax_:I

.field private curlx_:Z

.field private display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

.field private reward_:Z

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;

.field private secure_:Z

.field private ssai_:I

.field private volatile tagid_:Ljava/lang/Object;

.field private video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

.field private wlang_:Lcom/explorestack/protobuf/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    .line 14
    .line 15
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 12
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement;-><init>()V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v5

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

    .line 22
    :sswitch_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 24
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 26
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_2
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_2

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 28
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 30
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :sswitch_3
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v4

    .line 33
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 35
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_0

    .line 36
    :sswitch_4
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v3, :cond_4

    .line 37
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v4

    .line 38
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 40
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto/16 :goto_0

    .line 41
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    goto/16 :goto_0

    .line 42
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    goto/16 :goto_0

    .line 43
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    goto/16 :goto_0

    .line 44
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_5

    .line 45
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x10

    .line 46
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 48
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    .line 49
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_7

    .line 50
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_6

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 52
    :cond_6
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_7
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 54
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_8

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 56
    :cond_8
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 57
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_9

    .line 58
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x4

    .line 59
    :cond_9
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_a

    .line 61
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x2

    .line 62
    :cond_a
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 63
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 64
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    goto/16 :goto_0

    .line 65
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_b

    .line 66
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x1

    .line 67
    :cond_b
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    goto/16 :goto_0

    .line 69
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 70
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 71
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 72
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 73
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    goto/16 :goto_0

    .line 74
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 75
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 76
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 77
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 78
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_c

    .line 79
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    :cond_c
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_d

    .line 80
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    :cond_d
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_e

    .line 81
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    :cond_e
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_f

    .line 82
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_10

    .line 83
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    :cond_10
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_11

    .line 84
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 85
    :cond_11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 86
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 87
    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_13

    .line 88
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    :cond_13
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_14

    .line 89
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    :cond_14
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_15

    .line 90
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    :cond_15
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_16

    .line 91
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_17

    .line 92
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    :cond_17
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_18

    .line 93
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 94
    :cond_18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 95
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_13
        0x10 -> :sswitch_12
        0x1a -> :sswitch_11
        0x22 -> :sswitch_10
        0x28 -> :sswitch_f
        0x32 -> :sswitch_e
        0x38 -> :sswitch_d
        0x4a -> :sswitch_c
        0x52 -> :sswitch_b
        0x58 -> :sswitch_a
        0x5a -> :sswitch_9
        0x62 -> :sswitch_8
        0x68 -> :sswitch_7
        0x70 -> :sswitch_6
        0x78 -> :sswitch_5
        0x82 -> :sswitch_4
        0x8a -> :sswitch_3
        0x9a -> :sswitch_2
        0xa2 -> :sswitch_1
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$19900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$20100(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$20102(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$20202(Lcom/explorestack/protobuf/adcom/Placement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$20300(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$20302(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$20400(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$20402(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$20502(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$20602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$20700(Lcom/explorestack/protobuf/adcom/Placement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$20702(Lcom/explorestack/protobuf/adcom/Placement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$20802(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$20902(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$21002(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$21102(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$21202(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$21302(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$21402(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$21502(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$21602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$21702(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$21802(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$21900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$22000(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$22100()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$22200(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$22300(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$22400(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$22500(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$22600(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$22700(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$22800()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$22900(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->E:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    return v2

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eq v1, v3, :cond_6

    .line 82
    .line 83
    return v2

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/m1;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/m1;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    return v2

    .line 99
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 100
    .line 101
    iget v3, p1, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 102
    .line 103
    if-eq v1, v3, :cond_8

    .line 104
    .line 105
    return v2

    .line 106
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_9

    .line 119
    .line 120
    return v2

    .line 121
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_a

    .line 134
    .line 135
    return v2

    .line 136
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 137
    .line 138
    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_b

    .line 145
    .line 146
    return v2

    .line 147
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/m1;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/m1;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_c

    .line 160
    .line 161
    return v2

    .line 162
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eq v1, v3, :cond_d

    .line 171
    .line 172
    return v2

    .line 173
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eq v1, v3, :cond_e

    .line 182
    .line 183
    return v2

    .line 184
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eq v1, v3, :cond_f

    .line 193
    .line 194
    return v2

    .line 195
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eq v1, v3, :cond_10

    .line 204
    .line 205
    return v2

    .line 206
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_11

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_11

    .line 225
    .line 226
    return v2

    .line 227
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eq v1, v3, :cond_12

    .line 236
    .line 237
    return v2

    .line 238
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_13

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_13

    .line 257
    .line 258
    return v2

    .line 259
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eq v1, v3, :cond_14

    .line 268
    .line 269
    return v2

    .line 270
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_15

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_15

    .line 289
    .line 290
    return v2

    .line 291
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoList()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoList()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_16

    .line 304
    .line 305
    return v2

    .line 306
    :cond_16
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 307
    .line 308
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 309
    .line 310
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_17

    .line 315
    .line 316
    return v2

    .line 317
    :cond_17
    return v0
.end method

.method public getAdmx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBadv(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

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

.method public getBadvBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

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

.method public getBadvCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

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

.method public getBadvList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getBadvList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getBapp(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

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

.method public getBappBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

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

.method public getBappCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

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

.method public getBappList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getBappList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getBattr(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 14
    .line 15
    return-object p1
.end method

.method public getBattrCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

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

.method public getBattrList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/i0$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/i0$h;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/i0$h$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getBattrValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

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

.method public getBattrValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBcat(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

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

.method public getBcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

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

.method public getBcatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

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

.method public getBcatList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getBcatList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurlx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    return-object v0
.end method

.method public getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

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

.method public getSecure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagidBytes()Lcom/explorestack/protobuf/ByteString;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

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
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v0, v2

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/2addr v0, v2

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    add-int/2addr v0, v2

    .line 73
    :cond_4
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    const/4 v3, 0x5

    .line 78
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-int/2addr v0, v2

    .line 83
    :cond_5
    move v2, v1

    .line 84
    move v3, v2

    .line 85
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-ge v2, v4, :cond_6

    .line 92
    .line 93
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 94
    .line 95
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    add-int/2addr v3, v4

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    add-int/2addr v0, v3

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/m1;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    add-int/2addr v0, v2

    .line 117
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 118
    .line 119
    sget-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eq v2, v3, :cond_7

    .line 126
    .line 127
    const/4 v2, 0x7

    .line 128
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 129
    .line 130
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    add-int/2addr v0, v2

    .line 135
    :cond_7
    move v2, v1

    .line 136
    move v3, v2

    .line 137
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    .line 138
    .line 139
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-ge v2, v4, :cond_8

    .line 144
    .line 145
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    .line 146
    .line 147
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    add-int/2addr v3, v4

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    add-int/2addr v0, v3

    .line 160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    add-int/2addr v0, v2

    .line 169
    move v2, v1

    .line 170
    move v3, v2

    .line 171
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 172
    .line 173
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-ge v2, v4, :cond_9

    .line 178
    .line 179
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 180
    .line 181
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    add-int/2addr v3, v4

    .line 190
    add-int/lit8 v2, v2, 0x1

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    add-int/2addr v0, v3

    .line 194
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    add-int/2addr v0, v2

    .line 203
    move v2, v1

    .line 204
    move v3, v2

    .line 205
    :goto_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-ge v2, v4, :cond_a

    .line 212
    .line 213
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 214
    .line 215
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Ljava/lang/Integer;

    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    add-int/2addr v3, v4

    .line 230
    add-int/lit8 v2, v2, 0x1

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_a
    add-int/2addr v0, v3

    .line 234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBattrList()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-nez v2, :cond_b

    .line 243
    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 245
    .line 246
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    add-int/2addr v0, v2

    .line 251
    :cond_b
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->battrMemoizedSerializedSize:I

    .line 252
    .line 253
    move v2, v1

    .line 254
    move v3, v2

    .line 255
    :goto_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    .line 256
    .line 257
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-ge v2, v4, :cond_c

    .line 262
    .line 263
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    .line 264
    .line 265
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    add-int/2addr v3, v4

    .line 274
    add-int/lit8 v2, v2, 0x1

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_c
    add-int/2addr v0, v3

    .line 278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/m1;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    add-int/2addr v0, v2

    .line 287
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    .line 288
    .line 289
    if-eqz v2, :cond_d

    .line 290
    .line 291
    const/16 v3, 0xd

    .line 292
    .line 293
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    add-int/2addr v0, v2

    .line 298
    :cond_d
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    .line 299
    .line 300
    if-eqz v2, :cond_e

    .line 301
    .line 302
    const/16 v3, 0xe

    .line 303
    .line 304
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    add-int/2addr v0, v2

    .line 309
    :cond_e
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    .line 310
    .line 311
    if-eqz v2, :cond_f

    .line 312
    .line 313
    const/16 v3, 0xf

    .line 314
    .line 315
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    add-int/2addr v0, v2

    .line 320
    :cond_f
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 321
    .line 322
    if-eqz v2, :cond_10

    .line 323
    .line 324
    const/16 v2, 0x10

    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    add-int/2addr v0, v2

    .line 335
    :cond_10
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 336
    .line 337
    if-eqz v2, :cond_11

    .line 338
    .line 339
    const/16 v2, 0x11

    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    add-int/2addr v0, v2

    .line 350
    :cond_11
    :goto_6
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 351
    .line 352
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-ge v1, v2, :cond_12

    .line 357
    .line 358
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 359
    .line 360
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 365
    .line 366
    const/16 v3, 0x13

    .line 367
    .line 368
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    add-int/2addr v0, v2

    .line 373
    add-int/lit8 v1, v1, 0x1

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 377
    .line 378
    if-eqz v1, :cond_13

    .line 379
    .line 380
    const/16 v1, 0x14

    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    add-int/2addr v0, v1

    .line 391
    :cond_13
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    add-int/2addr v0, v1

    .line 398
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 399
    .line 400
    return v0
.end method

.method public getSsai()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTagid()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTagidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

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

.method public getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getWlang(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

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

.method public getWlangBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

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

.method public getWlangCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

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

.method public getWlangList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getWlangList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public hasDisplay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

.method public hasExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasVideo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

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
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x25

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x35

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    mul-int/lit8 v1, v1, 0x25

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x4

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v1, v0

    .line 73
    mul-int/lit8 v1, v1, 0x25

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x5

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x35

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatCount()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-lez v0, :cond_1

    .line 93
    .line 94
    mul-int/lit8 v1, v1, 0x25

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x6

    .line 97
    .line 98
    mul-int/lit8 v1, v1, 0x35

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/m1;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v1, v0

    .line 109
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x7

    .line 112
    .line 113
    mul-int/lit8 v1, v1, 0x35

    .line 114
    .line 115
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 116
    .line 117
    add-int/2addr v1, v0

    .line 118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvCount()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-lez v0, :cond_2

    .line 123
    .line 124
    mul-int/lit8 v1, v1, 0x25

    .line 125
    .line 126
    add-int/lit8 v1, v1, 0x9

    .line 127
    .line 128
    mul-int/lit8 v1, v1, 0x35

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    add-int/2addr v1, v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappCount()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-lez v0, :cond_3

    .line 144
    .line 145
    mul-int/lit8 v1, v1, 0x25

    .line 146
    .line 147
    add-int/lit8 v1, v1, 0xa

    .line 148
    .line 149
    mul-int/lit8 v1, v1, 0x35

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v1, v0

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBattrCount()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-lez v0, :cond_4

    .line 165
    .line 166
    mul-int/lit8 v1, v1, 0x25

    .line 167
    .line 168
    add-int/lit8 v1, v1, 0xb

    .line 169
    .line 170
    mul-int/lit8 v1, v1, 0x35

    .line 171
    .line 172
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    add-int/2addr v1, v0

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangCount()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-lez v0, :cond_5

    .line 184
    .line 185
    mul-int/lit8 v1, v1, 0x25

    .line 186
    .line 187
    add-int/lit8 v1, v1, 0xc

    .line 188
    .line 189
    mul-int/lit8 v1, v1, 0x35

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/m1;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    add-int/2addr v1, v0

    .line 200
    :cond_5
    mul-int/lit8 v1, v1, 0x25

    .line 201
    .line 202
    add-int/lit8 v1, v1, 0xd

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x35

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

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
    add-int/lit8 v1, v1, 0xe

    .line 218
    .line 219
    mul-int/lit8 v1, v1, 0x35

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    add-int/2addr v1, v0

    .line 230
    mul-int/lit8 v1, v1, 0x25

    .line 231
    .line 232
    add-int/lit8 v1, v1, 0xf

    .line 233
    .line 234
    mul-int/lit8 v1, v1, 0x35

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    add-int/2addr v1, v0

    .line 245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    mul-int/lit8 v1, v1, 0x25

    .line 252
    .line 253
    add-int/lit8 v1, v1, 0x10

    .line 254
    .line 255
    mul-int/lit8 v1, v1, 0x35

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hashCode()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    add-int/2addr v1, v0

    .line 266
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_7

    .line 271
    .line 272
    mul-int/lit8 v1, v1, 0x25

    .line 273
    .line 274
    add-int/lit8 v1, v1, 0x11

    .line 275
    .line 276
    mul-int/lit8 v1, v1, 0x35

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hashCode()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    add-int/2addr v1, v0

    .line 287
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_8

    .line 292
    .line 293
    mul-int/lit8 v1, v1, 0x25

    .line 294
    .line 295
    add-int/lit8 v1, v1, 0x14

    .line 296
    .line 297
    mul-int/lit8 v1, v1, 0x35

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    add-int/2addr v1, v0

    .line 308
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoCount()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-lez v0, :cond_9

    .line 313
    .line 314
    mul-int/lit8 v1, v1, 0x25

    .line 315
    .line 316
    add-int/lit8 v1, v1, 0x13

    .line 317
    .line 318
    mul-int/lit8 v1, v1, 0x35

    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoList()Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    add-int/2addr v1, v0

    .line 329
    :cond_9
    mul-int/lit8 v1, v1, 0x1d

    .line 330
    .line 331
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    add-int/2addr v1, v0

    .line 338
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 339
    .line 340
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->F:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/adcom/Placement;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$Builder;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagidBytes()Lcom/explorestack/protobuf/ByteString;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    const/4 v1, 0x5

    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 66
    .line 67
    .line 68
    :cond_4
    const/4 v0, 0x0

    .line 69
    move v1, v0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ge v1, v2, :cond_5

    .line 77
    .line 78
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 79
    .line 80
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v3, 0x6

    .line 85
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 92
    .line 93
    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eq v1, v2, :cond_6

    .line 100
    .line 101
    const/4 v1, 0x7

    .line 102
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 103
    .line 104
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 105
    .line 106
    .line 107
    :cond_6
    move v1, v0

    .line 108
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-ge v1, v2, :cond_7

    .line 115
    .line 116
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/n0;

    .line 117
    .line 118
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const/16 v3, 0x9

    .line 123
    .line 124
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_7
    move v1, v0

    .line 131
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-ge v1, v2, :cond_8

    .line 138
    .line 139
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 140
    .line 141
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const/16 v3, 0xa

    .line 146
    .line 147
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBattrList()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-lez v1, :cond_9

    .line 162
    .line 163
    const/16 v1, 0x5a

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 166
    .line 167
    .line 168
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battrMemoizedSerializedSize:I

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 171
    .line 172
    .line 173
    :cond_9
    move v1, v0

    .line 174
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-ge v1, v2, :cond_a

    .line 181
    .line 182
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    move v1, v0

    .line 201
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-ge v1, v2, :cond_b

    .line 208
    .line 209
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/n0;

    .line 210
    .line 211
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    const/16 v3, 0xc

    .line 216
    .line 217
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_b
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    .line 224
    .line 225
    if-eqz v1, :cond_c

    .line 226
    .line 227
    const/16 v2, 0xd

    .line 228
    .line 229
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 230
    .line 231
    .line 232
    :cond_c
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    .line 233
    .line 234
    if-eqz v1, :cond_d

    .line 235
    .line 236
    const/16 v2, 0xe

    .line 237
    .line 238
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 239
    .line 240
    .line 241
    :cond_d
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    .line 242
    .line 243
    if-eqz v1, :cond_e

    .line 244
    .line 245
    const/16 v2, 0xf

    .line 246
    .line 247
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 248
    .line 249
    .line 250
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 251
    .line 252
    if-eqz v1, :cond_f

    .line 253
    .line 254
    const/16 v1, 0x10

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 261
    .line 262
    .line 263
    :cond_f
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 264
    .line 265
    if-eqz v1, :cond_10

    .line 266
    .line 267
    const/16 v1, 0x11

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 274
    .line 275
    .line 276
    :cond_10
    :goto_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-ge v0, v1, :cond_11

    .line 283
    .line 284
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 285
    .line 286
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 291
    .line 292
    const/16 v2, 0x13

    .line 293
    .line 294
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 295
    .line 296
    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 301
    .line 302
    if-eqz v0, :cond_12

    .line 303
    .line 304
    const/16 v0, 0x14

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 311
    .line 312
    .line 313
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 314
    .line 315
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 316
    .line 317
    .line 318
    return-void
.end method
