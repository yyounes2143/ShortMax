.class Lcom/huawei/hms/common/internal/HmsClient$a;
.super Ljava/lang/Object;
.source "HmsClient.java"

# interfaces
.implements Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/common/internal/HmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/huawei/hms/common/internal/HmsClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HmsClient;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 5
    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/huawei/hms/common/internal/HmsClient;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/HmsClient;->updateSessionId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->fromJson(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "receive msg "

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "HmsClient"

    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HmsClient$a;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 47
    .line 48
    invoke-interface {p1, v0, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/e;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 53
    .line 54
    new-instance p2, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 55
    .line 56
    const v0, 0x3611c818

    .line 57
    .line 58
    .line 59
    const-string v1, "response header json error"

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {p2, v2, v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {p1, p2, v0}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/e;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->fromJson(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p3}, Lcom/huawei/hms/common/internal/ResponseHeader;->setParcelable(Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p3, "receive msg "

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p3, "HmsClient"

    .line 38
    .line 39
    invoke-static {p3, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HmsClient$a;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 50
    .line 51
    invoke-interface {p1, v0, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/e;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 56
    .line 57
    new-instance p2, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 58
    .line 59
    const p3, 0x3611c818

    .line 60
    .line 61
    .line 62
    const-string v0, "response header json error"

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-direct {p2, v1, p3, v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p3, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/e;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/internal/HmsClient$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/common/internal/HmsClient$a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseWrap;

    .line 7
    .line 8
    new-instance v1, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/huawei/hms/common/internal/ResponseWrap;-><init>(Lcom/huawei/hms/common/internal/ResponseHeader;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseWrap;->fromJson(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "receive msg "

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, "HmsClient"

    .line 40
    .line 41
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseWrap;->getResponseHeader()Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/HmsClient$a;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseWrap;->getBody()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, p1, v0}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/e;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient$a;->a:Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    .line 66
    .line 67
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 68
    .line 69
    const v1, 0x3611c818

    .line 70
    .line 71
    .line 72
    const-string v2, "response header json error"

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-direct {v0, v3, v1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lorg/json/JSONObject;

    .line 79
    .line 80
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {p1, v0, v1}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/e;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method
