.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImmersionClearScreenView.kt"

# interfaces
.implements Lnj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->d()V

    .line 5
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;

    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->a:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_clear_screen_on:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_clear_screen_off:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "shortsInfo"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "episode"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
