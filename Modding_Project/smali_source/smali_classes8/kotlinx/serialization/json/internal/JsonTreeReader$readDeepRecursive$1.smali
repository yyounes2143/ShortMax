.class final Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "JsonTreeReader.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/JsonTreeReader;->g()Lkotlinx/serialization/json/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lat/n<",
        "Lms/b<",
        "Lkotlin/Unit;",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;",
        "Lkotlin/Unit;",
        "Lrs/c<",
        "-",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1"
    f = "JsonTreeReader.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lkotlinx/serialization/json/internal/JsonTreeReader;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/internal/JsonTreeReader;",
            "Lrs/c<",
            "-",
            "Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final i(Lms/b;Lkotlin/Unit;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/b<",
            "Lkotlin/Unit;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;",
            "Lkotlin/Unit;",
            "Lrs/c<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    .line 2
    .line 3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 4
    .line 5
    invoke-direct {p2, v0, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lms/b;

    .line 2
    .line 3
    check-cast p2, Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p3, Lrs/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->i(Lms/b;Lkotlin/Unit;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->h:I

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
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lms/b;

    .line 30
    .line 31
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 32
    .line 33
    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->a(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lwt/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lwt/a;->F()B

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, v2, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 44
    .line 45
    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->d(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->d(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v3, 0x6

    .line 61
    if-ne v1, v3, :cond_5

    .line 62
    .line 63
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 64
    .line 65
    iput v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->h:I

    .line 66
    .line 67
    invoke-static {v1, p1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->c(Lkotlinx/serialization/json/internal/JsonTreeReader;Lms/b;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    :goto_0
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    const/16 p1, 0x8

    .line 78
    .line 79
    if-ne v1, p1, :cond_6

    .line 80
    .line 81
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 82
    .line 83
    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->b(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/JsonElement;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_1
    return-object p1

    .line 88
    :cond_6
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->j:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 89
    .line 90
    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->a(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lwt/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v4, 0x6

    .line 95
    const/4 v5, 0x0

    .line 96
    const-string v1, "Can\'t begin reading element, unexpected token"

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-static/range {v0 .. v5}, Lwt/a;->x(Lwt/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 101
    .line 102
    .line 103
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 104
    .line 105
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw p1
.end method
