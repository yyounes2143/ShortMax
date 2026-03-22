.class public final Lcom/moloco/sdk/service_locator/b$d;
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
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/service_locator/b$d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$d;->a:Lcom/moloco/sdk/service_locator/b$d;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/i;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/i;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$d;->b:Lms/i;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    sput v0, Lcom/moloco/sdk/service_locator/b$d;->c:I

    .line 22
    .line 23
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

.method public static final a()Lcom/moloco/sdk/internal/error/crash/b;
    .locals 6

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/error/crash/b;

    .line 2
    .line 3
    new-instance v1, Lcom/moloco/sdk/internal/error/crash/e;

    .line 4
    .line 5
    new-instance v2, Lcom/moloco/sdk/internal/error/crash/filters/b;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/moloco/sdk/internal/error/crash/filters/b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Lcom/moloco/sdk/internal/error/api/b;

    .line 15
    .line 16
    sget-object v4, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-direct {v3, v4, v5}, Lcom/moloco/sdk/internal/error/api/b;-><init>(Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;)V

    .line 27
    .line 28
    .line 29
    sget-object v4, Lcom/moloco/sdk/acm/recorder/a;->Companion:Lcom/moloco/sdk/acm/recorder/a$a;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/moloco/sdk/acm/recorder/a$a;->b()Lcom/moloco/sdk/acm/recorder/a;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v1, v2, v3, v4}, Lcom/moloco/sdk/internal/error/crash/e;-><init>(Ljava/util/List;Lcom/moloco/sdk/internal/error/api/a;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/error/crash/b;-><init>(Lcom/moloco/sdk/internal/error/crash/d;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method


# virtual methods
.method public final b()Lcom/moloco/sdk/internal/error/crash/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$d;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/error/crash/a;

    .line 8
    .line 9
    return-object v0
.end method
