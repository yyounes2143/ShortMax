.class public final Landroidx/credentials/CredentialManager$createCredential$2$callback$1;
.super Ljava/lang/Object;
.source "CredentialManager.kt"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialManager;->createCredential$suspendImpl(Landroidx/credentials/CredentialManager;Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Landroidx/credentials/CreateCredentialResponse;",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $continuation:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Landroidx/credentials/CreateCredentialResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgt/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/i<",
            "-",
            "Landroidx/credentials/CreateCredentialResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lgt/i;

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

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lgt/i;

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/credentials/exceptions/CreateCredentialException;

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->onError(Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/CreateCredentialResponse;)V
    .locals 1
    .param p1    # Landroidx/credentials/CreateCredentialResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lgt/i;

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/credentials/CreateCredentialResponse;

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->onResult(Landroidx/credentials/CreateCredentialResponse;)V

    return-void
.end method
