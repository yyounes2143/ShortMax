.class public final Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
.super Ljava/lang/Object;
.source "ProviderClearCredentialStateRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/credentials/provider/CallingAppInfo;)V
    .locals 1
    .param p1    # Landroidx/credentials/provider/CallingAppInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "callingAppInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    .line 2
    .line 3
    return-object v0
.end method
