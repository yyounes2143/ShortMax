.class public final Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;


# instance fields
.field public final synthetic a:Lcom/google/android/ump/ConsentInformation;

.field public final synthetic b:J

.field public final synthetic c:Lkotlinx/coroutines/e;


# direct methods
.method public constructor <init>(Lcom/google/android/ump/ConsentInformation;JLkotlinx/coroutines/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c;->a:Lcom/google/android/ump/ConsentInformation;

    .line 2
    .line 3
    iput-wide p2, p0, Lc/c;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lc/c;->c:Lkotlinx/coroutines/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateFailure(Lcom/google/android/ump/FormError;)V
    .locals 6

    .line 1
    sget-object v0, Lca/i;->a:Lca/i;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "requestConsentInfoUpdate failed -> "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lc/c;->a:Lcom/google/android/ump/ConsentInformation;

    .line 11
    .line 12
    const-string v3, "consentInfo"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, p1}, Lca/i;->f(Lca/i;Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ", cost="

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iget-wide v4, p0, Lc/c;->b:J

    .line 34
    .line 35
    sub-long/2addr v2, v4

    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, "ms"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lca/i;->b(Lca/i;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lc/c;->c:Lkotlinx/coroutines/e;

    .line 52
    .line 53
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->isActive()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lc/c;->c:Lkotlinx/coroutines/e;

    .line 60
    .line 61
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 62
    .line 63
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method
