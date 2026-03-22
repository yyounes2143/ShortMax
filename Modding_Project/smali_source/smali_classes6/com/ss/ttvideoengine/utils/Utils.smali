.class public final Lcom/ss/ttvideoengine/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sGson:Ljava/lang/Object;

.field private static sGsonNotFound:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-boolean v1, Lcom/ss/ttvideoengine/utils/Utils;->sGsonNotFound:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_1
    sget-object v1, Lcom/ss/ttvideoengine/utils/Utils;->sGson:Ljava/lang/Object;

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    :try_start_0
    const-class v1, Lcom/google/gson/Gson;

    .line 15
    .line 16
    sget v2, Lcom/google/gson/Gson;->a:I

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lcom/ss/ttvideoengine/utils/Utils;->sGson:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    sput-boolean v1, Lcom/ss/ttvideoengine/utils/Utils;->sGsonNotFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    const/4 v1, 0x1

    .line 29
    sput-boolean v1, Lcom/ss/ttvideoengine/utils/Utils;->sGsonNotFound:Z

    .line 30
    .line 31
    :cond_2
    :goto_0
    sget-object v1, Lcom/ss/ttvideoengine/utils/Utils;->sGson:Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string/jumbo v2, "toJson"

    .line 40
    .line 41
    .line 42
    const-class v3, Ljava/lang/Object;

    .line 43
    .line 44
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v2, Lcom/ss/ttvideoengine/utils/Utils;->sGson:Ljava/lang/Object;

    .line 53
    .line 54
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    instance-of v1, p0, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    return-object p0

    .line 71
    :catchall_1
    :cond_3
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
