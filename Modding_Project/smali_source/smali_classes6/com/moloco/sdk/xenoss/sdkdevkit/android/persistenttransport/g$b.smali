.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;->a(Ljava/lang/String;[BLio/ktor/http/a;Ljava/lang/String;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.NonPersistentHttpRequestImpl$sendPost$1"
    f = "NonPersistentHttpRequest.kt"
    l = {
        0x3d,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public final synthetic j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:[B

.field public final synthetic m:Lio/ktor/http/a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;Ljava/lang/String;[BLio/ktor/http/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;",
            "Ljava/lang/String;",
            "[B",
            "Lio/ktor/http/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->k:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->l:[B

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->m:Lio/ktor/http/a;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->l:[B

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->m:Lio/ktor/http/a;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;Ljava/lang/String;[BLio/ktor/http/a;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->h:I

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
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

    .line 31
    :cond_1
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->h:I

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move v1, v2

    .line 41
    :goto_0
    const/4 p1, 0x5

    .line 42
    if-ge v1, p1, :cond_7

    .line 43
    .line 44
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {v5, v4, v5}, Lcom/moloco/sdk/internal/android_context/b;->b(Landroid/content/Context;ILjava/lang/Object;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {p1, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;->c(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 56
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v7, "Network available: "

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v7, " for non persistent request"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const/16 v10, 0xc

    .line 80
    .line 81
    const/4 v11, 0x0

    .line 82
    const-string v6, "NonPersistentRequest"

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;)Lio/ktor/client/HttpClient;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->k:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->l:[B

    .line 100
    .line 101
    iget-object v8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->m:Lio/ktor/http/a;

    .line 102
    .line 103
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->h:I

    .line 104
    .line 105
    iput v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->i:I

    .line 106
    .line 107
    const/16 v11, 0x8

    .line 108
    .line 109
    const/4 v12, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    move-object v10, p0

    .line 112
    invoke-static/range {v5 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e;->c(Lio/ktor/client/HttpClient;Ljava/lang/String;[BLio/ktor/http/a;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v0, :cond_3

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move p1, v2

    .line 127
    :goto_2
    if-eqz p1, :cond_5

    .line 128
    .line 129
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_5
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->h:I

    .line 133
    .line 134
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g$b;->i:I

    .line 135
    .line 136
    const-wide/16 v5, 0x2710

    .line 137
    .line 138
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-ne p1, v0, :cond_6

    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_6
    :goto_3
    add-int/2addr v1, v4

    .line 146
    goto :goto_0

    .line 147
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1
.end method
