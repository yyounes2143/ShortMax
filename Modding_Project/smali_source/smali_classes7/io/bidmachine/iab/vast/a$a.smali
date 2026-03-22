.class public Lio/bidmachine/iab/vast/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/iab/vast/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Z)Lio/bidmachine/iab/vast/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/a;->p(Lio/bidmachine/iab/vast/a;Z)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/vast/a$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/measurer/VastAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/a;->d(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/vast/a$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/CacheControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/a;->c(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/CacheControl;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e(I)Lio/bidmachine/iab/vast/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/a;->a(Lio/bidmachine/iab/vast/a;F)F

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public f(F)Lio/bidmachine/iab/vast/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/a;->q(Lio/bidmachine/iab/vast/a;F)F

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g(I)Lio/bidmachine/iab/vast/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/a;->f(Lio/bidmachine/iab/vast/a;Ljava/lang/Float;)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
