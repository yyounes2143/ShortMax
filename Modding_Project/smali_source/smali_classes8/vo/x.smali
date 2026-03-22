.class public final Lvo/x;
.super Ljava/lang/Object;
.source "UnsupportedBrandsSniffFailure.java"

# interfaces
.implements Lao/n0;


# instance fields
.field public final a:I

.field public final b:Lcom/google/common/primitives/ImmutableIntArray;


# direct methods
.method public constructor <init>(I[I)V
    .locals 0
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvo/x;->a:I

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/common/primitives/ImmutableIntArray;->b([I)Lcom/google/common/primitives/ImmutableIntArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->h()Lcom/google/common/primitives/ImmutableIntArray;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    iput-object p1, p0, Lvo/x;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 18
    .line 19
    return-void
.end method
