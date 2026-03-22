.class public final Lcom/ss/ttvideoengine/configcenter/ConfigCenter;
.super Ljava/lang/Object;
.source "ConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/configcenter/ConfigCenter$InstanceHolder;
    }
.end annotation


# static fields
.field public static final CONFIG_SOURCE_PRIORITY_USER_SETTINGS:I = 0x1

.field public static final CONFIG_SOURCE_PRIORITY_VOD_SETTINGS:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/configcenter/ConfigCenter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/configcenter/ConfigCenter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/configcenter/ConfigCenter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/configcenter/ConfigCenter$InstanceHolder;->access$100()Lcom/ss/ttvideoengine/configcenter/ConfigCenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public updateVodSettings(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method
