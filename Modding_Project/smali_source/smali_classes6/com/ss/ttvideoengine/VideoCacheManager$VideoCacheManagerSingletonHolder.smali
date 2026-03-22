.class Lcom/ss/ttvideoengine/VideoCacheManager$VideoCacheManagerSingletonHolder;
.super Ljava/lang/Object;
.source "VideoCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/VideoCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCacheManagerSingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/ss/ttvideoengine/VideoCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/VideoCacheManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/VideoCacheManager;-><init>(Lcom/ss/ttvideoengine/VideoCacheManager$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/VideoCacheManager$VideoCacheManagerSingletonHolder;->instance:Lcom/ss/ttvideoengine/VideoCacheManager;

    .line 8
    .line 9
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

.method static synthetic access$200()Lcom/ss/ttvideoengine/VideoCacheManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/VideoCacheManager$VideoCacheManagerSingletonHolder;->instance:Lcom/ss/ttvideoengine/VideoCacheManager;

    .line 2
    .line 3
    return-object v0
.end method
