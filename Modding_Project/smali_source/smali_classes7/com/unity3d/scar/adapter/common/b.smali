.class public Lcom/unity3d/scar/adapter/common/b;
.super Lcom/unity3d/scar/adapter/common/l;
.source "GMAAdsError.java"


# direct methods
.method public varargs constructor <init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/scar/adapter/common/l;-><init>(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/unity3d/scar/adapter/common/l;-><init>(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lnl/c;)Lcom/unity3d/scar/adapter/common/b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnl/c;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Cannot show ad that is not loaded for placement %s"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/unity3d/scar/adapter/common/b;

    .line 16
    .line 17
    sget-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_NOT_LOADED_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 18
    .line 19
    invoke-virtual {p0}, Lnl/c;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Lnl/c;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v1, v2, v0, p0}, Lcom/unity3d/scar/adapter/common/b;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/b;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_UNSUPPORTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/scar/adapter/common/b;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static c(Lnl/c;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/b;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnl/c;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lnl/c;->d()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, v1, p1, p0}, Lcom/unity3d/scar/adapter/common/b;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static d(Lnl/c;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/b;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnl/c;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lnl/c;->d()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, v1, p1, p0}, Lcom/unity3d/scar/adapter/common/b;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/b;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/scar/adapter/common/b;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/b;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->NO_AD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, v1, p2, p0}, Lcom/unity3d/scar/adapter/common/b;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GMA"

    .line 2
    .line 3
    return-object v0
.end method
