.class public final Lc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;


# instance fields
.field public final synthetic a:Lcom/google/android/ump/ConsentInformation;

.field public final synthetic b:J

.field public final synthetic c:Lkotlinx/coroutines/e;


# direct methods
.method public constructor <init>(Lcom/google/android/ump/ConsentInformation;JLkotlinx/coroutines/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b;->a:Lcom/google/android/ump/ConsentInformation;

    .line 2
    .line 3
    iput-wide p2, p0, Lc/b;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lc/b;->c:Lkotlinx/coroutines/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateSuccess()V
    .locals 7

    .line 1
    invoke-static {}, Lca/i;->c()Lkt/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lca/i;->a:Lca/i;

    .line 11
    .line 12
    iget-object v2, p0, Lc/b;->a:Lcom/google/android/ump/ConsentInformation;

    .line 13
    .line 14
    const-string v3, "consentInfo"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2}, Lca/i;->i(Lca/i;Lcom/google/android/ump/ConsentInformation;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "requestConsentInfoUpdate succeed -> "

    .line 25
    .line 26
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lc/b;->a:Lcom/google/android/ump/ConsentInformation;

    .line 30
    .line 31
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-static {v0, v4, v3, v5, v3}, Lca/i;->u(Lca/i;Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;ILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ", cost="

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iget-wide v5, p0, Lc/b;->b:J

    .line 53
    .line 54
    sub-long/2addr v3, v5

    .line 55
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, "ms"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v0, v2}, Lca/i;->d(Lca/i;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lc/b;->c:Lkotlinx/coroutines/e;

    .line 71
    .line 72
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->isActive()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lc/b;->c:Lkotlinx/coroutines/e;

    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void
.end method
