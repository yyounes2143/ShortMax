.class public Lcom/facebook/ads/internal/bridge/fbsdk/FBLoginASID;
.super Ljava/lang/Object;
.source "FBLoginASID.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


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

.method public static getFBLoginASID()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/AccessToken;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 5
    .line 6
    const-string v2, "getCurrentAccessToken"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    new-array v4, v3, [Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-array v4, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const-string v4, "getUserId"

    .line 24
    .line 25
    new-array v5, v3, [Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    return-object v0

    .line 40
    :catchall_0
    :cond_0
    return-object v1
.end method
