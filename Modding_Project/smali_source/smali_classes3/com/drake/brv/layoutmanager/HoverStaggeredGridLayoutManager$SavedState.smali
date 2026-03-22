.class public Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "HoverStaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/Parcelable;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->a:Landroid/os/Parcelable;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->c:I

    return-void
.end method

.method static synthetic a(Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->a:Landroid/os/Parcelable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->a:Landroid/os/Parcelable;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->b:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->c:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->a:Landroid/os/Parcelable;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->b:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/drake/brv/layoutmanager/HoverStaggeredGridLayoutManager$SavedState;->c:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
