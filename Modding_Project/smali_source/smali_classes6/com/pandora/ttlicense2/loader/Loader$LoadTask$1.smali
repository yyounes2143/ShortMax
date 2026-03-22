.class Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/loader/Loader$LoadTask;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader$LoadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public notifyProgressChanged(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader$LoadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->access$600(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader$LoadTask;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->access$700(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader$LoadTask;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader$LoadTask;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
