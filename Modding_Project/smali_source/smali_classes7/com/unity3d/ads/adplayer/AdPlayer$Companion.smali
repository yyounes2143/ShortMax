.class public final Lcom/unity3d/ads/adplayer/AdPlayer$Companion;
.super Ljava/lang/Object;
.source "AdPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/AdPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/unity3d/ads/adplayer/AdPlayer$Companion;

.field public static final OFFERWALL_EVENT_QUEUE_SIZE:I = 0x5

.field public static final SCAR_EVENT_QUEUE_SIZE:I = 0xa

.field private static final broadcastEventChannel:Lkt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;->$$INSTANCE:Lcom/unity3d/ads/adplayer/AdPlayer$Companion;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x7

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v2, v0, v1, v0}, Lkt/g;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkt/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;->broadcastEventChannel:Lkt/d;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getBroadcastEventChannel()Lkt/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;->broadcastEventChannel:Lkt/d;

    .line 2
    .line 3
    return-object v0
.end method
