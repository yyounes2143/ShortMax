.class public abstract Landroidx/credentials/CreateCredentialRequest;
.super Ljava/lang/Object;
.source "CreateCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreateCredentialRequest$Companion;,
        Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/credentials/CreateCredentialRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final candidateQueryData:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final credentialData:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayInfo:Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAutoSelectAllowed:Z

.field private final isSystemProviderRequired:Z

.field private final origin:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final preferImmediatelyAvailableCredentials:Z

.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/CreateCredentialRequest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/CreateCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/CreateCredentialRequest;->Companion:Landroidx/credentials/CreateCredentialRequest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "credentialData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "candidateQueryData"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "displayInfo"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/credentials/CreateCredentialRequest;->type:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/credentials/CreateCredentialRequest;->credentialData:Landroid/os/Bundle;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/credentials/CreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    .line 29
    .line 30
    iput-boolean p4, p0, Landroidx/credentials/CreateCredentialRequest;->isSystemProviderRequired:Z

    .line 31
    .line 32
    iput-boolean p5, p0, Landroidx/credentials/CreateCredentialRequest;->isAutoSelectAllowed:Z

    .line 33
    .line 34
    iput-object p6, p0, Landroidx/credentials/CreateCredentialRequest;->displayInfo:Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    .line 35
    .line 36
    iput-object p7, p0, Landroidx/credentials/CreateCredentialRequest;->origin:Ljava/lang/String;

    .line 37
    .line 38
    iput-boolean p8, p0, Landroidx/credentials/CreateCredentialRequest;->preferImmediatelyAvailableCredentials:Z

    .line 39
    .line 40
    const-string p1, "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"

    .line 41
    .line 42
    invoke-virtual {p2, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string p4, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    .line 46
    .line 47
    invoke-virtual {p2, p4, p8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static final createFrom(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/lang/String;)Landroidx/credentials/CreateCredentialRequest;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/CreateCredentialRequest;->Companion:Landroidx/credentials/CreateCredentialRequest$Companion;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/credentials/CreateCredentialRequest$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/lang/String;)Landroidx/credentials/CreateCredentialRequest;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method


# virtual methods
.method public final getCandidateQueryData()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCredentialData()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->credentialData:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayInfo()Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->displayInfo:Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->origin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isAutoSelectAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/CreateCredentialRequest;->isAutoSelectAllowed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSystemProviderRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/CreateCredentialRequest;->isSystemProviderRequired:Z

    .line 2
    .line 3
    return v0
.end method

.method public final preferImmediatelyAvailableCredentials()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/CreateCredentialRequest;->preferImmediatelyAvailableCredentials:Z

    .line 2
    .line 3
    return v0
.end method
