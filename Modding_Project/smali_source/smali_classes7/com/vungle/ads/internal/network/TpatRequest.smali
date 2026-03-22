.class public final Lcom/vungle/ads/internal/network/TpatRequest;
.super Ljava/lang/Object;
.source "TpatRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/TpatRequest$Companion;,
        Lcom/vungle/ads/internal/network/TpatRequest$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/TpatRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PRIORITY_MAX_RETRY_COUNT:I = 0x3

.field private static final REGULAR_MAX_RETRY_COUNT:I = 0x5


# instance fields
.field private final body:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final logEntry:Lcom/vungle/ads/internal/util/LogEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final method:Lcom/vungle/ads/internal/network/HttpMethod;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final priorityRetry:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final priorityRetryCount:I

.field private final regularRetry:Z

.field private final regularRetryCount:I

.field private final tpatKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/network/TpatRequest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/TpatRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/network/TpatRequest;->Companion:Lcom/vungle/ads/internal/network/TpatRequest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/LogEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/network/HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "IZI",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/util/LogEntry;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/network/TpatRequest;->url:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/network/TpatRequest;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/network/TpatRequest;->headers:Ljava/util/Map;

    .line 6
    iput-object p4, p0, Lcom/vungle/ads/internal/network/TpatRequest;->body:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/vungle/ads/internal/network/TpatRequest;->priorityRetry:Ljava/lang/Boolean;

    .line 8
    iput p6, p0, Lcom/vungle/ads/internal/network/TpatRequest;->priorityRetryCount:I

    .line 9
    iput-boolean p7, p0, Lcom/vungle/ads/internal/network/TpatRequest;->regularRetry:Z

    .line 10
    iput p8, p0, Lcom/vungle/ads/internal/network/TpatRequest;->regularRetryCount:I

    .line 11
    iput-object p9, p0, Lcom/vungle/ads/internal/network/TpatRequest;->tpatKey:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/vungle/ads/internal/network/TpatRequest;->logEntry:Lcom/vungle/ads/internal/util/LogEntry;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/LogEntry;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/vungle/ads/internal/network/TpatRequest;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/LogEntry;)V

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->logEntry:Lcom/vungle/ads/internal/util/LogEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMethod()Lcom/vungle/ads/internal/network/HttpMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriorityRetry()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->priorityRetry:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriorityRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->priorityRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRegularRetry()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->regularRetry:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRegularRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->regularRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTpatKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->tpatKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatRequest;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
