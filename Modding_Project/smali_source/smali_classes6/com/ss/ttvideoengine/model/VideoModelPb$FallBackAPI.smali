.class public final Lcom/ss/ttvideoengine/model/VideoModelPb$FallBackAPI;
.super Ljava/lang/Object;
.source "VideoModelPb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/VideoModelPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallBackAPI"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/ss/ttvideoengine/model/VideoModelPb$FallBackAPI;


# instance fields
.field public fallbackApi:Ljava/lang/String;

.field public keySeed:Ljava/lang/String;


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

.method public static emptyArray()[Lcom/ss/ttvideoengine/model/VideoModelPb$FallBackAPI;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/model/VideoModelPb$FallBackAPI;->_emptyArray:[Lcom/ss/ttvideoengine/model/VideoModelPb$FallBackAPI;

    .line 2
    .line 3
    return-object v0
.end method
