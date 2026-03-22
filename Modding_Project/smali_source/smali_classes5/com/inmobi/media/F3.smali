.class public final Lcom/inmobi/media/F3;
.super Lcom/inmobi/media/Ma;
.source "SourceFile"


# instance fields
.field public final e:Lcom/inmobi/media/W9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Pa;)V
    .locals 3

    .line 1
    const-string v0, "dao"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/inmobi/media/Ma;-><init>(Lcom/inmobi/media/Pa;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/inmobi/media/E3;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/inmobi/media/E3;-><init>(Lcom/inmobi/media/F3;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/inmobi/media/W9;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/inmobi/media/Ma;->d:Lcom/inmobi/media/Ka;

    .line 17
    .line 18
    invoke-direct {v1, p1, v0, v2}, Lcom/inmobi/media/W9;-><init>(Lcom/inmobi/media/Pa;Lcom/inmobi/media/E3;Lcom/inmobi/media/Ka;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/inmobi/media/F3;->e:Lcom/inmobi/media/W9;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/za;)V
    .locals 8

    .line 1
    const-string v0, "ping"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "F3"

    .line 7
    .line 8
    const-string v2, "TAG"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/inmobi/media/Ma;->a(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/inmobi/media/Ma;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/inmobi/media/za;->h:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/inmobi/media/La;

    .line 40
    .line 41
    :goto_0
    move-object v7, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const-string v2, "Database capacity exceeded for pings"

    .line 50
    .line 51
    const/16 v3, 0x8c8

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    move-object v4, p1

    .line 55
    invoke-static/range {v1 .. v7}, Lcom/inmobi/media/Ma;->a(ILjava/lang/String;SLcom/inmobi/media/za;JLcom/inmobi/media/La;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/inmobi/media/T1;->a(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/inmobi/media/F3;->e:Lcom/inmobi/media/W9;

    .line 68
    .line 69
    iget-object v0, p1, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    .line 70
    .line 71
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/inmobi/media/Ca;->b:Lcom/inmobi/media/Ca;

    .line 75
    .line 76
    iget-object v1, p1, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    .line 77
    .line 78
    if-ne v1, v0, :cond_2

    .line 79
    .line 80
    sget-object v0, Lcom/inmobi/media/Ca;->c:Lcom/inmobi/media/Ca;

    .line 81
    .line 82
    iput-object v0, p1, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/inmobi/media/W9;->a()V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method
