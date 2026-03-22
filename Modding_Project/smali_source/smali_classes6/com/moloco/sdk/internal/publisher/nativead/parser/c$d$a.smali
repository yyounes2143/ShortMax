.class public final Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Pair<",
        "+",
        "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
        "+",
        "Lcom/moloco/sdk/internal/g0$b<",
        "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1$1$1"
    f = "PrepareNativeAssets.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

.field public final synthetic j:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:J


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            "Lms/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;",
            ">;J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->j:Lms/i;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->k:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            "Lcom/moloco/sdk/internal/g0$b<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->j:Lms/i;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->k:J

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)V

    .line 12
    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->j:Lms/i;

    .line 30
    .line 31
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->k:J

    .line 32
    .line 33
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->h:I

    .line 34
    .line 35
    invoke-static {p1, v1, v3, v4, p0}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->f(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 43
    .line 44
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "Successfully prepared native asset: "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/16 v6, 0xc

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    const-string v2, "PrepareNativeAssets"

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 84
    .line 85
    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_3
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v2, "Failed to prepare required native asset: "

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const/16 v6, 0xc

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    const-string v2, "PrepareNativeAssets"

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v5, 0x0

    .line 126
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;->i:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 144
    .line 145
    invoke-direct {v0, v1, p1}, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;-><init>(ILcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 150
    .line 151
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 152
    .line 153
    .line 154
    throw p1
.end method
