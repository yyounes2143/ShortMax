.class final Landroidx/credentials/provider/PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PendingIntentHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/provider/PendingIntentHandler$Companion;->retrieveProviderGetCredentialRequest(Landroid/content/Intent;)Landroidx/credentials/provider/ProviderGetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/credentials/CredentialOption;",
        "Landroidx/credentials/CredentialOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/credentials/provider/PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/provider/PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/credentials/provider/PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1;->INSTANCE:Landroidx/credentials/provider/PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Landroid/credentials/CredentialOption;)Landroidx/credentials/CredentialOption;
    .locals 6

    .line 2
    sget-object v0, Landroidx/credentials/CredentialOption;->Companion:Landroidx/credentials/CredentialOption$Companion;

    .line 3
    invoke-static {p1}, Landroidx/credentials/provider/d1;->a(Landroid/credentials/CredentialOption;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "option.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroidx/credentials/provider/e1;->a(Landroid/credentials/CredentialOption;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "option.credentialRetrievalData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroidx/credentials/provider/f1;->a(Landroid/credentials/CredentialOption;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "option.candidateQueryData"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroidx/credentials/provider/g1;->a(Landroid/credentials/CredentialOption;)Z

    move-result v4

    .line 7
    invoke-static {p1}, Landroidx/credentials/provider/h1;->a(Landroid/credentials/CredentialOption;)Ljava/util/Set;

    move-result-object v5

    const-string p1, "option.allowedProviders"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/credentials/CredentialOption$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/util/Set;)Landroidx/credentials/CredentialOption;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/credentials/provider/i1;->a(Ljava/lang/Object;)Landroid/credentials/CredentialOption;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1;->invoke(Landroid/credentials/CredentialOption;)Landroidx/credentials/CredentialOption;

    move-result-object p1

    return-object p1
.end method
