.class public Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalHelper;
.super Ljava/lang/Object;
.source "TTVideoEngineInternalHelper.java"


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

.method public static getVolume(Landroid/content/Context;)F
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "audio"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/media/AudioManager;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move p0, v0

    .line 23
    :goto_0
    if-gez p0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move v0, p0

    .line 27
    :catch_0
    :goto_1
    int-to-float p0, v0

    .line 28
    return p0
.end method
