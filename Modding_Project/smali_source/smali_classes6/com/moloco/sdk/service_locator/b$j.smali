.class public final Lcom/moloco/sdk/service_locator/b$j;
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
    name = "j"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$j;
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
    new-instance v0, Lcom/moloco/sdk/service_locator/b$j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$j;->a:Lcom/moloco/sdk/service_locator/b$j;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/e0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/e0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$j;->b:Lms/i;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    sput v0, Lcom/moloco/sdk/service_locator/b$j;->c:I

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

.method public static final a()Lcom/moloco/sdk/internal/services/D;
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b;->a:Lcom/moloco/sdk/service_locator/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "moloco_sdk_preferences"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/moloco/sdk/internal/services/D;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/moloco/sdk/internal/services/D;-><init>(Landroid/content/SharedPreferences;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method


# virtual methods
.method public final b()Lcom/moloco/sdk/internal/services/h0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$j;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/h0;

    .line 8
    .line 9
    return-object v0
.end method
