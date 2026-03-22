.class final Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpRequestRetry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->d(DJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/client/plugins/HttpRequestRetry$a;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:D

.field final synthetic e:J

.field final synthetic f:Lio/ktor/client/plugins/HttpRequestRetry$Configuration;

.field final synthetic g:J


# direct methods
.method constructor <init>(DJLio/ktor/client/plugins/HttpRequestRetry$Configuration;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->d:D

    .line 2
    .line 3
    iput-wide p3, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->e:J

    .line 4
    .line 5
    iput-object p5, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->f:Lio/ktor/client/plugins/HttpRequestRetry$Configuration;

    .line 6
    .line 7
    iput-wide p6, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->g:J

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Lio/ktor/client/plugins/HttpRequestRetry$a;I)Ljava/lang/Long;
    .locals 3
    .param p1    # Lio/ktor/client/plugins/HttpRequestRetry$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$delayMillis"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->d:D

    .line 7
    .line 8
    int-to-double p1, p2

    .line 9
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    double-to-long p1, p1

    .line 14
    const-wide/16 v0, 0x3e8

    .line 15
    .line 16
    mul-long/2addr p1, v0

    .line 17
    iget-wide v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->e:J

    .line 18
    .line 19
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->f:Lio/ktor/client/plugins/HttpRequestRetry$Configuration;

    .line 24
    .line 25
    iget-wide v1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->g:J

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->a(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    add-long/2addr p1, v0

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/HttpRequestRetry$a;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;->b(Lio/ktor/client/plugins/HttpRequestRetry$a;I)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
