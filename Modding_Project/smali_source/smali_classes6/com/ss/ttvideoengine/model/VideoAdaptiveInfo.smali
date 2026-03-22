.class public Lcom/ss/ttvideoengine/model/VideoAdaptiveInfo;
.super Ljava/lang/Object;
.source "VideoAdaptiveInfo.java"


# static fields
.field public static final KEY_ADAPTIVE_TYPE:Ljava/lang/String; = "AdaptiveType"

.field public static final KEY_BACKUP_PLAY_URL:Ljava/lang/String; = "BackupPlayUrl"

.field public static final KEY_MAIN_PLAY_URL:Ljava/lang/String; = "MainPlayUrl"


# instance fields
.field private mAdaptiveType:Ljava/lang/String;

.field private mBackupPlayUrl:Ljava/lang/String;

.field private mMainPlayUrl:Ljava/lang/String;


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


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "AdaptiveType"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoAdaptiveInfo;->mAdaptiveType:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "MainPlayUrl"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoAdaptiveInfo;->mMainPlayUrl:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "BackupPlayUrl"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/VideoAdaptiveInfo;->mBackupPlayUrl:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public getValueStr(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x6c

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x6d

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xd7

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoAdaptiveInfo;->mAdaptiveType:Ljava/lang/String;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoAdaptiveInfo;->mBackupPlayUrl:Ljava/lang/String;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoAdaptiveInfo;->mMainPlayUrl:Ljava/lang/String;

    .line 23
    .line 24
    return-object p1
.end method
