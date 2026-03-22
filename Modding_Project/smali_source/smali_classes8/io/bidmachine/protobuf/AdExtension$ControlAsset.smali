.class public final Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControlAsset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field public static final FILL_FIELD_NUMBER:I = 0x2

.field public static final FONT_STYLE_FIELD_NUMBER:I = 0x3

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final HIDEAFTER_FIELD_NUMBER:I = 0x5

.field public static final MARGIN_FIELD_NUMBER:I = 0x6

.field public static final OPACITY_FIELD_NUMBER:I = 0x7

.field public static final OUTLINED_FIELD_NUMBER:I = 0x8

.field public static final PADDING_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADOW_FIELD_NUMBER:I = 0xa

.field public static final STROKE_FIELD_NUMBER:I = 0xb

.field public static final STROKE_WIDTH_FIELD_NUMBER:I = 0x12

.field public static final STYLE_FIELD_NUMBER:I = 0xd

.field public static final VISIBLE_FIELD_NUMBER:I = 0xe

.field public static final WIDTH_FIELD_NUMBER:I = 0xf

.field public static final X_FIELD_NUMBER:I = 0x10

.field public static final Y_FIELD_NUMBER:I = 0x11

.field private static final serialVersionUID:J


# instance fields
.field private volatile content_:Ljava/lang/Object;

.field private volatile fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private volatile margin_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private opacity_:F

.field private outlined_:Z

.field private volatile padding_:Ljava/lang/Object;

.field private volatile shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private volatile stroke_:Ljava/lang/Object;

.field private volatile style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private volatile x_:Ljava/lang/Object;

