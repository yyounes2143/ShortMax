.class public final Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;
.super Lcc/k;
.source "RefreshActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity<",
            "TD;TVDB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity<",
            "TD;TVDB;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcc/k;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    const-string v0, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->q0()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->J0(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    cmpg-float p1, p2, p1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->w0(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public d(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    const-string v0, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->p0()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->q0()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->I0(II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public h(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->w0(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->w0(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
