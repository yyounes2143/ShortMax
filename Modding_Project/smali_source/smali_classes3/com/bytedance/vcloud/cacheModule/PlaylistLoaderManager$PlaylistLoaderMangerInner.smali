.class Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$PlaylistLoaderMangerInner;
.super Ljava/lang/Object;
.source "PlaylistLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistLoaderMangerInner"
.end annotation


# static fields
.field private static final sInstance:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$PlaylistLoaderMangerInner;->sInstance:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 7
    .line 8
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

.method static synthetic access$000()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$PlaylistLoaderMangerInner;->sInstance:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    return-object v0
.end method
