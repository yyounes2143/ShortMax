.class public interface abstract Lcom/moloco/sdk/internal/services/bidtoken/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/bidtoken/s$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/services/bidtoken/s$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/s$a;->a:Lcom/moloco/sdk/internal/services/bidtoken/s$a;

    .line 2
    .line 3
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/s;->a:Lcom/moloco/sdk/internal/services/bidtoken/s$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/moloco/sdk/internal/services/bidtoken/providers/k;Lcom/moloco/sdk/internal/services/bidtoken/h;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents;
    .param p1    # Lcom/moloco/sdk/internal/services/bidtoken/providers/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/bidtoken/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract b([B[B)[B
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
