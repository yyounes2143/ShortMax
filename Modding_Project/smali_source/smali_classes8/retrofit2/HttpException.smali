.class public Lretrofit2/HttpException;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final transient c:Lfu/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/c0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfu/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/c0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lretrofit2/HttpException;->d(Lfu/c0;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lfu/c0;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lretrofit2/HttpException;->a:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lfu/c0;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lretrofit2/HttpException;->b:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lretrofit2/HttpException;->c:Lfu/c0;

    .line 21
    .line 22
    return-void
.end method

.method private static d(Lfu/c0;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/c0<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "response == null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "HTTP "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lfu/c0;->b()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lfu/c0;->e()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lretrofit2/HttpException;->a:I

    .line 2
    .line 3
    return v0
.end method
