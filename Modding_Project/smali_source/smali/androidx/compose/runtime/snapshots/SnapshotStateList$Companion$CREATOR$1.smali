.class public final Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SnapshotStateList.android.kt"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


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

.method public static synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion$CREATOR$1;->createFromParcel$lambda$0(Landroid/os/Parcel;Ljava/lang/ClassLoader;I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final createFromParcel$lambda$0(Landroid/os/Parcel;Ljava/lang/ClassLoader;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 3
    const-class p2, Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion$CREATOR$1;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroidx/compose/runtime/snapshots/j;

    invoke-direct {v1, p1, p2}, Landroidx/compose/runtime/snapshots/j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->SnapshotStateList(ILkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-array p1, p1, [Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion$CREATOR$1;->newArray(I)[Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p1

    return-object p1
.end method
