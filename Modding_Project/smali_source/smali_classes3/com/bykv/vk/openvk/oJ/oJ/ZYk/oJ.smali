.class public Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Pfn:Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk; = null

.field public static ZYk:I = 0xa

.field public static ex:I = 0xa

.field public static oJ:I = 0xa

.field public static tB:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static Pfn()I
    .locals 1

    .line 1
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->ex:I

    .line 2
    .line 3
    return v0
.end method

.method public static ZYk()I
    .locals 1

    .line 1
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->oJ:I

    .line 2
    .line 3
    return v0
.end method

.method public static ex()I
    .locals 1

    .line 1
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->tB:I

    .line 2
    .line 3
    return v0
.end method

.method public static oJ()V
    .locals 1

    .line 14
    sget-object v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->Pfn:Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->ex()V

    :cond_0
    return-void
.end method

.method public static oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->Pfn:Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    const-string v0, "splash"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->oJ:I

    .line 2
    const-string v0, "reward"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->ZYk:I

    .line 3
    const-string v0, "brand"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->tB:I

    .line 4
    const-string v0, "other"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->ex:I

    .line 5
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->oJ:I

    if-gez v0, :cond_1

    .line 6
    sput v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->oJ:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->ZYk:I

    if-gez v0, :cond_2

    .line 8
    sput v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->ZYk:I

    .line 9
    :cond_2
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->tB:I

    if-gez v0, :cond_3

    .line 10
    sput v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->tB:I

    :cond_3
    if-gez p0, :cond_4

    .line 11
    sput v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->ex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    .line 12
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static tB()I
    .locals 1

    .line 1
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ;->ZYk:I

    .line 2
    .line 3
    return v0
.end method
