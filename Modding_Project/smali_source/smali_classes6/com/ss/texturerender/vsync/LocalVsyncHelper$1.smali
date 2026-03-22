.class Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;
.super Ljava/lang/Object;
.source "LocalVsyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/vsync/LocalVsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;


# direct methods
.method constructor <init>(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->access$000(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->access$000(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->access$100(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->access$000(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/ss/texturerender/vsync/IVsyncCallback;

    .line 50
    .line 51
    invoke-interface {v1}, Lcom/ss/texturerender/vsync/IVsyncCallback;->notifyVsync()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->access$300(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->access$200(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method
