.class public interface abstract Lcom/moloco/sdk/internal/services/bidtoken/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/bidtoken/u$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/services/bidtoken/u$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/u$a;->a:Lcom/moloco/sdk/internal/services/bidtoken/u$a;

    .line 2
    .line 3
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/u;->a:Lcom/moloco/sdk/internal/services/bidtoken/u$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lcom/moloco/sdk/internal/services/bidtoken/h;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/bidtoken/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/internal/services/bidtoken/h;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
