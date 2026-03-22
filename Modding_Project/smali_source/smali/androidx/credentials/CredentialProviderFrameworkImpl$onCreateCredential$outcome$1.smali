.class public final Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;
.super Ljava/lang/Object;
.source "CredentialProviderFrameworkImpl.kt"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialProviderFrameworkImpl;->onCreateCredential(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $callback:Landroidx/credentials/CredentialManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/credentials/CredentialManagerCallback<",
            "Landroidx/credentials/CreateCredentialResponse;",
            "Landroidx/credentials/exceptions/CreateCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Landroidx/credentials/CreateCredentialRequest;

.field final synthetic this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;


# direct methods
.method constructor <init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/CredentialProviderFrameworkImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/CredentialManagerCallback<",
            "Landroidx/credentials/CreateCredentialResponse;",
            "Landroidx/credentials/exceptions/CreateCredentialException;",
            ">;",
            "Landroidx/credentials/CreateCredentialRequest;",
            "Landroidx/credentials/CredentialProviderFrameworkImpl;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$request:Landroidx/credentials/CreateCredentialRequest;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(Landroid/credentials/CreateCredentialException;)V
    .locals 2
    .param p1    # Landroid/credentials/CreateCredentialException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "CredManProvService"

    const-string v1, "CreateCredentialResponse error returned from framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    invoke-virtual {v1, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertToJetpackCreateException$credentials_release(Landroid/credentials/CreateCredentialException;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/credentials/j0;->a(Ljava/lang/Object;)Landroid/credentials/CreateCredentialException;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->onError(Landroid/credentials/CreateCredentialException;)V

    return-void
.end method

.method public onResult(Landroid/credentials/CreateCredentialResponse;)V
    .locals 4
    .param p1    # Landroid/credentials/CreateCredentialResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "CredManProvService"

    const-string v1, "Create Result returned from framework: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    .line 4
    sget-object v1, Landroidx/credentials/CreateCredentialResponse;->Companion:Landroidx/credentials/CreateCredentialResponse$Companion;

    .line 5
    iget-object v2, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$request:Landroidx/credentials/CreateCredentialRequest;

    invoke-virtual {v2}, Landroidx/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroidx/credentials/k0;->a(Landroid/credentials/CreateCredentialResponse;)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "response.data"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2, p1}, Landroidx/credentials/CreateCredentialResponse$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/credentials/l0;->a(Ljava/lang/Object;)Landroid/credentials/CreateCredentialResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->onResult(Landroid/credentials/CreateCredentialResponse;)V

    return-void
.end method
