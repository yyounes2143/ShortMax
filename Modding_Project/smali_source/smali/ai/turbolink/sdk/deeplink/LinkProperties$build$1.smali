.class public final Lai/turbolink/sdk/deeplink/LinkProperties$build$1;
.super Ljava/lang/Object;
.source "LinkProperties.kt"

# interfaces
.implements Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/deeplink/LinkProperties;->build(Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;


# direct methods
.method constructor <init>(Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/deeplink/LinkProperties$build$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/turbolink/sdk/deeplink/LinkProperties$build$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;->onFailure(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSuccess(Lai/turbolink/sdk/deeplink/LinkResponse;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/deeplink/LinkResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/turbolink/sdk/deeplink/LinkProperties$build$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;->onSuccess(Lai/turbolink/sdk/deeplink/LinkResponse;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
