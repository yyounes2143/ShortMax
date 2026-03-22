.class public abstract Lio/bidmachine/analytics/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/j$a;,
        Lio/bidmachine/analytics/internal/j$b;
    }
.end annotation


# static fields
.field public static final c:Lio/bidmachine/analytics/internal/j$a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lio/bidmachine/analytics/internal/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/j$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/j;->c:Lio/bidmachine/analytics/internal/j$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lio/bidmachine/analytics/internal/j;->a:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v0, Lio/bidmachine/analytics/internal/j$b;->a:Lio/bidmachine/analytics/internal/j$b;

    .line 12
    .line 13
    iput-object v0, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/j;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    sget-object v2, Lio/bidmachine/analytics/internal/j$b;->a:Lio/bidmachine/analytics/internal/j$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/j;->d(Landroid/content/Context;)V

    .line 5
    sget-object p1, Lio/bidmachine/analytics/internal/j$b;->b:Lio/bidmachine/analytics/internal/j$b;

    iput-object p1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lio/bidmachine/analytics/internal/j;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    sget-object v2, Lio/bidmachine/analytics/internal/j$b;->b:Lio/bidmachine/analytics/internal/j$b;

    if-eq v1, v2, :cond_0

    sget-object v2, Lio/bidmachine/analytics/internal/j$b;->d:Lio/bidmachine/analytics/internal/j$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/j;->b(Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lio/bidmachine/analytics/internal/j$b;->d:Lio/bidmachine/analytics/internal/j$b;

    iput-object p1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    .line 13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/j;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    sget-object v2, Lio/bidmachine/analytics/internal/j$b;->c:Lio/bidmachine/analytics/internal/j$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v1, v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/j;->e(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    sget-object p1, Lio/bidmachine/analytics/internal/j$b;->d:Lio/bidmachine/analytics/internal/j$b;

    iput-object p1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public abstract b(Ljava/lang/Object;)V
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    .line 5
    .line 6
    sget-object v2, Lio/bidmachine/analytics/internal/j$b;->d:Lio/bidmachine/analytics/internal/j$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/j;->f(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object p1, Lio/bidmachine/analytics/internal/j$b;->c:Lio/bidmachine/analytics/internal/j$b;

    .line 34
    .line 35
    iput-object p1, p0, Lio/bidmachine/analytics/internal/j;->b:Lio/bidmachine/analytics/internal/j$b;

    .line 36
    .line 37
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    monitor-exit v0

    .line 43
    throw p1
.end method

.method public abstract d(Landroid/content/Context;)V
.end method

.method public abstract e(Landroid/content/Context;)V
.end method

.method public abstract f(Landroid/content/Context;)V
.end method
