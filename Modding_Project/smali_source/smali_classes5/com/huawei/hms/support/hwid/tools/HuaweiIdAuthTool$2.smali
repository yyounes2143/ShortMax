.class Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$2;
.super Ljava/lang/Object;
.source "HuaweiIdAuthTool.java"

# interfaces
.implements Lua/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool;->a(Lua/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lua/e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$2;->a:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$2;->b:Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2

    .line 1
    const-string p1, "deleteAuthInfo Success."

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "[HUAWEIIDSDK]HuaweiIdAuthTool"

    .line 5
    .line 6
    invoke-static {v1, p1, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$2;->a:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$2;->b:Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$a;->a(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hwid/tools/HuaweiIdAuthTool$2;->a(Ljava/lang/Void;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
