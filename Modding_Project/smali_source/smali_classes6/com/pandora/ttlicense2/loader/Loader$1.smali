.class Lcom/pandora/ttlicense2/loader/Loader$1;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/loader/Loader;->startLoad(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Lcom/pandora/ttlicense2/loader/Loader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/loader/Loader;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/loader/Loader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private syncState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$100(Lcom/pandora/ttlicense2/loader/Loader;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$200(Lcom/pandora/ttlicense2/loader/Loader;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/loader/Loader;->access$302(Lcom/pandora/ttlicense2/loader/Loader;I)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$400(Lcom/pandora/ttlicense2/loader/Loader;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/loader/Loader;->access$302(Lcom/pandora/ttlicense2/loader/Loader;I)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$200(Lcom/pandora/ttlicense2/loader/Loader;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/loader/Loader;->access$302(Lcom/pandora/ttlicense2/loader/Loader;I)I

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onTaskFinish(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandora/ttlicense2/loader/Loader$LoadTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$000(Lcom/pandora/ttlicense2/loader/Loader;)Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->isDone()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$100(Lcom/pandora/ttlicense2/loader/Loader;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$1;->syncState()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onTaskStart(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandora/ttlicense2/loader/Loader$LoadTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$000(Lcom/pandora/ttlicense2/loader/Loader;)Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$1;->this$0:Lcom/pandora/ttlicense2/loader/Loader;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader;->access$100(Lcom/pandora/ttlicense2/loader/Loader;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$1;->syncState()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
