.class public final Landroidx/credentials/GetCredentialRequest;
.super Ljava/lang/Object;
.source "GetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/GetCredentialRequest$Builder;,
        Landroidx/credentials/GetCredentialRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGetCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCredentialRequest.kt\nandroidx/credentials/GetCredentialRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_PREFER_IDENTITY_DOC_UI:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/credentials/GetCredentialRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final credentialOptions:Ljava/util/List;
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

.field private final origin:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final preferIdentityDocUi:Z

.field private final preferImmediatelyAvailableCredentials:Z

.field private final preferUiBrandingComponentName:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/GetCredentialRequest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/GetCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/GetCredentialRequest;->Companion:Landroidx/credentials/GetCredentialRequest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 9
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
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 3
    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest;->credentialOptions:Ljava/util/List;

    .line 7
    iput-object p2, p0, Landroidx/credentials/GetCredentialRequest;->origin:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Landroidx/credentials/GetCredentialRequest;->preferIdentityDocUi:Z

    .line 9
    iput-object p4, p0, Landroidx/credentials/GetCredentialRequest;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    .line 10
    iput-boolean p5, p0, Landroidx/credentials/GetCredentialRequest;->preferImmediatelyAvailableCredentials:Z

    .line 11
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "credentialOptions should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x0

    if-eqz p2, :cond_1

    move v4, p7

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v6, p7

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 12
    invoke-direct/range {v1 .. v6}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V

    return-void
.end method

.method public static final createFrom(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/GetCredentialRequest;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
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
    sget-object v0, Landroidx/credentials/GetCredentialRequest;->Companion:Landroidx/credentials/GetCredentialRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroidx/credentials/GetCredentialRequest$Companion;->createFrom(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/GetCredentialRequest;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final toRequestDataBundle(Landroidx/credentials/GetCredentialRequest;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Landroidx/credentials/GetCredentialRequest;
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
    sget-object v0, Landroidx/credentials/GetCredentialRequest;->Companion:Landroidx/credentials/GetCredentialRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/GetCredentialRequest$Companion;->toRequestDataBundle(Landroidx/credentials/GetCredentialRequest;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final getCredentialOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/CredentialOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest;->credentialOptions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest;->origin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreferIdentityDocUi()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/GetCredentialRequest;->preferIdentityDocUi:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPreferUiBrandingComponentName()Landroid/content/ComponentName;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object v0
.end method

.method public final preferImmediatelyAvailableCredentials()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/GetCredentialRequest;->preferImmediatelyAvailableCredentials:Z

    .line 2
    .line 3
    return v0
.end method
