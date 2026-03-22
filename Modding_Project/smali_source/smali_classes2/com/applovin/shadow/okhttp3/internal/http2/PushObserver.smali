.class public interface abstract Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CANCEL:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver$Companion;->$$INSTANCE:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;->Companion:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver$Companion;

    .line 4
    .line 5
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;->CANCEL:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract onData(ILcom/applovin/shadow/okio/BufferedSource;IZ)Z
    .param p2    # Lcom/applovin/shadow/okio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    .param p2    # Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
