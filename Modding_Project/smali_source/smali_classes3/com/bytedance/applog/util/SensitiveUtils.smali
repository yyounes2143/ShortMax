.class public Lcom/bytedance/applog/util/SensitiveUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CHANNEL_APP_KEY:Ljava/lang/String; = ""


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

.method public static addSensitiveParamsForUrlQuery(Lcom/bytedance/bdtracker/r3;Ljava/lang/StringBuilder;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static appendSensitiveParams(Lcom/bytedance/bdtracker/r3;Lorg/json/JSONObject;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/r3;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/applog/Level;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "02:00:00:00:00:00"

    .line 2
    .line 3
    return-object p0
.end method

.method public static getMacAddressFromSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "02:00:00:00:00:00"

    .line 2
    .line 3
    return-object p0
.end method

.method public static getMultiImeiFallback(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    new-instance p0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public static getMultiImeiFromSystem(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    new-instance p0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public static getSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static getSimSerialNumbers(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static validMultiImei(Ljava/lang/String;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public static validMultiImei(Lorg/json/JSONArray;)Z
    .locals 0
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    const/4 p0, 0x0

    return p0
.end method
