.class public final Lmq/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmq/a;->a(Landroid/view/View;Landroid/os/Handler;Lmq/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lmq/b;

.field final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lmq/b;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmq/a$a;->a:Lmq/b;

    .line 2
    .line 3
    iput-object p2, p0, Lmq/a$a;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lmq/a$a;->a:Lmq/b;

    .line 4
    .line 5
    iget-object v0, p0, Lmq/a$a;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lmq/b;->a(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lmq/a$a;->a:Lmq/b;

    .line 12
    .line 13
    invoke-interface {p1}, Lmq/b;->a()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
