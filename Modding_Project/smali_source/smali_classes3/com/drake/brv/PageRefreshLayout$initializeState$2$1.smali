.class final Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PageRefreshLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/drake/brv/PageRefreshLayout;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/drake/statelayout/StateLayout;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lcom/drake/brv/PageRefreshLayout;


# direct methods
.method constructor <init>(Lcom/drake/brv/PageRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;->d:Lcom/drake/brv/PageRefreshLayout;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lcom/drake/statelayout/StateLayout;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/drake/statelayout/StateLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "$this$onRefresh"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;->d:Lcom/drake/brv/PageRefreshLayout;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/drake/brv/PageRefreshLayout;->N(Lcom/drake/brv/PageRefreshLayout;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;->d:Lcom/drake/brv/PageRefreshLayout;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-static {p1, p2}, Lcom/drake/brv/PageRefreshLayout;->P(Lcom/drake/brv/PageRefreshLayout;Z)Lsc/f;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;->d:Lcom/drake/brv/PageRefreshLayout;

    .line 21
    .line 22
    sget-object p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/drake/brv/PageRefreshLayout;->O(Lcom/drake/brv/PageRefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;->d:Lcom/drake/brv/PageRefreshLayout;

    .line 28
    .line 29
    invoke-virtual {p1, p1}, Lcom/drake/brv/PageRefreshLayout;->b(Lsc/f;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/drake/statelayout/StateLayout;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;->b(Lcom/drake/statelayout/StateLayout;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
