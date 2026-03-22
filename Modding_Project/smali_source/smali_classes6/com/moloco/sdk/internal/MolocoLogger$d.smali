.class public final Lcom/moloco/sdk/internal/MolocoLogger$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/MolocoLogger$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/MolocoLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/MolocoLogger$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/MolocoLogger$a;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/MolocoLogger$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/MolocoLogger$d;->a:Lcom/moloco/sdk/internal/MolocoLogger$a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/MolocoLogger$d;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/MolocoLogger$d;->a:Lcom/moloco/sdk/internal/MolocoLogger$a;

    invoke-interface {v0}, Lcom/moloco/sdk/internal/MolocoLogger$a;->a()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/MolocoLogger$d;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
