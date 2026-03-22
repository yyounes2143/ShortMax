.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
.super Ljava/lang/Object;
.source "FrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bitmapRef:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo2/a;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V
    .locals 1
    .param p1    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->bitmapRef:Lo2/a;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->type:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getBitmapRef()Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->bitmapRef:Lo2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->type:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    .line 2
    .line 3
    return-object v0
.end method
