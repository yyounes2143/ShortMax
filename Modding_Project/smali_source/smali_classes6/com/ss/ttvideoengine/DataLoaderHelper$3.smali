.class Lcom/ss/ttvideoengine/DataLoaderHelper$3;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/TTNetworkStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$3;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccessChanged(III)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "access changed, from: "

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " to: "

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "DataLoaderHelper"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$3;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 35
    .line 36
    invoke-static {p1, p3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$602(Lcom/ss/ttvideoengine/DataLoaderHelper;I)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$3;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 40
    .line 41
    const/16 p2, 0x3e8

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, p2, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$3;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 48
    .line 49
    const/16 p2, 0x450

    .line 50
    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
