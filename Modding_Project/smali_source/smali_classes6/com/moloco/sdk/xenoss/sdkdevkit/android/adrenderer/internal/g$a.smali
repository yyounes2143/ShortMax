.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g;->a(I)Lkt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkt/c<",
        "-",
        "Lms/n;",
        ">;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.CountdownFlowKt$countdownSecondsFlow$1"
    f = "CountdownFlow.kt"
    l = {
        0x1a,
        0x1d,
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:I


# direct methods
.method public constructor <init>(ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->k:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->k:I

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;-><init>(ILrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->j:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final i(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/c<",
            "-",
            "Lms/n;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->i(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->i:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

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
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->h:I

    .line 28
    .line 29
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->j:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lkt/c;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_0
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->h:I

    .line 38
    .line 39
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->j:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Lkt/c;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->j:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lkt/c;

    .line 53
    .line 54
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->k:I

    .line 55
    .line 56
    invoke-static {v1}, Lms/n;->a(I)Lms/n;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->j:Ljava/lang/Object;

    .line 61
    .line 62
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->h:I

    .line 63
    .line 64
    iput v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->i:I

    .line 65
    .line 66
    invoke-interface {p1, v5, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-ne v4, v0, :cond_4

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_4
    move-object v4, p1

    .line 74
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 75
    invoke-static {v1, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/i0;->a(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-lez p1, :cond_7

    .line 80
    .line 81
    iput-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->j:Ljava/lang/Object;

    .line 82
    .line 83
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->h:I

    .line 84
    .line 85
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->i:I

    .line 86
    .line 87
    const-wide/16 v5, 0x3e8

    .line 88
    .line 89
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-ne p1, v0, :cond_6

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 97
    .line 98
    invoke-static {v1}, Lms/n;->b(I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1}, Lms/n;->a(I)Lms/n;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->j:Ljava/lang/Object;

    .line 107
    .line 108
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->h:I

    .line 109
    .line 110
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g$a;->i:I

    .line 111
    .line 112
    invoke-interface {v4, p1, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v0, :cond_5

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method
