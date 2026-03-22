.class public interface abstract Lcom/moloco/sdk/internal/services/bidtoken/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/bidtoken/b0$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/services/bidtoken/b0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/b0$a;->a:Lcom/moloco/sdk/internal/services/bidtoken/b0$a;

    .line 2
    .line 3
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/b0;->a:Lcom/moloco/sdk/internal/services/bidtoken/b0$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
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
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
