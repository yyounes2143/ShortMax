.class public final Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;
.super Ljava/lang/Object;
.source "CredentialProviderService.kt"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/provider/CredentialProviderService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
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
.field final synthetic $callback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;->$callback:Landroid/os/OutcomeReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 2
    .param p1    # Landroidx/credentials/exceptions/CreateCredentialException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;->$callback:Landroid/os/OutcomeReceiver;

    .line 3
    invoke-static {}, Landroidx/credentials/provider/w;->a()V

    .line 4
    invoke-virtual {p1}, Landroidx/credentials/exceptions/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1, p1}, Landroidx/credentials/provider/v;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/credentials/CreateCredentialException;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Landroidx/credentials/provider/u;->a(Landroid/os/OutcomeReceiver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/credentials/exceptions/CreateCredentialException;

    invoke-virtual {p0, p1}, Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;->onError(Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/provider/BeginCreateCredentialResponse;)V
    .locals 2
    .param p1    # Landroidx/credentials/provider/BeginCreateCredentialResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;->$callback:Landroid/os/OutcomeReceiver;

    .line 3
    sget-object v1, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;

    .line 4
    invoke-virtual {v1, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToFrameworkResponse(Landroidx/credentials/provider/BeginCreateCredentialResponse;)Landroid/service/credentials/BeginCreateCredentialResponse;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Landroidx/credentials/provider/t;->a(Landroid/os/OutcomeReceiver;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/credentials/provider/BeginCreateCredentialResponse;

    invoke-virtual {p0, p1}, Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;->onResult(Landroidx/credentials/provider/BeginCreateCredentialResponse;)V

    return-void
.end method
