.class public interface abstract Lcom/applovin/shadow/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/Authenticator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/Authenticator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final JAVA_NET_AUTHENTICATOR:Lcom/applovin/shadow/okhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NONE:Lcom/applovin/shadow/okhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/Authenticator$Companion;->$$INSTANCE:Lcom/applovin/shadow/okhttp3/Authenticator$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/applovin/shadow/okhttp3/Authenticator;->Companion:Lcom/applovin/shadow/okhttp3/Authenticator$Companion;

    .line 4
    .line 5
    new-instance v0, Lcom/applovin/shadow/okhttp3/Authenticator$Companion$AuthenticatorNone;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/Authenticator$Companion$AuthenticatorNone;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/applovin/shadow/okhttp3/Authenticator;->NONE:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 11
    .line 12
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/authenticator/JavaNetAuthenticator;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Lcom/applovin/shadow/okhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lcom/applovin/shadow/okhttp3/Dns;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/applovin/shadow/okhttp3/Authenticator;->JAVA_NET_AUTHENTICATOR:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/applovin/shadow/okhttp3/Route;Lcom/applovin/shadow/okhttp3/Response;)Lcom/applovin/shadow/okhttp3/Request;
    .param p1    # Lcom/applovin/shadow/okhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
