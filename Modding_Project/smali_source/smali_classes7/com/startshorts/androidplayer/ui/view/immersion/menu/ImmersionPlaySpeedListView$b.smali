.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$b;
.super Ljava/lang/Object;
.source "ImmersionPlaySpeedListView.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->i(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
        "Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$b;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;

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
    check-cast p3, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$b;->b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$b;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;->a(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
