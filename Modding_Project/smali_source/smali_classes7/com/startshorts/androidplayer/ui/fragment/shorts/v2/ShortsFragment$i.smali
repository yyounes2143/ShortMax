.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$i;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lvc/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->L2()V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lsc/f;)V
    .locals 1

    .line 1
    const-string v0, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lsc/f;)V
    .locals 1

    .line 1
    const-string v0, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->O0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->r(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
