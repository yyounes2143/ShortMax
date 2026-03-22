.class public Lcom/huawei/hms/core/aidl/DataBuffer;
.super Ljava/lang/Object;
.source "DataBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/core/aidl/DataBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Bundle;

.field private c:I

.field private d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/core/aidl/DataBuffer$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/core/aidl/DataBuffer$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/huawei/hms/core/aidl/DataBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->c:I

    .line 10
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->c:I

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

    .line 6
    invoke-direct {p0, p1}, Lcom/huawei/hms/core/aidl/DataBuffer;->b(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huawei/hms/core/aidl/DataBuffer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/core/aidl/DataBuffer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->b:Landroid/os/Bundle;

    .line 13
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

    .line 14
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->a:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->c:I

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private b(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->c:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-class v0, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/huawei/hms/core/aidl/DataBuffer;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->b:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/huawei/hms/core/aidl/DataBuffer;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)Lcom/huawei/hms/core/aidl/DataBuffer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

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

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget p2, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->c:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->b:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/huawei/hms/core/aidl/DataBuffer;->d:Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
