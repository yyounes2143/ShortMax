.class public abstract Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/publisher/nativead/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;,
        Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;,
        Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;,
        Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a:I

    .line 4
    iput-boolean p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->b:Z

    .line 2
    .line 3
    return v0
.end method
