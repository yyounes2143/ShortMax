.class Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$1;
.super Ljava/lang/Object;
.source "HuaweiIdAuthTool.java"

# interfaces
.implements Lua/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool;->a(Lua/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lua/f;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;


# direct methods
.method constructor <init>(Lua/f;Ljava/util/concurrent/CountDownLatch;Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$1;->a:Lua/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$1;->c:Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$1;->a:Lua/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lua/f;->d()Ljava/lang/Exception;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "deleteAuthInfo fail: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    const-string v2, "[HUAWEIIDSDK]HuaweiIdAuthTool"

    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$1;->c:Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;->a(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
