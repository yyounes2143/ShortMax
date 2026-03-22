.class public final Lcom/startshorts/androidplayer/manager/api/base/m$a;
.super Ljava/lang/Object;
.source "ApiEventListener.kt"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/api/base/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/m$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 7

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/m$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/m;

    .line 13
    .line 14
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/api/base/m;-><init>(JLokhttp3/HttpUrl;J)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
