.class public Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;
.super Ljava/lang/Object;
.source "PreloadLoadProgressCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter$SingleBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaTaskCenter"


# instance fields
.field private mLoadProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->mLoadProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->mLoadProgress:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;-><init>()V

    return-void
.end method

.method public static center()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter$SingleBuilder;->access$100()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getLoadProgressByRawKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "MediaTaskCenter"

    .line 8
    .line 9
    const-string v0, "[preload] get, param is invalid key is null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->mLoadProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 23
    .line 24
    return-object p1
.end method

.method public putByRawKey(Ljava/lang/String;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->mLoadProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    const-string p1, "MediaTaskCenter"

    .line 17
    .line 18
    const-string p2, "[preload] param is invalid"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public removeLoadProgressByRawKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "MediaTaskCenter"

    .line 8
    .line 9
    const-string v0, "[preload] remove, param is invalid key is null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;->mLoadProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method
