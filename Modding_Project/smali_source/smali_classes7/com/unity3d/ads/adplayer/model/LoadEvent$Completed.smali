.class public final Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;
.super Lcom/unity3d/ads/adplayer/model/LoadEvent;
.source "LoadEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/model/LoadEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Completed"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;->INSTANCE:Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
