.class public final Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView7;
.super Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;
.source "SubsNormalOldStyleView7.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private k:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_subs_type_normal_7:I

    .line 2
    .line 3
    return v0
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView7;->k:Landroid/view/View;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView7;->k:Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$id;->card_bg_box:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView7;->k:Landroid/view/View;

    .line 16
    .line 17
    return-void
.end method
