.class public final Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.kt"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/PrepareGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TestBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasCredentialResultsDelegate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/PrepareGetCredentialResponse;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/credentials/PrepareGetCredentialResponse;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iget-object v3, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasCredentialResultsDelegate:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Landroidx/credentials/PrepareGetCredentialResponse;-><init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-object v7
.end method

.method public final setCredentialTypeDelegate(Lkotlin/jvm/functions/Function1;)Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasCredentialResultsDelegate:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setHasAuthResultsDelegate(Lkotlin/jvm/functions/Function0;)Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setHasRemoteResultsDelegate(Lkotlin/jvm/functions/Function0;)Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-object p0
.end method
