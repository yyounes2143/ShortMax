.class public Lcom/huawei/hms/framework/common/EmuiUtil;
.super Ljava/lang/Object;
.source "EmuiUtil.java"


# static fields
.field public static final BUILDEX_VERSION:Ljava/lang/String; = "com.huawei.android.os.BuildEx$VERSION"

.field public static final EMUI_SDK_INT:Ljava/lang/String; = "EMUI_SDK_INT"

.field public static final GET_PRIMARY_COLOR:Ljava/lang/String; = "getPrimaryColor"

.field public static final GET_SUGGESTION_FOR_GROUND_COLOR_STYLE:Ljava/lang/String; = "getSuggestionForgroundColorStyle"

.field public static final IMMERSION_STYLE:Ljava/lang/String; = "com.huawei.android.immersion.ImmersionStyle"

.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->a()V

    .line 2
    .line 3
    .line 4
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

.method private static a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->getEMUIVersionCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "getEmuiType emuiVersionCode="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "KPMS_Util_Emui"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x11

    .line 28
    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    .line 31
    const/16 v0, 0x5a

    .line 32
    .line 33
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v1, 0xf

    .line 37
    .line 38
    if-lt v0, v1, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x51

    .line 41
    .line 42
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/16 v1, 0xe

    .line 46
    .line 47
    if-lt v0, v1, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x3c

    .line 50
    .line 51
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/16 v1, 0xb

    .line 55
    .line 56
    if-lt v0, v1, :cond_3

    .line 57
    .line 58
    const/16 v0, 0x32

    .line 59
    .line 60
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/16 v1, 0xa

    .line 64
    .line 65
    if-lt v0, v1, :cond_4

    .line 66
    .line 67
    const/16 v0, 0x29

    .line 68
    .line 69
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/16 v1, 0x9

    .line 73
    .line 74
    if-lt v0, v1, :cond_5

    .line 75
    .line 76
    const/16 v0, 0x28

    .line 77
    .line 78
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const/16 v1, 0x8

    .line 82
    .line 83
    if-lt v0, v1, :cond_6

    .line 84
    .line 85
    const/16 v0, 0x1f

    .line 86
    .line 87
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    const/4 v1, 0x7

    .line 91
    if-lt v0, v1, :cond_7

    .line 92
    .line 93
    const/16 v0, 0x1e

    .line 94
    .line 95
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 96
    .line 97
    :cond_7
    :goto_0
    sget v0, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 98
    .line 99
    const/4 v1, -0x1

    .line 100
    if-ne v0, v1, :cond_8

    .line 101
    .line 102
    const-string v0, "emuiType is unkown"

    .line 103
    .line 104
    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_8
    return-void
.end method

.method public static getEMUIVersionCode()I
    .locals 4

    .line 1
    const-string v0, "com.huawei.android.os.BuildEx$VERSION"

    .line 2
    .line 3
    const-string v1, "EMUI_SDK_INT"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/ReflectionUtils;->getStaticFieldObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "KPMS_Util_Emui"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const-string v2, "getEMUIVersionCode ClassCastException:"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "the emui version code is::"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public static isEMUI()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    sget v1, Lcom/huawei/hms/framework/common/EmuiUtil;->a:I

    .line 3
    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public static isUpPVersion()Z
    .locals 3

    .line 1
    const-string v0, "KPMS_Util_Emui"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "com.huawei.android.os.BuildEx"

    .line 5
    .line 6
    invoke-static {v2}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    const-string v2, "com.huawei.android.os.BuildEx$VERSION"

    .line 13
    .line 14
    invoke-static {v2}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    sget v0, Lcom/huawei/android/os/BuildEx$VERSION;->EMUI_SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    const/16 v2, 0x11

    .line 23
    .line 24
    if-lt v0, v2, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1

    .line 28
    :catchall_0
    const-string v2, "com.huawei.android.os.BuildEx.VERSION has other exception"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string v2, "no such method for com.huawei.android.os.BuildEx.VERSION"

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    const-string v2, "com.huawei.android.os.BuildEx : false"

    .line 40
    .line 41
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return v1
.end method
