.class public final Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest$Companion;
.super Ljava/lang/Object;
.source "BeginCreatePasswordCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;
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
    invoke-direct {p0}, Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/credentials/provider/CallingAppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;

    .line 7
    .line 8
    invoke-direct {v0, p2, p1}, Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;-><init>(Landroidx/credentials/provider/CallingAppInfo;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :catch_0
    new-instance p1, Landroidx/credentials/internal/FrameworkClassParsingException;

    .line 13
    .line 14
    invoke-direct {p1}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
