.class public final Lcom/moloco/sdk/service_locator/b$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/service_locator/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/service_locator/b$g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$g;->a:Lcom/moloco/sdk/service_locator/b$g;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/t;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/t;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$g;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/moloco/sdk/service_locator/u;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/u;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/moloco/sdk/service_locator/b$g;->c:Lms/i;

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    sput v0, Lcom/moloco/sdk/service_locator/b$g;->d:I

    .line 33
    .line 34
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

.method public static final c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;
    .locals 9

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$g;->a:Lcom/moloco/sdk/service_locator/b$g;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$g;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/moloco/sdk/service_locator/b$e;->k()Lcom/moloco/sdk/internal/services/g0;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/moloco/sdk/service_locator/b$b;->f()Lcom/moloco/sdk/internal/error/b;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    sget-object v7, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 22
    .line 23
    invoke-virtual {v7}, Lcom/moloco/sdk/service_locator/b$i;->a()Lio/ktor/client/HttpClient;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-direct {v0, v2, v4, v6, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;Lcom/moloco/sdk/internal/services/g0;Lcom/moloco/sdk/internal/error/b;Lio/ktor/client/HttpClient;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$g;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/moloco/sdk/service_locator/b$e;->k()Lcom/moloco/sdk/internal/services/g0;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v5}, Lcom/moloco/sdk/service_locator/b$b;->f()Lcom/moloco/sdk/internal/error/b;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v7}, Lcom/moloco/sdk/service_locator/b$i;->a()Lio/ktor/client/HttpClient;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-direct {v4, v3, v5, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;-><init>(Lcom/moloco/sdk/internal/services/g0;Lcom/moloco/sdk/internal/error/b;Lio/ktor/client/HttpClient;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;

    .line 54
    .line 55
    sget-object v5, Lcom/moloco/sdk/service_locator/b;->a:Lcom/moloco/sdk/service_locator/b;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/moloco/sdk/service_locator/b;->a()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "com.moloco.sdk.xenoss.sdkdevkit.android.cache"

    .line 62
    .line 63
    invoke-direct {v3, v5, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v1, v4, v0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/j;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/l;)V

    .line 67
    .line 68
    .line 69
    return-object v2
.end method

.method public static final d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$c;->a:Lcom/moloco/sdk/service_locator/b$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$c;->b()Lcom/moloco/sdk/internal/services/config/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Lcom/moloco/sdk/internal/services/config/a;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$g;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$g;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 8
    .line 9
    return-object v0
.end method
