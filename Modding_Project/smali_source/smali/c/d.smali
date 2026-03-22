.class public final Lc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lkotlinx/coroutines/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkotlinx/coroutines/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d;->a:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lc/d;->b:Lkotlinx/coroutines/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lca/i;->a:Lca/i;

    .line 8
    .line 9
    const-string v2, "c"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lca/i;->i(Lca/i;Lcom/google/android/ump/ConsentInformation;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "showConsentForm failed -> "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0, p1}, Lca/i;->f(Lca/i;Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v1, p1}, Lca/i;->b(Lca/i;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lc/d;->b:Lkotlinx/coroutines/e;

    .line 41
    .line 42
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->isActive()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lc/d;->b:Lkotlinx/coroutines/e;

    .line 49
    .line 50
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 51
    .line 52
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "showConsentForm succeed -> "

    .line 65
    .line 66
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static {v1, v0, v3, v2, v3}, Lca/i;->u(Lca/i;Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;ILjava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v1, p1}, Lca/i;->d(Lca/i;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lc/d;->b:Lkotlinx/coroutines/e;

    .line 86
    .line 87
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->isActive()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iget-object p1, p0, Lc/d;->b:Lkotlinx/coroutines/e;

    .line 94
    .line 95
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 96
    .line 97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void
.end method
