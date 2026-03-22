.class public Lcom/ss/ttvideoengine/model/VideoStyle;
.super Ljava/lang/Object;
.source "VideoStyle.java"


# static fields
.field public static final DIMENSION_2D:I = 0x0

.field public static final DIMENSION_3D_SIDE_BY_SIDE:I = 0x2

.field public static final DIMENSION_3D_TOP_AND_BUTTOM:I = 0x1

.field private static final KEY_DIMENSION:Ljava/lang/String; = "dimension"

.field private static final KEY_PROJECTION_MODEL:Ljava/lang/String; = "projection_model"

.field private static final KEY_VIDEO_STYLE:Ljava/lang/String; = "vstyle"

.field private static final KEY_VIEW_SIZE:Ljava/lang/String; = "view_size"

.field public static final PROJECTION_MODEL_CUBEMAP:I = 0x2

.field public static final PROJECTION_MODEL_ERP:I = 0x1

.field public static final PROJECTION_MODEL_NORMAL:I = 0x0

.field public static final PROJECTION_MODEL_OFFSET_CUBEMAP:I = 0x3

.field public static final VALUE_DIMENSION:I = 0x1

.field public static final VALUE_PROJECTION_MODEL:I = 0x2

.field public static final VALUE_VIDEO_STYLE:I = 0x0

.field public static final VALUE_VIEW_SIZE:I = 0x3

.field public static final VIDEO_STYLE_NORMAL:I = 0x0

.field public static final VIDEO_STYLE_VR:I = 0x1


# instance fields
.field private mDimension:I

.field private mProjectionModel:I

.field private mVideoStyle:I

.field private mViewSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mVideoStyle:I

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mDimension:I

    .line 8
    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mProjectionModel:I

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mViewSize:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "vstyle"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mVideoStyle:I

    .line 13
    .line 14
    const-string v0, "dimension"

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mDimension:I

    .line 21
    .line 22
    const-string v0, "projection_model"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mProjectionModel:I

    .line 29
    .line 30
    const-string/jumbo v0, "view_size"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mViewSize:I

    .line 38
    .line 39
    return-void
.end method

.method public getValueInt(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    return p1

    .line 14
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mViewSize:I

    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mProjectionModel:I

    .line 18
    .line 19
    return p1

    .line 20
    :cond_2
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mDimension:I

    .line 21
    .line 22
    return p1

    .line 23
    :cond_3
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoStyle;->mVideoStyle:I

    .line 24
    .line 25
    return p1
.end method
