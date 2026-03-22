.class public final Lcom/inmobi/media/G5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/c3;


# direct methods
.method public constructor <init>([Lokhttp3/Interceptor;Lokhttp3/Dispatcher;Lcom/inmobi/media/he;)V
    .locals 1

    .line 1
    const-string v0, "interceptors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "timeoutConfig"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/inmobi/media/c3;

    .line 20
    .line 21
    invoke-direct {v0, p1, p2, p3}, Lcom/inmobi/media/c3;-><init>([Lokhttp3/Interceptor;Lokhttp3/Dispatcher;Lcom/inmobi/media/he;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/inmobi/media/G5;->a:Lcom/inmobi/media/c3;

    .line 25
    .line 26
    return-void
.end method
