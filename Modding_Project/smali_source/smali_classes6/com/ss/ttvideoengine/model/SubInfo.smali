.class public Lcom/ss/ttvideoengine/model/SubInfo;
.super Ljava/lang/Object;
.source "SubInfo.java"


# static fields
.field public static final KEY_FORMAT:Ljava/lang/String; = "Format"

.field public static final KEY_LANGUAGE_ID:Ljava/lang/String; = "LanguageId"

.field public static final KEY_SUB_ID:Ljava/lang/String; = "SubtitleId"

.field public static final KEY_VERSION:Ljava/lang/String; = "Version"

.field public static final VALUE_SUB_INFO_FORMAT:I = 0x2

.field public static final VALUE_SUB_INFO_ID:I = 0x0

.field public static final VALUE_SUB_INFO_LANGUAGE_ID:I = 0x1

.field public static final VALUE_SUB_INFO_VERSION:I = 0x3


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mLanguageId:I

.field private mSubId:I

.field private mVersion:Ljava/lang/String;


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
    const-string v0, "SubtitleId"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mSubId:I

    .line 11
    .line 12
    const-string v0, "LanguageId"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mLanguageId:I

    .line 19
    .line 20
    const-string v0, "Format"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mFormat:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "Version"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mVersion:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public getValueInt(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    return p1

    .line 8
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mLanguageId:I

    .line 9
    .line 10
    return p1

    .line 11
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mSubId:I

    .line 12
    .line 13
    return p1
.end method

.method public getValueStr(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mVersion:Ljava/lang/String;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/SubInfo;->mFormat:Ljava/lang/String;

    .line 14
    .line 15
    return-object p1
.end method
