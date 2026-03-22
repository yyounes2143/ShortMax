.class final Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CredentialProviderFrameworkImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialProviderFrameworkImpl;->onGetCredential(Landroid/content/Context;Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
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
.field final synthetic $callback:Landroidx/credentials/CredentialManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/credentials/CredentialManagerCallback<",
            "Landroidx/credentials/GetCredentialResponse;",
            "Landroidx/credentials/exceptions/GetCredentialException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/CredentialManagerCallback<",
            "Landroidx/credentials/GetCredentialResponse;",
            "Landroidx/credentials/exceptions/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    .line 3
    new-instance v1, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;

    .line 4
    const-string v2, "Your device doesn\'t support credential manager"

    .line 5
    invoke-direct {v1, v2}, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-interface {v0, v1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method
