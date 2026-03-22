.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$c;
.super Ljava/lang/Object;
.source "ImmersionEpisodeListDialog.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->g0(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
        "Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$c;->b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/tab/EpisodeTab;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/tab/EpisodeTab;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
