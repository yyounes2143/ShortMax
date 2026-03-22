.class public final Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetAppearance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    }
.end annotation


# static fields
.field public static final AUTOROTATE_FIELD_NUMBER:I = 0x5

.field public static final BACKGROUND_COLOR_FIELD_NUMBER:I = 0xc

.field public static final CLOSABLE_VIEW_FIELD_NUMBER:I = 0x7

.field public static final CLOSE_TIME_FIELD_NUMBER:I = 0x1

.field public static final COUNTDOWN_FIELD_NUMBER:I = 0x6

.field public static final CTA_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

.field public static final DURATION_FIELD_NUMBER:I = 0x2

.field public static final IGNORES_SAFE_AREA_LAYOUT_GUIDE_FIELD_NUMBER:I = 0x3

.field public static final MUTE_ASSET_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROGRESS_FIELD_NUMBER:I = 0x8

.field public static final USE_CUSTOM_CLOSE_FIELD_NUMBER:I = 0x4

.field public static final VIDEO_ASSET_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private autorotate_:Z

.field private volatile backgroundColor_:Ljava/lang/Object;

.field private closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private closeTime_:F

.field private countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private duration_:I

.field private ignoresSafeAreaLayoutGuide_:Z

.field private memoizedIsInitialized:B

.field private muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

.field private useCustomClose_:Z

