.class public final Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/internal/g0<",
        "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt$prepareNativeAssets$preparedOptionalAssets$1$1$1"
    f = "PrepareNativeAssets.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

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
            "Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->j:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->k:Lms/i;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->l:J

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
            "+",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->j:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->k:Lms/i;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->l:J

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->i:I

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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->h:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->j:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->k:Lms/i;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->l:J

    .line 36
    .line 37
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->h:Ljava/lang/Object;

    .line 38
    .line 39
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c$a;->i:I

    .line 40
    .line 41
    invoke-static {p1, v1, v3, v4, p0}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->f(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-ne v1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    move-object v0, p1

    .line 49
    move-object p1, v1

    .line 50
    :goto_0
    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method
