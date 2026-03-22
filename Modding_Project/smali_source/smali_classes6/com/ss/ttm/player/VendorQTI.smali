.class public Lcom/ss/ttm/player/VendorQTI;
.super Ljava/lang/Object;
.source "VendorQTI.java"


# static fields
.field private static final LEVEL_HIGH:I = 0x2

.field private static final LEVEL_LITE:I = 0x0

.field private static final LEVEL_MIDIUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VendorQTI"


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

.method public static debugEffect(Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "vendor.qti-ext-vpp-demo.process-percent"

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x32

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "mediaformat = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "VendorQTI"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static enableLowLatency(Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "vendor.qti-ext-dec-low-latency.enable"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setupVpp(Landroid/media/MediaFormat;I)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "vendor.qti-ext-vpp.mode"

    .line 5
    .line 6
    .line 7
    const-string v1, "HQV_MODE_MANUAL"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x32

    .line 13
    .line 14
    const-string/jumbo v1, "vendor.qti-ext-vpp-aie.ltm-ace-str"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "vendor.qti-ext-vpp-aie.ltm-sat-offset"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "vendor.qti-ext-vpp-aie.ltm-sat-gain"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v4, "vendor.qti-ext-vpp-cade.cade-level"

    .line 24
    .line 25
    .line 26
    const/16 v5, 0x14

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-eq p1, v6, :cond_2

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    if-eq p1, v6, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/16 p1, 0xf

    .line 38
    .line 39
    invoke-virtual {p0, v4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const/16 p1, 0x46

    .line 43
    .line 44
    invoke-virtual {p0, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    if-nez p1, :cond_3

    .line 55
    .line 56
    const/16 p1, 0xa

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move p1, v5

    .line 60
    :goto_0
    invoke-virtual {p0, v4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const/16 p1, 0x41

    .line 64
    .line 65
    invoke-virtual {p0, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    const/16 p1, 0x3c

    .line 69
    .line 70
    invoke-virtual {p0, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    const-string/jumbo p1, "vendor.qti-ext-vpp-aie.ltm-ace-brightness-low"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo p1, "vendor.qti-ext-vpp-aie.ltm-ace-brightness-high"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
