.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$c;
.super Lyd/d;
.source "ImmersionNameTagView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$c;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$c;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 p2, 0x0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$c;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$c;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;->a(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
