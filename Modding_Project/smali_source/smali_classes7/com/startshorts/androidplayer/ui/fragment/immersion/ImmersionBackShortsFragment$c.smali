.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$c;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

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
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->U(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->O(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;->a()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
