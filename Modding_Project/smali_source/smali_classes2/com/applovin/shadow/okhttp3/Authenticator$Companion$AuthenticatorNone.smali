.class final Lcom/applovin/shadow/okhttp3/Authenticator$Companion$AuthenticatorNone;
.super Ljava/lang/Object;
.source "Authenticator.kt"

# interfaces
.implements Lcom/applovin/shadow/okhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/Authenticator$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AuthenticatorNone"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public authenticate(Lcom/applovin/shadow/okhttp3/Route;Lcom/applovin/shadow/okhttp3/Response;)Lcom/applovin/shadow/okhttp3/Request;
    .locals 0
    .param p1    # Lcom/applovin/shadow/okhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p1, "response"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method
