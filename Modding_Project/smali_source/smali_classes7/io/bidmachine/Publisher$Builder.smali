.class public final Lio/bidmachine/Publisher$Builder;
.super Ljava/lang/Object;
.source "Publisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addCategories(Ljava/util/List;)Lio/bidmachine/Publisher$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/Publisher$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/bidmachine/core/g;->I(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lio/bidmachine/Publisher$Builder;->addCategory(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object p0
.end method

.method public addCategory(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public build()Lio/bidmachine/Publisher;
    .locals 7

    .line 1
    new-instance v6, Lio/bidmachine/Publisher;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/Publisher$Builder;->id:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/Publisher$Builder;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/Publisher$Builder;->domain:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/Publisher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/bidmachine/Publisher$a;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public setDomain(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->domain:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
