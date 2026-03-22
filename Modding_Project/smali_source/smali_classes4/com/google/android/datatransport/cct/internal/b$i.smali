.class final Lcom/google/android/datatransport/cct/internal/b$i;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lp8/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp8/c<",
        "Lcom/google/android/datatransport/cct/internal/r;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$i;

.field private static final b:Lp8/b;

.field private static final c:Lp8/b;

.field private static final d:Lp8/b;

.field private static final e:Lp8/b;

.field private static final f:Lp8/b;

.field private static final g:Lp8/b;

.field private static final h:Lp8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->a:Lcom/google/android/datatransport/cct/internal/b$i;

    .line 7
    .line 8
    const-string v0, "requestTimeMs"

    .line 9
    .line 10
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->b:Lp8/b;

    .line 15
    .line 16
    const-string v0, "requestUptimeMs"

    .line 17
    .line 18
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->c:Lp8/b;

    .line 23
    .line 24
    const-string v0, "clientInfo"

    .line 25
    .line 26
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->d:Lp8/b;

    .line 31
    .line 32
    const-string v0, "logSource"

    .line 33
    .line 34
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->e:Lp8/b;

    .line 39
    .line 40
    const-string v0, "logSourceName"

    .line 41
    .line 42
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->f:Lp8/b;

    .line 47
    .line 48
    const-string v0, "logEvent"

    .line 49
    .line 50
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->g:Lp8/b;

    .line 55
    .line 56
    const-string v0, "qosTier"

    .line 57
    .line 58
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->h:Lp8/b;

    .line 63
    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/internal/r;

    .line 2
    .line 3
    check-cast p2, Lp8/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$i;->b(Lcom/google/android/datatransport/cct/internal/r;Lp8/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/r;Lp8/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->b:Lp8/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p2, v0, v1, v2}, Lp8/d;->b(Lp8/b;J)Lp8/d;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->c:Lp8/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->h()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-interface {p2, v0, v1, v2}, Lp8/d;->b(Lp8/b;J)Lp8/d;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->d:Lp8/b;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->b()Lcom/google/android/datatransport/cct/internal/ClientInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->e:Lp8/b;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->d()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->f:Lp8/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->g:Lp8/b;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->c()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->h:Lp8/b;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->f()Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, v0, p1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 62
    .line 63
    .line 64
    return-void
.end method
