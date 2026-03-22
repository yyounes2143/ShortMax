.class public interface abstract Lcom/moloco/sdk/internal/services/bidtoken/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/bidtoken/y$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/services/bidtoken/y$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/y$a;->a:Lcom/moloco/sdk/internal/services/bidtoken/y$a;

    .line 2
    .line 3
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/y;->a:Lcom/moloco/sdk/internal/services/bidtoken/y$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/moloco/sdk/internal/services/bidtoken/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract a(Lrs/c;)Ljava/lang/Object;
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/B;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract b(Lcom/moloco/sdk/internal/services/bidtoken/n;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lcom/moloco/sdk/internal/services/bidtoken/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
