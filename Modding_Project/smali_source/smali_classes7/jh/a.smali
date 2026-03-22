.class public final Ljh/a;
.super Ljava/lang/Object;
.source "TagLocalDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$string;->labels_tab_trending:I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "getString(...)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v0, v3, v1}, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;

    .line 24
    .line 25
    sget v4, Lcom/startshorts/androidplayer/R$string;->labels_tab_latest:I

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    filled-new-array {v0, v1}, [Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ltz p2, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ge p2, v0, :cond_0

    .line 53
    .line 54
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;

    .line 59
    .line 60
    invoke-virtual {p2, v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-object p1
.end method
