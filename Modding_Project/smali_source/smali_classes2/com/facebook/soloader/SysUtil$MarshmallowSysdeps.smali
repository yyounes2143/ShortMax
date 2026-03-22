.class final Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;
.super Ljava/lang/Object;
.source "SysUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lcom/facebook/soloader/g;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SysUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MarshmallowSysdeps"
.end annotation


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

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8
    .line 9
    const/high16 v0, 0x10000000

    .line 10
    .line 11
    and-int/2addr p0, v0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->a(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .locals 7
    .annotation build Lcom/facebook/soloader/g;
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/util/TreeSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->is64Bit()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "arm64-v8a"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "x86_64"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v2, "armeabi-v7a"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "x86"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    array-length v3, v0

    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_1
    if-ge v4, v3, :cond_2

    .line 45
    .line 46
    aget-object v5, v0, v4

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, [Ljava/lang/String;

    .line 71
    .line 72
    return-object v0
.end method

.method public static is64Bit()Z
    .locals 1
    .annotation build Lcom/facebook/soloader/g;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
