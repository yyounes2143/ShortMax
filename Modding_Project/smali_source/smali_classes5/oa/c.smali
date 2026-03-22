.class public abstract Loa/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Loa/d;)Loa/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/huawei/agconnect/core/a/a;->h(Loa/d;)Loa/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c()Loa/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/agconnect/core/a/a;->f()Loa/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "AGConnectInstance"

    .line 2
    .line 3
    const-string v1, "AGConnectInstance#initialize"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/huawei/agconnect/core/a/a;->j(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract b()Landroid/content/Context;
.end method

.method public abstract d()Loa/d;
.end method
