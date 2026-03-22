.class Lcom/squareup/picasso/Stats$StatsHandler$1;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/picasso/Stats$StatsHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/picasso/Stats$StatsHandler;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Stats$StatsHandler;Landroid/os/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/picasso/Stats$StatsHandler$1;->this$0:Lcom/squareup/picasso/Stats$StatsHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/squareup/picasso/Stats$StatsHandler$1;->val$msg:Landroid/os/Message;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Unhandled stats message."

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/squareup/picasso/Stats$StatsHandler$1;->val$msg:Landroid/os/Message;

    .line 14
    .line 15
    iget v2, v2, Landroid/os/Message;->what:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method
