.class Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;
.super Ljava/lang/Object;
.source "CacheModuleInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HitInfo"
.end annotation


# instance fields
.field public fileKey:Ljava/lang/String;

.field public hitType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;-><init>()V

    return-void
.end method
