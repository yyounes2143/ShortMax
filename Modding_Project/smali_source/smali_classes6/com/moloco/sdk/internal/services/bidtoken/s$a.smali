.class public final Lcom/moloco/sdk/internal/services/bidtoken/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/services/bidtoken/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/moloco/sdk/internal/services/bidtoken/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/s$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/bidtoken/s$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/s$a;->a:Lcom/moloco/sdk/internal/services/bidtoken/s$a;

    .line 7
    .line 8
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


# virtual methods
.method public final a()Lcom/moloco/sdk/internal/services/bidtoken/s;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/t;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$e;->m()Lcom/moloco/sdk/internal/services/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v2, v1}, Lcom/moloco/sdk/internal/services/bidtoken/t;-><init>(Lcom/moloco/sdk/internal/services/j0;Lcom/moloco/sdk/internal/services/f;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
