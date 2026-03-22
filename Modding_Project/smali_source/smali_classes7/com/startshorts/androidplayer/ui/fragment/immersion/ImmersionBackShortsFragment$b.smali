.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$b;
.super Ljava/lang/Object;
.source "ImmersionBackShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILjava/util/List;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;",
            "Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;",
            ")",
            "Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "currShortPlayCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lis"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->Z(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->Y(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->c0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p5}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p4, Ljava/util/Collection;

    .line 38
    .line 39
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
