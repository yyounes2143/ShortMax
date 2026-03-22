.class public final Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;
.super Lyd/d;
.source "SubsNormalOldStyleView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;->setSku(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->h:Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    const/4 p2, 0x0

    .line 11
    const-wide/16 p3, 0x0

    .line 12
    .line 13
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 10

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string p1, "getContext(...)"

    .line 13
    .line 14
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->e:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 26
    .line 27
    iget-boolean v6, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView$a;->h:Z

    .line 28
    .line 29
    const/16 v8, 0x20

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
