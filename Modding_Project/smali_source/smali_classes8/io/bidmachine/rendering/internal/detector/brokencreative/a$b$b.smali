.class final Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->e(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;",
        "Lrq/l;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;->d:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lrq/l;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "algorithmTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;->d:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->j(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lrq/l;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    .line 2
    .line 3
    check-cast p2, Lrq/l;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;->b(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lrq/l;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p1
.end method
