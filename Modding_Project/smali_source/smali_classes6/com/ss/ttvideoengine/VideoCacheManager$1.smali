.class Lcom/ss/ttvideoengine/VideoCacheManager$1;
.super Ljava/lang/Object;
.source "VideoCacheManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/VideoCacheManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/VideoCacheManager;

.field final synthetic val$fileModifyTime:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/VideoCacheManager;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager$1;->this$0:Lcom/ss/ttvideoengine/VideoCacheManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/VideoCacheManager$1;->val$fileModifyTime:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$1;->val$fileModifyTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$1;->val$fileModifyTime:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/VideoCacheManager$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
