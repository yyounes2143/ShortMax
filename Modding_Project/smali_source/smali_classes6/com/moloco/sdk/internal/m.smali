.class public abstract Lcom/moloco/sdk/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/m$a;,
        Lcom/moloco/sdk/internal/m$b;,
        Lcom/moloco/sdk/internal/m$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/moloco/sdk/internal/m;->a:I

    iput p2, p0, Lcom/moloco/sdk/internal/m;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/internal/m;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/m;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/internal/m;->a:I

    .line 2
    .line 3
    return v0
.end method
