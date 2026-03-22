.class final Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InstallReferrers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/coroutines/InstallReferrers;->googleInstallReferrer(Landroid/content/Context;Lat/p;)V
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
    c = "ai.turbolink.sdk.coroutines.InstallReferrers$googleInstallReferrer$1"
    f = "InstallReferrers.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onResult:Lat/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/p<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field label:I


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lat/p;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/installreferrer/api/InstallReferrerClient;",
            "Lat/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->$onResult:Lat/p;

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
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;

    .line 2
    .line 3
    iget-object v0, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 4
    .line 5
    iget-object v1, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->$onResult:Lat/p;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lat/p;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    iget v0, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 12
    .line 13
    new-instance v0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;

    .line 14
    .line 15
    iget-object v1, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->$onResult:Lat/p;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lat/p;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method
