.class public final Lcom/facebook/share/model/SharePhoto$a;
.super Lcom/facebook/share/model/ShareMedia$a;
.source "SharePhoto.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/SharePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/SharePhoto$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMedia$a<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcom/facebook/share/model/SharePhoto$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/facebook/share/model/SharePhoto$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private c:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/share/model/SharePhoto$a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/share/model/SharePhoto$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/share/model/SharePhoto$a;->g:Lcom/facebook/share/model/SharePhoto$a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/share/model/ShareMedia$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d()Lcom/facebook/share/model/SharePhoto;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/share/model/SharePhoto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$a;->c:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$a;->d:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto$a;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public i(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$a;
    .locals 2
    .param p1    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareMedia$a;->b(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/facebook/share/model/SharePhoto$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->b()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$a;->k(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$a;->m(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$a;->n(Z)Lcom/facebook/share/model/SharePhoto$a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$a;->l(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    return-object p1
.end method

.method public final j(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$a;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/facebook/share/model/SharePhoto;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$a;->i(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final k(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$a;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$a;->c:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$a;->d:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final n(Z)Lcom/facebook/share/model/SharePhoto$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/share/model/SharePhoto$a;->e:Z

    .line 2
    .line 3
    return-object p0
.end method
