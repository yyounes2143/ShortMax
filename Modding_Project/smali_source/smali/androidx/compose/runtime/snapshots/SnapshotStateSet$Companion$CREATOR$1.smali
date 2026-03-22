.class public final Landroidx/compose/runtime/snapshots/SnapshotStateSet$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SnapshotStateSet.android.kt"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotStateSet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateSet.android.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSet$Companion$CREATOR$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n1#2:143\n*E\n"
    }
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


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/snapshots/SnapshotStateSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/snapshots/SnapshotStateSet;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/snapshots/SnapshotStateSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateSet;

    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;-><init>()V

    if-nez p2, :cond_0

    .line 4
    const-class p2, Landroidx/compose/runtime/snapshots/SnapshotStateSet;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateSet$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/snapshots/SnapshotStateSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateSet$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/snapshots/SnapshotStateSet;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/compose/runtime/snapshots/SnapshotStateSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-array p1, p1, [Landroidx/compose/runtime/snapshots/SnapshotStateSet;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateSet$Companion$CREATOR$1;->newArray(I)[Landroidx/compose/runtime/snapshots/SnapshotStateSet;

    move-result-object p1

    return-object p1
.end method
