.class public final synthetic Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Landroidx/credentials/CredentialManagerCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$0:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/CancellationSignal;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$3:Landroidx/credentials/CredentialManagerCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$0:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/CancellationSignal;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;->f$3:Landroidx/credentials/CredentialManagerCallback;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$DXdUqnt3NaHNieUz1yrHmEmv-IE(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
