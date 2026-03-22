.class Lcom/bytedance/vcloud/abrmodule/ABRJniLoader$DefaultLoader;
.super Ljava/lang/Object;
.source "ABRJniLoader.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/LibraryLoaderProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/abrmodule/ABRJniLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/vcloud/abrmodule/ABRJniLoader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/vcloud/abrmodule/ABRJniLoader$DefaultLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    return p1
.end method
