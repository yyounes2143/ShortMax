.class public final Landroidx/credentials/GetCredentialRequest$Companion;
.super Ljava/lang/Object;
.source "GetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/GetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/credentials/GetCredentialRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/GetCredentialRequest;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/credentials/GetCredentialRequest;"
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
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v0, "androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI"

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    .line 18
    .line 19
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME"

    .line 24
    .line 25
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    check-cast p3, Landroid/content/ComponentName;

    .line 30
    .line 31
    new-instance v2, Landroidx/credentials/GetCredentialRequest$Builder;

    .line 32
    .line 33
    invoke-direct {v2}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Landroidx/credentials/GetCredentialRequest$Builder;->setCredentialOptions(Ljava/util/List;)Landroidx/credentials/GetCredentialRequest$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Landroidx/credentials/GetCredentialRequest$Builder;->setPreferIdentityDocUi(Z)Landroidx/credentials/GetCredentialRequest$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p3}, Landroidx/credentials/GetCredentialRequest$Builder;->setPreferUiBrandingComponentName(Landroid/content/ComponentName;)Landroidx/credentials/GetCredentialRequest$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, v1}, Landroidx/credentials/GetCredentialRequest$Builder;->setPreferImmediatelyAvailableCredentials(Z)Landroidx/credentials/GetCredentialRequest$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroidx/credentials/GetCredentialRequest$Builder;->setOrigin(Ljava/lang/String;)Landroidx/credentials/GetCredentialRequest$Builder;

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p1

    .line 62
    :catch_0
    new-instance p1, Landroidx/credentials/internal/FrameworkClassParsingException;

    .line 63
    .line 64
    invoke-direct {p1}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final toRequestDataBundle(Landroidx/credentials/GetCredentialRequest;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Landroidx/credentials/GetCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getPreferIdentityDocUi()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const-string v1, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->preferImmediatelyAvailableCredentials()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v1, "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME"

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getPreferUiBrandingComponentName()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
