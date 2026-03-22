.class final Lio/bidmachine/analytics/internal/Y$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/Y;->a(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lio/bidmachine/analytics/internal/Y;

.field c:I


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/Y;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/Y$b;->b:Lio/bidmachine/analytics/internal/Y;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/Y$b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/bidmachine/analytics/internal/Y$b;->c:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/bidmachine/analytics/internal/Y$b;->c:I

    .line 9
    .line 10
    iget-object p1, p0, Lio/bidmachine/analytics/internal/Y$b;->b:Lio/bidmachine/analytics/internal/Y;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lio/bidmachine/analytics/internal/Y;->a(Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
