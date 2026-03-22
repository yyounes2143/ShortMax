.class public final Lcom/facebook/share/model/ShareCameraEffectContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareCameraEffectContent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareCameraEffectContent$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareCameraEffectContent;",
        "Ljava/lang/Object;",
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
            "Lcom/facebook/share/model/ShareCameraEffectContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lcom/facebook/share/model/ShareCameraEffectContent$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/share/model/CameraEffectArguments;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/share/model/CameraEffectTextures;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/share/model/ShareCameraEffectContent$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/share/model/ShareCameraEffectContent$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/share/model/ShareCameraEffectContent;->j:Lcom/facebook/share/model/ShareCameraEffectContent$b;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/share/model/ShareCameraEffectContent$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/share/model/ShareCameraEffectContent$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/share/model/ShareCameraEffectContent;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->g:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$a;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$a;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectArguments$a;->c(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectArguments$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/facebook/share/model/CameraEffectArguments$a;->a()Lcom/facebook/share/model/CameraEffectArguments;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->h:Lcom/facebook/share/model/CameraEffectArguments;

    .line 29
    .line 30
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures$a;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectTextures$a;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectTextures$a;->c(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures$a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/facebook/share/model/CameraEffectTextures$a;->a()Lcom/facebook/share/model/CameraEffectTextures;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->i:Lcom/facebook/share/model/CameraEffectTextures;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
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
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->h:Lcom/facebook/share/model/CameraEffectArguments;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->i:Lcom/facebook/share/model/CameraEffectTextures;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
