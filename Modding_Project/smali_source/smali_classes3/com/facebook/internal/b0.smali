.class public final Lcom/facebook/internal/b0;
.super Ljava/lang/Object;
.source "ImageResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/facebook/internal/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/Exception;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private final d:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lcom/facebook/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

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
    iput-object p1, p0, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/a0;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/facebook/internal/b0;->b:Ljava/lang/Exception;

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/facebook/internal/b0;->c:Z

    .line 14
    .line 15
    iput-object p4, p0, Lcom/facebook/internal/b0;->d:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/b0;->d:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/Exception;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/b0;->b:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcom/facebook/internal/a0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/internal/b0;->c:Z

    .line 2
    .line 3
    return v0
.end method
