.class public final Lcom/facebook/login/InstagramAppLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "InstagramAppLoginMethodHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/InstagramAppLoginMethodHandler$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/InstagramAppLoginMethodHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lcom/facebook/login/InstagramAppLoginMethodHandler$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lcom/facebook/AccessTokenSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/InstagramAppLoginMethodHandler$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/InstagramAppLoginMethodHandler$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->g:Lcom/facebook/login/InstagramAppLoginMethodHandler$b;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/login/InstagramAppLoginMethodHandler$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/login/InstagramAppLoginMethodHandler$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

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

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 5
    const-string p1, "instagram_login"

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->e:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/facebook/AccessTokenSource;->INSTAGRAM_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->f:Lcom/facebook/AccessTokenSource;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 2
    const-string p1, "instagram_login"

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->e:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/facebook/AccessTokenSource;->INSTAGRAM_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->f:Lcom/facebook/AccessTokenSource;

    return-void
.end method


# virtual methods
.method public A()Lcom/facebook/AccessTokenSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->f:Lcom/facebook/AccessTokenSource;

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

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public p(Lcom/facebook/login/LoginClient$Request;)I
    .locals 16
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "request"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/facebook/login/LoginClient;->m:Lcom/facebook/login/LoginClient$c;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$c;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v15

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->j()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->o()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/util/Collection;

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->z()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->w()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->g()Lcom/facebook/login/DefaultAudience;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    sget-object v8, Lcom/facebook/login/DefaultAudience;->NONE:Lcom/facebook/login/DefaultAudience;

    .line 56
    .line 57
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v0, v9}, Lcom/facebook/login/LoginMethodHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->c()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->m()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->p()Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->x()Z

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->I()Z

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    move-object v2, v3

    .line 86
    move-object v3, v4

    .line 87
    move-object v4, v5

    .line 88
    move-object v5, v15

    .line 89
    invoke-static/range {v2 .. v14}, Lcom/facebook/internal/l0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "e2e"

    .line 94
    .line 95
    invoke-virtual {v0, v3, v15}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$c;->b()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->I(Landroid/content/Intent;I)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    return v1
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
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
