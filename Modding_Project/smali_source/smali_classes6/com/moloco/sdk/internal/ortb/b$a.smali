.class public final Lcom/moloco/sdk/internal/ortb/b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/ortb/b;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/internal/g0<",
        "Lcom/moloco/sdk/internal/ortb/model/e;",
        "Ljava/lang/Exception;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.ortb.BidResponseParserImpl$invoke$2"
    f = "BidResponseParser.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBidResponseParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidResponseParser.kt\ncom/moloco/sdk/internal/ortb/BidResponseParserImpl$invoke$2\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,39:1\n123#2:40\n32#3:41\n80#4:42\n*S KotlinDebug\n*F\n+ 1 BidResponseParser.kt\ncom/moloco/sdk/internal/ortb/BidResponseParserImpl$invoke$2\n*L\n30#1:40\n30#1:41\n30#1:42\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/ortb/b;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ortb/b;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/ortb/b;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/ortb/b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ortb/b$a;->i:Lcom/moloco/sdk/internal/ortb/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/ortb/b$a;->j:Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/ortb/model/e;",
            "Ljava/lang/Exception;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/b$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/ortb/b$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/ortb/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

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
    new-instance p1, Lcom/moloco/sdk/internal/ortb/b$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/b$a;->i:Lcom/moloco/sdk/internal/ortb/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/b$a;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/internal/ortb/b$a;-><init>(Lcom/moloco/sdk/internal/ortb/b;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ortb/b$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/moloco/sdk/internal/ortb/b$a;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance p1, Lcom/moloco/sdk/internal/g0$b;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/moloco/sdk/internal/ortb/b$a;->i:Lcom/moloco/sdk/internal/ortb/b;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/moloco/sdk/internal/ortb/b;->a(Lcom/moloco/sdk/internal/ortb/b;)Lkotlinx/serialization/json/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/moloco/sdk/internal/ortb/b$a;->j:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0}, Lst/j;->getSerializersModule()Lxt/a;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-class v3, Lcom/moloco/sdk/internal/ortb/model/e;

    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v2, v1}, Lst/w;->b(Lst/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/e;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/moloco/sdk/internal/ortb/e;->a(Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object p1, v0

    .line 61
    :goto_0
    return-object p1

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method
