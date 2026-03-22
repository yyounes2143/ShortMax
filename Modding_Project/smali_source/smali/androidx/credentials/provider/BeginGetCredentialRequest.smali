.class public final Landroidx/credentials/provider/BeginGetCredentialRequest;
.super Ljava/lang/Object;
.source "BeginGetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/BeginGetCredentialRequest$Api34Impl;,
        Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final beginGetCredentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/BeginGetCredentialOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/provider/BeginGetCredentialRequest;->Companion:Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/provider/BeginGetCredentialOption;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "beginGetCredentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/credentials/provider/BeginGetCredentialRequest;-><init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/credentials/provider/CallingAppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/provider/BeginGetCredentialOption;",
            ">;",
            "Landroidx/credentials/provider/CallingAppInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "beginGetCredentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/credentials/provider/BeginGetCredentialRequest;->beginGetCredentialOptions:Ljava/util/List;

    .line 4
    iput-object p2, p0, Landroidx/credentials/provider/BeginGetCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/credentials/provider/BeginGetCredentialRequest;-><init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;)V

    return-void
.end method

.method public static final asBundle(Landroidx/credentials/provider/BeginGetCredentialRequest;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Landroidx/credentials/provider/BeginGetCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/BeginGetCredentialRequest;->Companion:Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;->asBundle(Landroidx/credentials/provider/BeginGetCredentialRequest;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialRequest;
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/BeginGetCredentialRequest;->Companion:Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialRequest;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final getBeginGetCredentialOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/BeginGetCredentialOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialRequest;->beginGetCredentialOptions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    .line 2
    .line 3
    return-object v0
.end method
