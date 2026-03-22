.class public final Lcom/moloco/sdk/internal/services/bidtoken/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/services/bidtoken/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/moloco/sdk/internal/services/bidtoken/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/u$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/bidtoken/u$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/u$a;->a:Lcom/moloco/sdk/internal/services/bidtoken/u$a;

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
.method public final a()Lcom/moloco/sdk/internal/services/bidtoken/u;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/r;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/moloco/sdk/internal/services/bidtoken/s;->a:Lcom/moloco/sdk/internal/services/bidtoken/s$a;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/bidtoken/s$a;->a()Lcom/moloco/sdk/internal/services/bidtoken/s;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/moloco/sdk/internal/services/encryption/a;->a:Lcom/moloco/sdk/internal/services/encryption/a$a;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/services/encryption/a$a;->a()Lcom/moloco/sdk/internal/services/encryption/a;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Lcom/moloco/sdk/internal/services/bidtoken/providers/m;->a:Lcom/moloco/sdk/internal/services/bidtoken/providers/m$a;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/m$a;->a()Lcom/moloco/sdk/internal/services/bidtoken/providers/m;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/moloco/sdk/internal/services/bidtoken/r;-><init>(Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/services/bidtoken/s;Lcom/moloco/sdk/internal/services/encryption/a;Lcom/moloco/sdk/internal/services/bidtoken/providers/m;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
