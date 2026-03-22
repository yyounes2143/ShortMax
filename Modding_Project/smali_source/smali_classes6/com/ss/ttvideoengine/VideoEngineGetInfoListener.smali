.class public interface abstract Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;
.super Ljava/lang/Object;
.source "VideoEngineGetInfoListener.java"


# static fields
.field public static final GET_INFO_KEY_APP_VV_TRACKING:I = 0x4

.field public static final GET_INFO_KEY_FORE_BACK_SWITCH_LIST:I = 0x2

.field public static final GET_INFO_KEY_IS_BACKGROUND:I = 0x1

.field public static final GET_INFO_KEY_LAST_FOREBACK_SWITCH_TIME:I = 0x3


# virtual methods
.method public getInfo(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getInfoMap(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