.field private volatile y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 20
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

    .line 21
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    goto :goto_0

    .line 22
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    goto :goto_0

    .line 27
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    goto :goto_0

    .line 28
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 29
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 31
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 33
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    goto :goto_0

    .line 37
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    goto :goto_0

    .line 38
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 39
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    goto :goto_0

    .line 41
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    goto :goto_0

    .line 42
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    goto/16 :goto_0

    .line 43
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 44
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 45
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 46
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 47
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 49
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 52
    throw p1

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 54
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_11
        0x12 -> :sswitch_10
        0x18 -> :sswitch_f
        0x20 -> :sswitch_e
        0x28 -> :sswitch_d
        0x32 -> :sswitch_c
        0x3d -> :sswitch_b
        0x40 -> :sswitch_a
        0x4a -> :sswitch_9
        0x52 -> :sswitch_8
        0x5a -> :sswitch_7
        0x6a -> :sswitch_6
        0x70 -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x8a -> :sswitch_2
        0x95 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$1002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1302(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

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

.method static synthetic access$2000(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2100(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eq v1, v3, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eq v1, v3, :cond_5

    .line 67
    .line 68
    return v2

    .line 69
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    return v2

    .line 95
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eq v1, v3, :cond_8

    .line 112
    .line 113
    return v2

    .line 114
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eq v1, v3, :cond_9

    .line 123
    .line 124
    return v2

    .line 125
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_a

    .line 138
    .line 139
    return v2

    .line 140
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_b

    .line 153
    .line 154
    return v2

    .line 155
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_c

    .line 168
    .line 169
    return v2

    .line 170
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eq v1, v3, :cond_d

    .line 187
    .line 188
    return v2

    .line 189
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_e

    .line 202
    .line 203
    return v2

    .line 204
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eq v1, v3, :cond_f

    .line 213
    .line 214
    return v2

    .line 215
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eq v1, v3, :cond_10

    .line 224
    .line 225
    return v2

    .line 226
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_11

    .line 239
    .line 240
    return v2

    .line 241
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_12

    .line 254
    .line 255
    return v2

    .line 256
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 257
    .line 258
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 259
    .line 260
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_13

    .line 265
    .line 266
    return v2

    .line 267
    :cond_13
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public getFill()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

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

.method public getFontStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHideafter()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMargin()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMarginBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

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

.method public getOpacity()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    .line 2
    .line 3
    return v0
.end method

.method public getOutlined()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPadding()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getPaddingBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

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
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

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
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    :cond_2
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    const/4 v2, 0x4

    .line 59
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_4
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v0, v1

    .line 74
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMarginBytes()Lcom/explorestack/protobuf/ByteString;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_6

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_6
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    cmpl-float v3, v1, v2

    .line 96
    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    const/4 v3, 0x7

    .line 100
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v0, v1

    .line 105
    :cond_7
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    const/16 v3, 0x8

    .line 110
    .line 111
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v0, v1

    .line 116
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPaddingBytes()Lcom/explorestack/protobuf/ByteString;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_9

    .line 125
    .line 126
    const/16 v1, 0x9

    .line 127
    .line 128
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_a

    .line 144
    .line 145
    const/16 v1, 0xa

    .line 146
    .line 147
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    add-int/2addr v0, v1

    .line 154
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_b

    .line 163
    .line 164
    const/16 v1, 0xb

    .line 165
    .line 166
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 167
    .line 168
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    add-int/2addr v0, v1

    .line 173
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_c

    .line 182
    .line 183
    const/16 v1, 0xd

    .line 184
    .line 185
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 186
    .line 187
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    add-int/2addr v0, v1

    .line 192
    :cond_c
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    .line 193
    .line 194
    if-eqz v1, :cond_d

    .line 195
    .line 196
    const/16 v3, 0xe

    .line 197
    .line 198
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    add-int/2addr v0, v1

    .line 203
    :cond_d
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    .line 204
    .line 205
    if-eqz v1, :cond_e

    .line 206
    .line 207
    const/16 v3, 0xf

    .line 208
    .line 209
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    add-int/2addr v0, v1

    .line 214
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_f

    .line 223
    .line 224
    const/16 v1, 0x10

    .line 225
    .line 226
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    add-int/2addr v0, v1

    .line 233
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_10

    .line 242
    .line 243
    const/16 v1, 0x11

    .line 244
    .line 245
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    add-int/2addr v0, v1

    .line 252
    :cond_10
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    .line 253
    .line 254
    cmpl-float v2, v1, v2

    .line 255
    .line 256
    if-eqz v2, :cond_11

    .line 257
    .line 258
    const/16 v2, 0x12

    .line 259
    .line 260
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    add-int/2addr v0, v1

    .line 265
    :cond_11
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    add-int/2addr v0, v1

    .line 272
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 273
    .line 274
    return v0
.end method

.method public getShadow()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

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

.method public getStroke()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

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

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    .line 2
    .line 3
    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

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

.method public getVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    .line 2
    .line 3
    return v0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getXBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

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

.method public getY()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getYBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

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
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x25

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x5

    .line 72
    .line 73
    mul-int/lit8 v1, v1, 0x35

    .line 74
    .line 75
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    mul-int/lit8 v1, v1, 0x25

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x6

    .line 83
    .line 84
    mul-int/lit8 v1, v1, 0x35

    .line 85
    .line 86
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    add-int/2addr v1, v0

    .line 95
    mul-int/lit8 v1, v1, 0x25

    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x7

    .line 98
    .line 99
    mul-int/lit8 v1, v1, 0x35

    .line 100
    .line 101
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v1, v0

    .line 110
    mul-int/lit8 v1, v1, 0x25

    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x8

    .line 113
    .line 114
    mul-int/lit8 v1, v1, 0x35

    .line 115
    .line 116
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/2addr v1, v0

    .line 125
    mul-int/lit8 v1, v1, 0x25

    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x9

    .line 128
    .line 129
    mul-int/lit8 v1, v1, 0x35

    .line 130
    .line 131
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    mul-int/lit8 v1, v1, 0x25

    .line 141
    .line 142
    add-int/lit8 v1, v1, 0xa

    .line 143
    .line 144
    mul-int/lit8 v1, v1, 0x35

    .line 145
    .line 146
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    add-int/2addr v1, v0

    .line 155
    mul-int/lit8 v1, v1, 0x25

    .line 156
    .line 157
    add-int/lit8 v1, v1, 0xb

    .line 158
    .line 159
    mul-int/lit8 v1, v1, 0x35

    .line 160
    .line 161
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    add-int/2addr v1, v0

    .line 170
    mul-int/lit8 v1, v1, 0x25

    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x12

    .line 173
    .line 174
    mul-int/lit8 v1, v1, 0x35

    .line 175
    .line 176
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 181
    .line 182
    .line 183
    move-result v0

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

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
    add-int/lit8 v1, v1, 0xf

    .line 218
    .line 219
    mul-int/lit8 v1, v1, 0x35

    .line 220
    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    add-int/2addr v1, v0

    .line 226
    mul-int/lit8 v1, v1, 0x25

    .line 227
    .line 228
    add-int/lit8 v1, v1, 0x10

    .line 229
    .line 230
    mul-int/lit8 v1, v1, 0x35

    .line 231
    .line 232
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    add-int/2addr v1, v0

    .line 241
    mul-int/lit8 v1, v1, 0x25

    .line 242
    .line 243
    add-int/lit8 v1, v1, 0x11

    .line 244
    .line 245
    mul-int/lit8 v1, v1, 0x35

    .line 246
    .line 247
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    add-int/2addr v1, v0

    .line 256
    mul-int/lit8 v1, v1, 0x1d

    .line 257
    .line 258
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    add-int/2addr v1, v0

    .line 265
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 266
    .line 267
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

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
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

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
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMarginBytes()Lcom/explorestack/protobuf/ByteString;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    cmpl-float v2, v0, v1

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    const/4 v2, 0x7

    .line 81
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    .line 85
    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    const/16 v2, 0x8

    .line 89
    .line 90
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 91
    .line 92
    .line 93
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPaddingBytes()Lcom/explorestack/protobuf/ByteString;

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
    if-nez v0, :cond_8

    .line 102
    .line 103
    const/16 v0, 0x9

    .line 104
    .line 105
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_9

    .line 119
    .line 120
    const/16 v0, 0xa

    .line 121
    .line 122
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_a

    .line 136
    .line 137
    const/16 v0, 0xb

    .line 138
    .line 139
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_b

    .line 153
    .line 154
    const/16 v0, 0xd

    .line 155
    .line 156
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_b
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    .line 162
    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    const/16 v2, 0xe

    .line 166
    .line 167
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 168
    .line 169
    .line 170
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    .line 171
    .line 172
    if-eqz v0, :cond_d

    .line 173
    .line 174
    const/16 v2, 0xf

    .line 175
    .line 176
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 177
    .line 178
    .line 179
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_e

    .line 188
    .line 189
    const/16 v0, 0x10

    .line 190
    .line 191
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 192
    .line 193
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_f

    .line 205
    .line 206
    const/16 v0, 0x11

    .line 207
    .line 208
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 209
    .line 210
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_f
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    .line 214
    .line 215
    cmpl-float v1, v0, v1

    .line 216
    .line 217
    if-eqz v1, :cond_10

    .line 218
    .line 219
    const/16 v1, 0x12

    .line 220
    .line 221
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 222
    .line 223
    .line 224
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 225
    .line 226
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method
