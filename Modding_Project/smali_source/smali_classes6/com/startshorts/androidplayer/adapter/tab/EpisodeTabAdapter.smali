.class public final Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
.source "EpisodeTabAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
        "Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;->w:Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "EpisodeTabAdapter"

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
            "Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_episode_tab:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