.field private videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v2

    if-nez v2, :cond_0

    :sswitch_0
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

    .line 13
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 14
    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :sswitch_2
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 17
    :cond_1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 19
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_0

    .line 20
    :sswitch_3
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 22
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 24
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto :goto_0

    .line 25
    :sswitch_4
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 27
    :cond_3
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 29
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_0

    .line 30
    :sswitch_5
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_4

    .line 31
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 32
    :cond_4
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 34
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_0

    .line 35
    :sswitch_6
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 37
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 39
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_0

    .line 40
    :sswitch_7
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v2, :cond_6

    .line 41
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    move-result-object v4

    .line 42
    :cond_6
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;

    .line 44
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    goto/16 :goto_0

    .line 45
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    goto/16 :goto_0

    .line 46
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    goto/16 :goto_0

    .line 47
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    goto/16 :goto_0

    .line 48
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    goto/16 :goto_0

    .line 49
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 50
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 52
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 54
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 55
    throw p1

    .line 56
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$3502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3702(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3802(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3902(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4002(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4102(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4202(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4302(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4402(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4502(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Lio/bidmachine/protobuf/CreativeExtension$AssetModel;)Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4600(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4602(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4700(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4800()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$4900(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

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
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eq v1, v2, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eq v1, v2, :cond_3

    .line 45
    .line 46
    return v3

    .line 47
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eq v1, v2, :cond_4

    .line 56
    .line 57
    return v3

    .line 58
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eq v1, v2, :cond_6

    .line 78
    .line 79
    return v3

    .line 80
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eq v1, v2, :cond_7

    .line 89
    .line 90
    return v3

    .line 91
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_8

    .line 96
    .line 97
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eq v1, v2, :cond_9

    .line 121
    .line 122
    return v3

    .line 123
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_a

    .line 142
    .line 143
    return v3

    .line 144
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eq v1, v2, :cond_b

    .line 153
    .line 154
    return v3

    .line 155
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_c

    .line 160
    .line 161
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_c

    .line 174
    .line 175
    return v3

    .line 176
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eq v1, v2, :cond_d

    .line 185
    .line 186
    return v3

    .line 187
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_e

    .line 192
    .line 193
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_e

    .line 206
    .line 207
    return v3

    .line 208
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eq v1, v2, :cond_f

    .line 217
    .line 218
    return v3

    .line 219
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_10

    .line 224
    .line 225
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_10

    .line 238
    .line 239
    return v3

    .line 240
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eq v1, v2, :cond_11

    .line 249
    .line 250
    return v3

    .line 251
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_12

    .line 256
    .line 257
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_12

    .line 270
    .line 271
    return v3

    .line 272
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_13

    .line 285
    .line 286
    return v3

    .line 287
    :cond_13
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 288
    .line 289
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 290
    .line 291
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-nez p1, :cond_14

    .line 296
    .line 297
    return v3

    .line 298
    :cond_14
    return v0
.end method

.method public getAutorotate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

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

.method public getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getClosableViewOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCloseTime()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    .line 2
    .line 3
    return v0
.end method

.method public getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCountdownOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCtaOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIgnoresSafeAreaLayoutGuide()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getMuteAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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
            "Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getProgressOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

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
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v1, v0, v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    :cond_2
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_3
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v0, v1

    .line 51
    :cond_4
    iget-boolean v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    :cond_5
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_6
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v0, v1

    .line 89
    :cond_7
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 90
    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_8
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 105
    .line 106
    if-eqz v1, :cond_9

    .line 107
    .line 108
    const/16 v1, 0x9

    .line 109
    .line 110
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v0, v1

    .line 119
    :cond_9
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 120
    .line 121
    if-eqz v1, :cond_a

    .line 122
    .line 123
    const/16 v1, 0xa

    .line 124
    .line 125
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    add-int/2addr v0, v1

    .line 134
    :cond_a
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 135
    .line 136
    if-eqz v1, :cond_b

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/2addr v0, v1

    .line 149
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_c

    .line 158
    .line 159
    const/16 v1, 0xc

    .line 160
    .line 161
    iget-object v2, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    add-int/2addr v0, v1

    .line 168
    :cond_c
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v0, v1

    .line 175
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 176
    .line 177
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

.method public getUseCustomClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getVideoAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetModelOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hasClosableView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasCountdown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasCta()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasMuteAsset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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

.method public hasVideoAsset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

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
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCloseTime()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDuration()I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getIgnoresSafeAreaLayoutGuide()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getUseCustomClose()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getAutorotate()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCountdown()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_1

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v1, v0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasClosableView()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    mul-int/lit8 v1, v1, 0x25

    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x7

    .line 118
    .line 119
    mul-int/lit8 v1, v1, 0x35

    .line 120
    .line 121
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/2addr v1, v0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasProgress()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    mul-int/lit8 v1, v1, 0x25

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x8

    .line 139
    .line 140
    mul-int/lit8 v1, v1, 0x35

    .line 141
    .line 142
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    add-int/2addr v1, v0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasCta()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    mul-int/lit8 v1, v1, 0x25

    .line 158
    .line 159
    add-int/lit8 v1, v1, 0x9

    .line 160
    .line 161
    mul-int/lit8 v1, v1, 0x35

    .line 162
    .line 163
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    add-int/2addr v1, v0

    .line 172
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasMuteAsset()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    mul-int/lit8 v1, v1, 0x25

    .line 179
    .line 180
    add-int/lit8 v1, v1, 0xa

    .line 181
    .line 182
    mul-int/lit8 v1, v1, 0x35

    .line 183
    .line 184
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    add-int/2addr v1, v0

    .line 193
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hasVideoAsset()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_6

    .line 198
    .line 199
    mul-int/lit8 v1, v1, 0x25

    .line 200
    .line 201
    add-int/lit8 v1, v1, 0xb

    .line 202
    .line 203
    mul-int/lit8 v1, v1, 0x35

    .line 204
    .line 205
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetModel;->hashCode()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    add-int/2addr v1, v0

    .line 214
    :cond_6
    mul-int/lit8 v1, v1, 0x25

    .line 215
    .line 216
    add-int/lit8 v1, v1, 0xc

    .line 217
    .line 218
    mul-int/lit8 v1, v1, 0x35

    .line 219
    .line 220
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColor()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    add-int/2addr v1, v0

    .line 229
    mul-int/lit8 v1, v1, 0x1d

    .line 230
    .line 231
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    add-int/2addr v1, v0

    .line 238
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 239
    .line 240
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

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
    iget-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->newBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closeTime_:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->duration_:I

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
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->ignoresSafeAreaLayoutGuide_:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->useCustomClose_:Z

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 34
    .line 35
    .line 36
    :cond_3
    iget-boolean v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->autorotate_:Z

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 42
    .line 43
    .line 44
    :cond_4
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->countdown_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCountdown()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->closableView_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    const/4 v0, 0x7

    .line 61
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getClosableView()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->progress_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    const/16 v0, 0x8

    .line 73
    .line 74
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getProgress()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 79
    .line 80
    .line 81
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->cta_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 82
    .line 83
    if-eqz v0, :cond_8

    .line 84
    .line 85
    const/16 v0, 0x9

    .line 86
    .line 87
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getCta()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 92
    .line 93
    .line 94
    :cond_8
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->muteAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    const/16 v0, 0xa

    .line 99
    .line 100
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getMuteAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 105
    .line 106
    .line 107
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->videoAsset_:Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 108
    .line 109
    if-eqz v0, :cond_a

    .line 110
    .line 111
    const/16 v0, 0xb

    .line 112
    .line 113
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getVideoAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetModel;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 118
    .line 119
    .line 120
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getBackgroundColorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_b

    .line 129
    .line 130
    const/16 v0, 0xc

    .line 131
    .line 132
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->backgroundColor_:Ljava/lang/Object;

    .line 133
    .line 134
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
