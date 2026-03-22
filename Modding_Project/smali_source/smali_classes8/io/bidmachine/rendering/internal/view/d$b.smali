.class final Lio/bidmachine/rendering/internal/view/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/view/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/view/d;


# direct methods
.method private constructor <init>(Lio/bidmachine/rendering/internal/view/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/d$b;->a:Lio/bidmachine/rendering/internal/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/d;Lio/bidmachine/rendering/internal/view/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/d$b;-><init>(Lio/bidmachine/rendering/internal/view/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d$b;->a:Lio/bidmachine/rendering/internal/view/d;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/rendering/internal/view/d;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 4
    .line 5
    invoke-static {v0}, Lyq/t;->d(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/d$b;->a:Lio/bidmachine/rendering/internal/view/d;

    .line 9
    .line 10
    iget-object v0, v0, Lio/bidmachine/rendering/internal/view/d;->b:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-static {v0}, Lyq/t;->j(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
