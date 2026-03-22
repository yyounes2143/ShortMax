.class public final Lcom/moloco/sdk/service_locator/b$k;
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
    name = "k"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$k;
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

.field public static final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/service_locator/b$k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$k;->a:Lcom/moloco/sdk/service_locator/b$k;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/f0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/f0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$k;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/moloco/sdk/service_locator/g0;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/g0;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/moloco/sdk/service_locator/b$k;->c:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/moloco/sdk/service_locator/h0;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/h0;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/moloco/sdk/service_locator/b$k;->d:Lms/i;

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    sput v0, Lcom/moloco/sdk/service_locator/b$k;->e:I

    .line 44
    .line 45
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

.method public static final a()Lcom/moloco/sdk/internal/services/events/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/events/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/events/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final g()Lcom/moloco/sdk/internal/services/usertracker/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/usertracker/c;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$j;->a:Lcom/moloco/sdk/service_locator/b$j;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$j;->b()Lcom/moloco/sdk/internal/services/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/usertracker/c;-><init>(Lcom/moloco/sdk/internal/services/h0;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final h()Lcom/moloco/sdk/internal/services/usertracker/g;
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/usertracker/g;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$k;->a:Lcom/moloco/sdk/service_locator/b$k;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$k;->e()Lcom/moloco/sdk/internal/services/usertracker/d;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$k;->d()Lcom/moloco/sdk/internal/services/usertracker/b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v2, v1}, Lcom/moloco/sdk/internal/services/usertracker/g;-><init>(Lcom/moloco/sdk/internal/services/usertracker/d;Lcom/moloco/sdk/internal/services/usertracker/b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public final b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v10, Lcom/moloco/sdk/internal/services/events/a;

    .line 2
    .line 3
    sget-object v0, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->h()Lcom/moloco/sdk/internal/services/x;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$i;->b()Lcom/moloco/sdk/internal/services/b;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->m()Lcom/moloco/sdk/internal/services/f;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p0}, Lcom/moloco/sdk/service_locator/b$k;->f()Lcom/moloco/sdk/internal/services/usertracker/e;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$h;->d()Lcom/moloco/sdk/internal/services/p;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$h;->g()Lcom/moloco/sdk/internal/services/proto/a;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lcom/moloco/sdk/service_locator/b$k;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const-string v9, "4.0.0"

    .line 42
    .line 43
    move-object v0, v10

    .line 44
    invoke-direct/range {v0 .. v9}, Lcom/moloco/sdk/internal/services/events/a;-><init>(Lcom/moloco/sdk/internal/services/x;Lcom/moloco/sdk/internal/services/b;Lcom/moloco/sdk/internal/services/j0;Lcom/moloco/sdk/internal/services/f;Lcom/moloco/sdk/internal/services/usertracker/e;Lcom/moloco/sdk/internal/services/p;Lcom/moloco/sdk/internal/services/proto/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v10
.end method

.method public final c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$k;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/internal/services/usertracker/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$k;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/usertracker/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/services/usertracker/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/usertracker/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/usertracker/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final f()Lcom/moloco/sdk/internal/services/usertracker/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$k;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/usertracker/e;

    .line 8
    .line 9
    return-object v0
.end method
