.class public abstract Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "BaseMainTabView.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/main/tab/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Lcom/startshorts/androidplayer/bean/tab/MainTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final getMTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->b:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->b:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->c:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public o(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->b:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getState()Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eq v1, p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->setState(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->v(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method protected final setMTab(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->b:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->red_point_view:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->c:Landroid/view/View;

    .line 13
    .line 14
    return-void
.end method

.method public abstract v(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public w()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->c:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1
.end method

.method public x(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->b:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 7
    .line 8
    return-void
.end method
