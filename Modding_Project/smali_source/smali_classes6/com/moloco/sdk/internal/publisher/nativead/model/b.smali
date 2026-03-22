.class public abstract Lcom/moloco/sdk/internal/publisher/nativead/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/model/b$a;,
        Lcom/moloco/sdk/internal/publisher/nativead/model/b$b;,
        Lcom/moloco/sdk/internal/publisher/nativead/model/b$c;,
        Lcom/moloco/sdk/internal/publisher/nativead/model/b$d;
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->a:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 3
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    move-result v0

    iput v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->b:I

    .line 4
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/b;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->a:Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 2
    .line 3
    return-object v0
.end method
