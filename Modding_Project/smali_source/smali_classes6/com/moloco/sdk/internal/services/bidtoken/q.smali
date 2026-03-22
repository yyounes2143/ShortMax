.class public final Lcom/moloco/sdk/internal/services/bidtoken/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/bidtoken/p;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/q;->a:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/internal/services/bidtoken/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/services/bidtoken/q;->c()Lcom/moloco/sdk/internal/services/bidtoken/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b()Lcom/moloco/sdk/internal/services/bidtoken/m;
    .locals 7

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    const/16 v5, 0xc

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const-string v1, "BidTokenService"

    .line 7
    .line 8
    const-string v2, "Creating BidTokenService instance"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/m;

    .line 16
    .line 17
    sget-object v1, Lcom/moloco/sdk/internal/services/bidtoken/b0;->a:Lcom/moloco/sdk/internal/services/bidtoken/b0$a;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/bidtoken/b0$a;->a()Lcom/moloco/sdk/internal/services/bidtoken/b0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/moloco/sdk/internal/services/bidtoken/u;->a:Lcom/moloco/sdk/internal/services/bidtoken/u$a;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/bidtoken/u$a;->a()Lcom/moloco/sdk/internal/services/bidtoken/u;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/services/bidtoken/m;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/b0;Lcom/moloco/sdk/internal/services/bidtoken/u;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static final c()Lcom/moloco/sdk/internal/services/bidtoken/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/q;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/m;

    .line 8
    .line 9
    return-object v0
.end method
