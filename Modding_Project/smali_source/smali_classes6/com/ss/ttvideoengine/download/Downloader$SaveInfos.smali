.class Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/download/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveInfos"
.end annotation


# instance fields
.field alltasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field task:Lcom/ss/ttvideoengine/download/DownloadTask;

.field final synthetic this$0:Lcom/ss/ttvideoengine/download/Downloader;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/download/Downloader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;->task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;->alltasks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/Downloader$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;-><init>(Lcom/ss/ttvideoengine/download/Downloader;)V

    return-void
.end method
