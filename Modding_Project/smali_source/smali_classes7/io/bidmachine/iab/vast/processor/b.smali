.class public Lio/bidmachine/iab/vast/processor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/bidmachine/iab/vast/processor/VastAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ltm/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/b;->a:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/processor/b;->d:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method b(Lio/bidmachine/iab/vast/processor/VastAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/processor/VastAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/b;->b:Lio/bidmachine/iab/vast/processor/VastAd;

    .line 2
    .line 3
    return-void
.end method

.method c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/vast/tags/AdContentTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ltm/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/vast/processor/b;->d(Ltm/g;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ltm/g;->a()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const-string v1, "params_error_code"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->r0()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p2, v0}, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/b;->a:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method d(Ltm/g;)V
    .locals 0
    .param p1    # Ltm/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/b;->c:Ltm/g;

    .line 2
    .line 3
    return-void
.end method

.method e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/processor/b;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/b;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Lio/bidmachine/iab/vast/processor/VastAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/b;->b:Lio/bidmachine/iab/vast/processor/VastAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ltm/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/b;->c:Ltm/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/b;->b:Lio/bidmachine/iab/vast/processor/VastAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
