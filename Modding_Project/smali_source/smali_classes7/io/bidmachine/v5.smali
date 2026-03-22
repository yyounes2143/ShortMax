.class final Lio/bidmachine/v5;
.super Ljava/lang/Object;
.source "UserRestrictionParams.java"

# interfaces
.implements Llp/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llp/d;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/j2;->k()Lio/bidmachine/x3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/bidmachine/v5;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0}, Lio/bidmachine/x3;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0}, Lio/bidmachine/x3;->g()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v2, v0}, Lio/bidmachine/core/g;->c0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method private o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/v5;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private w()Z
    .locals 3

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/j2;->k()Lio/bidmachine/x3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/bidmachine/v5;->b:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {v0}, Lio/bidmachine/x3;->d()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0}, Lio/bidmachine/x3;->f()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v2, v0}, Lio/bidmachine/core/g;->c0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/v5;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/v5;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method d(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)V
    .locals 2
    .param p1    # Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setCoppa(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/v5;->w()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setGdpr(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/v5;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->newBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setUsPrivacy(Ljava/lang/String;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->build()Lio/bidmachine/protobuf/RegsCcpaExtension;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/v5;->k()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setGpp(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/v5;->j()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lio/bidmachine/core/g;->I(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->addAllGppSid(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method e(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/adcom/Context$User$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/v5;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setConsent(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/v5;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method h(Lio/bidmachine/protobuf/sdk/User$Builder;)V
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/sdk/User$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->setCoppa(Z)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/v5;->w()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->setGdpr(Z)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/v5;->l()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->setConsent(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lio/bidmachine/v5;->m()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->setCcpa(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/v5;->k()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->setGpp(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/v5;->j()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lio/bidmachine/core/g;->I(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/User$Builder;->addAllGppSid(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public j()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/v5;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lio/bidmachine/j2;->k()Lio/bidmachine/x3;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lio/bidmachine/x3;->h()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    .line 21
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/v5;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lio/bidmachine/j2;->k()Lio/bidmachine/x3;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lio/bidmachine/x3;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/v5;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "1"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "0"

    .line 21
    .line 22
    :cond_1
    :goto_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/v5;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lio/bidmachine/j2;->k()Lio/bidmachine/x3;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lio/bidmachine/x3;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/v5;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method p()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/v5;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/v5;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/v5;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/v5;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public r(ZLjava/lang/String;)Lio/bidmachine/v5;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p2, p0, Lio/bidmachine/v5;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lio/bidmachine/v5;->c:Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object p0
.end method

.method public s(Ljava/lang/Boolean;)Lio/bidmachine/v5;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/v5;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Ljava/lang/String;Ljava/util/List;)Lio/bidmachine/v5;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/bidmachine/v5;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/v5;->f:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/v5;->g:Ljava/util/List;

    .line 4
    .line 5
    return-object p0
.end method

.method public u(Ljava/lang/Boolean;)Lio/bidmachine/v5;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/v5;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Ljava/lang/String;)Lio/bidmachine/v5;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/v5;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
