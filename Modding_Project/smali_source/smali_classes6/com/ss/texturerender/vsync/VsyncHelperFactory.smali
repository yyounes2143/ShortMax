.class public final Lcom/ss/texturerender/vsync/VsyncHelperFactory;
.super Ljava/lang/Object;
.source "VsyncHelperFactory.java"


# static fields
.field private static TAG:Ljava/lang/String; = "VsyncHelperFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createVsyncHelper(Landroid/content/Context;ILandroid/os/Bundle;)Lcom/ss/texturerender/vsync/IVsyncHelper;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/ss/texturerender/vsync/VRVsyncHelper;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const-string/jumbo v1, "vsync_fps"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p2, v0

    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo v2, "window"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/view/WindowManager;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_2
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :cond_3
    sget-object v1, Lcom/ss/texturerender/vsync/VsyncHelperFactory;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "fpsWanted:"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ",defaultDisplayRefreshRate:"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {p1, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    cmpl-float v0, p2, v0

    .line 85
    .line 86
    if-gez v0, :cond_5

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    cmpg-float v0, p2, v0

    .line 90
    .line 91
    if-gtz v0, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    new-instance p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;

    .line 95
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/vsync/LocalVsyncHelper;-><init>(IF)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_5
    :goto_1
    new-instance p2, Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 101
    .line 102
    invoke-direct {p2, p0, p1}, Lcom/ss/texturerender/vsync/VsyncHelper;-><init>(Landroid/content/Context;I)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method
