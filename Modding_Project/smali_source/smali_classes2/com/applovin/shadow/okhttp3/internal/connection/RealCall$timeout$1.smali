.class public final Lcom/applovin/shadow/okhttp3/internal/connection/RealCall$timeout$1;
.super Lcom/applovin/shadow/okio/AsyncTimeout;
.source "RealCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/connection/RealCall;-><init>(Lcom/applovin/shadow/okhttp3/OkHttpClient;Lcom/applovin/shadow/okhttp3/Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/connection/RealCall;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okhttp3/internal/connection/RealCall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/connection/RealCall$timeout$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/applovin/shadow/okio/AsyncTimeout;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected timedOut()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/connection/RealCall$timeout$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/connection/RealCall;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
