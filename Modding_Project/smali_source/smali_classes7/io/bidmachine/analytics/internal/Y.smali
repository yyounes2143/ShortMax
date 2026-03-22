.class public abstract Lio/bidmachine/analytics/internal/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/Y$a;
    }
.end annotation


# static fields
.field public static final e:Lio/bidmachine/analytics/internal/Y$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/o0;

.field private final b:Ljava/lang/String;

.field private final c:Lio/bidmachine/analytics/internal/p0;

.field private final d:Lio/bidmachine/analytics/internal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/Y$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/Y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/Y;->e:Lio/bidmachine/analytics/internal/Y$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/o0;Ljava/lang/String;Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/Y;->a:Lio/bidmachine/analytics/internal/o0;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/Y;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/Y;->c:Lio/bidmachine/analytics/internal/p0;

    .line 5
    iput-object p4, p0, Lio/bidmachine/analytics/internal/Y;->d:Lio/bidmachine/analytics/internal/s;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/o0;Ljava/lang/String;Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/s;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 6
    sget-object p4, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-virtual {p4}, Lio/bidmachine/analytics/BidMachineAnalytics;->getEncryptionManager$bidmachine_android_sdk_bg_3_4_0()Lio/bidmachine/analytics/internal/s;

    move-result-object p4

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/Y;-><init>(Lio/bidmachine/analytics/internal/o0;Ljava/lang/String;Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/s;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/Y;)Lio/bidmachine/analytics/internal/p0;
    .locals 0

    .line 3
    iget-object p0, p0, Lio/bidmachine/analytics/internal/Y;->c:Lio/bidmachine/analytics/internal/p0;

    return-object p0
.end method

.method private final a(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 1

    .line 30
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 31
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/Y;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/Y;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method private final a(Ljava/lang/String;[B)V
    .locals 4

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/analytics/internal/Y;->a:Lio/bidmachine/analytics/internal/o0;

    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/o0;->a(Ljava/net/URLConnection;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const v1, 0x9c40

    .line 9
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 11
    iget-object v1, p0, Lio/bidmachine/analytics/internal/Y;->d:Lio/bidmachine/analytics/internal/s;

    if-eqz v1, :cond_0

    .line 12
    const-string v2, "bm-data"

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/s;->a()Lio/bidmachine/analytics/internal/C;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/C;->b()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 14
    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :try_start_3
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :try_start_4
    invoke-static {v1}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/io/Flushable;)Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/io/Closeable;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception p2

    :goto_1
    if-eqz v0, :cond_2

    .line 20
    invoke-static {v0}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/io/Flushable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    :cond_2
    if-eqz v0, :cond_3

    .line 21
    invoke-static {v0}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/io/Closeable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    :cond_3
    throw p2

    .line 22
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/Y;->b(Ljava/net/URLConnection;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_7

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_7

    const/16 v1, 0x131

    if-eq v0, v1, :cond_5

    const/16 v1, 0x133

    if-eq v0, v1, :cond_5

    const/16 v1, 0x134

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 23
    :cond_5
    :pswitch_0
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 24
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 25
    invoke-direct {p0, v1, p2}, Lio/bidmachine/analytics/internal/Y;->a(Ljava/lang/String;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/Y;->a(Ljava/net/URLConnection;)Ljava/lang/Object;

    return-void

    .line 27
    :cond_6
    :goto_3
    :try_start_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 29
    :cond_7
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/Y;->a(Ljava/net/URLConnection;)Ljava/lang/Object;

    return-void

    :catchall_3
    move-exception p2

    :goto_4
    invoke-direct {p0, v0}, Lio/bidmachine/analytics/internal/Y;->a(Ljava/net/URLConnection;)Ljava/lang/Object;

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/Y;Lio/bidmachine/analytics/internal/s;[B)[B
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/Y;->a(Lio/bidmachine/analytics/internal/s;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private final a(Lio/bidmachine/analytics/internal/s;[B)[B
    .locals 0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2, p1}, Lio/bidmachine/analytics/internal/t;->a([BLio/bidmachine/analytics/internal/s;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final b(Ljava/net/URLConnection;)I
    .locals 1

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/Y;)Lio/bidmachine/analytics/internal/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/Y;->d:Lio/bidmachine/analytics/internal/s;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/analytics/internal/Y;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/Y;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public abstract a()Lio/bidmachine/analytics/internal/Y;
.end method

.method public final a(Lrs/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lio/bidmachine/analytics/internal/Y$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/bidmachine/analytics/internal/Y$b;

    iget v1, v0, Lio/bidmachine/analytics/internal/Y$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/Y$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/analytics/internal/Y$b;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/analytics/internal/Y$b;-><init>(Lio/bidmachine/analytics/internal/Y;Lrs/c;)V

    :goto_0
    iget-object p1, v0, Lio/bidmachine/analytics/internal/Y$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lio/bidmachine/analytics/internal/Y$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/analytics/internal/Y;->c:Lio/bidmachine/analytics/internal/p0;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/p0;->c()Lgt/c0;

    move-result-object p1

    new-instance v2, Lio/bidmachine/analytics/internal/Y$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lio/bidmachine/analytics/internal/Y$c;-><init>(Lio/bidmachine/analytics/internal/Y;Lrs/c;)V

    iput v3, v0, Lio/bidmachine/analytics/internal/Y$b;->c:I

    invoke-static {p1, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()[B
.end method
