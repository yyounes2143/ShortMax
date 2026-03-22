.class final Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;
.super Lkotlin/jvm/internal/Lambda;
.source "CredentialProviderGetSignInIntentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->handleResponse$credentials_play_services_auth_release(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $e:Landroidx/credentials/exceptions/GetCredentialUnknownException;

.field final synthetic this$0:Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;


# direct methods
.method public static synthetic $r8$lambda$TQauUMu-XkdB1aAUZYbWjN9Q7-Q(Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;->invoke$lambda$0(Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;->this$0:Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;->$e:Landroidx/credentials/exceptions/GetCredentialUnknownException;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V
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
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;->this$0:Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;->this$0:Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    iget-object v2, p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6;->$e:Landroidx/credentials/exceptions/GetCredentialUnknownException;

    new-instance v3, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController$handleResponse$6$$ExternalSyntheticLambda0;-><init>(Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
