.class public final synthetic Landroidx/credentials/playservices/controllers/CredentialProviderController$maybeReportErrorFromResultReceiver$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/credentials/CredentialManagerCallback;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/CredentialProviderController$maybeReportErrorFromResultReceiver$1$$ExternalSyntheticLambda0;->f$0:Landroidx/credentials/CredentialManagerCallback;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/credentials/playservices/controllers/CredentialProviderController$maybeReportErrorFromResultReceiver$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/CredentialProviderController$maybeReportErrorFromResultReceiver$1$$ExternalSyntheticLambda0;->f$0:Landroidx/credentials/CredentialManagerCallback;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/CredentialProviderController$maybeReportErrorFromResultReceiver$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$maybeReportErrorFromResultReceiver$1;->$r8$lambda$z8E-SnyVHcJpaCU3Q58tSGSDt4I(Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
