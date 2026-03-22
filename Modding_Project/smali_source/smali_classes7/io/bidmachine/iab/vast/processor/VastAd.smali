.class public Lio/bidmachine/iab/vast/processor/VastAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/iab/vast/processor/VastAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/iab/vast/tags/MediaFileTag;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lio/bidmachine/iab/vast/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/iab/vast/tags/CompanionTag;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/EnumMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastAd$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/VastAd$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/iab/vast/processor/VastAd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    .line 16
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    const-class v1, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Lio/bidmachine/iab/vast/tags/LinearCreativeTag;Lio/bidmachine/iab/vast/tags/MediaFileTag;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/tags/LinearCreativeTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/tags/MediaFileTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 4
    iput-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public B(Lio/bidmachine/iab/vast/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->c:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    return-void
.end method

.method public C(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method a(Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    .line 2
    .line 3
    return-void
.end method

.method b(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method c(Ljava/util/EnumMap;)V
    .locals 0
    .param p1    # Ljava/util/EnumMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    .line 2
    .line 3
    return-void
.end method

.method d(Ltm/g;)V
    .locals 1
    .param p1    # Ltm/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->c:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/vast/a;->X(Ltm/g;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method e(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/iab/vast/tags/CompanionTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method f(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method g(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Landroid/content/Context;)Lio/bidmachine/iab/vast/tags/CompanionTag;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 30
    .line 31
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->r0()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->l0()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, -0x1

    .line 40
    if-le v3, v5, :cond_1

    .line 41
    .line 42
    if-le v4, v5, :cond_1

    .line 43
    .line 44
    invoke-static {p1}, Lsm/q;->y(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    const/16 v5, 0x2d8

    .line 51
    .line 52
    if-ne v3, v5, :cond_2

    .line 53
    .line 54
    const/16 v5, 0x5a

    .line 55
    .line 56
    if-ne v4, v5, :cond_2

    .line 57
    .line 58
    return-object v2

    .line 59
    :cond_2
    invoke-static {p1}, Lsm/q;->y(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    const/16 v5, 0x140

    .line 66
    .line 67
    if-ne v3, v5, :cond_1

    .line 68
    .line 69
    const/16 v3, 0x32

    .line 70
    .line 71
    if-ne v4, v3, :cond_1

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_3
    :goto_0
    return-object v1
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->s0()Lio/bidmachine/iab/vast/tags/VideoClicksTag;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->Z()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(II)Lio/bidmachine/iab/vast/tags/CompanionTag;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 36
    .line 37
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->r0()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->l0()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, -0x1

    .line 46
    if-le v4, v6, :cond_1

    .line 47
    .line 48
    if-le v5, v6, :cond_1

    .line 49
    .line 50
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    int-to-float v6, v6

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    int-to-float v7, v7

    .line 60
    div-float/2addr v6, v7

    .line 61
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/16 v8, 0xfa

    .line 66
    .line 67
    if-lt v7, v8, :cond_1

    .line 68
    .line 69
    float-to-double v6, v6

    .line 70
    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    .line 71
    .line 72
    cmpg-double v6, v6, v8

    .line 73
    .line 74
    if-gtz v6, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->s0()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    int-to-float v4, v4

    .line 83
    int-to-float v5, v5

    .line 84
    div-float/2addr v4, v5

    .line 85
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    int-to-float p1, p1

    .line 100
    int-to-float p2, p2

    .line 101
    div-float/2addr p1, p2

    .line 102
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/Float;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ljava/lang/Float;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    sub-float v3, v1, p1

    .line 141
    .line 142
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    sub-float v4, v2, p1

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    cmpl-float v3, v3, v4

    .line 153
    .line 154
    if-lez v3, :cond_3

    .line 155
    .line 156
    move v1, v2

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 167
    .line 168
    return-object p1

    .line 169
    :cond_5
    sget-object p1, Ltm/g;->m:Ltm/g;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/processor/VastAd;->d(Ltm/g;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_2
    return-object v1
.end method

.method public o()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->p0()Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public x()Lio/bidmachine/iab/vast/tags/MediaFileTag;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/bidmachine/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method
