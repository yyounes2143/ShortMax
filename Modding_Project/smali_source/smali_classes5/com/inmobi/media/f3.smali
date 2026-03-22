.class public final Lcom/inmobi/media/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


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
.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 11

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/inmobi/media/h3;->a:Lcom/inmobi/media/h3;

    .line 8
    .line 9
    const-string v1, "h3"

    .line 10
    .line 11
    const-string v2, "<get-TAG>(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 17
    .line 18
    sput-object p1, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 19
    .line 20
    sget-object p1, Lcom/inmobi/media/h3;->g:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v1, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getSkipFields()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v3, Lcom/inmobi/media/i3;->j:Ljava/util/List;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    const-string v3, ","

    .line 59
    .line 60
    const/16 v9, 0x3e

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sput-object v1, Lcom/inmobi/media/h3;->g:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/inmobi/media/h3;->e()V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-static {}, Lcom/inmobi/media/h3;->a()V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit p0

    .line 91
    throw p1
.end method
