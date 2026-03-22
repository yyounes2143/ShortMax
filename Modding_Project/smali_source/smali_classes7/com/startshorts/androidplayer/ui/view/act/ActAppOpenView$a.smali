.class public final Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;
.super Lyd/d;
.source "ActAppOpenView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

.field final synthetic f:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;->e:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;->f:Landroid/widget/ImageView;

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
    .locals 2

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;->e:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->C(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->E(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;->f:Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;->e:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->C(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_video_preview_no_sound:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_video_preview_sound:I

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;->e:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->D(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/player/b$c;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;->e:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->C(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/b$c;-><init>(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
