.class final Lio/bidmachine/analytics/internal/X$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/X;->b(Lio/bidmachine/analytics/internal/Q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/X;

.field final synthetic c:Lio/bidmachine/analytics/internal/Q;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/X;Lio/bidmachine/analytics/internal/Q;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/X$h;->b:Lio/bidmachine/analytics/internal/X;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/X$h;->c:Lio/bidmachine/analytics/internal/Q;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/X$h;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/analytics/internal/X$h;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/X$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/X$h;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X$h;->b:Lio/bidmachine/analytics/internal/X;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$h;->c:Lio/bidmachine/analytics/internal/Q;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/analytics/internal/X$h;-><init>(Lio/bidmachine/analytics/internal/X;Lio/bidmachine/analytics/internal/Q;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/X$h;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/analytics/internal/X$h;->a:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lkotlin/Result;

    .line 31
    .line 32
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lio/bidmachine/analytics/internal/X$h;->b:Lio/bidmachine/analytics/internal/X;

    .line 40
    .line 41
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$h;->c:Lio/bidmachine/analytics/internal/Q;

    .line 42
    .line 43
    invoke-static {p1, v1}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;Lio/bidmachine/analytics/internal/Q;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lio/bidmachine/analytics/internal/X$h;->b:Lio/bidmachine/analytics/internal/X;

    .line 54
    .line 55
    invoke-static {p1}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/X$b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lio/bidmachine/analytics/MonitorConfig;->getBatchSize()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v3, p0, Lio/bidmachine/analytics/internal/X$h;->a:I

    .line 68
    .line 69
    invoke-static {p1, v1, p0}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;ILrs/c;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_4

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    iget-object p1, p0, Lio/bidmachine/analytics/internal/X$h;->b:Lio/bidmachine/analytics/internal/X;

    .line 77
    .line 78
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$h;->c:Lio/bidmachine/analytics/internal/Q;

    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput v2, p0, Lio/bidmachine/analytics/internal/X$h;->a:I

    .line 85
    .line 86
    invoke-static {p1, v1, p0}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v0, :cond_4

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method
