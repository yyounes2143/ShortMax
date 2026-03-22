.class public final Lf/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/b$a;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/e;

.field public final synthetic b:Lf/n;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/e;Lf/n;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i;->a:Lkotlinx/coroutines/e;

    .line 2
    .line 3
    iput-object p2, p0, Lf/i;->b:Lf/n;

    .line 4
    .line 5
    iput-object p3, p0, Lf/i;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lca/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "errorMsg"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "mediationName"

    .line 12
    .line 13
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lf/i;->b:Lf/n;

    .line 17
    .line 18
    iget-object p2, p0, Lf/i;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lf/n;->k(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lf/i;->a:Lkotlinx/coroutines/e;

    .line 28
    .line 29
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->isCompleted()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lf/i;->a:Lkotlinx/coroutines/e;

    .line 36
    .line 37
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 38
    .line 39
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final b(Lca/e;)V
    .locals 1

    .line 1
    const-string v0, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lca/d;JLjava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p2, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "mediationName"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lf/i;->a:Lkotlinx/coroutines/e;

    .line 12
    .line 13
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->isCompleted()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lf/i;->a:Lkotlinx/coroutines/e;

    .line 20
    .line 21
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 22
    .line 23
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
