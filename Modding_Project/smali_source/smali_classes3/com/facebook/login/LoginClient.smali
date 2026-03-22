.class public Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "LoginClient.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$a;,
        Lcom/facebook/login/LoginClient$c;,
        Lcom/facebook/login/LoginClient$d;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoginClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginClient.kt\ncom/facebook/login/LoginClient\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,704:1\n37#2,2:705\n37#2,2:721\n26#3:707\n11653#4,9:708\n13579#4:717\n13580#4:719\n11662#4:720\n1#5:718\n*S KotlinDebug\n*F\n+ 1 LoginClient.kt\ncom/facebook/login/LoginClient\n*L\n166#1:705,2\n661#1:721,2\n654#1:707\n656#1:708,9\n656#1:717\n656#1:719\n656#1:720\n656#1:718\n*E\n"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Lcom/facebook/login/LoginClient$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:[Lcom/facebook/login/LoginMethodHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/login/LoginClient$d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/login/LoginClient$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/facebook/login/LoginClient$Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/facebook/login/o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/LoginClient$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/LoginClient$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/LoginClient;->m:Lcom/facebook/login/LoginClient$c;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/login/LoginClient$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/login/LoginClient$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 6
    const-class v0, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    new-array v0, v1, [Landroid/os/Parcelable;

    .line 8
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length v3, v0

    move v4, v1

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    .line 10
    instance-of v7, v6, Lcom/facebook/login/LoginMethodHandler;

    if-eqz v7, :cond_1

    move-object v5, v6

    check-cast v5, Lcom/facebook/login/LoginMethodHandler;

    :cond_1
    if-nez v5, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v5, p0}, Lcom/facebook/login/LoginMethodHandler;->n(Lcom/facebook/login/LoginClient;)V

    :goto_1
    if-eqz v5, :cond_3

    .line 12
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_4
    new-array v0, v1, [Lcom/facebook/login/LoginMethodHandler;

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/LoginMethodHandler;

    .line 14
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 16
    const-class v0, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 17
    invoke-static {p1}, Lcom/facebook/internal/u0;->s0(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v5

    :goto_2
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 18
    invoke-static {p1}, Lcom/facebook/internal/u0;->s0(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :cond_6
    iput-object v5, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->D(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private final A(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/facebook/login/LoginClient$d;->a(Lcom/facebook/login/LoginClient$Result;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 15
    .line 16
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x2c

    .line 39
    .line 40
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final h()V
    .locals 7

    .line 1
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 4
    .line 5
    const/16 v5, 0x8

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const-string v2, "Login attempt failed."

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$b;->d(Lcom/facebook/login/LoginClient$Result$b;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final o()Lcom/facebook/login/o;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/o;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/facebook/login/o;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_5

    .line 24
    .line 25
    :cond_1
    new-instance v0, Lcom/facebook/login/o;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    :cond_3
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_4
    invoke-direct {v0, v1, v2}, Lcom/facebook/login/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/o;

    .line 56
    .line 57
    :cond_5
    return-object v0
.end method

.method private final w(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/login/LoginClient$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$Code;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p2, Lcom/facebook/login/LoginClient$Result;->e:Ljava/lang/String;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    move-object v6, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 2
    .line 3
    const-string v1, "fb_mobile_login_method_complete"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/o;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string p3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 12
    .line 13
    invoke-virtual {p2, v1, p3, p1}, Lcom/facebook/login/o;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/o;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->x()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v1, "foa_mobile_login_method_complete"

    .line 32
    .line 33
    :cond_1
    move-object v9, v1

    .line 34
    move-object v4, p1

    .line 35
    move-object v5, p2

    .line 36
    move-object v6, p3

    .line 37
    move-object v7, p4

    .line 38
    move-object v8, p5

    .line 39
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/login/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public final B(IILandroid/content/Intent;)Z
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/facebook/login/LoginClient;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/facebook/login/LoginClient;->k:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->j:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->I()V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->k()Lcom/facebook/login/LoginMethodHandler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->o()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    if-nez p3, :cond_1

    .line 39
    .line 40
    iget v2, p0, Lcom/facebook/login/LoginClient;->k:I

    .line 41
    .line 42
    iget v3, p0, Lcom/facebook/login/LoginClient;->l:I

    .line 43
    .line 44
    if-lt v2, v3, :cond_2

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->k(IILandroid/content/Intent;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_2
    return v1
.end method

.method public final C(Lcom/facebook/login/LoginClient$a;)V
    .locals 0
    .param p1    # Lcom/facebook/login/LoginClient$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    .line 2
    .line 3
    return-void
.end method

.method public final D(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 9
    .line 10
    const-string v0, "Can\'t set fragment once it is already set."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final E(Lcom/facebook/login/LoginClient$d;)V
    .locals 0
    .param p1    # Lcom/facebook/login/LoginClient$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$d;

    .line 2
    .line 3
    return-void
.end method

.method public final G(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Request;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final H()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->k()Lcom/facebook/login/LoginMethodHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v0, "no_internet_permission"

    .line 22
    .line 23
    const-string v2, "1"

    .line 24
    .line 25
    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginMethodHandler;->p(Lcom/facebook/login/LoginClient$Request;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v1, p0, Lcom/facebook/login/LoginClient;->k:I

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    if-lez v3, :cond_4

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/o;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->x()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const-string v2, "foa_mobile_login_method_start"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string v2, "fb_mobile_login_method_start"

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v5, v6, v0, v2}, Lcom/facebook/login/o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput v3, p0, Lcom/facebook/login/LoginClient;->l:I

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/o;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->x()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    const-string v2, "foa_mobile_login_method_not_tried"

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    const-string v2, "fb_mobile_login_method_not_tried"

    .line 94
    .line 95
    :goto_1
    invoke-virtual {v5, v6, v7, v2}, Lcom/facebook/login/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v2, "not_tried"

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p0, v2, v0, v4}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    :goto_2
    if-lez v3, :cond_6

    .line 108
    .line 109
    move v1, v4

    .line 110
    :cond_6
    return v1
.end method

.method public final I()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->k()Lcom/facebook/login/LoginMethodHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->e()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    const-string v3, "skipped"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 28
    .line 29
    array-length v2, v0

    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    if-ge v1, v2, :cond_2

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    iput v1, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->H()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->h()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public final J(Lcom/facebook/login/LoginClient$Result;)V
    .locals 7
    .param p1    # Lcom/facebook/login/LoginClient$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pendingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->e()Lcom/facebook/AccessToken;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->n()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->n()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 37
    .line 38
    iget-object v2, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/facebook/login/LoginClient$Result;->c:Lcom/facebook/AuthenticationToken;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/login/LoginClient$Result$b;->b(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginClient$Result;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 52
    .line 53
    const-string v2, "User logged in as different Facebook user."

    .line 54
    .line 55
    const/16 v5, 0x8

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$b;->d(Lcom/facebook/login/LoginClient$Result$b;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/16 v5, 0x8

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const-string v2, "Caught exception"

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$b;->d(Lcom/facebook/login/LoginClient$Result$b;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void

    .line 90
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    .line 91
    .line 92
    const-string v0, "Can\'t validate without a token"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public final b(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->m(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->I()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    .line 36
    .line 37
    const-string v0, "Attempted to authorize while a request is pending."

    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->k()Lcom/facebook/login/LoginMethodHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-string v0, "android.permission.INTERNET"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->e(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget v2, Lcom/facebook/common/e;->c:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v5, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v5, v1

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget v1, Lcom/facebook/common/e;->b:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_2
    move-object v6, v1

    .line 40
    sget-object v3, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 43
    .line 44
    const/16 v8, 0x8

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    invoke-static/range {v3 .. v9}, Lcom/facebook/login/LoginClient$Result$b;->d(Lcom/facebook/login/LoginClient$Result$b;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    return v0

    .line 57
    :cond_3
    iput-boolean v1, p0, Lcom/facebook/login/LoginClient;->f:Z

    .line 58
    .line 59
    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "permission"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, -0x1

    .line 18
    :goto_0
    return p1
.end method

.method public final f(Lcom/facebook/login/LoginClient$Result;)V
    .locals 2
    .param p1    # Lcom/facebook/login/LoginClient$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outcome"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->k()Lcom/facebook/login/LoginMethodHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->e()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/login/LoginClient;->w(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->g:Ljava/util/Map;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->h:Ljava/util/Map;

    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 40
    .line 41
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/facebook/login/LoginClient;->k:I

    .line 47
    .line 48
    iput v0, p0, Lcom/facebook/login/LoginClient;->l:I

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient;->A(Lcom/facebook/login/LoginClient$Result;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final g(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outcome"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->J(Lcom/facebook/login/LoginClient$Result;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->f(Lcom/facebook/login/LoginClient$Result;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final j()Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final k()Lcom/facebook/login/LoginMethodHandler;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    aget-object v1, v2, v0

    .line 11
    .line 12
    :cond_0
    return-object v1
.end method

.method public final l()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;
    .locals 3
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->k()Lcom/facebook/login/LoginBehavior;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->y()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    sget-boolean v2, Lcom/facebook/v;->s:Z

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsInstagramAppAuth()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    new-instance v2, Lcom/facebook/login/InstagramAppLoginMethodHandler;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/facebook/login/InstagramAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Lcom/facebook/login/GetTokenLoginMethodHandler;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-boolean v2, Lcom/facebook/v;->s:Z

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    new-instance v2, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    .line 65
    .line 66
    invoke-direct {v2, p0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    new-instance v2, Lcom/facebook/login/CustomTabLoginMethodHandler;

    .line 79
    .line 80
    invoke-direct {v2, p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    new-instance v2, Lcom/facebook/login/WebViewLoginMethodHandler;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->y()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    new-instance p1, Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_5
    const/4 p1, 0x0

    .line 121
    new-array p1, p1, [Lcom/facebook/login/LoginMethodHandler;

    .line 122
    .line 123
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, [Lcom/facebook/login/LoginMethodHandler;

    .line 128
    .line 129
    return-object p1
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final p()Lcom/facebook/login/LoginClient$Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 7
    .line 8
    check-cast v0, [Landroid/os/Parcelable;

    .line 9
    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 19
    .line 20
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/facebook/internal/u0;->H0(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/facebook/internal/u0;->H0(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
