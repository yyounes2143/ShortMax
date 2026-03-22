.class public final Lcom/facebook/share/model/SharePhoto;
.super Lcom/facebook/share/model/ShareMedia;
.source "SharePhoto.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/SharePhoto$a;,
        Lcom/facebook/share/model/SharePhoto$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMedia<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcom/facebook/share/model/SharePhoto$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lcom/facebook/share/model/SharePhoto$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Z

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Lcom/facebook/share/model/ShareMedia$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/share/model/SharePhoto$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/share/model/SharePhoto$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/share/model/SharePhoto;->g:Lcom/facebook/share/model/SharePhoto$c;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/share/model/SharePhoto$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/share/model/SharePhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Landroid/os/Parcel;)V

    .line 9
    sget-object v0, Lcom/facebook/share/model/ShareMedia$Type;->PHOTO:Lcom/facebook/share/model/ShareMedia$Type;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->f:Lcom/facebook/share/model/ShareMedia$Type;

    .line 10
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/graphics/Bitmap;

    .line 11
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->c:Landroid/net/Uri;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->d:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/SharePhoto$a;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Lcom/facebook/share/model/ShareMedia$a;)V

    .line 3
    sget-object v0, Lcom/facebook/share/model/ShareMedia$Type;->PHOTO:Lcom/facebook/share/model/ShareMedia$Type;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->f:Lcom/facebook/share/model/ShareMedia$Type;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$a;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$a;->g()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->c:Landroid/net/Uri;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->d:Z

    .line 7
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$a;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/share/model/SharePhoto$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$a;)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->c:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareMedia;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/facebook/share/model/SharePhoto;->c:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 18
    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/facebook/share/model/SharePhoto;->d:Z

    .line 21
    .line 22
    int-to-byte p2, p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/facebook/share/model/SharePhoto;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
