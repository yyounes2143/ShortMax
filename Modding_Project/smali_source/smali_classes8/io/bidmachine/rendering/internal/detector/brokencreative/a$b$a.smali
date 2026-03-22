.class final Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->i(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Landroid/graphics/Bitmap;)V

    return-void
.end method
