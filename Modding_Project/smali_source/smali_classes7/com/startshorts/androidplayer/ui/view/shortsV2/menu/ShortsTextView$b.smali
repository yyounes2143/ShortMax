.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$b;
.super Lyd/d;
.source "ShortsTextView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$b;->e:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$b;->e:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->f(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x64

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$b;->e:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget v1, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_less:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$b;->e:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget v1, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_more:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
