.class public Lcom/ss/ttvideoengine/log/AppLogEngineUploader;
.super Ljava/lang/Object;
.source "AppLogEngineUploader.java"

# interfaces
.implements Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/AppLogEngineUploader$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLogEngineUploader"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/AppLogEngineUploader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/AppLogEngineUploader;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/log/AppLogEngineUploader;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogEngineUploader$Holder;->access$100()Lcom/ss/ttvideoengine/log/AppLogEngineUploader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onEventV2(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setReportLogByEngine(ZLandroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
