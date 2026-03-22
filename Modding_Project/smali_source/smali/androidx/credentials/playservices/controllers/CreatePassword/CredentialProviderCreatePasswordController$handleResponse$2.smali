.class final Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CredentialProviderCreatePasswordController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;->handleResponse$credentials_play_services_auth_release(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;


# direct methods
.method public static synthetic $r8$lambda$Xf3l0PkPKOo1rTArgwmrPM3pKtc(Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2;->invoke$lambda$0(Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;Landroidx/credentials/exceptions/CreateCredentialException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2;->this$0:Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$e"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;->access$getCallback$p(Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;)Landroidx/credentials/CredentialManagerCallback;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "callback"

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :cond_0
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/credentials/exceptions/CreateCredentialException;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2;->invoke(Landroidx/credentials/exceptions/CreateCredentialException;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 3
    .param p1    # Landroidx/credentials/exceptions/CreateCredentialException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2;->this$0:Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;

    invoke-static {v0}, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;->access$getExecutor$p(Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2;->this$0:Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;

    new-instance v2, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$handleResponse$2$$ExternalSyntheticLambda0;-><init>(Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;Landroidx/credentials/exceptions/CreateCredentialException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
