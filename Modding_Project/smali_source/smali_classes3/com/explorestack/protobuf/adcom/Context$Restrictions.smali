.class public final Lcom/explorestack/protobuf/adcom/Context$Restrictions;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Restrictions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    }
.end annotation


# static fields
.field public static final BADV_FIELD_NUMBER:I = 0x3

.field public static final BAPP_FIELD_NUMBER:I = 0x4

.field public static final BATTR_FIELD_NUMBER:I = 0x5

.field public static final BCAT_FIELD_NUMBER:I = 0x1

.field public static final CATTAX_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 14
    .line 15
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 9
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    .line 10
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_17

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0xa

    if-eq v4, v6, :cond_10

    if-eq v4, v3, :cond_f

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_d

    const/16 v6, 0x22

    if-eq v4, v6, :cond_b

    const/16 v6, 0x28

    if-eq v4, v6, :cond_9

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_6

    const/16 v6, 0x32

    if-eq v4, v6, :cond_4

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_2

    .line 17
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v5

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

    .line 18
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_3

    .line 19
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 20
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 22
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_5

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 24
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 25
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 26
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v4

    .line 28
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v4

    .line 29
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v5

    if-lez v5, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v5

    and-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_7

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 32
    :cond_7
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_8
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    .line 34
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_a

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 36
    :cond_a
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_c

    .line 38
    new-instance v5, Lcom/explorestack/protobuf/m0;

    invoke-direct {v5}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x4

    .line 39
    :cond_c
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_e

    .line 41
    new-instance v5, Lcom/explorestack/protobuf/m0;

    invoke-direct {v5}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x2

    .line 42
    :cond_e
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    .line 44
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    goto/16 :goto_0

    .line 45
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_11

    .line 46
    new-instance v5, Lcom/explorestack/protobuf/m0;

    invoke-direct {v5}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x1

    .line 47
    :cond_11
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 48
    :goto_3
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 49
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50
    :goto_4
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_12

    .line 51
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    :cond_12
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_13

    .line 52
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    :cond_13
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_14

    .line 53
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    :cond_14
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_15

    .line 54
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_16

    .line 55
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 56
    :cond_16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 58
    throw p1

    :cond_17
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_18

    .line 59
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    :cond_18
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_19

    .line 60
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    :cond_19
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1a

    .line 61
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    :cond_1a
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1b

    .line 62
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_1c

    .line 63
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 64
    :cond_1c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 65
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$28900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$29100(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$29102(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$29200(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$29202(Lcom/explorestack/protobuf/adcom/Context$Restrictions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$29300(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$29302(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$29400(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$29402(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$29500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$29502(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$29602(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$29700(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$29702(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$29800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$29900(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$30000()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$30100(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$30200(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$30300(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$30400()Lcom/explorestack/protobuf/i0$h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->A:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

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
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBcatList()Lcom/explorestack/protobuf/m1;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBcatList()Lcom/explorestack/protobuf/m1;

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 33
    .line 34
    iget v3, p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 35
    .line 36
    if-eq v1, v3, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 70
    .line 71
    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_6

    .line 78
    .line 79
    return v2

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->hasExt()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->hasExt()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eq v1, v3, :cond_7

    .line 89
    .line 90
    return v2

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->hasExt()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_8

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    return v2

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExtProtoList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExtProtoList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_9

    .line 125
    .line 126
    return v2

    .line 127
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_a

    .line 136
    .line 137
    return v2

    .line 138
    :cond_a
    return v0
.end method

.method public getBadv(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getBadvList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBadvList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getBapp(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getBappList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBappList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getBattr(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

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
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_converter_:Lcom/explorestack/protobuf/i0$h$a;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBcat(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getBcatList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBcatList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

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
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

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
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

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
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBcatList()Lcom/explorestack/protobuf/m1;

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 42
    .line 43
    sget-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eq v1, v3, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 53
    .line 54
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v2, v1

    .line 59
    :cond_2
    move v1, v0

    .line 60
    move v3, v1

    .line 61
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-ge v1, v4, :cond_3

    .line 68
    .line 69
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    .line 70
    .line 71
    invoke-interface {v4, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    add-int/2addr v3, v4

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    add-int/2addr v2, v3

    .line 84
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v2, v1

    .line 93
    move v1, v0

    .line 94
    move v3, v1

    .line 95
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 96
    .line 97
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-ge v1, v4, :cond_4

    .line 102
    .line 103
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 104
    .line 105
    invoke-interface {v4, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    add-int/2addr v3, v4

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    add-int/2addr v2, v3

    .line 118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    add-int/2addr v2, v1

    .line 127
    move v1, v0

    .line 128
    move v3, v1

    .line 129
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-ge v1, v4, :cond_5

    .line 136
    .line 137
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    add-int/2addr v3, v4

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    add-int/2addr v2, v3

    .line 158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBattrList()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_6

    .line 167
    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v2, v1

    .line 175
    :cond_6
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battrMemoizedSerializedSize:I

    .line 176
    .line 177
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-ge v0, v1, :cond_7

    .line 184
    .line 185
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

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
    goto :goto_4

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 203
    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    const/4 v0, 0x7

    .line 207
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

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
    :cond_8
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
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBcatCount()I

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBcatList()Lcom/explorestack/protobuf/m1;

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
    mul-int/lit8 v1, v1, 0x25

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBadvCount()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    mul-int/lit8 v1, v1, 0x25

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x3

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x35

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBadvList()Lcom/explorestack/protobuf/m1;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v1, v0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBappCount()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-lez v0, :cond_3

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x25

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x4

    .line 77
    .line 78
    mul-int/lit8 v1, v1, 0x35

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBappList()Lcom/explorestack/protobuf/m1;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/2addr v1, v0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBattrCount()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-lez v0, :cond_4

    .line 94
    .line 95
    mul-int/lit8 v1, v1, 0x25

    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x5

    .line 98
    .line 99
    mul-int/lit8 v1, v1, 0x35

    .line 100
    .line 101
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    add-int/2addr v1, v0

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->hasExt()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    mul-int/lit8 v1, v1, 0x25

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x7

    .line 117
    .line 118
    mul-int/lit8 v1, v1, 0x35

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    add-int/2addr v1, v0

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExtProtoCount()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-lez v0, :cond_6

    .line 134
    .line 135
    mul-int/lit8 v1, v1, 0x25

    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x6

    .line 138
    .line 139
    mul-int/lit8 v1, v1, 0x35

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExtProtoList()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v1, v0

    .line 150
    :cond_6
    mul-int/lit8 v1, v1, 0x1d

    .line 151
    .line 152
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int/2addr v1, v0

    .line 159
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 160
    .line 161
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/b;->B:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

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
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bcat_:Lcom/explorestack/protobuf/n0;

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
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 28
    .line 29
    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->cattax_:I

    .line 39
    .line 40
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 41
    .line 42
    .line 43
    :cond_1
    move v1, v0

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ge v1, v2, :cond_2

    .line 51
    .line 52
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->badv_:Lcom/explorestack/protobuf/n0;

    .line 53
    .line 54
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x3

    .line 59
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v1, v0

    .line 66
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ge v1, v2, :cond_3

    .line 73
    .line 74
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->bapp_:Lcom/explorestack/protobuf/n0;

    .line 75
    .line 76
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const/4 v3, 0x4

    .line 81
    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getBattrList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-lez v1, :cond_4

    .line 96
    .line 97
    const/16 v1, 0x2a

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battrMemoizedSerializedSize:I

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 105
    .line 106
    .line 107
    :cond_4
    move v1, v0

    .line 108
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-ge v1, v2, :cond_5

    .line 115
    .line 116
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->battr_:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->w0(I)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-ge v0, v1, :cond_6

    .line 141
    .line 142
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->extProto_:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 149
    .line 150
    const/4 v2, 0x6

    .line 151
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    const/4 v0, 0x7

    .line 162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 170
    .line 171
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method
