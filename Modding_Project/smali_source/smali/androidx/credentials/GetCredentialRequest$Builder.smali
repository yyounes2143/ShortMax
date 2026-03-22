.class public final Landroidx/credentials/GetCredentialRequest$Builder;
.super Ljava/lang/Object;
.source "GetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/GetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private credentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/CredentialOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private origin:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private preferIdentityDocUi:Z

.field private preferImmediatelyAvailableCredentials:Z

.field private preferUiBrandingComponentName:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 1
    .param p1    # Landroidx/credentials/CredentialOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "credentialOption"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final build()Landroidx/credentials/GetCredentialRequest;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Landroidx/credentials/GetCredentialRequest;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Landroidx/credentials/GetCredentialRequest$Builder;->origin:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v3, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferIdentityDocUi:Z

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    .line 16
    .line 17
    iget-boolean v5, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferImmediatelyAvailableCredentials:Z

    .line 18
    .line 19
    move-object v0, v6

    .line 20
    invoke-direct/range {v0 .. v5}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V

    .line 21
    .line 22
    .line 23
    return-object v6
.end method

.method public final setCredentialOptions(Ljava/util/List;)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;)",
            "Landroidx/credentials/GetCredentialRequest$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "credentialOptions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public final setOrigin(Ljava/lang/String;)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "origin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->origin:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setPreferIdentityDocUi(Z)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferIdentityDocUi:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPreferImmediatelyAvailableCredentials(Z)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferImmediatelyAvailableCredentials:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPreferUiBrandingComponentName(Landroid/content/ComponentName;)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method
