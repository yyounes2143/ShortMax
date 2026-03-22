.class public Lcom/bytedance/vodsetting/Module$CommonKey;
.super Ljava/lang/Object;
.source "Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vodsetting/Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonKey"
.end annotation


# static fields
.field public static final ConfigVersion:Ljava/lang/String; = "config_version"

.field public static final FetchInterval:Ljava/lang/String; = "fetch_interval"

.field public static final LocalCacheDuration:Ljava/lang/String; = "local_cache_expire"

.field public static final MaxFetchTimes:Ljava/lang/String; = "max_fetch_times"

.field public static final UseLocalCache:Ljava/lang/String; = "use_local_cache"


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
