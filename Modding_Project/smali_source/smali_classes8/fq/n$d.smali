.class Lfq/n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/view/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfq/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lfq/n;


# direct methods
.method private constructor <init>(Lfq/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfq/n$d;->a:Lfq/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfq/n;Lfq/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfq/n$d;-><init>(Lfq/n;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n$d;->a:Lfq/n;

    invoke-virtual {v0}, Lfq/n;->N()V

    return-void
.end method

.method public a(Lrq/n;)V
    .locals 1
    .param p1    # Lrq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lfq/n$d;->a:Lfq/n;

    invoke-virtual {v0, p1}, Lfq/n;->m(Lrq/n;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq/n$d;->a:Lfq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfq/n;->P()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
