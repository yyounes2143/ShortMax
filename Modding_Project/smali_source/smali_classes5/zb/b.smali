.class public final Lzb/b;
.super Lokhttp3/EventListener;
.source "ApiEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzb/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lzb/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lokhttp3/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzb/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzb/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lzb/b;->c:Lzb/b$a;

    .line 8
    .line 9
    new-instance v0, Lzb/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lzb/a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lzb/b;->d:Lokhttp3/EventListener$Factory;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    .line 1
    invoke-static {p0}, Lzb/b;->E(Lokhttp3/Call;)Lokhttp3/EventListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final E(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lzb/b;

    .line 7
    .line 8
    invoke-direct {p0}, Lzb/b;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public static final synthetic F()Lokhttp3/EventListener$Factory;
    .locals 1

    .line 1
    sget-object v0, Lzb/b;->d:Lokhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public e(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->e(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
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
    move-result-object p1

    .line 22
    sget-object v0, Lbc/e;->a:Lbc/e$a;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "callFailed -> url("

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ") errMsg("

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x29

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "ApiEventListener"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lbc/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    instance-of v0, p2, Ljava/net/UnknownHostException;

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    instance-of v0, p2, Ljava/net/SocketException;

    .line 64
    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    instance-of v0, p2, Ljavax/net/ssl/SSLException;

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    .line 72
    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    :cond_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string v0, "https://cdn-v2.shorttv.live"

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x2

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "https://cdn-v2.shorttv.app"

    .line 95
    .line 96
    invoke-static {p1, p2, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    :cond_1
    sget-object p1, Lzb/f;->a:Lzb/f;

    .line 103
    .line 104
    invoke-virtual {p1}, Lzb/f;->k()V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method
