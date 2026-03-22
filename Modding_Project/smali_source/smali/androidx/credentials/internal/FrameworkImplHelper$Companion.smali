.class public final Landroidx/credentials/internal/FrameworkImplHelper$Companion;
.super Ljava/lang/Object;
.source "FrameworkImplHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/internal/FrameworkImplHelper;
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
    invoke-direct {p0}, Landroidx/credentials/internal/FrameworkImplHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFinalCreateCredentialData(Landroidx/credentials/CreateCredentialRequest;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Landroidx/credentials/CreateCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

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
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getDisplayInfo()Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->toBundle()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, p1, Landroidx/credentials/CreatePasswordRequest;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    sget p1, Landroidx/credentials/R$drawable;->ic_password:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of p1, p1, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sget p1, Landroidx/credentials/R$drawable;->ic_passkey:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget p1, Landroidx/credentials/R$drawable;->ic_other_sign_in:I

    .line 38
    .line 39
    :goto_0
    invoke-static {p2, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "androidx.credentials.BUNDLE_KEY_CREDENTIAL_TYPE_ICON"

    .line 44
    .line 45
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "androidx.credentials.BUNDLE_KEY_REQUEST_DISPLAY_INFO"

    .line 49
    .line 50
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method
