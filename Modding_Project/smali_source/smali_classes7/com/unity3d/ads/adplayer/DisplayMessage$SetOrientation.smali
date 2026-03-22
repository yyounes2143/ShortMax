.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetOrientation"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opportunityId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;->orientation:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;->orientation:I

    .line 2
    .line 3
    return v0
.end method
