.class public final Lu3/d;
.super Lu3/a;
.source "ProducerToDataSourceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/a<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final j:Lu3/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu3/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lu3/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu3/d;->j:Lu3/d$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/j1;",
            "La4/d;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lu3/a;-><init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lu3/d;-><init>(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)V

    return-void
.end method
