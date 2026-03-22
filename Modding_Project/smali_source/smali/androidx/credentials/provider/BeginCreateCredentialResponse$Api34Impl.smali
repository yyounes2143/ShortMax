.class final Landroidx/credentials/provider/BeginCreateCredentialResponse$Api34Impl;
.super Ljava/lang/Object;
.source "BeginCreateCredentialResponse.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x22
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginCreateCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api34Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/BeginCreateCredentialResponse$Api34Impl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REQUEST_KEY:Ljava/lang/String; = "androidx.credentials.provider.BeginCreateCredentialResponse"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Api34Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/provider/BeginCreateCredentialResponse$Api34Impl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Api34Impl;->INSTANCE:Landroidx/credentials/provider/BeginCreateCredentialResponse$Api34Impl;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginCreateCredentialResponse;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/credentials/provider/BeginCreateCredentialResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToFrameworkResponse(Landroidx/credentials/provider/BeginCreateCredentialResponse;)Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "androidx.credentials.provider.BeginCreateCredentialResponse"

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialResponse;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "androidx.credentials.provider.BeginCreateCredentialResponse"

    .line 7
    .line 8
    const-class v1, Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    sget-object v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToJetpackResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)Landroidx/credentials/provider/BeginCreateCredentialResponse;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method
