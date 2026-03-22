.class public final Lokhttp3/internal/platform/android/CloseGuard$Companion;
.super Ljava/lang/Object;
.source "CloseGuard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/android/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/platform/android/CloseGuard$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/platform/android/CloseGuard;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "dalvik.system.CloseGuard"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "get"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v3, "open"

    .line 17
    .line 18
    const-class v4, Ljava/lang/String;

    .line 19
    .line 20
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "warnIfOpen"

    .line 29
    .line 30
    new-array v2, v2, [Ljava/lang/Class;

    .line 31
    .line 32
    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const/4 v1, 0x0

    .line 38
    move-object v0, v1

    .line 39
    move-object v3, v0

    .line 40
    :goto_0
    new-instance v2, Lokhttp3/internal/platform/android/CloseGuard;

    .line 41
    .line 42
    invoke-direct {v2, v1, v3, v0}, Lokhttp3/internal/platform/android/CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 43
    .line 44
    .line 45
    return-object v2
.end method
