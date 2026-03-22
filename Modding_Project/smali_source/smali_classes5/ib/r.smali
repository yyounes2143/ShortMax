.class public Lib/r;
.super Ljava/lang/Object;
.source "EmuiUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/r$a;
    }
.end annotation


# static fields
.field private static a:I = -0x1

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lib/r;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget v0, Lib/r;->b:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static b()V
    .locals 2

    .line 1
    invoke-static {}, Lib/r;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lib/r;->b:I

    .line 6
    .line 7
    const/16 v1, 0x11

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x5a

    .line 12
    .line 13
    sput v1, Lib/r;->a:I

    .line 14
    .line 15
    :cond_0
    const/16 v1, 0xb

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x32

    .line 20
    .line 21
    sput v0, Lib/r;->a:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v1, 0xa

    .line 25
    .line 26
    if-lt v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v0, 0x29

    .line 29
    .line 30
    sput v0, Lib/r;->a:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/16 v1, 0x9

    .line 34
    .line 35
    if-lt v0, v1, :cond_3

    .line 36
    .line 37
    const/16 v0, 0x28

    .line 38
    .line 39
    sput v0, Lib/r;->a:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/16 v1, 0x8

    .line 43
    .line 44
    if-lt v0, v1, :cond_4

    .line 45
    .line 46
    const/16 v0, 0x1f

    .line 47
    .line 48
    sput v0, Lib/r;->a:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const/4 v1, 0x7

    .line 52
    if-lt v0, v1, :cond_5

    .line 53
    .line 54
    const/16 v0, 0x1e

    .line 55
    .line 56
    sput v0, Lib/r;->a:I

    .line 57
    .line 58
    :cond_5
    :goto_0
    sget v0, Lib/r;->a:I

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    invoke-static {}, Lib/r;->c()V

    .line 64
    .line 65
    .line 66
    :cond_6
    return-void
.end method

.method private static c()V
    .locals 5

    .line 1
    const-string v0, "EmuiUtil"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 5
    .line 6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "get"

    .line 11
    .line 12
    const-class v4, Ljava/lang/String;

    .line 13
    .line 14
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "ro.build.version.emui"

    .line 23
    .line 24
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    const-string v3, "EmotionUI_3.0"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const/16 v2, 0x1e

    .line 45
    .line 46
    sput v2, Lib/r;->a:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v3, "EmotionUI_3.1"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const/16 v2, 0x1f

    .line 58
    .line 59
    sput v2, Lib/r;->a:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v3, "EmotionUI_4.0"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const/16 v2, 0x28

    .line 71
    .line 72
    sput v2, Lib/r;->a:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string v3, "EmotionUI_4.1"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    const/16 v2, 0x29

    .line 84
    .line 85
    sput v2, Lib/r;->a:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const-string v3, "EmotionUI_5.0"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    const/16 v2, 0x32

    .line 97
    .line 98
    sput v2, Lib/r;->a:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    const-string v2, "getEmuiType Exception."

    .line 102
    .line 103
    invoke-static {v0, v2, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_1
    const-string v2, "RuntimeException getEmuiType."

    .line 108
    .line 109
    invoke-static {v0, v2, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_0
    return-void
.end method

.method private static d()I
    .locals 3

    .line 1
    const-string v0, "com.huawei.android.os.BuildEx$VERSION"

    .line 2
    .line 3
    const-string v1, "EMUI_SDK_INT"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lib/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lib/r;->b:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string v0, "getEMUIVersionCode is not a number"

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const-string v2, "EmuiUtil"

    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    sget v0, Lib/r;->b:I

    .line 29
    .line 30
    return v0
.end method
