.class public final Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "EpisodeListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;->o:Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->getPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isVirtual()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    :cond_3
    :goto_0
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "EpisodeListAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    if-eq p2, p3, :cond_2

    .line 8
    .line 9
    const/4 p3, 0x3

    .line 10
    if-eq p2, p3, :cond_1

    .line 11
    .line 12
    const/4 p3, 0x4

    .line 13
    if-eq p2, p3, :cond_0

    .line 14
    .line 15
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$c;

    .line 16
    .line 17
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_episode_normal:I

    .line 18
    .line 19
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeNormalBinding;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;Lcom/startshorts/androidplayer/databinding/ItemEpisodeNormalBinding;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$e;

    .line 30
    .line 31
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_episode_virtual:I

    .line 32
    .line 33
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeVirtualBinding;

    .line 38
    .line 39
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;Lcom/startshorts/androidplayer/databinding/ItemEpisodeVirtualBinding;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;

    .line 44
    .line 45
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_episode_locked:I

    .line 46
    .line 47
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;

    .line 52
    .line 53
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$d;

    .line 58
    .line 59
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_episode_playing:I

    .line 60
    .line 61
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodePlayingBinding;

    .line 66
    .line 67
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;Lcom/startshorts/androidplayer/databinding/ItemEpisodePlayingBinding;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-object p2
.end method
