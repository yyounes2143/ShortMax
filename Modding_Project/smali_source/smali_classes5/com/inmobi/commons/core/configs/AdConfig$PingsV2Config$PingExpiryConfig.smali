.class public final Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PingExpiryConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final high:I

.field private final normal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x15180

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;->normal:I

    .line 8
    .line 9
    const v0, 0x2a300

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;->high:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getHigh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;->high:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;->normal:I

    .line 2
    .line 3
    return v0
.end method
