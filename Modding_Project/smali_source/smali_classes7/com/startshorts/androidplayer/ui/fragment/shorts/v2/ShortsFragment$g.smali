.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$g;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/player/feature/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->Y1()Lcom/startshorts/androidplayer/manager/player/feature/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$g;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$g;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->N0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$g;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->j0(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
