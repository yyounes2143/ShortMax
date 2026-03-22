.class public final enum Lio/bidmachine/analytics/internal/o0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lio/bidmachine/analytics/internal/o0;

.field public static final enum c:Lio/bidmachine/analytics/internal/o0;

.field private static final synthetic d:[Lio/bidmachine/analytics/internal/o0;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/o0;

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
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/analytics/internal/o0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/analytics/internal/o0;->b:Lio/bidmachine/analytics/internal/o0;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/analytics/internal/o0;

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
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/analytics/internal/o0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/analytics/internal/o0;->c:Lio/bidmachine/analytics/internal/o0;

    .line 24
    .line 25
    invoke-static {}, Lio/bidmachine/analytics/internal/o0;->a()[Lio/bidmachine/analytics/internal/o0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lio/bidmachine/analytics/internal/o0;->d:[Lio/bidmachine/analytics/internal/o0;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/o0;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/internal/o0;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o0;->b:Lio/bidmachine/analytics/internal/o0;

    sget-object v1, Lio/bidmachine/analytics/internal/o0;->c:Lio/bidmachine/analytics/internal/o0;

    filled-new-array {v0, v1}, [Lio/bidmachine/analytics/internal/o0;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/internal/o0;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/analytics/internal/o0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/analytics/internal/o0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/internal/o0;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/o0;->d:[Lio/bidmachine/analytics/internal/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/analytics/internal/o0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/net/URLConnection;)V
    .locals 1

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/o0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
