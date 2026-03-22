.class final Lio/bidmachine/analytics/internal/m$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/internal/l0;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/l0;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/l0;Ljava/util/List;Ljava/util/List;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/m$b;->b:Lio/bidmachine/analytics/internal/l0;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/m$b;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/analytics/internal/m$b;->d:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/m$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/analytics/internal/m$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/m$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/m$b;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m$b;->b:Lio/bidmachine/analytics/internal/l0;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m$b;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/analytics/internal/m$b;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/m$b;-><init>(Lio/bidmachine/analytics/internal/l0;Ljava/util/List;Ljava/util/List;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/m$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/analytics/internal/m$b;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/analytics/internal/m$b;->b:Lio/bidmachine/analytics/internal/l0;

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/analytics/internal/m$b;->c:Ljava/util/List;

    .line 14
    .line 15
    iget-object v1, p0, Lio/bidmachine/analytics/internal/m$b;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lio/bidmachine/analytics/internal/l0;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
