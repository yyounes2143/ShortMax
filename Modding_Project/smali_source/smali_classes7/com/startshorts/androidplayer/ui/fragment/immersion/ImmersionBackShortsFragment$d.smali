.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;
.super Lyd/d;
.source "ImmersionBackShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->U(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->R(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "play_icon"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->G(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->O(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-interface {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
