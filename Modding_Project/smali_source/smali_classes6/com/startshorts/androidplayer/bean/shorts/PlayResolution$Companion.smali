.class public final Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;
.super Ljava/lang/Object;
.source "PlayResolution.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(I)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x1e0

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x2d0

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x438

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_1080P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_720P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_480P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    return-object p1
.end method

.method public final getPLAY_RESOLUTION_1080P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->access$getPLAY_RESOLUTION_1080P$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_RESOLUTION_480P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->access$getPLAY_RESOLUTION_480P$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_RESOLUTION_720P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->access$getPLAY_RESOLUTION_720P$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->access$getPLAY_RESOLUTION_AUTO$cp()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
