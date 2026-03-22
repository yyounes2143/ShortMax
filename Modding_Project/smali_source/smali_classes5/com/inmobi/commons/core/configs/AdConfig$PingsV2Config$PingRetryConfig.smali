.class public final Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;
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
    name = "PingRetryConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private high:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private normal:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 5
    .line 6
    const-wide/16 v2, 0x78

    .line 7
    .line 8
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;-><init>(IJD)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->normal:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 16
    .line 17
    new-instance v0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 18
    .line 19
    const-wide/16 v9, 0xa

    .line 20
    .line 21
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    const/4 v8, 0x5

    .line 24
    move-object v7, v0

    .line 25
    invoke-direct/range {v7 .. v12}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;-><init>(IJD)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->high:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getHigh()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->high:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNormal()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->normal:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setHigh(Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;)V
    .locals 1
    .param p1    # Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->high:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 7
    .line 8
    return-void
.end method

.method public final setNormal(Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;)V
    .locals 1
    .param p1    # Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->normal:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    .line 7
    .line 8
    return-void
.end method
