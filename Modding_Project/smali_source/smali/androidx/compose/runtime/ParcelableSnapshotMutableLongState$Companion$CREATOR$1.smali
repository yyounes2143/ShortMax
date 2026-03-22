.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableLongState$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SnapshotLongState.android.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;",
        ">;"
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


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;
    .locals 3

    .line 2
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState$Companion$CREATOR$1;->newArray(I)[Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    move-result-object p1

    return-object p1
.end method
