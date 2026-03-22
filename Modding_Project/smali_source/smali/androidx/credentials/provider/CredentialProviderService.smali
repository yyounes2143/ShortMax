.class public abstract Landroidx/credentials/provider/CredentialProviderService;
.super Landroid/service/credentials/CredentialProviderService;
.source "CredentialProviderService.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x22
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private isTestMode:Z

.field private lastClearRequest:Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastCreateRequest:Landroidx/credentials/provider/BeginCreateCredentialRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastGetRequest:Landroidx/credentials/provider/BeginGetCredentialRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/credentials/CredentialProviderService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getLastClearRequest()Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CredentialProviderService;->lastClearRequest:Landroidx/credentials/provider/ProviderClearCredentialStateRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastCreateRequest()Landroidx/credentials/provider/BeginCreateCredentialRequest;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CredentialProviderService;->lastCreateRequest:Landroidx/credentials/provider/BeginCreateCredentialRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastGetRequest()Landroidx/credentials/provider/BeginGetCredentialRequest;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CredentialProviderService;->lastGetRequest:Landroidx/credentials/provider/BeginGetCredentialRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isTestMode()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/provider/CredentialProviderService;->isTestMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .locals 1
    .param p1    # Landroid/service/credentials/BeginCreateCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/OutcomeReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/BeginCreateCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cancellationSignal"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;

    .line 17
    .line 18
    invoke-direct {v0, p3}, Landroidx/credentials/provider/CredentialProviderService$onBeginCreateCredential$outcome$1;-><init>(Landroid/os/OutcomeReceiver;)V

    .line 19
    .line 20
    .line 21
    sget-object p3, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;

    .line 22
    .line 23
    invoke-virtual {p3, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToJetpackRequest$credentials_release(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroidx/credentials/provider/BeginCreateCredentialRequest;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean p3, p0, Landroidx/credentials/provider/CredentialProviderService;->isTestMode:Z

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/credentials/provider/CredentialProviderService;->lastCreateRequest:Landroidx/credentials/provider/BeginCreateCredentialRequest;

    .line 32
    .line 33
    :cond_0
    invoke-static {v0}, Landroidx/core/os/b;->a(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/provider/CredentialProviderService;->onBeginCreateCredentialRequest(Landroidx/credentials/provider/BeginCreateCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public abstract onBeginCreateCredentialRequest(Landroidx/credentials/provider/BeginCreateCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .param p1    # Landroidx/credentials/provider/BeginCreateCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/OutcomeReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/provider/BeginCreateCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation
.end method

.method public final onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .locals 1
    .param p1    # Landroid/service/credentials/BeginGetCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/OutcomeReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/BeginGetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cancellationSignal"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;->convertToJetpackRequest$credentials_release(Landroid/service/credentials/BeginGetCredentialRequest;)Landroidx/credentials/provider/BeginGetCredentialRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Landroidx/credentials/provider/CredentialProviderService$onBeginGetCredential$outcome$1;

    .line 23
    .line 24
    invoke-direct {v0, p3}, Landroidx/credentials/provider/CredentialProviderService$onBeginGetCredential$outcome$1;-><init>(Landroid/os/OutcomeReceiver;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p3, p0, Landroidx/credentials/provider/CredentialProviderService;->isTestMode:Z

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/credentials/provider/CredentialProviderService;->lastGetRequest:Landroidx/credentials/provider/BeginGetCredentialRequest;

    .line 32
    .line 33
    :cond_0
    invoke-static {v0}, Landroidx/core/os/b;->a(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/provider/CredentialProviderService;->onBeginGetCredentialRequest(Landroidx/credentials/provider/BeginGetCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public abstract onBeginGetCredentialRequest(Landroidx/credentials/provider/BeginGetCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .param p1    # Landroidx/credentials/provider/BeginGetCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/OutcomeReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/provider/BeginGetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation
.end method

.method public final onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .locals 1
    .param p1    # Landroid/service/credentials/ClearCredentialStateRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/OutcomeReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/ClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cancellationSignal"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/credentials/provider/CredentialProviderService$onClearCredentialState$outcome$1;

    .line 17
    .line 18
    invoke-direct {v0, p3}, Landroidx/credentials/provider/CredentialProviderService$onClearCredentialState$outcome$1;-><init>(Landroid/os/OutcomeReceiver;)V

    .line 19
    .line 20
    .line 21
    sget-object p3, Landroidx/credentials/provider/utils/ClearCredentialUtil;->Companion:Landroidx/credentials/provider/utils/ClearCredentialUtil$Companion;

    .line 22
    .line 23
    invoke-virtual {p3, p1}, Landroidx/credentials/provider/utils/ClearCredentialUtil$Companion;->convertToJetpackRequest$credentials_release(Landroid/service/credentials/ClearCredentialStateRequest;)Landroidx/credentials/provider/ProviderClearCredentialStateRequest;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean p3, p0, Landroidx/credentials/provider/CredentialProviderService;->isTestMode:Z

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/credentials/provider/CredentialProviderService;->lastClearRequest:Landroidx/credentials/provider/ProviderClearCredentialStateRequest;

    .line 32
    .line 33
    :cond_0
    invoke-static {v0}, Landroidx/core/os/b;->a(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/provider/CredentialProviderService;->onClearCredentialStateRequest(Landroidx/credentials/provider/ProviderClearCredentialStateRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public abstract onClearCredentialStateRequest(Landroidx/credentials/provider/ProviderClearCredentialStateRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .param p1    # Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/OutcomeReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/provider/ProviderClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver;",
            ")V"
        }
    .end annotation
.end method

.method public final setLastClearRequest(Landroidx/credentials/provider/ProviderClearCredentialStateRequest;)V
    .locals 0
    .param p1    # Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/provider/CredentialProviderService;->lastClearRequest:Landroidx/credentials/provider/ProviderClearCredentialStateRequest;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastCreateRequest(Landroidx/credentials/provider/BeginCreateCredentialRequest;)V
    .locals 0
    .param p1    # Landroidx/credentials/provider/BeginCreateCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/provider/CredentialProviderService;->lastCreateRequest:Landroidx/credentials/provider/BeginCreateCredentialRequest;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastGetRequest(Landroidx/credentials/provider/BeginGetCredentialRequest;)V
    .locals 0
    .param p1    # Landroidx/credentials/provider/BeginGetCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/provider/CredentialProviderService;->lastGetRequest:Landroidx/credentials/provider/BeginGetCredentialRequest;

    .line 2
    .line 3
    return-void
.end method

.method public final setTestMode(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/credentials/provider/CredentialProviderService;->isTestMode:Z

    .line 2
    .line 3
    return-void
.end method
