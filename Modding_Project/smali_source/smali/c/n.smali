.class public final Lc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/e;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/n;->a:Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConsentFormLoadFailure(Lcom/google/android/ump/FormError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/n;->a:Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lc/n;->a:Lkotlinx/coroutines/e;

    .line 10
    .line 11
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
