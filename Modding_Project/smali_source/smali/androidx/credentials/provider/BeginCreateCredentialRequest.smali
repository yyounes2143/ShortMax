.class public abstract Landroidx/credentials/provider/BeginCreateCredentialRequest;
.super Ljava/lang/Object;
.source "BeginCreateCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/BeginCreateCredentialRequest$Api34Impl;,
        Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final candidateQueryData:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/credentials/provider/CallingAppInfo;
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
    const-string v0, "candidateQueryData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->type:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    .line 19
    .line 20
    return-void
.end method

.method public static final asBundle(Landroidx/credentials/provider/BeginCreateCredentialRequest;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Landroidx/credentials/provider/BeginCreateCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;->asBundle(Landroidx/credentials/provider/BeginCreateCredentialRequest;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialRequest;
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialRequest;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCandidateQueryData()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/BeginCreateCredentialRequest;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
