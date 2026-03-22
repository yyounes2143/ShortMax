.class public final synthetic Lsp/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ltp/r;


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/f;

.field public final synthetic b:Lio/bidmachine/rendering/ad/view/AdView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsp/k;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 5
    .line 6
    iput-object p2, p0, Lsp/k;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsp/k;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    iget-object v1, p0, Lsp/k;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/rendering/ad/view/AdView;->b(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
