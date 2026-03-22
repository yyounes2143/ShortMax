.class public final Landroidx/navigation/NavDeepLink$Builder;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mUriPattern:Ljava/lang/String;


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

.method public static fromAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroidx/navigation/NavDeepLink$Builder;->setAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "The NavDeepLink cannot have an empty action."

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static fromMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/navigation/NavDeepLink$Builder;->setMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static fromUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/navigation/NavDeepLink$Builder;->setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public build()Landroidx/navigation/NavDeepLink;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/navigation/NavDeepLink;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/NavDeepLink$Builder;->mUriPattern:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation/NavDeepLink$Builder;->mAction:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/navigation/NavDeepLink$Builder;->mMimeType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$Builder;->mAction:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "The NavDeepLink cannot have an empty action."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$Builder;->mMimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$Builder;->mUriPattern:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
