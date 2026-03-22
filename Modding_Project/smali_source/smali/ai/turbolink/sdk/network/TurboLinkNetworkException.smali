.class public final Lai/turbolink/sdk/network/TurboLinkNetworkException;
.super Ljava/lang/Exception;
.source "TurboLinkNetworkException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private turboLinkErrCode:I

.field private turboLinkErrMessage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "errMessage"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lai/turbolink/sdk/network/TurboLinkNetworkException;->turboLinkErrCode:I

    .line 10
    .line 11
    iput-object p2, p0, Lai/turbolink/sdk/network/TurboLinkNetworkException;->turboLinkErrMessage:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getTurboLinkErrCode()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/network/TurboLinkNetworkException;->turboLinkErrCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTurboLinkErrMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/network/TurboLinkNetworkException;->turboLinkErrMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setTurboLinkErrCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lai/turbolink/sdk/network/TurboLinkNetworkException;->turboLinkErrCode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTurboLinkErrMessage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/network/TurboLinkNetworkException;->turboLinkErrMessage:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
