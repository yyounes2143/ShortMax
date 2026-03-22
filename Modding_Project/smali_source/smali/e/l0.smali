.class public final Le/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/b$a;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/e;

.field public final synthetic b:Le/k;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/e;Le/k;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l0;->a:Lkotlinx/coroutines/e;

    .line 2
    .line 3
    iput-object p2, p0, Le/l0;->b:Le/k;

    .line 4
    .line 5
    iput-object p3, p0, Le/l0;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    .locals 1

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
    iget-object p1, p0, Le/l0;->b:Le/k;

    .line 17
    .line 18
    iget-object p2, p0, Le/l0;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object p3, Lga/a;->a:Lga/a;

    .line 28
    .line 29
    new-instance p4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "removeRequest -> requestId "

    .line 32
    .line 33
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    const-string v0, "AdEventHandler"

    .line 44
    .line 45
    invoke-virtual {p3, v0, p4}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Le/k;->b:Le/t;

    .line 49
    .line 50
    if-nez p2, :cond_0

    .line 51
    .line 52
    const-string p2, ""

    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1, p2}, Lda/f;->O(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Le/l0;->a:Lkotlinx/coroutines/e;

    .line 58
    .line 59
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->isCompleted()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Le/l0;->a:Lkotlinx/coroutines/e;

    .line 66
    .line 67
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 68
    .line 69
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
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
    iget-object p1, p0, Le/l0;->a:Lkotlinx/coroutines/e;

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
    iget-object p1, p0, Le/l0;->a:Lkotlinx/coroutines/e;

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
