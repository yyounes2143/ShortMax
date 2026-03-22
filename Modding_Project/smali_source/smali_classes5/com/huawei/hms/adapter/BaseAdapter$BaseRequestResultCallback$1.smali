.class Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->a(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

.field final synthetic b:Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;


# direct methods
.method constructor <init>(Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;->b:Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;->a:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "complete handleSolutionForHMS, result: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BaseAdapter"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;->b:Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;->a:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->r(Lcom/huawei/hms/adapter/BaseAdapter;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;->b:Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->B(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, p1, v1}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;->a:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseWrap;->toJson()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
