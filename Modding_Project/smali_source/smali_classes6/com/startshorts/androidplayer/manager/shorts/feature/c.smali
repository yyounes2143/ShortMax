.class public final Lcom/startshorts/androidplayer/manager/shorts/feature/c;
.super Ljava/lang/Object;
.source "DailyWatchDramaTaskCoinFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;,
        Lcom/startshorts/androidplayer/manager/shorts/feature/c$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->b()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/c$b;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget p1, v0, p1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/c;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;->a()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/c;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;->b()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/c;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;->c()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/c;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;->d()V

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_0
    return-void
.end method

.method public final b(Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/c;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/c;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;->onRelease()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/c;->a:Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;

    .line 10
    .line 11
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;->TASK_COIN:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
