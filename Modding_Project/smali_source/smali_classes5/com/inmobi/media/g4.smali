.class public final Lcom/inmobi/media/g4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/h4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/h4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/h4;

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
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/util/Map;

    .line 4
    .line 5
    const-string v0, "trackerName"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "macros"

    .line 11
    .line 12
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/h4;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    instance-of v3, v2, Lcom/inmobi/media/Y3;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    check-cast v2, Lcom/inmobi/media/Y3;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v4

    .line 30
    :goto_0
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v2, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    check-cast v2, Lcom/inmobi/media/i5;

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v2, Lcom/inmobi/media/i5;->a:Lcom/inmobi/media/j5;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 53
    .line 54
    instance-of v1, v0, Lcom/inmobi/media/ec;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    move-object v4, v0

    .line 59
    check-cast v4, Lcom/inmobi/media/ec;

    .line 60
    .line 61
    :cond_1
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v4, p1, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p1
.end method
