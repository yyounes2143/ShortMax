.class public final synthetic Lcom/facebook/internal/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/a0;

.field public final synthetic b:Ljava/lang/Exception;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Lcom/facebook/internal/a0$b;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/a0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/a0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/internal/y;->b:Ljava/lang/Exception;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/facebook/internal/y;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/internal/y;->d:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/internal/y;->e:Lcom/facebook/internal/a0$b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/internal/y;->b:Ljava/lang/Exception;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/facebook/internal/y;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/internal/y;->d:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/facebook/internal/y;->e:Lcom/facebook/internal/a0$b;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/z;->a(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/a0$b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
