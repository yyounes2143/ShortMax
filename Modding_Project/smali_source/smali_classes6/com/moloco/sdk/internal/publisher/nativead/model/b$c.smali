.class public final Lcom/moloco/sdk/internal/publisher/nativead/model/b$c;
.super Lcom/moloco/sdk/internal/publisher/nativead/model/b;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/publisher/nativead/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "originAsset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/b;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/b$c;->d:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/b$c;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
