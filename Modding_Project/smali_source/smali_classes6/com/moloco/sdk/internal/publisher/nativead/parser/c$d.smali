.class public final Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->b(Landroid/content/Context;Ljava/util/List;JLrs/c;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lkotlin/Pair<",
        "+",
        "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
        "+",
        "Lcom/moloco/sdk/internal/g0$b<",
        "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
        ">;>;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1"
    f = "PrepareNativeAssets.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPrepareNativeAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n1557#2:181\n1628#2,3:182\n*S KotlinDebug\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1\n*L\n38#1:181\n38#1:182,3\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lms/i;JLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            ">;",
            "Lms/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;",
            ">;J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->j:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->k:Lms/i;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->l:J

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
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            "Lcom/moloco/sdk/internal/g0$b<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            ">;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance v6, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->j:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->k:Lms/i;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->l:J

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;-><init>(Ljava/util/List;Lms/i;JLrs/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v6, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->i:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v6
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->h:I

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
    goto :goto_1

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
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lgt/g0;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->j:Ljava/util/List;

    .line 32
    .line 33
    iget-object v9, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->k:Lms/i;

    .line 34
    .line 35
    iget-wide v10, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->l:J

    .line 36
    .line 37
    new-instance v12, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v3, 0xa

    .line 40
    .line 41
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move-object v4, v3

    .line 63
    check-cast v4, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 64
    .line 65
    new-instance v13, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    move-object v3, v13

    .line 69
    move-object v5, v9

    .line 70
    move-wide v6, v10

    .line 71
    invoke-direct/range {v3 .. v8}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d$a;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x3

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    move-object v3, p1

    .line 78
    move-object v6, v13

    .line 79
    invoke-static/range {v3 .. v8}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;->h:I

    .line 88
    .line 89
    invoke-static {v12, p0}, Lkotlinx/coroutines/AwaitKt;->a(Ljava/util/Collection;Lrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-ne p1, v0, :cond_3

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_3
    :goto_1
    return-object p1
.end method
