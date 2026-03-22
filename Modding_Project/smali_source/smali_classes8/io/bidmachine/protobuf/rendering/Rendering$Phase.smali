.class public final Lio/bidmachine/protobuf/rendering/Rendering$Phase;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Rendering.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/Rendering$PhaseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;,
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$CustomParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;,
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$EventOrBuilder;,
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;,
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponentOrBuilder;,
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;,
        Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;
    }
.end annotation


# static fields
.field public static final ADS_FIELD_NUMBER:I = 0x3

.field public static final ANIMATIONS_FIELD_NUMBER:I = 0x8

.field public static final BACKGROUND_COLOR_FIELD_NUMBER:I = 0x2

.field public static final BACKGROUND_FIELD_NUMBER:I = 0xb

.field public static final CONTROLS_FIELD_NUMBER:I = 0x4

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Phase;

.field public static final EVENTS_FIELD_NUMBER:I = 0x6

.field public static final FEATURES_FIELD_NUMBER:I = 0x9

.field public static final METHODS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x1

.field public static final STATE_GROUPS_FIELD_NUMBER:I = 0xa

.field private static final serialVersionUID:J


# instance fields
.field private ads_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;",
            ">;"
        }
    .end annotation
.end field

.field private animations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile backgroundColor_:Ljava/lang/Object;

.field private background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

.field private controls_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;",
            ">;"
        }
    .end annotation
.end field

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private events_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;",
            ">;"
        }
    .end annotation
.end field

.field private features_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/RenderingFeature;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private methods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;",
            ">;"
        }
    .end annotation
.end field

.field private sequence_:I

