.class final Lcom/pandora/common/applog/AppLogWrapper$1;
.super Ljava/lang/Object;
.source "AppLogWrapper.java"

# interfaces
.implements Lcom/bytedance/applog/IDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/common/applog/AppLogWrapper;->dataObserverInstance()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "AppLogWrapper"

    .line 2
    .line 3
    const-string p2, "onIdLoaded"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->getDid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/pandora/common/applog/AppLogWrapper;->access$000(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "AppLogWrapper"

    .line 2
    .line 3
    const-string p2, "onRemoteIdGet"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->getDid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/pandora/common/applog/AppLogWrapper;->access$000(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
