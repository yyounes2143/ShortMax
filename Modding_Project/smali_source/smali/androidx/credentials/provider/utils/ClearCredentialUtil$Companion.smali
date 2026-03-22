.class public final Landroidx/credentials/provider/utils/ClearCredentialUtil$Companion;
.super Ljava/lang/Object;
.source "ClearCredentialUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/utils/ClearCredentialUtil;
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
    invoke-direct {p0}, Landroidx/credentials/provider/utils/ClearCredentialUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertToJetpackRequest$credentials_release(Landroid/service/credentials/ClearCredentialStateRequest;)Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
    .locals 5
    .param p1    # Landroid/service/credentials/ClearCredentialStateRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;

    .line 7
    .line 8
    new-instance v1, Landroidx/credentials/provider/CallingAppInfo;

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/credentials/provider/utils/k1;->a(Landroid/service/credentials/ClearCredentialStateRequest;)Landroid/service/credentials/CallingAppInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroidx/credentials/provider/x0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "request.callingAppInfo.packageName"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/credentials/provider/utils/k1;->a(Landroid/service/credentials/ClearCredentialStateRequest;)Landroid/service/credentials/CallingAppInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroidx/credentials/provider/y0;->a(Landroid/service/credentials/CallingAppInfo;)Landroid/content/pm/SigningInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "request.callingAppInfo.signingInfo"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/credentials/provider/utils/k1;->a(Landroid/service/credentials/ClearCredentialStateRequest;)Landroid/service/credentials/CallingAppInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Landroidx/credentials/provider/t0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v1, v2, v3, p1}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;-><init>(Landroidx/credentials/provider/CallingAppInfo;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
