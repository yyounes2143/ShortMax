.class public final Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;
.super Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "text"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;->d:Ljava/lang/Integer;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
