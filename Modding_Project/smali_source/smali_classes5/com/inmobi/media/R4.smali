.class public final Lcom/inmobi/media/R4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/hf;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/S4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/media/S4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    const-string v0, "visibleViews"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "invisibleViews"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/media/S4;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/inmobi/media/S4;->i:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/inmobi/media/ef;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-interface {v1, v0, v2}, Lcom/inmobi/media/ef;->a(Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/view/View;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/media/S4;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/inmobi/media/S4;->i:Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/inmobi/media/ef;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-interface {v0, p2, v1}, Lcom/inmobi/media/ef;->a(Landroid/view/View;Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    return-void
.end method
