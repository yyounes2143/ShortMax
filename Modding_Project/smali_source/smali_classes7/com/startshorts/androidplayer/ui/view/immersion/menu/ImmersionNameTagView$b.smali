.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;
.super Lyd/d;
.source "ImmersionNameTagView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

.field final synthetic f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->z(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->A(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->B(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget v1, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_less:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->A(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget v1, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_more:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method
