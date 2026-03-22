.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;
.super Ljava/lang/Object;
.source "AccumulativeaWatchDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;)Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    const-string v1, "AccumulativeaWatchDialog"

    .line 14
    .line 15
    const-string v2, "AccumulativeaWatchDialog show"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->S(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->R(Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
