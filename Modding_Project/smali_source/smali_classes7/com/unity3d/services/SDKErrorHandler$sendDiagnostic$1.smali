.class final Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SDKErrorHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/SDKErrorHandler;->sendDiagnostic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.services.SDKErrorHandler$sendDiagnostic$1"
    f = "SDKErrorHandler.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $reason:Ljava/lang/String;

.field final synthetic $scopeName:Ljava/lang/String;

.field final synthetic $stackTrace:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/unity3d/services/SDKErrorHandler;


# direct methods
.method constructor <init>(Lcom/unity3d/services/SDKErrorHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/SDKErrorHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->this$0:Lcom/unity3d/services/SDKErrorHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$name:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$reason:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$stackTrace:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$scopeName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->this$0:Lcom/unity3d/services/SDKErrorHandler;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$reason:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$stackTrace:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$scopeName:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;-><init>(Lcom/unity3d/services/SDKErrorHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->this$0:Lcom/unity3d/services/SDKErrorHandler;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/unity3d/services/SDKErrorHandler;->access$getSendDiagnosticEvent$p(Lcom/unity3d/services/SDKErrorHandler;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$name:Ljava/lang/String;

    .line 18
    .line 19
    const-string p1, "reason"

    .line 20
    .line 21
    iget-object v2, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$reason:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "reason_debug"

    .line 28
    .line 29
    iget-object v3, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$stackTrace:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "coroutine_name"

    .line 36
    .line 37
    iget-object v4, p0, Lcom/unity3d/services/SDKErrorHandler$sendDiagnostic$1;->$scopeName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v3, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    filled-new-array {p1, v2, v3}, [Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/16 v7, 0x3a

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method
