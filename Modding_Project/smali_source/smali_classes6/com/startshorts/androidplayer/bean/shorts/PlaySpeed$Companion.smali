.class public final Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;
.super Ljava/lang/Object;
.source "PlaySpeed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(F)Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 13
    .line 14
    cmpg-float v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_2()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 24
    .line 25
    cmpg-float v0, p1, v0

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 35
    .line 36
    cmpg-float v0, p1, v0

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_4()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    .line 46
    .line 47
    cmpg-float v0, p1, v0

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_5()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/high16 v0, 0x3f400000    # 0.75f

    .line 57
    .line 58
    cmpg-float p1, p1, v0

    .line 59
    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_6()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    const/4 p1, 0x0

    .line 68
    :goto_0
    return-object p1
.end method

.method public final getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->access$getPLAY_SPEED_1$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_SPEED_2()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->access$getPLAY_SPEED_2$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->access$getPLAY_SPEED_3$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_SPEED_4()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->access$getPLAY_SPEED_4$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_SPEED_5()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->access$getPLAY_SPEED_5$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPLAY_SPEED_6()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->access$getPLAY_SPEED_6$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
