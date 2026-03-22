.class public interface abstract Lcom/applovin/shadow/okhttp3/CookieJar;
.super Ljava/lang/Object;
.source "CookieJar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/CookieJar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/CookieJar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NO_COOKIES:Lcom/applovin/shadow/okhttp3/CookieJar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/CookieJar$Companion;->$$INSTANCE:Lcom/applovin/shadow/okhttp3/CookieJar$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/applovin/shadow/okhttp3/CookieJar;->Companion:Lcom/applovin/shadow/okhttp3/CookieJar$Companion;

    .line 4
    .line 5
    new-instance v0, Lcom/applovin/shadow/okhttp3/CookieJar$Companion$NoCookies;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/CookieJar$Companion$NoCookies;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/applovin/shadow/okhttp3/CookieJar;->NO_COOKIES:Lcom/applovin/shadow/okhttp3/CookieJar;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Lcom/applovin/shadow/okhttp3/HttpUrl;)Ljava/util/List;
    .param p1    # Lcom/applovin/shadow/okhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/shadow/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract saveFromResponse(Lcom/applovin/shadow/okhttp3/HttpUrl;Ljava/util/List;)V
    .param p1    # Lcom/applovin/shadow/okhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/shadow/okhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation
.end method
