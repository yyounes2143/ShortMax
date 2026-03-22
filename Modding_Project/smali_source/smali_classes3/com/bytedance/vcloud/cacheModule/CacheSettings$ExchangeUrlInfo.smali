.class public Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;
.super Ljava/lang/Object;
.source "CacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExchangeUrlInfo"
.end annotation


# static fields
.field public static UrlType_Hls:I = 0x0

.field public static UrlType_Key:I = 0x2

.field public static UrlType_Ts:I = 0x1


# instance fields
.field public id:Ljava/lang/String;

.field public tsEncrypted:Z

.field public tsUrlIndex:I

.field public url:Ljava/lang/String;

.field public urlType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
