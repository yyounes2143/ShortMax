.class public abstract Lio/bidmachine/analytics/internal/e;
.super Lio/bidmachine/analytics/internal/g;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/e$a;,
        Lio/bidmachine/analytics/internal/e$b;
    }
.end annotation


# instance fields
.field private d:Lio/bidmachine/analytics/internal/f;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Map;

.field private g:Lio/bidmachine/analytics/internal/e$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/analytics/internal/e;->e:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/analytics/internal/e;->f:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/internal/e$a;)Lio/bidmachine/analytics/internal/e$b;
    .locals 2

    .line 14
    iget-object v0, p0, Lio/bidmachine/analytics/internal/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/e;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public a(Lio/bidmachine/analytics/internal/g$a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g$a;->a()Lio/bidmachine/analytics/internal/f;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/e;->d:Lio/bidmachine/analytics/internal/f;

    return-void
.end method

.method public a(Lio/bidmachine/analytics/internal/q0;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lio/bidmachine/analytics/internal/e;->d:Lio/bidmachine/analytics/internal/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/f;->a(Lio/bidmachine/analytics/internal/q0;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/e;->d:Lio/bidmachine/analytics/internal/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/f;->a(Ljava/util/Map;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/e;->c(Ljava/util/Map;)Lio/bidmachine/analytics/internal/e$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/e;->b(Ljava/util/Map;)Lio/bidmachine/analytics/internal/e$b;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v7, p0, Lio/bidmachine/analytics/internal/e;->e:Ljava/lang/Object;

    monitor-enter v7

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/e;->g:Lio/bidmachine/analytics/internal/e$b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/e$b;->a()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/bidmachine/analytics/internal/e$b;->a(Lio/bidmachine/analytics/internal/e$b;IFLjava/lang/String;ILjava/lang/Object;)Lio/bidmachine/analytics/internal/e$b;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/analytics/internal/e;->g:Lio/bidmachine/analytics/internal/e$b;

    .line 7
    iget-object v1, p0, Lio/bidmachine/analytics/internal/e;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/analytics/internal/e$b;

    .line 8
    iget-object v8, p0, Lio/bidmachine/analytics/internal/e;->f:Ljava/util/Map;

    if-nez v1, :cond_4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 9
    invoke-static/range {v1 .. v6}, Lio/bidmachine/analytics/internal/e$b;->a(Lio/bidmachine/analytics/internal/e$b;IFLjava/lang/String;ILjava/lang/Object;)Lio/bidmachine/analytics/internal/e$b;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/e$b;->a()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/bidmachine/analytics/internal/e$b;->a(Lio/bidmachine/analytics/internal/e$b;IFLjava/lang/String;ILjava/lang/Object;)Lio/bidmachine/analytics/internal/e$b;

    move-result-object p1

    :goto_1
    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v7

    return-void

    :goto_2
    monitor-exit v7

    throw p1
.end method

.method public final b()Lio/bidmachine/analytics/internal/e$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/e;->g:Lio/bidmachine/analytics/internal/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public abstract b(Ljava/util/Map;)Lio/bidmachine/analytics/internal/e$b;
.end method

.method public abstract c(Ljava/util/Map;)Lio/bidmachine/analytics/internal/e$a;
.end method

.method public f(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/analytics/internal/e;->f:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/bidmachine/analytics/internal/e;->g:Lio/bidmachine/analytics/internal/e$b;

    .line 11
    .line 12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p1

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p1

    .line 18
    throw v0
.end method