.field private stateGroups_:Lcom/explorestack/protobuf/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 14
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

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
    iput-byte p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/rendering/Rendering$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_11

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 19
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

    .line 20
    :sswitch_1
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {v3}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Background$Builder;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/rendering/Rendering$Background;

    iput-object v4, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/rendering/Rendering$Background$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering$Background;)Lio/bidmachine/protobuf/rendering/Rendering$Background$Builder;

    .line 24
    invoke-virtual {v3}, Lio/bidmachine/protobuf/rendering/Rendering$Background$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

    goto :goto_0

    .line 25
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_2

    .line 26
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    or-int/lit16 v2, v2, 0x80

    .line 27
    :cond_2
    iget-object v4, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_3

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 29
    :cond_3
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 30
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingFeature;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 31
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_4

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 33
    :cond_4
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 34
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 35
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_5

    .line 36
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$Phase$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    invoke-static {v3}, Lcom/explorestack/protobuf/MapField;->p(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->customParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x10

    .line 37
    :cond_5
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$Phase$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 38
    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0;->getParserForType()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    .line 39
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/s0;

    .line 40
    iget-object v4, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    move-result-object v4

    .line 41
    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0;->h()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0;->j()Ljava/lang/Object;

    move-result-object v3

    .line 42
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_6

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 44
    :cond_6
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 45
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 46
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_7

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 48
    :cond_7
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 49
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_8

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 52
    :cond_8
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 53
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 54
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_9

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 56
    :cond_9
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 57
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 60
    iput-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 61
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->sequence_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 62
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 63
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 64
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 65
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_b

    .line 66
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_c

    .line 67
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_d

    .line 68
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_e

    .line 69
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_f

    .line 70
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    :cond_f
    and-int/lit16 p2, v2, 0x80

    if-eqz p2, :cond_10

    .line 71
    iget-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 72
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 74
    throw p1

    :cond_11
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_12

    .line 75
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_13

    .line 76
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_14

    .line 77
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_15

    .line 78
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_16

    .line 79
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_17

    .line 80
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    :cond_17
    and-int/lit16 p1, v2, 0x80

    if-eqz p1, :cond_18

    .line 81
    iget-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 82
    :cond_18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/rendering/Rendering$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$25100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$25302(Lio/bidmachine/protobuf/rendering/Rendering$Phase;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->sequence_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$25400(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$25402(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$25500(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$25502(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$25600(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$25602(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$25700(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$25702(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$25800(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$25802(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$25900(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$25902(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$26000(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$26002(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$26100(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$26102(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$26200(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$26202(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$26302(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Lio/bidmachine/protobuf/rendering/Rendering$Background;)Lio/bidmachine/protobuf/rendering/Rendering$Background;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$26400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$26500()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$26600()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$26700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$26800(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$26900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$27000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$27100(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$27200()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$27300(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$27400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_Rendering_Phase_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

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

.method public static newBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

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
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getSequence()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getSequence()I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackgroundColor()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackgroundColor()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    return v3

    .line 43
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAdsList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAdsList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    return v3

    .line 58
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getControlsList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getControlsList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    return v3

    .line 73
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getMethodsList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getMethodsList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_6

    .line 86
    .line 87
    return v3

    .line 88
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getEventsList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getEventsList()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    return v3

    .line 103
    :cond_7
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_8

    .line 116
    .line 117
    return v3

    .line 118
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAnimationsList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAnimationsList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_9

    .line 131
    .line 132
    return v3

    .line 133
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getFeaturesList()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getFeaturesList()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_a

    .line 146
    .line 147
    return v3

    .line 148
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getStateGroupsList()Lcom/explorestack/protobuf/m1;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getStateGroupsList()Lcom/explorestack/protobuf/m1;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_b

    .line 161
    .line 162
    return v3

    .line 163
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->hasBackground()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->hasBackground()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eq v1, v2, :cond_c

    .line 172
    .line 173
    return v3

    .line 174
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->hasBackground()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_d

    .line 179
    .line 180
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_d

    .line 193
    .line 194
    return v3

    .line 195
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 198
    .line 199
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_e

    .line 204
    .line 205
    return v3

    .line 206
    :cond_e
    return v0
.end method

.method public getAds(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAdsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

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

.method public getAdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAdsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAnimations(I)Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAnimationsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

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

.method public getAnimationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAnimationsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimationOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAnimationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

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

.method public getBackgroundOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$BackgroundOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getControls(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;

    .line 8
    .line 9
    return-object p1
.end method

.method public getControlsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

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

.method public getControlsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getControlsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getControlsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getCustomParamsMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCustomParamsCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

.method public getCustomParamsMap()Ljava/util/Map;
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
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/Rendering$Phase;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    return-object v0
.end method

.method public getEvents(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

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

.method public getEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$EventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$EventOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFeatures(I)Lio/bidmachine/protobuf/rendering/RenderingFeature;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingFeature;

    .line 8
    .line 9
    return-object p1
.end method

.method public getFeaturesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

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

.method public getFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/RenderingFeature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/rendering/RenderingFeatureOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingFeatureOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getFeaturesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/RenderingFeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMethods(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;

    .line 8
    .line 9
    return-object p1
.end method

.method public getMethodsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

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

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMethodsOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponentOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponentOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

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
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->sequence_:I

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->sequence_:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v0, v2

    .line 37
    :cond_2
    move v2, v1

    .line 38
    :goto_1
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ge v2, v3, :cond_3

    .line 45
    .line 46
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    add-int/2addr v0, v3

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v2, v1

    .line 64
    :goto_2
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-ge v2, v3, :cond_4

    .line 71
    .line 72
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 79
    .line 80
    const/4 v4, 0x4

    .line 81
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    add-int/2addr v0, v3

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v2, v1

    .line 90
    :goto_3
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-ge v2, v3, :cond_5

    .line 97
    .line 98
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 105
    .line 106
    const/4 v4, 0x5

    .line 107
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    add-int/2addr v0, v3

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move v2, v1

    .line 116
    :goto_4
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-ge v2, v3, :cond_6

    .line 123
    .line 124
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 131
    .line 132
    const/4 v4, 0x6

    .line 133
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    add-int/2addr v0, v3

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ljava/util/Map$Entry;

    .line 168
    .line 169
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Phase$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/explorestack/protobuf/s0;->n()Lcom/explorestack/protobuf/s0$b;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/s0$b;->o(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/s0$b;->r(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v3}, Lcom/explorestack/protobuf/s0$b;->b()Lcom/explorestack/protobuf/s0;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const/4 v4, 0x7

    .line 196
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    add-int/2addr v0, v3

    .line 201
    goto :goto_5

    .line 202
    :cond_7
    move v2, v1

    .line 203
    :goto_6
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-ge v2, v3, :cond_8

    .line 210
    .line 211
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 218
    .line 219
    const/16 v4, 0x8

    .line 220
    .line 221
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    add-int/2addr v0, v3

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_8
    move v2, v1

    .line 230
    :goto_7
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-ge v2, v3, :cond_9

    .line 237
    .line 238
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 239
    .line 240
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 245
    .line 246
    const/16 v4, 0x9

    .line 247
    .line 248
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    add-int/2addr v0, v3

    .line 253
    add-int/lit8 v2, v2, 0x1

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_9
    move v2, v1

    .line 257
    :goto_8
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 258
    .line 259
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-ge v1, v3, :cond_a

    .line 264
    .line 265
    iget-object v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 266
    .line 267
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-static {v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    add-int/2addr v2, v3

    .line 276
    add-int/lit8 v1, v1, 0x1

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_a
    add-int/2addr v0, v2

    .line 280
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getStateGroupsList()Lcom/explorestack/protobuf/m1;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    add-int/2addr v0, v1

    .line 289
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 290
    .line 291
    if-eqz v1, :cond_b

    .line 292
    .line 293
    const/16 v1, 0xb

    .line 294
    .line 295
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    add-int/2addr v0, v1

    .line 304
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    add-int/2addr v0, v1

    .line 311
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 312
    .line 313
    return v0
.end method

.method public getStateGroups(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

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

.method public getStateGroupsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

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

.method public getStateGroupsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

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

.method public getStateGroupsList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getStateGroupsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getStateGroupsList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

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

.method public hasBackground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

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
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getSequence()I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackgroundColor()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v1, v0

    .line 43
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAdsCount()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    mul-int/lit8 v1, v1, 0x25

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x3

    .line 52
    .line 53
    mul-int/lit8 v1, v1, 0x35

    .line 54
    .line 55
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAdsList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v1, v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getControlsCount()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-lez v0, :cond_2

    .line 69
    .line 70
    mul-int/lit8 v1, v1, 0x25

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x4

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x35

    .line 75
    .line 76
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getControlsList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v1, v0

    .line 85
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getMethodsCount()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-lez v0, :cond_3

    .line 90
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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getMethodsList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-int/2addr v1, v0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getEventsCount()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-lez v0, :cond_4

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x25

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x6

    .line 115
    .line 116
    mul-int/lit8 v1, v1, 0x35

    .line 117
    .line 118
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getEventsList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    add-int/2addr v1, v0

    .line 127
    :cond_4
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_5

    .line 140
    .line 141
    mul-int/lit8 v1, v1, 0x25

    .line 142
    .line 143
    add-int/lit8 v1, v1, 0x7

    .line 144
    .line 145
    mul-int/lit8 v1, v1, 0x35

    .line 146
    .line 147
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    add-int/2addr v1, v0

    .line 156
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAnimationsCount()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-lez v0, :cond_6

    .line 161
    .line 162
    mul-int/lit8 v1, v1, 0x25

    .line 163
    .line 164
    add-int/lit8 v1, v1, 0x8

    .line 165
    .line 166
    mul-int/lit8 v1, v1, 0x35

    .line 167
    .line 168
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAnimationsList()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    add-int/2addr v1, v0

    .line 177
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getFeaturesCount()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-lez v0, :cond_7

    .line 182
    .line 183
    mul-int/lit8 v1, v1, 0x25

    .line 184
    .line 185
    add-int/lit8 v1, v1, 0x9

    .line 186
    .line 187
    mul-int/lit8 v1, v1, 0x35

    .line 188
    .line 189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getFeaturesList()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    add-int/2addr v1, v0

    .line 198
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getStateGroupsCount()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-lez v0, :cond_8

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x25

    .line 205
    .line 206
    add-int/lit8 v1, v1, 0xa

    .line 207
    .line 208
    mul-int/lit8 v1, v1, 0x35

    .line 209
    .line 210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getStateGroupsList()Lcom/explorestack/protobuf/m1;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    add-int/2addr v1, v0

    .line 219
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->hasBackground()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_9

    .line 224
    .line 225
    mul-int/lit8 v1, v1, 0x25

    .line 226
    .line 227
    add-int/lit8 v1, v1, 0xb

    .line 228
    .line 229
    mul-int/lit8 v1, v1, 0x35

    .line 230
    .line 231
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->hashCode()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    add-int/2addr v1, v0

    .line 240
    :cond_9
    mul-int/lit8 v1, v1, 0x1d

    .line 241
    .line 242
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    add-int/2addr v1, v0

    .line 249
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 250
    .line 251
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_Rendering_Phase_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

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
    const/4 v0, 0x7

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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
    iget-byte v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->newBuilderForType()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->newBuilderForType()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->newBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/rendering/Rendering$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering$Phase;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Builder;

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
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->sequence_:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->backgroundColor_:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v1, v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->ads_:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v1, v0

    .line 51
    :goto_1
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ge v1, v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->controls_:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 66
    .line 67
    const/4 v3, 0x4

    .line 68
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v1, v0

    .line 75
    :goto_2
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-ge v1, v2, :cond_4

    .line 82
    .line 83
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->methods_:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 90
    .line 91
    const/4 v3, 0x5

    .line 92
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move v1, v0

    .line 99
    :goto_3
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-ge v1, v2, :cond_5

    .line 106
    .line 107
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->events_:Ljava/util/List;

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
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget-object v2, Lio/bidmachine/protobuf/rendering/Rendering$Phase$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 127
    .line 128
    const/4 v3, 0x7

    .line 129
    invoke-static {p1, v1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/s0;I)V

    .line 130
    .line 131
    .line 132
    move v1, v0

    .line 133
    :goto_4
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-ge v1, v2, :cond_6

    .line 140
    .line 141
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->animations_:Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 148
    .line 149
    const/16 v3, 0x8

    .line 150
    .line 151
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    move v1, v0

    .line 158
    :goto_5
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-ge v1, v2, :cond_7

    .line 165
    .line 166
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->features_:Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 173
    .line 174
    const/16 v3, 0x9

    .line 175
    .line 176
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_7
    :goto_6
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-ge v0, v1, :cond_8

    .line 189
    .line 190
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->stateGroups_:Lcom/explorestack/protobuf/n0;

    .line 191
    .line 192
    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const/16 v2, 0xa

    .line 197
    .line 198
    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_8
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->background_:Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 205
    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    const/16 v0, 0xb

    .line 209
    .line 210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 215
    .line 216
    .line 217
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method
