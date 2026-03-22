.class public final Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;
.super Ljava/lang/Object;
.source "CredentialProviderFrameworkImpl.kt"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialProviderFrameworkImpl;->onPrepareCredential(Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
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
            "Landroidx/credentials/PrepareGetCredentialResponse;",
            "Landroidx/credentials/exceptions/GetCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;


# direct methods
.method constructor <init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CredentialProviderFrameworkImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/CredentialManagerCallback<",
            "Landroidx/credentials/PrepareGetCredentialResponse;",
            "Landroidx/credentials/exceptions/GetCredentialException;",
            ">;",
            "Landroidx/credentials/CredentialProviderFrameworkImpl;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Landroid/credentials/GetCredentialException;)V
    .locals 2
    .param p1    # Landroid/credentials/GetCredentialException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    invoke-virtual {v1, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertToJetpackGetException$credentials_release(Landroid/credentials/GetCredentialException;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/credentials/n0;->a(Ljava/lang/Object;)Landroid/credentials/GetCredentialException;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->onError(Landroid/credentials/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroid/credentials/PrepareGetCredentialResponse;)V
    .locals 2
    .param p1    # Landroid/credentials/PrepareGetCredentialResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    invoke-virtual {v1, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertPrepareGetResponseToJetpackClass$credentials_release(Landroid/credentials/PrepareGetCredentialResponse;)Landroidx/credentials/PrepareGetCredentialResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/credentials/o0;->a(Ljava/lang/Object;)Landroid/credentials/PrepareGetCredentialResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1;->onResult(Landroid/credentials/PrepareGetCredentialResponse;)V

    return-void
.end method
