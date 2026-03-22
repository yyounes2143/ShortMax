.class public final Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder$addNetworkInterceptor$2;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Lcom/applovin/shadow/okhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->-addNetworkInterceptor(Lkotlin/jvm/functions/Function1;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder$addNetworkInterceptor$2\n*L\n1#1,1079:1\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/applovin/shadow/okhttp3/Interceptor$Chain;",
            "Lcom/applovin/shadow/okhttp3/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/applovin/shadow/okhttp3/Interceptor$Chain;",
            "Lcom/applovin/shadow/okhttp3/Response;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder$addNetworkInterceptor$2;->$block:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final intercept(Lcom/applovin/shadow/okhttp3/Interceptor$Chain;)Lcom/applovin/shadow/okhttp3/Response;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder$addNetworkInterceptor$2;->$block:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/applovin/shadow/okhttp3/Response;

    .line 13
    .line 14
    return-object p1
.end method
