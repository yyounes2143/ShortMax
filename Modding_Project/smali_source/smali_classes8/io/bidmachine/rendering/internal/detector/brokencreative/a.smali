.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;,
        Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lrq/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lhq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrq/n;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile k:J

.field private l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lrq/m;Lhq/a;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lhq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adElementName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "brokenCreativeDetectorParams"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "brokenCreativeDetectorListener"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a:I

    .line 20
    .line 21
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 24
    .line 25
    iput-object p4, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d:Lhq/a;

    .line 26
    .line 27
    sget-object p1, Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;->d:Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e:Lms/i;

    .line 34
    .line 35
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f:Ljava/util/List;

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    new-instance p1, Ljava/lang/Object;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    .line 70
    .line 71
    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/detector/brokencreative/a;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrq/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    move-wide v3, v1

    .line 15
    move-wide v5, v3

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-eqz v7, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    check-cast v7, Lrq/l;

    .line 27
    .line 28
    invoke-virtual {v7}, Lrq/l;->a()Lrq/k;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v8}, Lrq/k;->c()F

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    invoke-virtual {v7}, Lrq/l;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    float-to-double v9, v8

    .line 43
    add-double/2addr v5, v9

    .line 44
    :cond_1
    float-to-double v7, v8

    .line 45
    add-double/2addr v3, v7

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    cmpg-double v0, v3, v1

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    div-double v1, v5, v3

    .line 53
    .line 54
    :goto_1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 55
    .line 56
    invoke-virtual {v0}, Lrq/m;->e()D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    cmpl-double v0, v1, v3

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    if-ltz v0, :cond_4

    .line 64
    .line 65
    move v0, v1

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const/4 v0, 0x0

    .line 68
    :goto_2
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 69
    .line 70
    invoke-virtual {v2}, Lrq/m;->g()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    :cond_5
    new-instance v2, Lrq/n;

    .line 79
    .line 80
    sget-object v3, Lhq/b;->a:Lhq/b;

    .line 81
    .line 82
    invoke-virtual {v3, v0}, Lhq/b;->a(Z)D

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    iget v6, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a:I

    .line 87
    .line 88
    iget-object v7, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v8

    .line 94
    iget-wide v10, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->k:J

    .line 95
    .line 96
    sub-long/2addr v8, v10

    .line 97
    move-object v3, v2

    .line 98
    move-object v10, p1

    .line 99
    invoke-direct/range {v3 .. v10}, Lrq/n;-><init>(DILjava/lang/String;JLjava/util/List;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 103
    .line 104
    invoke-virtual {p1}, Lrq/m;->f()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_7

    .line 117
    .line 118
    :cond_6
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v2}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d(Lrq/n;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 127
    .line 128
    invoke-virtual {p1}, Lrq/m;->c()Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object v2, Lio/bidmachine/rendering/model/StopDetectorAfter;->ValidCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 133
    .line 134
    if-ne p1, v2, :cond_8

    .line 135
    .line 136
    if-nez v0, :cond_a

    .line 137
    .line 138
    :cond_8
    sget-object v2, Lio/bidmachine/rendering/model/StopDetectorAfter;->BrokenCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 139
    .line 140
    if-ne p1, v2, :cond_9

    .line 141
    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    :cond_9
    sget-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->Never:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 145
    .line 146
    if-ne p1, v0, :cond_b

    .line 147
    .line 148
    :cond_a
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l()V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_b
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    .line 156
    .line 157
    :goto_3
    return-void
.end method

.method private final d(Lrq/n;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "BrokenCreativeDetector"

    .line 13
    .line 14
    const-string v2, "Notify detector result: %s"

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d:Lhq/a;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lhq/a;->a(Lrq/n;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final e()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h()Ler/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcr/a;->cancel(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    throw v1
.end method

.method private final h()Ler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ler/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h()Ler/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 24
    .line 25
    invoke-virtual {v3}, Lrq/m;->d()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-interface {v2, v1, v3, v4}, Lcr/c;->a(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw v1
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 35
    .line 36
    invoke-virtual {v1}, Lrq/m;->a()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/16 v2, 0xa

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lrq/k;

    .line 66
    .line 67
    sget-object v3, Liq/b;->a:Liq/b;

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Liq/b;->a(Lrq/k;)Liq/a;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    iput-wide v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->k:J

    .line 92
    .line 93
    new-instance v1, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 94
    .line 95
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h()Ler/a;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ler/a;->f()Landroid/os/Handler;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lrq/m;

    .line 104
    .line 105
    invoke-virtual {v2}, Lrq/m;->b()D

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    new-instance v8, Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;

    .line 110
    .line 111
    invoke-direct {v8, p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;-><init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 112
    .line 113
    .line 114
    move-object v2, v1

    .line 115
    move-object v3, p1

    .line 116
    invoke-direct/range {v2 .. v8}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;-><init>(Landroid/view/View;Landroid/os/Handler;DLjava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 120
    .line 121
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l()V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 128
    :goto_1
    monitor-exit v0

    .line 129
    throw p1

    .line 130
    :cond_4
    :goto_2
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->m()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 15
    .line 16
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    .line 22
    throw v1
.end method
