.class public final enum Lio/bidmachine/core/NetworkRequest$Method;
.super Ljava/lang/Enum;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/core/NetworkRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Get:Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Post:Lio/bidmachine/core/NetworkRequest$Method;


# instance fields
.field private final methodString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/core/NetworkRequest$Method;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lio/bidmachine/core/NetworkRequest$Method;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "GET"

    .line 5
    .line 6
    const-string v3, "Get"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/core/NetworkRequest$Method;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "POST"

    .line 17
    .line 18
    const-string v3, "Post"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    .line 24
    .line 25
    invoke-static {}, Lio/bidmachine/core/NetworkRequest$Method;->$values()[Lio/bidmachine/core/NetworkRequest$Method;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/core/NetworkRequest$Method;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/core/NetworkRequest$Method;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/core/NetworkRequest$Method;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/net/URLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
